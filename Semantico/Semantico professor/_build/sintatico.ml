
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VIRG of (
# 16 "sintatico.mly"
       (Lexing.position)
# 11 "sintatico.ml"
  )
    | STRING of (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 16 "sintatico.ml"
  )
    | SENAO of (
# 22 "sintatico.mly"
       (Lexing.position)
# 21 "sintatico.ml"
  )
    | SE of (
# 22 "sintatico.mly"
       (Lexing.position)
# 26 "sintatico.ml"
  )
    | SAIDA of (
# 24 "sintatico.mly"
       (Lexing.position)
# 31 "sintatico.ml"
  )
    | RETORNE of (
# 25 "sintatico.mly"
       (Lexing.position)
# 36 "sintatico.ml"
  )
    | REGISTRO of (
# 21 "sintatico.mly"
       (Lexing.position)
# 41 "sintatico.ml"
  )
    | PTV of (
# 16 "sintatico.mly"
       (Lexing.position)
# 46 "sintatico.ml"
  )
    | PTO of (
# 16 "sintatico.mly"
       (Lexing.position)
# 51 "sintatico.ml"
  )
    | PROGRAMA of (
# 12 "sintatico.mly"
       (Lexing.position)
# 56 "sintatico.ml"
  )
    | PPTO of (
# 16 "sintatico.mly"
       (Lexing.position)
# 61 "sintatico.ml"
  )
    | OULOG of (
# 35 "sintatico.mly"
       (Lexing.position)
# 66 "sintatico.ml"
  )
    | MULT of (
# 28 "sintatico.mly"
       (Lexing.position)
# 71 "sintatico.ml"
  )
    | MENOS of (
# 27 "sintatico.mly"
       (Lexing.position)
# 76 "sintatico.ml"
  )
    | MENOR of (
# 30 "sintatico.mly"
       (Lexing.position)
# 81 "sintatico.ml"
  )
    | MAIS of (
# 26 "sintatico.mly"
       (Lexing.position)
# 86 "sintatico.ml"
  )
    | MAIOR of (
# 33 "sintatico.mly"
       (Lexing.position)
# 91 "sintatico.ml"
  )
    | INTEIRO of (
# 19 "sintatico.mly"
       (Lexing.position)
# 96 "sintatico.ml"
  )
    | INT of (
# 8 "sintatico.mly"
       (int * Lexing.position)
# 101 "sintatico.ml"
  )
    | INICIO of (
# 13 "sintatico.mly"
       (Lexing.position)
# 106 "sintatico.ml"
  )
    | IGUAL of (
# 31 "sintatico.mly"
       (Lexing.position)
# 111 "sintatico.ml"
  )
    | ID of (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 116 "sintatico.ml"
  )
    | FUNCAO of (
# 15 "sintatico.mly"
       (Lexing.position)
# 121 "sintatico.ml"
  )
    | FPAR of (
# 18 "sintatico.mly"
       (Lexing.position)
# 126 "sintatico.ml"
  )
    | FIM of (
# 14 "sintatico.mly"
       (Lexing.position)
# 131 "sintatico.ml"
  )
    | FCOL of (
# 17 "sintatico.mly"
       (Lexing.position)
# 136 "sintatico.ml"
  )
    | EOF
    | ENTRADA of (
# 23 "sintatico.mly"
       (Lexing.position)
# 142 "sintatico.ml"
  )
    | ENTAO of (
# 22 "sintatico.mly"
       (Lexing.position)
# 147 "sintatico.ml"
  )
    | ELOG of (
# 34 "sintatico.mly"
       (Lexing.position)
# 152 "sintatico.ml"
  )
    | DPTOS of (
# 16 "sintatico.mly"
       (Lexing.position)
# 157 "sintatico.ml"
  )
    | DIV of (
# 29 "sintatico.mly"
       (Lexing.position)
# 162 "sintatico.ml"
  )
    | DIFER of (
# 32 "sintatico.mly"
       (Lexing.position)
# 167 "sintatico.ml"
  )
    | DE of (
# 20 "sintatico.mly"
       (Lexing.position)
# 172 "sintatico.ml"
  )
    | CONCAT of (
# 36 "sintatico.mly"
       (Lexing.position)
# 177 "sintatico.ml"
  )
    | CADEIA of (
# 19 "sintatico.mly"
       (Lexing.position)
# 182 "sintatico.ml"
  )
    | BOOLEANO of (
# 19 "sintatico.mly"
       (Lexing.position)
# 187 "sintatico.ml"
  )
    | BOOL of (
# 11 "sintatico.mly"
       (bool * Lexing.position)
# 192 "sintatico.ml"
  )
    | ATRIB of (
# 25 "sintatico.mly"
       (Lexing.position)
# 197 "sintatico.ml"
  )
    | ARRANJO of (
# 20 "sintatico.mly"
       (Lexing.position)
# 202 "sintatico.ml"
  )
    | APAR of (
# 18 "sintatico.mly"
       (Lexing.position)
# 207 "sintatico.ml"
  )
    | ACOL of (
# 17 "sintatico.mly"
       (Lexing.position)
# 212 "sintatico.ml"
  )
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState142
  | MenhirState137
  | MenhirState134
  | MenhirState132
  | MenhirState121
  | MenhirState112
  | MenhirState109
  | MenhirState105
  | MenhirState101
  | MenhirState98
  | MenhirState97
  | MenhirState93
  | MenhirState84
  | MenhirState82
  | MenhirState80
  | MenhirState78
  | MenhirState76
  | MenhirState74
  | MenhirState72
  | MenhirState70
  | MenhirState68
  | MenhirState65
  | MenhirState63
  | MenhirState61
  | MenhirState57
  | MenhirState55
  | MenhirState52
  | MenhirState49
  | MenhirState47
  | MenhirState46
  | MenhirState42
  | MenhirState38
  | MenhirState36
  | MenhirState33
  | MenhirState26
  | MenhirState20
  | MenhirState9
  | MenhirState7
  | MenhirState6
  | MenhirState3
  | MenhirState1

