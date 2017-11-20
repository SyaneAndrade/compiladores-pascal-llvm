
(* The type of tokens. *)

type token = 
  | WHILE
  | VIRG
  | VAR
  | TO
  | THEN
  | STRING
  | REAL
  | PROGRAM
  | PROCEDURE
  | PRINTLN
  | PRINT
  | PONTOVIRG
  | PONTO
  | OU
  | OF
  | MULTIPLICA
  | MODULO
  | MENOS
  | MENORIGUAL
  | MENOR
  | MAIS
  | MAIORIGUAL
  | MAIOR
  | LITSTRING of (string)
  | LITREAL of (float)
  | LITINT of (int)
  | LEIALN
  | LEIA
  | INTEGER
  | IGUAL
  | IF
  | ID of (string)
  | FUNCAO
  | FPAR
  | FOR
  | EOF
  | ENDPROG
  | END
  | ELSE
  | E
  | DOISPONTOS
  | DO
  | DIVIDE
  | DIFERENTE
  | CHAR
  | CASE
  | BOOLEAN
  | BEGIN
  | ATRIB
  | APAR

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val programa: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.programa)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val programa: Lexing.position -> (Ast.programa) MenhirInterpreter.checkpoint
  
end
