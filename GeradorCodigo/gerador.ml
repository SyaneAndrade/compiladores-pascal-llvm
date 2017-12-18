open Printf

open Ast
open Tast
open Codigo

let conta_temp = ref 0
let conta_rotulos = ref (Hashtbl.create 5)

let zera_contadores () =
  begin
    conta_temp := 0;
    conta_rotulos := Hashtbl.create 5
  end
  
let novo_temp () =
   let numero = !conta_temp in
   let _ = incr conta_temp in
   numero


let num_bytes t = 
  match t with
    TipoInt -> 4
  | TipoString -> 8
  | TipoReal -> 8
  | TipoVoid -> 4
  | TipoBool -> 4
  | TipoChar -> 8
  | TipoArranjo (t,i,f) -> 4
  | TipoRegistro cs -> 4

let emite_cabecalho oc arq=
  fprintf oc "; ModuleID = \'%s\'\ntarget datalayout = \"e-m:e-i64:64-f80:128-n8:16:32:64-S128\"\n
  target triple = \"x86_64-pc-linux-gnu\"\n" arq


let emite_rodape oc =
  fprintf oc "
  declare i32 @printf(i8*, ...) #1
  declare i32 @__isoc99_scanf(i8*, ...) #1\n"


let emite_prologo oc nome = 
  fprintf oc "
  define i32 @%s() #0 {
    %%1 = alloca i32, align 4
  "
  nome

  let emite_quadro_de_pilha oc cod nargs nlocais =
    let cria_quadro_de_pilha tbl params locais =
        let rec aloca_na_pilha inicio fim xs =
          match xs with
          | (x,nb) :: restante -> 
             let endereco = inicio - nb in
             if endereco >= fim 
             then let _ = Hashtbl.add tbl (Nome x) endereco in
                  aloca_na_pilha endereco fim restante
             else aloca_na_pilha fim (fim - 16) xs
          | [] -> fim
        in 
           let fim_locais = aloca_na_pilha 0 (-16) locais in
           let fim_params = aloca_na_pilha fim_locais (fim_locais - 16) params in
           fprintf oc "%%%d = alloca i32, align	$%d\n" (- fim_params)
    in  
    let rec separa_parametros n params cod =
       if n <= 0 then (List.rev params, cod)
       else match cod with
            | Recebe (nome,tipo) :: cod -> 
              let nb = num_bytes tipo in 
              separa_parametros (n-1) ((nome,nb) :: params) cod
            | _ -> (List.rev params, cod)
    and separa_locais n locais cod =
       if n <= 0 then (locais, cod)
       else match cod with
            | Local (nome,tipo) :: cod -> 
              let nb = num_bytes tipo in 
              separa_locais (n-1) ((nome,nb) :: locais) cod
            | _ -> (locais, cod)
    in 
      let (params, cod) = separa_parametros nargs [] cod in
      let (locais, cod) = separa_locais nlocais [] cod in
      let tbl_de_alocacao = Hashtbl.create 5 in 
      let _ = cria_quadro_de_pilha tbl_de_alocacao params locais in
      tbl_de_alocacao
  
let rec move_parametros oc tbl cod =  
  match cod with
  | Recebe (n,tipo) :: cod -> 
    let deslocamento = Hashtbl.find tbl (Nome n) in
    let _ = fprintf oc "store i32	%d, i32* %%%s, align %d\n" 
                     deslocamento n deslocamento
      in move_parametros oc tbl cod
  | _ -> cod

let rec emite_corpo oc tbl cod = 
  match cod with
  | Local _ :: cod-> emite_corpo oc tbl cod
  | Copia (Nome n, ConstInt i) :: cod ->
    begin 
    try
        let deslocamento = Hashtbl.find tbl (Nome n) in
        let _ =  fprintf oc "store	i32 %d, i32* %s, align %d\n" 
                            i n deslocamento
        in emite_corpo oc tbl cod
    with 
        Not_found -> (* Assume que é uma variável global *)
        let _ =  fprintf oc "store	i32 %d, i32* %d, align %d\n"  
                              i n i
        in emite_corpo oc tbl cod  
    end      
  | Return opcao :: cod ->
    let _ = 
      (match opcao with
        | None -> fprintf oc "ret	i32 0\n"
        | Some endr ->
          (match endr with
          | Nome n -> 
            begin 
                try
                let deslocamento = Hashtbl.find tbl endr in
                fprintf oc "ret	i32 %%%s\n" 
                            n
                with 
                  Not_found -> (* Assume que é uma variável global *)
                    fprintf oc "ret	i32 0\n" 
                                  
            end
          | _ -> failwith "emite_corpo: endereco nao implementado"
          )
        )
    in emite_corpo oc tbl cod
  | EndFun :: cod -> 
    let _ =  fprintf oc "	}\n" 
    in cod
  | _ :: cod -> emite_corpo oc tbl cod
  | [] -> []

let emite_funcao oc cod nome nargs nlocais =
  let _ = emite_prologo oc nome in
  let tbl = emite_quadro_de_pilha oc cod nargs nlocais in
  let cod = move_parametros oc tbl cod in
  let cod = emite_corpo oc tbl cod in
  cod


let rec emite_codigo oc cod =
  match cod with
  | BeginFun (nome, nargs, nlocais) :: cod ->
      let cod = emite_funcao oc cod nome nargs nlocais in
      emite_codigo oc cod
  | _-> ()

let gerador oc cod arq =
  let _ = zera_contadores() in
  let _ = emite_cabecalho oc arq in
  let _ = emite_codigo oc cod in
  emite_rodape oc

let compila arq =  
  let oc = open_out (Filename.chop_suffix arq ".tip" ^ ".ll") in
  let cod = traduz arq in
    gerador stdout cod arq;
    close_out oc