# 2 "sintatico.mly"
  
open Lexing
open Ast
open Sast

# 278 "sintatico.ml"

let rec _menhir_goto_option___anonymous_1_ : _menhir_env -> 'ttv_tail -> (Sast.expressao Ast.comandos option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FIM _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SE _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | PTV _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_10 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 306 "sintatico.ml"
                )) = _v in
                let (((((((((_menhir_stack, _menhir_s, (_1 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 311 "sintatico.ml"
                ))), (_2 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 315 "sintatico.ml"
                ))), _, (teste : (Sast.expressao))), (_4 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 319 "sintatico.ml"
                ))), (_5 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 323 "sintatico.ml"
                ))), _, (entao : (Sast.expressao Ast.comandos))), (senao : (Sast.expressao Ast.comandos option))), (_8 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 327 "sintatico.ml"
                ))), (_9 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 331 "sintatico.ml"
                ))) = _menhir_stack in
                let _v : (Sast.expressao Ast.comando) = 
# 118 "sintatico.mly"
                       (
              CmdSe (teste, entao, senao)
            )
# 338 "sintatico.ml"
                 in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (c : (Sast.expressao Ast.comando)) = _v in
                let _v : (Sast.expressao Ast.comando) = 
# 105 "sintatico.mly"
                              ( c )
# 346 "sintatico.ml"
                 in
                _menhir_goto_comando _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((_menhir_stack, _menhir_s, _), _), _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_nonempty_list_comando_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Sast.expressao Ast.comandos) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SENAO _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APAR _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | BOOL _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | ENTRADA _v ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | ID _v ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | INT _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | RETORNE _v ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | SAIDA _v ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | SE _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | STRING _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109)
        | FIM _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (Sast.expressao Ast.comandos option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 410 "sintatico.ml"
             in
            _menhir_goto_option___anonymous_1_ _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, (_10 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 425 "sintatico.ml"
        ))), _, (cs0 : (Sast.expressao Ast.comandos))) = _menhir_stack in
        let _v : (Sast.expressao Ast.comandos option) = let x =
          let cs = cs0 in
          let _1 = _10 in
          
# 117 "sintatico.mly"
                                              (cs)
# 433 "sintatico.ml"
          
        in
        
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 439 "sintatico.ml"
         in
        _menhir_goto_option___anonymous_1_ _menhir_env _menhir_stack _v
    | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Sast.expressao Ast.comando))), _, (xs : (Sast.expressao Ast.comandos))) = _menhir_stack in
        let _v : (Sast.expressao Ast.comandos) = 
# 197 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 449 "sintatico.ml"
         in
        _menhir_goto_nonempty_list_comando_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_VIRG_parametro_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Ast.ident Ast.pos * Ast.tipo) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : ((Ast.ident Ast.pos * Ast.tipo) list)) = _v in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 465 "sintatico.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_VIRG_parametro__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : ((Ast.ident Ast.pos * Ast.tipo) list)) = _v in
        let ((_menhir_stack, _menhir_s, (x : (Ast.ident Ast.pos * Ast.tipo))), (_2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 475 "sintatico.ml"
        ))) = _menhir_stack in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 480 "sintatico.ml"
         in
        _menhir_goto_separated_nonempty_list_VIRG_parametro_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list___anonymous_0_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.campos) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s, (id0 : (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 496 "sintatico.ml"
        ))), (_20 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 500 "sintatico.ml"
        ))), _, (tp0 : (Ast.tipo))), (_40 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 504 "sintatico.ml"
        ))), _, (xs : (Ast.campos))) = _menhir_stack in
        let _v : (Ast.campos) = let x =
          let _4 = _40 in
          let tp = tp0 in
          let _2 = _20 in
          let id = id0 in
          
# 98 "sintatico.mly"
                                                              ( (id,tp) )
# 514 "sintatico.ml"
          
        in
        
# 197 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 520 "sintatico.ml"
         in
        _menhir_goto_nonempty_list___anonymous_0_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FIM _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | REGISTRO _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_4 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 541 "sintatico.ml"
                )) = _v in
                let (((_menhir_stack, _menhir_s, (_1 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 546 "sintatico.ml"
                ))), _, (campos : (Ast.campos))), (_3 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 550 "sintatico.ml"
                ))) = _menhir_stack in
                let _v : (Ast.tipo) = 
# 99 "sintatico.mly"
                            ( TipoRegistro campos )
# 555 "sintatico.ml"
                 in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (t : (Ast.tipo)) = _v in
                let _v : (Ast.tipo) = 
# 84 "sintatico.mly"
                      ( t )
# 563 "sintatico.ml"
                 in
                _menhir_goto_tipo _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_reduce31 : _menhir_env -> 'ttv_tail * _menhir_state * (Sast.expressao) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (c : (Sast.expressao))) = _menhir_stack in
    let _v : (Sast.expressao) = 
# 140 "sintatico.mly"
                        ( c )
# 587 "sintatico.ml"
     in
    _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_comando : _menhir_env -> 'ttv_tail -> _menhir_state -> (Sast.expressao Ast.comando) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState97 | MenhirState121 | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APAR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | BOOL _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | ENTRADA _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | ID _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | INT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | RETORNE _v ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | SAIDA _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | SE _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | STRING _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | FIM _ | SENAO _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Sast.expressao Ast.comando))) = _menhir_stack in
            let _v : (Sast.expressao Ast.comandos) = 
