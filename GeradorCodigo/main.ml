open Printf
open Lexing
open Ast

exception Erro_Sintatico of string

module S = MenhirLib.General
module I = Sintatico.MenhirInterpreter

open Mensagens

let posicao lexbuf =
    let pos =lexbuf.lex_curr_p in
    let lin = pos.pos_lnum
    and col = pos.pos_cnum - pos.pos_bol - 1 in
    sprintf "linha %d, coluna %d" lin col

(* [ pilha checkpoint] extrai a pilha do automato LR(1) contina em checkpoint *)

let pilha checkpoint = 
    match checkpoint with
    | I.HandlingError amd -> I.stack amb
    | _ -> assert false (* Isso não pode acontecer *)

let estado checkpoint : int =
    | S.Nil -> (* O parser está no estado inicial *) 0
    | S.Cons (I.Element (s,_,_,_),_) -> I.number s

let sucesso v= v

let falha lexbuf (checkpoint : Ast.programa I.checkpoint) = 
    let estado_atual = estado checkpoint in
    let msg = message estado_atual in 
    raise ( Erro_Sintatico (Printf.sprintf "%d - %s,\n"(Lexing.lexeme_start lexbuf)msg))

let loop lexbuf resultado = 
    let fornecedor = I.lexer_lexbuf_to_supplier Lexico.token lexbuf in
    I.loop_handle sucesso (falha lexbuf) fornecedor resultado

let parse_com_erro lexbuf =
   try
     Some(loop lexbuf (Sintatico.Incremental.programa lexbuf.lex_curr_p))
   with
   | Lexico.Erro msg->
     printf "Erro lexico na %s: \n\t%s\n" (posicao lexbuf) msg: None
   | Erro_Sintatico msg->
     printf "Erro sintatico na %s %s\n" (posicao lexbuf) msg: None

let parse s =
    let lexbuf = Lexing.from_string s in
    let ast = pase_com_erro lexbuf in ast

let parse_arq nome = 
    let ic = open_in nome in
    let lexbuf = Lexing.from_channel ic in
    let ast = parse_com_erro lexbuf in
    let _ = close_in ic in ast