# 195 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 624 "sintatico.ml"
             in
            _menhir_goto_nonempty_list_comando_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121)
    | MenhirState137 | MenhirState132 | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APAR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | BOOL _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | ENTRADA _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | ID _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | INT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | RETORNE _v ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | SAIDA _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | SE _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | STRING _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | FIM _ ->
            _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_VIRG_expressao_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Sast.expressao Ast.expressoes) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (Sast.expressao Ast.expressoes))) = _menhir_stack in
        let _v : (Sast.expressao Ast.expressoes) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 674 "sintatico.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_VIRG_expressao__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (x : (Sast.expressao))), (_2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 683 "sintatico.ml"
        ))), _, (xs : (Sast.expressao Ast.expressoes))) = _menhir_stack in
        let _v : (Sast.expressao Ast.expressoes) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 688 "sintatico.ml"
         in
        _menhir_goto_separated_nonempty_list_VIRG_expressao_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PTV _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 703 "sintatico.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 24 "sintatico.mly"
       (Lexing.position)
# 708 "sintatico.ml"
            ))), _, (xs : (Sast.expressao Ast.expressoes))) = _menhir_stack in
            let _v : (Sast.expressao Ast.comando) = 
# 126 "sintatico.mly"
                                                                     (
                 CmdSaida xs
         )
# 715 "sintatico.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (c : (Sast.expressao Ast.comando)) = _v in
            let _v : (Sast.expressao Ast.comando) = 
# 107 "sintatico.mly"
                              ( c )
# 723 "sintatico.ml"
             in
            _menhir_goto_comando _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState105 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PTV _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 744 "sintatico.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 23 "sintatico.mly"
       (Lexing.position)
# 749 "sintatico.ml"
            ))), _, (xs : (Sast.expressao Ast.expressoes))) = _menhir_stack in
            let _v : (Sast.expressao Ast.comando) = 
# 122 "sintatico.mly"
                                                                         (
                   CmdEntrada xs
               )
# 756 "sintatico.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (c : (Sast.expressao Ast.comando)) = _v in
            let _v : (Sast.expressao Ast.comando) = 
# 106 "sintatico.mly"
                              ( c )
# 764 "sintatico.ml"
             in
            _menhir_goto_comando _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run63 : _menhir_env -> 'ttv_tail * _menhir_state * (Sast.expressao) -> (
# 35 "sintatico.mly"
       (Lexing.position)
# 779 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | BOOL _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | ID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | INT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | STRING _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63

and _menhir_run65 : _menhir_env -> 'ttv_tail * _menhir_state * (Sast.expressao) -> (
# 28 "sintatico.mly"
       (Lexing.position)
# 804 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | BOOL _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | ID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | INT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | STRING _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65

and _menhir_run68 : _menhir_env -> 'ttv_tail * _menhir_state * (Sast.expressao) -> (
# 27 "sintatico.mly"
       (Lexing.position)
# 829 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | BOOL _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | ID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | INT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | STRING _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68

and _menhir_run72 : _menhir_env -> 'ttv_tail * _menhir_state * (Sast.expressao) -> (
# 30 "sintatico.mly"
       (Lexing.position)
# 854 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | BOOL _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | ID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | INT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | STRING _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72

and _menhir_run74 : _menhir_env -> 'ttv_tail * _menhir_state * (Sast.expressao) -> (
# 26 "sintatico.mly"
       (Lexing.position)
# 879 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | BOOL _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | ID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | INT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | STRING _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_run78 : _menhir_env -> 'ttv_tail * _menhir_state * (Sast.expressao) -> (
# 33 "sintatico.mly"
       (Lexing.position)
# 904 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | BOOL _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | ID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | INT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | STRING _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78

and _menhir_run80 : _menhir_env -> 'ttv_tail * _menhir_state * (Sast.expressao) -> (
# 31 "sintatico.mly"
       (Lexing.position)
# 929 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | BOOL _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | ID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | INT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | STRING _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80

and _menhir_run82 : _menhir_env -> 'ttv_tail * _menhir_state * (Sast.expressao) -> (
# 34 "sintatico.mly"
       (Lexing.position)
# 954 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | BOOL _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | ID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | INT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | STRING _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82

and _menhir_run70 : _menhir_env -> 'ttv_tail * _menhir_state * (Sast.expressao) -> (
# 29 "sintatico.mly"
       (Lexing.position)
# 979 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | BOOL _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | ID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | INT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | STRING _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70

and _menhir_run84 : _menhir_env -> 'ttv_tail * _menhir_state * (Sast.expressao) -> (
# 32 "sintatico.mly"
       (Lexing.position)
# 1004 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | BOOL _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | ID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | INT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | STRING _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84

and _menhir_run76 : _menhir_env -> 'ttv_tail * _menhir_state * (Sast.expressao) -> (
# 36 "sintatico.mly"
       (Lexing.position)
# 1029 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | BOOL _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | ID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | INT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | STRING _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_goto_tipo : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.tipo) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((((_menhir_stack, _menhir_s, (_1 : (
# 20 "sintatico.mly"
       (Lexing.position)
# 1061 "sintatico.ml"
        ))), (_2 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1065 "sintatico.ml"
        ))), (lim : (int Ast.pos * int Ast.pos))), (_4 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1069 "sintatico.ml"
        ))), (_5 : (
# 20 "sintatico.mly"
       (Lexing.position)
# 1073 "sintatico.ml"
        ))), _, (tp : (Ast.tipo))) = _menhir_stack in
        let _v : (Ast.tipo) = 
# 92 "sintatico.mly"
                                                       (
                let (inicio, fim) = lim in
                TipoArranjo (tp, inicio, fim)
            )
# 1081 "sintatico.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (t : (Ast.tipo)) = _v in
        let _v : (Ast.tipo) = 
# 83 "sintatico.mly"
                      ( t )
# 1089 "sintatico.ml"
         in
        _menhir_goto_tipo _menhir_env _menhir_stack _menhir_s _v
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PTV _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
            | FIM _ ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((_menhir_stack, _menhir_s, (id0 : (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 1110 "sintatico.ml"
                ))), (_20 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1114 "sintatico.ml"
                ))), _, (tp0 : (Ast.tipo))), (_40 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1118 "sintatico.ml"
                ))) = _menhir_stack in
                let _v : (Ast.campos) = let x =
                  let _4 = _40 in
                  let tp = tp0 in
                  let _2 = _20 in
                  let id = id0 in
                  
# 98 "sintatico.mly"
                                                              ( (id,tp) )
# 1128 "sintatico.ml"
                  
                in
                
# 195 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 1134 "sintatico.ml"
                 in
                _menhir_goto_nonempty_list___anonymous_0_ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PTV _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1159 "sintatico.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (ids : (Ast.ident Ast.pos list))), (_2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1164 "sintatico.ml"
            ))), _, (t : (Ast.tipo))) = _menhir_stack in
            let _v : (Ast.declaracao list) = 
# 62 "sintatico.mly"
                                                             (
                   List.map (fun id -> DecVar (id,t)) ids  )
# 1170 "sintatico.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
            | FUNCAO _ | INICIO _ ->
                _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) MenhirState134
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (nome : (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 1197 "sintatico.ml"
        ))), (_2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1201 "sintatico.ml"
        ))), _, (t : (Ast.tipo))) = _menhir_stack in
        let _v : (Ast.ident Ast.pos * Ast.tipo) = 
# 80 "sintatico.mly"
                                    ( (nome, t) )
# 1206 "sintatico.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | VIRG _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42)
        | FPAR _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.ident Ast.pos * Ast.tipo))) = _menhir_stack in
            let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 1231 "sintatico.ml"
             in
            _menhir_goto_separated_nonempty_list_VIRG_parametro_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | INICIO _ ->
            _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_comando_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Sast.expressao Ast.comandos) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FIM _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | PTV _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_12 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1278 "sintatico.ml"
                )) = _v in
                let (((((((((((_menhir_stack, _menhir_s, (_1 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 1283 "sintatico.ml"
                ))), (nome : (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 1287 "sintatico.ml"
                ))), (_3 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1291 "sintatico.ml"
                ))), _, (xs0 : ((Ast.ident Ast.pos * Ast.tipo) list))), (_5 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1295 "sintatico.ml"
                ))), (_6 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1299 "sintatico.ml"
                ))), _, (tret : (Ast.tipo))), _, (ds : (Ast.declaracao list list))), (_9 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 1303 "sintatico.ml"
                ))), _, (cs : (Sast.expressao Ast.comandos))), (_11 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1307 "sintatico.ml"
                ))) = _menhir_stack in
                let _v : (Sast.expressao Ast.funcao) = let formais =
                  let xs = xs0 in
                  
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 1314 "sintatico.ml"
                  
                in
                
# 70 "sintatico.mly"
          (
    DecFun {
      fn_nome = nome;
      fn_tiporet = tret ;
      fn_formais = formais;
      fn_locais = List.flatten ds;
      fn_corpo = cs
    }
 )
# 1328 "sintatico.ml"
                 in
                let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | FUNCAO _v ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
                | INICIO _ ->
                    _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState142
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState132 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Sast.expressao Ast.comando))), _, (xs : (Sast.expressao Ast.comandos))) = _menhir_stack in
        let _v : (Sast.expressao Ast.comandos) = 
# 187 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 1362 "sintatico.ml"
         in
        _menhir_goto_list_comando_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState137 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FIM _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | PTV _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | EOF ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (((((((_menhir_stack, (_1 : (
# 12 "sintatico.mly"
       (Lexing.position)
# 1388 "sintatico.ml"
                    ))), _, (ds : (Ast.declaracao list list))), _, (fs : (Sast.expressao Ast.funcoes))), (_4 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 1392 "sintatico.ml"
                    ))), _, (cs : (Sast.expressao Ast.comandos))), (_6 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1396 "sintatico.ml"
                    ))), (_7 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1400 "sintatico.ml"
                    ))) = _menhir_stack in
                    let _8 = () in
                    let _v : (
# 48 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 1406 "sintatico.ml"
                    ) = 
# 58 "sintatico.mly"
              ( Programa (List.flatten ds, fs, cs) )
# 1410 "sintatico.ml"
                     in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_1 : (
# 48 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 1417 "sintatico.ml"
                    )) = _v in
                    Obj.magic _1
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_expressao_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Sast.expressao option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PTV _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1455 "sintatico.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 25 "sintatico.mly"
       (Lexing.position)
# 1460 "sintatico.ml"
        ))), _, (e : (Sast.expressao option))) = _menhir_stack in
        let _v : (Sast.expressao Ast.comando) = 
# 132 "sintatico.mly"
                                          ( CmdRetorno e)
# 1465 "sintatico.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (c : (Sast.expressao Ast.comando)) = _v in
        let _v : (Sast.expressao Ast.comando) = 
# 109 "sintatico.mly"
                              ( c )
# 1473 "sintatico.ml"
         in
        _menhir_goto_comando _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_variavel : _menhir_env -> 'ttv_tail -> _menhir_state -> (Sast.expressao Ast.variavel) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ACOL _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APAR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | BOOL _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | ID _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | INT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | STRING _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61)
    | PTO _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (x : (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 1523 "sintatico.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (v : (Sast.expressao Ast.variavel))), (_2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1528 "sintatico.ml"
            ))) = _menhir_stack in
            let _v : (Sast.expressao Ast.variavel) = 
# 161 "sintatico.mly"
                              ( VarCampo (v,x) )
# 1533 "sintatico.ml"
             in
            _menhir_goto_variavel _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | ATRIB _ | CONCAT _ | DIFER _ | DIV _ | ELOG _ | FCOL _ | FPAR _ | IGUAL _ | MAIOR _ | MAIS _ | MENOR _ | MENOS _ | MULT _ | OULOG _ | PTV _ | VIRG _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (v : (Sast.expressao Ast.variavel))) = _menhir_stack in
        let _v : (Sast.expressao) = 
# 135 "sintatico.mly"
                      ( ExpVar v    )
# 1548 "sintatico.ml"
         in
        _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_loption_separated_nonempty_list_VIRG_expressao__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Sast.expressao Ast.expressoes) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FPAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_4 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1572 "sintatico.ml"
        )) = _v in
        let (((_menhir_stack, _menhir_s, (nome : (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 1577 "sintatico.ml"
        ))), (_2 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1581 "sintatico.ml"
        ))), _, (xs0 : (Sast.expressao Ast.expressoes))) = _menhir_stack in
        let _v : (Sast.expressao) = let args =
          let xs = xs0 in
          
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 1588 "sintatico.ml"
          
        in
        
# 143 "sintatico.mly"
                                                                 (
             ExpChamada  (nome, args))
# 1595 "sintatico.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState52 | MenhirState112 | MenhirState105 | MenhirState101 | MenhirState98 | MenhirState55 | MenhirState93 | MenhirState57 | MenhirState61 | MenhirState63 | MenhirState82 | MenhirState84 | MenhirState80 | MenhirState78 | MenhirState72 | MenhirState76 | MenhirState74 | MenhirState68 | MenhirState70 | MenhirState65 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack)
        | MenhirState137 | MenhirState49 | MenhirState132 | MenhirState97 | MenhirState109 | MenhirState121 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | PTV _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1614 "sintatico.ml"
                )) = _v in
                let (_menhir_stack, _menhir_s, (exp : (Sast.expressao))) = _menhir_stack in
                let _v : (Sast.expressao Ast.comando) = 
# 130 "sintatico.mly"
                                 ( CmdChamada exp )
# 1620 "sintatico.ml"
                 in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (c : (Sast.expressao Ast.comando)) = _v in
                let _v : (Sast.expressao Ast.comando) = 
# 108 "sintatico.mly"
                              ( c )
# 1628 "sintatico.ml"
                 in
                _menhir_goto_comando _menhir_env _menhir_stack _menhir_s _v
            | ATRIB _ | CONCAT _ | DIFER _ | DIV _ | ELOG _ | IGUAL _ | MAIOR _ | MAIS _ | MENOR _ | MENOS _ | MULT _ | OULOG _ ->
                _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            _menhir_fail ())
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_expressao : _menhir_env -> 'ttv_tail -> _menhir_state -> (Sast.expressao) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONCAT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | DIFER _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | ELOG _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | FCOL _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1672 "sintatico.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (v : (Sast.expressao Ast.variavel))), (_2 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1677 "sintatico.ml"
            ))), _, (e : (Sast.expressao))) = _menhir_stack in
            let _v : (Sast.expressao Ast.variavel) = 
# 162 "sintatico.mly"
                                           ( VarElemento (v,e) )
# 1682 "sintatico.ml"
             in
            _menhir_goto_variavel _menhir_env _menhir_stack _menhir_s _v
        | IGUAL _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOS _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | OULOG _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONCAT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | DIFER _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | ELOG _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | IGUAL _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOS _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | ATRIB _ | FCOL _ | FPAR _ | OULOG _ | PTV _ | VIRG _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Sast.expressao))), (pos0 : (
# 35 "sintatico.mly"
       (Lexing.position)
# 1735 "sintatico.ml"
            ))), _, (e2 : (Sast.expressao))) = _menhir_stack in
            let _v : (Sast.expressao) = let op =
              let pos = pos0 in
              
# 156 "sintatico.mly"
                       ( (Ou, pos)    )
# 1742 "sintatico.ml"
              
            in
            
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1748 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (e1 : (Sast.expressao))), (pos0 : (
# 28 "sintatico.mly"
       (Lexing.position)
# 1763 "sintatico.ml"
        ))), _, (e2 : (Sast.expressao))) = _menhir_stack in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 149 "sintatico.mly"
                       ( (Mult, pos)  )
# 1770 "sintatico.ml"
          
        in
        
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1776 "sintatico.ml"
         in
        _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | ATRIB _ | CONCAT _ | DIFER _ | ELOG _ | FCOL _ | FPAR _ | IGUAL _ | MAIOR _ | MAIS _ | MENOR _ | MENOS _ | OULOG _ | PTV _ | VIRG _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Sast.expressao))), (pos0 : (
# 27 "sintatico.mly"
       (Lexing.position)
# 1793 "sintatico.ml"
            ))), _, (e2 : (Sast.expressao))) = _menhir_stack in
            let _v : (Sast.expressao) = let op =
              let pos = pos0 in
              
# 148 "sintatico.mly"
                       ( (Menos, pos) )
# 1800 "sintatico.ml"
              
            in
            
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1806 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (e1 : (Sast.expressao))), (pos0 : (
# 29 "sintatico.mly"
       (Lexing.position)
# 1821 "sintatico.ml"
        ))), _, (e2 : (Sast.expressao))) = _menhir_stack in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 150 "sintatico.mly"
                       ( (Div, pos)   )
# 1828 "sintatico.ml"
          
        in
        
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1834 "sintatico.ml"
         in
        _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONCAT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOS _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | ATRIB _ | DIFER _ | ELOG _ | FCOL _ | FPAR _ | IGUAL _ | MAIOR _ | MENOR _ | OULOG _ | PTV _ | VIRG _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Sast.expressao))), (pos0 : (
# 30 "sintatico.mly"
       (Lexing.position)
# 1857 "sintatico.ml"
            ))), _, (e2 : (Sast.expressao))) = _menhir_stack in
            let _v : (Sast.expressao) = let op =
              let pos = pos0 in
              
# 151 "sintatico.mly"
                       ( (Menor, pos) )
# 1864 "sintatico.ml"
              
            in
            
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1870 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | ATRIB _ | CONCAT _ | DIFER _ | ELOG _ | FCOL _ | FPAR _ | IGUAL _ | MAIOR _ | MAIS _ | MENOR _ | MENOS _ | OULOG _ | PTV _ | VIRG _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Sast.expressao))), (pos0 : (
# 26 "sintatico.mly"
       (Lexing.position)
# 1893 "sintatico.ml"
            ))), _, (e2 : (Sast.expressao))) = _menhir_stack in
            let _v : (Sast.expressao) = let op =
              let pos = pos0 in
              
# 147 "sintatico.mly"
                ( (Mais, pos)  )
# 1900 "sintatico.ml"
              
            in
            
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1906 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOS _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | ATRIB _ | CONCAT _ | DIFER _ | ELOG _ | FCOL _ | FPAR _ | IGUAL _ | MAIOR _ | MENOR _ | OULOG _ | PTV _ | VIRG _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Sast.expressao))), (pos0 : (
# 36 "sintatico.mly"
       (Lexing.position)
# 1933 "sintatico.ml"
            ))), _, (e2 : (Sast.expressao))) = _menhir_stack in
            let _v : (Sast.expressao) = let op =
              let pos = pos0 in
              
# 157 "sintatico.mly"
                       ( (Concat, pos))
# 1940 "sintatico.ml"
              
            in
            
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1946 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONCAT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOS _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | ATRIB _ | DIFER _ | ELOG _ | FCOL _ | FPAR _ | IGUAL _ | MAIOR _ | MENOR _ | OULOG _ | PTV _ | VIRG _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Sast.expressao))), (pos0 : (
# 33 "sintatico.mly"
       (Lexing.position)
# 1975 "sintatico.ml"
            ))), _, (e2 : (Sast.expressao))) = _menhir_stack in
            let _v : (Sast.expressao) = let op =
              let pos = pos0 in
              
# 154 "sintatico.mly"
                       ( (Maior, pos) )
# 1982 "sintatico.ml"
              
            in
            
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1988 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONCAT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOS _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | ATRIB _ | DIFER _ | ELOG _ | FCOL _ | FPAR _ | IGUAL _ | OULOG _ | PTV _ | VIRG _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Sast.expressao))), (pos0 : (
# 31 "sintatico.mly"
       (Lexing.position)
# 2021 "sintatico.ml"
            ))), _, (e2 : (Sast.expressao))) = _menhir_stack in
            let _v : (Sast.expressao) = let op =
              let pos = pos0 in
              
# 152 "sintatico.mly"
                       ( (Igual, pos) )
# 2028 "sintatico.ml"
              
            in
            
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2034 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONCAT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | DIFER _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | IGUAL _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOS _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | ATRIB _ | ELOG _ | FCOL _ | FPAR _ | OULOG _ | PTV _ | VIRG _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Sast.expressao))), (pos0 : (
# 34 "sintatico.mly"
       (Lexing.position)
# 2071 "sintatico.ml"
            ))), _, (e2 : (Sast.expressao))) = _menhir_stack in
            let _v : (Sast.expressao) = let op =
              let pos = pos0 in
              
# 155 "sintatico.mly"
                       ( (E, pos)     )
# 2078 "sintatico.ml"
              
            in
            
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2084 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONCAT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOS _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | ATRIB _ | DIFER _ | ELOG _ | FCOL _ | FPAR _ | IGUAL _ | OULOG _ | PTV _ | VIRG _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Sast.expressao))), (pos0 : (
# 32 "sintatico.mly"
       (Lexing.position)
# 2117 "sintatico.ml"
            ))), _, (e2 : (Sast.expressao))) = _menhir_stack in
            let _v : (Sast.expressao) = let op =
              let pos = pos0 in
              
# 153 "sintatico.mly"
                       ( (Difer, pos) )
# 2124 "sintatico.ml"
              
            in
            
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2130 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONCAT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | DIFER _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | ELOG _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | FPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 2159 "sintatico.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 2164 "sintatico.ml"
            ))), _, (e : (Sast.expressao))) = _menhir_stack in
            let _v : (Sast.expressao) = 
# 141 "sintatico.mly"
                           ( e )
# 2169 "sintatico.ml"
             in
            _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v
        | IGUAL _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOS _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | OULOG _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState105 | MenhirState98 | MenhirState93 | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONCAT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | DIFER _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | ELOG _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | IGUAL _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOS _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | OULOG _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | VIRG _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APAR _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | BOOL _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | ID _v ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | INT _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | STRING _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93)
        | FPAR _ | PTV _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Sast.expressao))) = _menhir_stack in
            let _v : (Sast.expressao Ast.expressoes) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2245 "sintatico.ml"
             in
            _menhir_goto_separated_nonempty_list_VIRG_expressao_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONCAT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | DIFER _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | ELOG _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | FPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ENTAO _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | APAR _v ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | BOOL _v ->
                    _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | ENTRADA _v ->
                    _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | ID _v ->
                    _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | INT _v ->
                    _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | RETORNE _v ->
                    _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | SAIDA _v ->
                    _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | SE _v ->
                    _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | STRING _v ->
                    _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | IGUAL _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOS _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | OULOG _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONCAT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | DIFER _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | ELOG _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | IGUAL _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOS _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | OULOG _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | PTV _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Sast.expressao))) = _menhir_stack in
            let _v : (Sast.expressao option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 2360 "sintatico.ml"
             in
            _menhir_goto_option_expressao_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState137 | MenhirState132 | MenhirState49 | MenhirState97 | MenhirState121 | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ATRIB _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APAR _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | BOOL _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | ID _v ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | INT _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | STRING _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112)
        | CONCAT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | DIFER _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | ELOG _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | IGUAL _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOS _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | OULOG _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CONCAT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | DIFER _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | ELOG _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | IGUAL _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MAIS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | MENOS _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | OULOG _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | PTV _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2456 "sintatico.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (esq : (Sast.expressao))), (_2 : (
# 25 "sintatico.mly"
       (Lexing.position)
# 2461 "sintatico.ml"
            ))), _, (dir : (Sast.expressao))) = _menhir_stack in
            let _v : (Sast.expressao Ast.comando) = 
# 111 "sintatico.mly"
                                                          (
      CmdAtrib (esq,dir)
)
# 2468 "sintatico.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (c : (Sast.expressao Ast.comando)) = _v in
            let _v : (Sast.expressao Ast.comando) = 
# 104 "sintatico.mly"
                              ( c )
# 2476 "sintatico.ml"
             in
            _menhir_goto_comando _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_declaracao_de_funcao_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Sast.expressao Ast.funcoes) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | INICIO _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APAR _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | BOOL _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | ENTRADA _v ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | ID _v ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | INT _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | RETORNE _v ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | SAIDA _v ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | SE _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | STRING _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
            | FIM _ ->
                _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState142 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Sast.expressao Ast.funcao))), _, (xs : (Sast.expressao Ast.funcoes))) = _menhir_stack in
        let _v : (Sast.expressao Ast.funcoes) = 
# 187 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2540 "sintatico.ml"
         in
        _menhir_goto_list_declaracao_de_funcao_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_VIRG_parametro__ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Ast.ident Ast.pos * Ast.tipo) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FPAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DPTOS _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ARRANJO _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
            | BOOLEANO _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
            | CADEIA _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
            | INTEIRO _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
            | REGISTRO _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 2595 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DPTOS _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARRANJO _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | BOOLEANO _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | CADEIA _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | INTEIRO _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | REGISTRO _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 2632 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DPTOS _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARRANJO _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | BOOLEANO _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | CADEIA _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | INTEIRO _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | REGISTRO _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_tipo_simples : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.tipo) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (t : (Ast.tipo)) = _v in
    let _v : (Ast.tipo) = 
# 82 "sintatico.mly"
                      ( t )
# 2674 "sintatico.ml"
     in
    _menhir_goto_tipo _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Sast.expressao Ast.comandos) = 
# 185 "/usr/share/menhir/standard.mly"
    ( [] )
# 2683 "sintatico.ml"
     in
    _menhir_goto_list_comando_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run50 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 2690 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (s : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 2698 "sintatico.ml"
    )) = _v in
    let _v : (Sast.expressao) = 
# 137 "sintatico.mly"
                      ( ExpString s )
# 2703 "sintatico.ml"
     in
    _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "sintatico.mly"
       (Lexing.position)
# 2710 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APAR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | BOOL _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | ID _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | INT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | STRING _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run98 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 24 "sintatico.mly"
       (Lexing.position)
# 2747 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | BOOL _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | ID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | INT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | STRING _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98

and _menhir_run101 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "sintatico.mly"
       (Lexing.position)
# 2772 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
    | BOOL _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
    | ID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
    | INT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
    | STRING _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
    | PTV _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState101 in
        let _v : (Sast.expressao option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 2795 "sintatico.ml"
         in
        _menhir_goto_option_expressao_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "sintatico.mly"
       (int * Lexing.position)
# 2806 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 8 "sintatico.mly"
       (int * Lexing.position)
# 2814 "sintatico.ml"
    )) = _v in
    let _v : (Sast.expressao) = 
# 136 "sintatico.mly"
                      ( ExpInt i    )
# 2819 "sintatico.ml"
     in
    _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v

and _menhir_run54 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 2826 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APAR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | BOOL _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | ID _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | INT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | STRING _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | FPAR _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState55 in
            let _v : (Sast.expressao Ast.expressoes) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 2855 "sintatico.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_VIRG_expressao__ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55)
    | ACOL _ | ATRIB _ | CONCAT _ | DIFER _ | DIV _ | ELOG _ | FCOL _ | FPAR _ | IGUAL _ | MAIOR _ | MAIS _ | MENOR _ | MENOS _ | MULT _ | OULOG _ | PTO _ | PTV _ | VIRG _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 2867 "sintatico.ml"
        ))) = _menhir_stack in
        let _v : (Sast.expressao Ast.variavel) = 
# 160 "sintatico.mly"
                     ( VarSimples x )
# 2872 "sintatico.ml"
         in
        _menhir_goto_variavel _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run105 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "sintatico.mly"
       (Lexing.position)
# 2885 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | BOOL _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | ID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | INT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | STRING _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105

and _menhir_run56 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "sintatico.mly"
       (bool * Lexing.position)
# 2910 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (b : (
# 11 "sintatico.mly"
       (bool * Lexing.position)
# 2918 "sintatico.ml"
    )) = _v in
    let _v : (Sast.expressao) = 
# 138 "sintatico.mly"
                      ( ExpBool b   )
# 2923 "sintatico.ml"
     in
    _menhir_goto_expressao _menhir_env _menhir_stack _menhir_s _v

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "sintatico.mly"
       (Lexing.position)
# 2930 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | BOOL _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | ID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | INT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | STRING _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_reduce36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Sast.expressao Ast.funcoes) = 
# 185 "/usr/share/menhir/standard.mly"
    ( [] )
# 2957 "sintatico.ml"
     in
    _menhir_goto_list_declaracao_de_funcao_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "sintatico.mly"
       (Lexing.position)
# 2964 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
            | FPAR _ ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState36 in
                let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 2991 "sintatico.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_VIRG_parametro__ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "sintatico.mly"
       (Lexing.position)
# 3019 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "sintatico.mly"
       (Lexing.position)
# 3036 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 3044 "sintatico.ml"
    )) = _v in
    let _v : (Ast.tipo) = 
# 87 "sintatico.mly"
                       ( TipoInt    )
# 3049 "sintatico.ml"
     in
    _menhir_goto_tipo_simples _menhir_env _menhir_stack _menhir_s _v

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "sintatico.mly"
       (Lexing.position)
# 3056 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 3064 "sintatico.ml"
    )) = _v in
    let _v : (Ast.tipo) = 
# 88 "sintatico.mly"
                       ( TipoString )
# 3069 "sintatico.ml"
     in
    _menhir_goto_tipo_simples _menhir_env _menhir_stack _menhir_s _v

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "sintatico.mly"
       (Lexing.position)
# 3076 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 3084 "sintatico.ml"
    )) = _v in
    let _v : (Ast.tipo) = 
# 89 "sintatico.mly"
                       ( TipoBool   )
# 3089 "sintatico.ml"
     in
    _menhir_goto_tipo_simples _menhir_env _menhir_stack _menhir_s _v

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "sintatico.mly"
       (Lexing.position)
# 3096 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ACOL _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | INT _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | PPTO _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | INT _v ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (fim : (
# 8 "sintatico.mly"
       (int * Lexing.position)
# 3128 "sintatico.ml"
                    )) = _v in
                    let ((_menhir_stack, (inicio : (
# 8 "sintatico.mly"
       (int * Lexing.position)
# 3133 "sintatico.ml"
                    ))), (_2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 3137 "sintatico.ml"
                    ))) = _menhir_stack in
                    let _v : (int Ast.pos * int Ast.pos) = 
# 102 "sintatico.mly"
                                 ( (inicio, fim) )
# 3142 "sintatico.ml"
                     in
                    let _menhir_stack = (_menhir_stack, _v) in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    assert (not _menhir_env._menhir_error);
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | FCOL _v ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | DE _v ->
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let _menhir_stack = (_menhir_stack, _v) in
                            let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            (match _tok with
                            | ARRANJO _v ->
                                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
                            | BOOLEANO _v ->
                                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
                            | CADEIA _v ->
                                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
                            | INTEIRO _v ->
                                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
                            | REGISTRO _v ->
                                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let ((((_menhir_stack, _menhir_s, _), _), _), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    raise _eRR)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                raise _eRR)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_list_declaracao_de_variavel_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.declaracao list list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FUNCAO _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | INICIO _ ->
            _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33)
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | INICIO _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APAR _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | BOOL _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | ENTRADA _v ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | ID _v ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | INT _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | RETORNE _v ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | SAIDA _v ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | SE _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | STRING _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | FIM _ ->
                _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState134 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Ast.declaracao list))), _, (xs : (Ast.declaracao list list))) = _menhir_stack in
        let _v : (Ast.declaracao list list) = 
# 187 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 3275 "sintatico.ml"
         in
        _menhir_goto_list_declaracao_de_variavel_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_VIRG_ID_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.ident Ast.pos list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (x : (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 3291 "sintatico.ml"
        ))), (_2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 3295 "sintatico.ml"
        ))), _, (xs : (Ast.ident Ast.pos list))) = _menhir_stack in
        let _v : (Ast.ident Ast.pos list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 3300 "sintatico.ml"
         in
        _menhir_goto_separated_nonempty_list_VIRG_ID_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState134 | MenhirState47 | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DPTOS _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ARRANJO _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
            | BOOLEANO _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
            | CADEIA _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
            | INTEIRO _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
            | REGISTRO _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState142 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState137 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState134 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState132 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState105 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s, _), _), _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_reduce38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.declaracao list list) = 
# 185 "/usr/share/menhir/standard.mly"
    ( [] )
# 3508 "sintatico.ml"
     in
    _menhir_goto_list_declaracao_de_variavel_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 3515 "sintatico.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VIRG _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3)
    | DPTOS _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 3539 "sintatico.ml"
        ))) = _menhir_stack in
        let _v : (Ast.ident Ast.pos list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 3544 "sintatico.ml"
         in
        _menhir_goto_separated_nonempty_list_VIRG_ID_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and programa : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 48 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 3569 "sintatico.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PROGRAMA _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | FUNCAO _ | INICIO _ ->
            _menhir_reduce38 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR)

# 219 "/usr/share/menhir/standard.mly"
  


# 3607 "sintatico.ml"
