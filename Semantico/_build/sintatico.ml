
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20170607

module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE of (
# 21 "sintatico.mly"
       (Lexing.position)
# 16 "sintatico.ml"
  )
    | VIRG of (
# 17 "sintatico.mly"
       (Lexing.position)
# 21 "sintatico.ml"
  )
    | VAR of (
# 16 "sintatico.mly"
       (Lexing.position)
# 26 "sintatico.ml"
  )
    | TO of (
# 21 "sintatico.mly"
       (Lexing.position)
# 31 "sintatico.ml"
  )
    | THEN of (
# 20 "sintatico.mly"
       (Lexing.position)
# 36 "sintatico.ml"
  )
    | STRING of (
# 19 "sintatico.mly"
       (Lexing.position)
# 41 "sintatico.ml"
  )
    | REAL of (
# 19 "sintatico.mly"
       (Lexing.position)
# 46 "sintatico.ml"
  )
    | PROGRAM of (
# 12 "sintatico.mly"
       (string * Lexing.position)
# 51 "sintatico.ml"
  )
    | PROCEDURE of (
# 41 "sintatico.mly"
       (Lexing.position)
# 56 "sintatico.ml"
  )
    | PRINTLN of (
# 23 "sintatico.mly"
       (Lexing.position)
# 61 "sintatico.ml"
  )
    | PRINT of (
# 23 "sintatico.mly"
       (Lexing.position)
# 66 "sintatico.ml"
  )
    | PONTOVIRG of (
# 17 "sintatico.mly"
       (Lexing.position)
# 71 "sintatico.ml"
  )
    | PONTO of (
# 17 "sintatico.mly"
       (Lexing.position)
# 76 "sintatico.ml"
  )
    | OU of (
# 37 "sintatico.mly"
       (Lexing.position)
# 81 "sintatico.ml"
  )
    | OF of (
# 39 "sintatico.mly"
       (Lexing.position)
# 86 "sintatico.ml"
  )
    | MULTIPLICA of (
# 27 "sintatico.mly"
       (Lexing.position)
# 91 "sintatico.ml"
  )
    | MODULO of (
# 29 "sintatico.mly"
       (Lexing.position)
# 96 "sintatico.ml"
  )
    | MENOS of (
# 26 "sintatico.mly"
       (Lexing.position)
# 101 "sintatico.ml"
  )
    | MENORIGUAL of (
# 32 "sintatico.mly"
       (Lexing.position)
# 106 "sintatico.ml"
  )
    | MENOR of (
# 30 "sintatico.mly"
       (Lexing.position)
# 111 "sintatico.ml"
  )
    | MAIS of (
# 25 "sintatico.mly"
       (Lexing.position)
# 116 "sintatico.ml"
  )
    | MAIORIGUAL of (
# 33 "sintatico.mly"
       (Lexing.position)
# 121 "sintatico.ml"
  )
    | MAIOR of (
# 35 "sintatico.mly"
       (Lexing.position)
# 126 "sintatico.ml"
  )
    | LITSTRING of (
# 11 "sintatico.mly"
       (string * Lexing.position)
# 131 "sintatico.ml"
  )
    | LITREAL of (
# 9 "sintatico.mly"
       (float * Lexing.position)
# 136 "sintatico.ml"
  )
    | LITINT of (
# 8 "sintatico.mly"
       (int * Lexing.position)
# 141 "sintatico.ml"
  )
    | LEIALN of (
# 22 "sintatico.mly"
       (Lexing.position)
# 146 "sintatico.ml"
  )
    | LEIA of (
# 22 "sintatico.mly"
       (Lexing.position)
# 151 "sintatico.ml"
  )
    | INTEGER of (
# 19 "sintatico.mly"
       (Lexing.position)
# 156 "sintatico.ml"
  )
    | IGUAL of (
# 31 "sintatico.mly"
       (Lexing.position)
# 161 "sintatico.ml"
  )
    | IF of (
# 20 "sintatico.mly"
       (Lexing.position)
# 166 "sintatico.ml"
  )
    | ID of (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 171 "sintatico.ml"
  )
    | FUNCAO of (
# 40 "sintatico.mly"
       (Lexing.position)
# 176 "sintatico.ml"
  )
    | FPAR of (
# 18 "sintatico.mly"
       (Lexing.position)
# 181 "sintatico.ml"
  )
    | FOR of (
# 21 "sintatico.mly"
       (Lexing.position)
# 186 "sintatico.ml"
  )
    | EOF
    | ENDPROG of (
# 15 "sintatico.mly"
       (Lexing.position)
# 192 "sintatico.ml"
  )
    | END of (
# 14 "sintatico.mly"
       (Lexing.position)
# 197 "sintatico.ml"
  )
    | ELSE of (
# 20 "sintatico.mly"
       (Lexing.position)
# 202 "sintatico.ml"
  )
    | E of (
# 36 "sintatico.mly"
       (Lexing.position)
# 207 "sintatico.ml"
  )
    | DOISPONTOS of (
# 17 "sintatico.mly"
       (Lexing.position)
# 212 "sintatico.ml"
  )
    | DO of (
# 21 "sintatico.mly"
       (Lexing.position)
# 217 "sintatico.ml"
  )
    | DIVIDE of (
# 28 "sintatico.mly"
       (Lexing.position)
# 222 "sintatico.ml"
  )
    | DIFERENTE of (
# 34 "sintatico.mly"
       (Lexing.position)
# 227 "sintatico.ml"
  )
    | CHAR of (
# 19 "sintatico.mly"
       (Lexing.position)
# 232 "sintatico.ml"
  )
    | CASE of (
# 38 "sintatico.mly"
       (Lexing.position)
# 237 "sintatico.ml"
  )
    | BOOLEAN of (
# 43 "sintatico.mly"
       (Lexing.position)
# 242 "sintatico.ml"
  )
    | BOOL of (
# 42 "sintatico.mly"
       (bool * Lexing.position)
# 247 "sintatico.ml"
  )
    | BEGIN of (
# 13 "sintatico.mly"
       (Lexing.position)
# 252 "sintatico.ml"
  )
    | ATRIB of (
# 24 "sintatico.mly"
       (Lexing.position)
# 257 "sintatico.ml"
  )
    | APAR of (
# 18 "sintatico.mly"
       (Lexing.position)
# 262 "sintatico.ml"
  )
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

# 2 "sintatico.mly"
  
open Lexing
open Ast
open Sast

# 278 "sintatico.ml"

module Tables = struct
  
  include MenhirBasics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | APAR _ ->
          51
      | ATRIB _ ->
          50
      | BEGIN _ ->
          49
      | BOOL _ ->
          48
      | BOOLEAN _ ->
          47
      | CASE _ ->
          46
      | CHAR _ ->
          45
      | DIFERENTE _ ->
          44
      | DIVIDE _ ->
          43
      | DO _ ->
          42
      | DOISPONTOS _ ->
          41
      | E _ ->
          40
      | ELSE _ ->
          39
      | END _ ->
          38
      | ENDPROG _ ->
          37
      | EOF ->
          36
      | FOR _ ->
          35
      | FPAR _ ->
          34
      | FUNCAO _ ->
          33
      | ID _ ->
          32
      | IF _ ->
          31
      | IGUAL _ ->
          30
      | INTEGER _ ->
          29
      | LEIA _ ->
          28
      | LEIALN _ ->
          27
      | LITINT _ ->
          26
      | LITREAL _ ->
          25
      | LITSTRING _ ->
          24
      | MAIOR _ ->
          23
      | MAIORIGUAL _ ->
          22
      | MAIS _ ->
          21
      | MENOR _ ->
          20
      | MENORIGUAL _ ->
          19
      | MENOS _ ->
          18
      | MODULO _ ->
          17
      | MULTIPLICA _ ->
          16
      | OF _ ->
          15
      | OU _ ->
          14
      | PONTO _ ->
          13
      | PONTOVIRG _ ->
          12
      | PRINT _ ->
          11
      | PRINTLN _ ->
          10
      | PROCEDURE _ ->
          9
      | PROGRAM _ ->
          8
      | REAL _ ->
          7
      | STRING _ ->
          6
      | THEN _ ->
          5
      | TO _ ->
          4
      | VAR _ ->
          3
      | VIRG _ ->
          2
      | WHILE _ ->
          1
  
  and error_terminal =
    0
  
  and token2value : token -> Obj.t =
    fun _tok ->
      match _tok with
      | APAR _v ->
          Obj.repr _v
      | ATRIB _v ->
          Obj.repr _v
      | BEGIN _v ->
          Obj.repr _v
      | BOOL _v ->
          Obj.repr _v
      | BOOLEAN _v ->
          Obj.repr _v
      | CASE _v ->
          Obj.repr _v
      | CHAR _v ->
          Obj.repr _v
      | DIFERENTE _v ->
          Obj.repr _v
      | DIVIDE _v ->
          Obj.repr _v
      | DO _v ->
          Obj.repr _v
      | DOISPONTOS _v ->
          Obj.repr _v
      | E _v ->
          Obj.repr _v
      | ELSE _v ->
          Obj.repr _v
      | END _v ->
          Obj.repr _v
      | ENDPROG _v ->
          Obj.repr _v
      | EOF ->
          Obj.repr ()
      | FOR _v ->
          Obj.repr _v
      | FPAR _v ->
          Obj.repr _v
      | FUNCAO _v ->
          Obj.repr _v
      | ID _v ->
          Obj.repr _v
      | IF _v ->
          Obj.repr _v
      | IGUAL _v ->
          Obj.repr _v
      | INTEGER _v ->
          Obj.repr _v
      | LEIA _v ->
          Obj.repr _v
      | LEIALN _v ->
          Obj.repr _v
      | LITINT _v ->
          Obj.repr _v
      | LITREAL _v ->
          Obj.repr _v
      | LITSTRING _v ->
          Obj.repr _v
      | MAIOR _v ->
          Obj.repr _v
      | MAIORIGUAL _v ->
          Obj.repr _v
      | MAIS _v ->
          Obj.repr _v
      | MENOR _v ->
          Obj.repr _v
      | MENORIGUAL _v ->
          Obj.repr _v
      | MENOS _v ->
          Obj.repr _v
      | MODULO _v ->
          Obj.repr _v
      | MULTIPLICA _v ->
          Obj.repr _v
      | OF _v ->
          Obj.repr _v
      | OU _v ->
          Obj.repr _v
      | PONTO _v ->
          Obj.repr _v
      | PONTOVIRG _v ->
          Obj.repr _v
      | PRINT _v ->
          Obj.repr _v
      | PRINTLN _v ->
          Obj.repr _v
      | PROCEDURE _v ->
          Obj.repr _v
      | PROGRAM _v ->
          Obj.repr _v
      | REAL _v ->
          Obj.repr _v
      | STRING _v ->
          Obj.repr _v
      | THEN _v ->
          Obj.repr _v
      | TO _v ->
          Obj.repr _v
      | VAR _v ->
          Obj.repr _v
      | VIRG _v ->
          Obj.repr _v
      | WHILE _v ->
          Obj.repr _v
  
  and default_reduction =
    (8, "\000\000\000\000\000\000\000\000;5\000\000\000CBADE83\000\000\000\000\000\000\000\000@\000\021\000\000\000\022\000\000\000\026\027\025\000\000\002\028\000\000\000\000\000 \029\000\"\000\000\000!\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000+\000\000\000\003\000\004\000\000\000\000\000\000\000\018\000\000=\000\000\000\000\017\000\000\000\000\014\000\000\000\000\r\000\000\000\000\000\000\000\000\012\000\000\000\000\n\006\b\011\t\007\005\015\000\000\000\000\000\000\0007\000-\019\000\000\020\000\000\023\000/\000\000\000\000\0009\0001\001")
  
  and error =
    (52, "\000\128\000\000\000\000\000\000\128\000\000\000\000\016\000\000\000\192\000@\000\000\000\b\000\000\000\000\000\000\000\000\016\000\000\000\n\004\000 \000\000\000\000@\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\160@\000\000\000\000\000\004\000\003\000\000\004\000\005\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\000\000\000\000\004\000\003\000\000\004\000\005\000\000\128\000\000\000\000\016\000\000\000\128\000@\000\000\000\b\000\000\000\000\000\000\000@\0000\000\000@\000P\000\000\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\003\000\000\004\000\005\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004@0\000\249\146\000\144\000\000\014\b\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002@\175\240\"\011\131\000\000\000\224\160\000\144\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\014\b\000\t\000\002\255\002 \152\000\000\000\014\b\000\t$\n\255\002 \184 \000\000\014\b\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\224\128\000\144\000\000\000\000\000\000\000\000\000\224\128\000\146@\175\240\"\011\130\000\000\000\224\128\000\144\000\000\000\000\000\000\000\000\000\224\128\000\146@\175\240\"\011\130\000\000\000\224\128\000\146@\175\240\"\011\130\000\000\000\224\128\000\146@\175\240\"\011\130\000\000\000\224\128\000\146@\175\240\"\011\130\000\000\000\224\128\000\146@\175\240\"\011\130\000\000\000\224\128\000\146@\175\240\"\011\130\000\000\000\224\128\000\146@\175\240\"\011\130\000\000\000\224\128\000\146@\175\240\"\011\130\000\000\000\000\000\000\002\000\000\000\002\000\000\000\000\000\224\128\000\146\000/\240\"\t\128\000\000\000\000\000\000\002\000/\240\"\t\128\000\000\000\000\000\000\000\000/\240 \011\128\000\000\000\000\000\000D\003\000\015\153 \t\000\000\000\000\000\000\016\000\000\014\b\000\t\000\000\000\000 \000\000\000\128\000\000\000\000\000\000\000\000\000\000\002\000/\240\"\t\128\000\000\000\224\128\000\144\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\014\b\000\t\000\000\000\000 \000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\224\128\000\144\000\000\000\002\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\014\b\000\t\000\000\000\000 \000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\014\b\000\t\004\002\255\002\000\152\000\000\000\000\000\000\004@0\000\249\146\000\144\000\000\014\b\000\t\000\002\255\002\000\152 \000\000\014\b\000\t\000\n\255\002\000\152\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\014\b\000\t\000\002\255\002\000\184\004\003\000\015\153\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@2\255\251\150\152\176\000\000\000\000 \000@0\000\249\151\000\144\000\000\000\000\000\004@0\000\249\146\000\144\000\000\000\000 \000\000\b\000\000\000\000\000\000\000\000\000\000\000@0\000\249\150\000\144\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\128\000\000\000\000\000\000\000\000\000\000\001\000\000\000\b\000\004\000\000\000\000\000\000\001\000\000\000\b\000\004\000\000\000\000\000\000D\003\000\015\153@\t\000\000\000\000\004\000\000\000\000\000\000\128\000\000\000\000\000\000\000\001\000\000\000\012\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\000\011\000\015\000V\0003\000W\000=\000\003\000=\000\000\000\000\000=\000;\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000)\000\027\000\128\000(\000\006\000=\000\017\000\128\000\000\0004\000\000\000\014\000\128\000T\000\000\000\028\004\168\000P\000\000\000\000\000\000\000N\000P\000\000\000\000\000P\004\240\000P\000\164\000P\000\000\000\000\000P\000\000\000P\000\250\000P\000\000\000P\001P\000P\001\166\000P\001\252\000P\002R\000P\002\168\000P\002\254\000P\003T\000P\003\170\000\000\000V\000P\004,\000\000\004j\000\000\004,\000$\004\168\000\"\000P\000X\000\136\000\000\004\168\000P\000\000\000D\000P\000h\000\166\000\000\000\\\000P\000\144\000\190\000\000\000r\000P\000\152\000\202\000\000\000P\004,\000\130\004\168\000P\004\240\000P\004,\000\000\000\222\000P\004\168\004\168\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\158\003\224\000\138\004\168\000\162\000\216\000\000\004\168\000\000\000\000\000\166\000\222\000\000\000\180\000\234\000\000\000\006\000\000\000\006\000\164\004\168\000\192\000\196\000\000\000V\000\000\000\000"), (16, "\000=\000\030\000\026\000\006\000\197\000\n\000f\000\018\000\022\000=\000=\000\205\0002\000q\000V\000q\000q\000q\000q\000q\000q\000q\000q\000=\000=\000=\000=\000=\000Z\000q\000=\000=\000b\000n\000=\000\026\000=\000=\000z\000q\000\229\000]\000q\000q\000]\0012\000\189\000=\000\130\000q\000=\000]\000\181\000]\000\138\000]\000]\000]\000]\000]\000]\000]\000]\000\146\000\154\000\158\000\162\001N\001V\000]\0006\000:\000\166\000]\000\174\000\189\000\014\001:\001^\000]\001b\000]\000]\000]\000\165\001v\001~\000\165\000\178\000]\000\170\000\182\000\189\000>\000\165\001\130\000\165\001\138\000\198\000\210\000\218\000\234\000\250\000\242\001\002\001\n\001\146\001\150\001\158\000B\001\166\000F\001\018\001\170\001\186\001\214\000\165\002\n\002\018\002\026\002\030\0022\001\026\0026\000\165\000\226\001\"\000y\002>\002B\000y\002V\000\165\002^\002c\000\000\000\000\000y\000\000\000y\000\000\000\198\000\210\000y\000y\000y\000y\000y\000y\000\000\000\000\000\000\000\000\000\000\000\000\000y\000\000\000\000\000\000\000y\000\000\000\000\000\000\000\000\000\000\000y\000\000\000y\000\226\000y\000\145\000\000\000\000\000\145\000\000\000y\000\000\000\000\000\000\000\000\000\145\000\000\000\145\000\000\000\198\000\210\000\218\000\145\000\145\000\242\000\145\000\145\000\000\000\000\000\000\000\000\000\000\000\000\000\145\000\000\000\000\000\000\000\145\000\000\000\000\000\000\000\000\000\000\000\145\000\000\000\145\000\226\000\145\000u\000\000\000\000\000u\000\000\000\145\000\000\000\000\000\000\000\000\000u\000\000\000u\000\000\000\198\000\210\000u\000u\000u\000u\000u\000u\000\000\000\000\000\000\000\000\000\000\000\000\000u\000\000\000\000\000\000\000u\000\000\000\000\000\000\000\000\000\000\000u\000\000\000u\000\226\000u\000\137\000\000\000\000\000\137\000\000\000u\000\000\000\000\000\000\000\000\000\137\000\000\000\137\000\000\000\198\000\210\000\218\000\137\000\137\000\242\000\137\000\137\000\000\000\000\000\000\000\000\000\000\000\000\000\137\000\000\000\000\000\000\000\137\000\000\000\000\000\000\000\000\000\000\000\137\000\000\000\137\000\226\000\137\000\149\000\000\000\000\000\149\000\000\000\137\000\000\000\000\000\000\000\000\000\149\000\000\000\149\000\000\000\198\000\210\000\218\000\149\000\149\000\242\000\149\000\149\000\000\000\000\000\000\000\000\000\000\000\000\000\149\000\000\000\000\000\000\000\149\000\000\000\000\000\000\000\000\000\000\000\149\000\000\000\149\000\226\000\149\000\157\000\000\000\000\000\157\000\000\000\149\000\000\000\000\000\000\000\000\000\157\000\000\000\157\000\000\000\198\000\210\000\218\000\157\000\157\000\242\000\157\000\157\000\000\000\000\000\000\000\000\000\000\000\000\000\157\000\000\000\000\000\000\000\157\000\000\000\000\000\000\000\000\000\000\000\157\000\000\000\157\000\226\000\157\000\141\000\000\000\000\000\141\000\000\000\157\000\000\000\000\000\000\000\000\000\141\000\000\000\141\000\000\000\198\000\210\000\218\000\141\000\141\000\242\000\141\000\141\000\000\000\000\000\000\000\000\000\000\000\000\000\141\000\000\000\000\000\000\000\141\000\000\000\000\000\000\000\000\000\000\000\141\000\000\000\141\000\226\000\141\000\161\000\000\000\000\000\161\000\000\000\141\000\000\000\000\000\000\000\000\000\161\000\000\000\161\000\000\000\198\000\210\000\218\000\234\000\250\000\242\001\002\001\n\000\000\000\000\000\000\000\000\000\000\000\000\001\018\000\000\000\000\000\000\000\161\000\000\000\000\000\000\000\000\000\000\000\161\000\000\000\161\000\226\001\"\000\153\000\000\000\000\000\153\000\000\000\161\000\000\000\000\000\000\000\000\000\153\000\000\000\153\000\000\000\198\000\210\000\218\000\153\000\153\000\242\000\153\000\153\000\000\000\000\000\000\000\000\000\213\000\000\000\153\000\000\000\000\000\000\000\153\000\000\000\000\000\213\000\213\000\000\000\153\000\000\000\153\000\226\000\153\000\000\000\000\000\000\000\000\000\000\000\153\000\213\000\213\000\213\000\213\000\213\000\000\000\000\000\213\000\213\000\000\000\000\000\213\000\000\000\213\000\213\002\014\000\249\000\000\000\000\001\182\000\000\000\000\000\000\000\000\000\213\000\000\001\206\000\213\000\190\000\000\000\198\000\210\000\218\000\234\000\250\000\242\001\002\001\n\000\000\000\000\000\000\000\000\000\000\000\000\001\018\000\000\000\000\000\245\000\249\000\000\000\000\000\000\000\000\000\000\001\026\000\000\001J\000\226\001\"\000\190\000\000\000\198\000\210\000\218\000\234\000\250\000\242\001\002\001\n\000\000\000\000\000\000\000\000\000\000\000\000\001\018\000\000\000\150\001j\000\245\000\000\000\000\000\000\000\000\000\000\001\026\001R\001r\000\226\001\"\000\190\000\000\000\198\000\210\000\218\000\234\000\250\000\242\001\002\001\n\000\154\000\158\000\162\001\134\001\154\000\000\001\018\001\174\000\166\000\000\000\237\001\190\000\000\000\173\000\173\000\000\001\026\000\000\001\222\000\226\001\"\000\000\000\000\000\000\000\178\000\000\000\190\000\182\000\198\000\210\000\218\000\234\000\250\000\242\001\002\001\n\000\000\000\000\000\000\000\000\000\000\000\000\001\018\000\000\000\000\000\000\001*\000\000\000\000\000\000\000\000\000\000\001\026\000\000\000\000\000\226\001\"\000\000\000\000\000\000\000\000\000\000\001\198"))
  
  and lhs =
    (8, "\000\026\026\025\024\024\024\024\024\024\024\023\022\022\021\020\019\019\018\017\016\016\015\014\014\014\014\014\014\014\014\014\014\014\014\014\014\014\014\014\014\014\014\r\r\012\012\011\011\n\n\t\t\b\b\007\006\005\005\004\004\003\003\002\001\001\001\001\001")
  
  and goto =
    ((16, "\000,\000\000\000\228\000\000\000\000\000\170\000\000\0000\000\000\000\000\000\182\000\000\000P\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000R\000\000\000\184\000b\000\000\000\002\000\000\000\000\000\000\000\000\000\028\000\000\000\000\000\000\000\027\000l\000\000\000\000\000\000\000:\000\154\000\000\000\000\000\198\000\000\000\234\000\000\000\236\000\000\000\000\000\238\000\000\000\242\000\000\000\244\000\000\000\246\000\000\000\248\000\000\000\250\000\000\000\252\000\000\000\254\000\000\001\006\000\000\001\022\000\000\001\024\000\000\000\000\000\000\001\026\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\178\000\000\000\000\000\000\000\000\000\190\000\000\000\000\000\202\000\000\000\000\000\000\000\000\000\204\000\000\000\000\000\000\000\000\000\206\000\000\000\000\000\000\001\030\000\000\000\000\000\026\000\192\000\000\001 \000\000\000\000\000\000\001\"\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000v\000\000\0004\000\000\000\000\000\000\000N\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\212\000\000\000\236\000\000\000h\000\000\000\000\000\000\0010\000\000\000\000"), (8, "\143q\029\030yz{|}~\127\137\129\140q\029\"yz{|}~\127\137\129\130q\156\tyz{|}~\127\137\129\134q\019\024yz{|}~\127\137\129\138q\027Qyz{|}~\127\137\129\151q\139Ryz{|}~\127\137\129q4Lyz{|}~\127\128\129\nP\011W\012\021\n \011\\\012\0204Z$_di\146Zq \000/4ZZZ\147u44\146 4\148444\154\149136\1468:<>@BD444F4444444HJN4msw\000\000\000\155444\154444"))
  
  and semantic_action =
    [|
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _2;
          MenhirLib.EngineTypes.startp = _startpos__2_;
          MenhirLib.EngineTypes.endp = _endpos__2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 536 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 541 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 131 "sintatico.mly"
                ( [] )
# 549 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = seq;
            MenhirLib.EngineTypes.startp = _startpos_seq_;
            MenhirLib.EngineTypes.endp = _endpos_seq_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 580 "sintatico.ml"
        ) = Obj.magic _3 in
        let seq : (Sast.expressao Ast.expressoes) = Obj.magic seq in
        let _1 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 586 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 132 "sintatico.mly"
                          ( seq )
# 594 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = a;
          MenhirLib.EngineTypes.startp = _startpos_a_;
          MenhirLib.EngineTypes.endp = _endpos_a_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = nome;
            MenhirLib.EngineTypes.startp = _startpos_nome_;
            MenhirLib.EngineTypes.endp = _endpos_nome_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let a : (Sast.expressao Ast.expressoes) = Obj.magic a in
        let nome : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 621 "sintatico.ml"
        ) = Obj.magic nome in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_nome_ in
        let _endpos = _endpos_a_ in
        let _v : (Sast.expressao) = 
# 146 "sintatico.mly"
                         ( ExpChamada(nome, a) )
# 629 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 94 "sintatico.mly"
                              ( c )
# 654 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 95 "sintatico.mly"
                              ( c )
# 679 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 96 "sintatico.mly"
                              ( c )
# 704 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 97 "sintatico.mly"
                              ( c )
# 729 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 98 "sintatico.mly"
                            ( c )
# 754 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 99 "sintatico.mly"
                             ( c )
# 779 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 101 "sintatico.mly"
                           (c )
# 804 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = v;
                MenhirLib.EngineTypes.startp = _startpos_v_;
                MenhirLib.EngineTypes.endp = _endpos_v_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 840 "sintatico.ml"
        ) = Obj.magic _4 in
        let e : (Sast.expressao) = Obj.magic e in
        let _2 : (
# 24 "sintatico.mly"
       (Lexing.position)
# 846 "sintatico.ml"
        ) = Obj.magic _2 in
        let v : (Sast.expressao) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.comando) = 
# 103 "sintatico.mly"
                                                            (CmdAtrib (v,e))
# 855 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _4;
            MenhirLib.EngineTypes.startp = _startpos__4_;
            MenhirLib.EngineTypes.endp = _endpos__4_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = xs;
              MenhirLib.EngineTypes.startp = _startpos_xs_;
              MenhirLib.EngineTypes.endp = _endpos_xs_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _2;
                MenhirLib.EngineTypes.startp = _startpos__2_;
                MenhirLib.EngineTypes.endp = _endpos__2_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _1;
                  MenhirLib.EngineTypes.startp = _startpos__1_;
                  MenhirLib.EngineTypes.endp = _endpos__1_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 896 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 901 "sintatico.ml"
        ) = Obj.magic _4 in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _2 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 907 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 912 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.comando) = 
# 115 "sintatico.mly"
                                                                                      (CmdEntrada xs)
# 920 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _4;
            MenhirLib.EngineTypes.startp = _startpos__4_;
            MenhirLib.EngineTypes.endp = _endpos__4_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = xs;
              MenhirLib.EngineTypes.startp = _startpos_xs_;
              MenhirLib.EngineTypes.endp = _endpos_xs_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _2;
                MenhirLib.EngineTypes.startp = _startpos__2_;
                MenhirLib.EngineTypes.endp = _endpos__2_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _1;
                  MenhirLib.EngineTypes.startp = _startpos__1_;
                  MenhirLib.EngineTypes.endp = _endpos__1_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 961 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 966 "sintatico.ml"
        ) = Obj.magic _4 in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _2 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 972 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 977 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.comando) = 
# 116 "sintatico.mly"
                                                                           (CmdEntradaln xs)
# 985 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _5;
            MenhirLib.EngineTypes.startp = _startpos__5_;
            MenhirLib.EngineTypes.endp = _endpos__5_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = e;
              MenhirLib.EngineTypes.startp = _startpos_e_;
              MenhirLib.EngineTypes.endp = _endpos_e_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _3;
                MenhirLib.EngineTypes.startp = _startpos__3_;
                MenhirLib.EngineTypes.endp = _endpos__3_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = ca;
                  MenhirLib.EngineTypes.startp = _startpos_ca_;
                  MenhirLib.EngineTypes.endp = _endpos_ca_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _menhir_s;
                    MenhirLib.EngineTypes.semv = _1;
                    MenhirLib.EngineTypes.startp = _startpos__1_;
                    MenhirLib.EngineTypes.endp = _endpos__1_;
                    MenhirLib.EngineTypes.next = _menhir_stack;
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _5 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 1032 "sintatico.ml"
        ) = Obj.magic _5 in
        let e : (Sast.expressao) = Obj.magic e in
        let _3 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 1038 "sintatico.ml"
        ) = Obj.magic _3 in
        let ca : (Sast.expressao Ast.comando) = Obj.magic ca in
        let _1 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 1044 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 124 "sintatico.mly"
                                                                   (CmdFor(ca, e, c))
# 1052 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = exp;
          MenhirLib.EngineTypes.startp = _startpos_exp_;
          MenhirLib.EngineTypes.endp = _endpos_exp_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let exp : (Sast.expressao) = Obj.magic exp in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_exp_ in
        let _endpos = _endpos_exp_ in
        let _v : (Sast.expressao Ast.comando) = 
# 108 "sintatico.mly"
                             ( CmdChamada exp )
# 1077 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _4;
            MenhirLib.EngineTypes.startp = _startpos__4_;
            MenhirLib.EngineTypes.endp = _endpos__4_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = xs;
              MenhirLib.EngineTypes.startp = _startpos_xs_;
              MenhirLib.EngineTypes.endp = _endpos_xs_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _2;
                MenhirLib.EngineTypes.startp = _startpos__2_;
                MenhirLib.EngineTypes.endp = _endpos__2_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _1;
                  MenhirLib.EngineTypes.startp = _startpos__1_;
                  MenhirLib.EngineTypes.endp = _endpos__1_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1118 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1123 "sintatico.ml"
        ) = Obj.magic _4 in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _2 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1129 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 23 "sintatico.mly"
       (Lexing.position)
# 1134 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.comando) = 
# 119 "sintatico.mly"
                                                                                     ( CmdSaida xs)
# 1142 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _4;
            MenhirLib.EngineTypes.startp = _startpos__4_;
            MenhirLib.EngineTypes.endp = _endpos__4_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = cs;
              MenhirLib.EngineTypes.startp = _startpos_cs_;
              MenhirLib.EngineTypes.endp = _endpos_cs_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _2;
                MenhirLib.EngineTypes.startp = _startpos__2_;
                MenhirLib.EngineTypes.endp = _endpos__2_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _1;
                  MenhirLib.EngineTypes.startp = _startpos__1_;
                  MenhirLib.EngineTypes.endp = _endpos__1_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1183 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1188 "sintatico.ml"
        ) = Obj.magic _4 in
        let cs : (Sast.expressao Ast.expressoes) = Obj.magic cs in
        let _2 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1194 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 23 "sintatico.mly"
       (Lexing.position)
# 1199 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.comando) = 
# 120 "sintatico.mly"
                                                                                 ( CmdSaidaln cs)
# 1207 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = senao;
          MenhirLib.EngineTypes.startp = _startpos_senao_;
          MenhirLib.EngineTypes.endp = _endpos_senao_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _6;
            MenhirLib.EngineTypes.startp = _startpos__6_;
            MenhirLib.EngineTypes.endp = _endpos__6_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = entao;
              MenhirLib.EngineTypes.startp = _startpos_entao_;
              MenhirLib.EngineTypes.endp = _endpos_entao_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _4;
                MenhirLib.EngineTypes.startp = _startpos__4_;
                MenhirLib.EngineTypes.endp = _endpos__4_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _3;
                  MenhirLib.EngineTypes.startp = _startpos__3_;
                  MenhirLib.EngineTypes.endp = _endpos__3_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = teste;
                    MenhirLib.EngineTypes.startp = _startpos_teste_;
                    MenhirLib.EngineTypes.endp = _endpos_teste_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.state = _menhir_s;
                      MenhirLib.EngineTypes.semv = _1;
                      MenhirLib.EngineTypes.startp = _startpos__1_;
                      MenhirLib.EngineTypes.endp = _endpos__1_;
                      MenhirLib.EngineTypes.next = _menhir_stack;
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let senao : (Sast.expressao Ast.comandos option) = Obj.magic senao in
        let _6 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1259 "sintatico.ml"
        ) = Obj.magic _6 in
        let entao : (Sast.expressao Ast.comandos) = Obj.magic entao in
        let _4 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 1265 "sintatico.ml"
        ) = Obj.magic _4 in
        let _3 : (
# 20 "sintatico.mly"
       (Lexing.position)
# 1270 "sintatico.ml"
        ) = Obj.magic _3 in
        let teste : (Sast.expressao) = Obj.magic teste in
        let _1 : (
# 20 "sintatico.mly"
       (Lexing.position)
# 1276 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_senao_ in
        let _v : (Sast.expressao Ast.comando) = 
# 111 "sintatico.mly"
  (CmdSe (teste, entao, senao))
# 1284 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _7;
          MenhirLib.EngineTypes.startp = _startpos__7_;
          MenhirLib.EngineTypes.endp = _endpos__7_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _6;
            MenhirLib.EngineTypes.startp = _startpos__6_;
            MenhirLib.EngineTypes.endp = _endpos__6_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = c;
              MenhirLib.EngineTypes.startp = _startpos_c_;
              MenhirLib.EngineTypes.endp = _endpos_c_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _4;
                MenhirLib.EngineTypes.startp = _startpos__4_;
                MenhirLib.EngineTypes.endp = _endpos__4_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _3;
                  MenhirLib.EngineTypes.startp = _startpos__3_;
                  MenhirLib.EngineTypes.endp = _endpos__3_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = teste;
                    MenhirLib.EngineTypes.startp = _startpos_teste_;
                    MenhirLib.EngineTypes.endp = _endpos_teste_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.state = _menhir_s;
                      MenhirLib.EngineTypes.semv = _1;
                      MenhirLib.EngineTypes.startp = _startpos__1_;
                      MenhirLib.EngineTypes.endp = _endpos__1_;
                      MenhirLib.EngineTypes.next = _menhir_stack;
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _7 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1335 "sintatico.ml"
        ) = Obj.magic _7 in
        let _6 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1340 "sintatico.ml"
        ) = Obj.magic _6 in
        let c : (Sast.expressao Ast.comandos) = Obj.magic c in
        let _4 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 1346 "sintatico.ml"
        ) = Obj.magic _4 in
        let _3 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 1351 "sintatico.ml"
        ) = Obj.magic _3 in
        let teste : (Sast.expressao) = Obj.magic teste in
        let _1 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 1357 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__7_ in
        let _v : (Sast.expressao Ast.comando) = 
# 125 "sintatico.mly"
                                                                       (CmdWhile(teste,c))
# 1365 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = t;
            MenhirLib.EngineTypes.startp = _startpos_t_;
            MenhirLib.EngineTypes.endp = _endpos_t_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _3;
              MenhirLib.EngineTypes.startp = _startpos__3_;
              MenhirLib.EngineTypes.endp = _endpos__3_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = ids;
                MenhirLib.EngineTypes.startp = _startpos_ids_;
                MenhirLib.EngineTypes.endp = _endpos_ids_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _1;
                  MenhirLib.EngineTypes.startp = _startpos__1_;
                  MenhirLib.EngineTypes.endp = _endpos__1_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1406 "sintatico.ml"
        ) = Obj.magic _5 in
        let t : (Ast.tipo) = Obj.magic t in
        let _3 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1412 "sintatico.ml"
        ) = Obj.magic _3 in
        let ids : (Ast.ident Ast.pos list) = Obj.magic ids in
        let _1 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1418 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Ast.declaracao list) = 
# 64 "sintatico.mly"
                                                                                       (List.map (fun id -> DecVar (id,t)) ids )
# 1426 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = t;
            MenhirLib.EngineTypes.startp = _startpos_t_;
            MenhirLib.EngineTypes.endp = _endpos_t_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = ids;
                MenhirLib.EngineTypes.startp = _startpos_ids_;
                MenhirLib.EngineTypes.endp = _endpos_ids_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1462 "sintatico.ml"
        ) = Obj.magic _4 in
        let t : (Ast.tipo) = Obj.magic t in
        let _2 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1468 "sintatico.ml"
        ) = Obj.magic _2 in
        let ids : (Ast.ident Ast.pos list) = Obj.magic ids in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ids_ in
        let _endpos = _endpos__4_ in
        let _v : (Ast.declaracao list) = 
# 65 "sintatico.mly"
                                                                          (List.map (fun id -> DecVar (id,t)) ids )
# 1477 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _13;
          MenhirLib.EngineTypes.startp = _startpos__13_;
          MenhirLib.EngineTypes.endp = _endpos__13_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _12;
            MenhirLib.EngineTypes.startp = _startpos__12_;
            MenhirLib.EngineTypes.endp = _endpos__12_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = lc;
              MenhirLib.EngineTypes.startp = _startpos_lc_;
              MenhirLib.EngineTypes.endp = _endpos_lc_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _10;
                MenhirLib.EngineTypes.startp = _startpos__10_;
                MenhirLib.EngineTypes.endp = _endpos__10_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = bv;
                  MenhirLib.EngineTypes.startp = _startpos_bv_;
                  MenhirLib.EngineTypes.endp = _endpos_bv_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = _8;
                    MenhirLib.EngineTypes.startp = _startpos__8_;
                    MenhirLib.EngineTypes.endp = _endpos__8_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = tp;
                      MenhirLib.EngineTypes.startp = _startpos_tp_;
                      MenhirLib.EngineTypes.endp = _endpos_tp_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.semv = _6;
                        MenhirLib.EngineTypes.startp = _startpos__6_;
                        MenhirLib.EngineTypes.endp = _endpos__6_;
                        MenhirLib.EngineTypes.next = {
                          MenhirLib.EngineTypes.semv = _5;
                          MenhirLib.EngineTypes.startp = _startpos__5_;
                          MenhirLib.EngineTypes.endp = _endpos__5_;
                          MenhirLib.EngineTypes.next = {
                            MenhirLib.EngineTypes.semv = p;
                            MenhirLib.EngineTypes.startp = _startpos_p_;
                            MenhirLib.EngineTypes.endp = _endpos_p_;
                            MenhirLib.EngineTypes.next = {
                              MenhirLib.EngineTypes.semv = _3;
                              MenhirLib.EngineTypes.startp = _startpos__3_;
                              MenhirLib.EngineTypes.endp = _endpos__3_;
                              MenhirLib.EngineTypes.next = {
                                MenhirLib.EngineTypes.semv = id;
                                MenhirLib.EngineTypes.startp = _startpos_id_;
                                MenhirLib.EngineTypes.endp = _endpos_id_;
                                MenhirLib.EngineTypes.next = {
                                  MenhirLib.EngineTypes.state = _menhir_s;
                                  MenhirLib.EngineTypes.semv = _1;
                                  MenhirLib.EngineTypes.startp = _startpos__1_;
                                  MenhirLib.EngineTypes.endp = _endpos__1_;
                                  MenhirLib.EngineTypes.next = _menhir_stack;
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _13 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1558 "sintatico.ml"
        ) = Obj.magic _13 in
        let _12 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1563 "sintatico.ml"
        ) = Obj.magic _12 in
        let lc : (Sast.expressao Ast.comandos) = Obj.magic lc in
        let _10 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 1569 "sintatico.ml"
        ) = Obj.magic _10 in
        let bv : (Ast.declaracao list list) = Obj.magic bv in
        let _8 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1575 "sintatico.ml"
        ) = Obj.magic _8 in
        let tp : (Ast.tipo) = Obj.magic tp in
        let _6 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1581 "sintatico.ml"
        ) = Obj.magic _6 in
        let _5 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1586 "sintatico.ml"
        ) = Obj.magic _5 in
        let p : ((Ast.ident Ast.pos * Ast.tipo) list list) = Obj.magic p in
        let _3 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1592 "sintatico.ml"
        ) = Obj.magic _3 in
        let id : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 1597 "sintatico.ml"
        ) = Obj.magic id in
        let _1 : (
# 40 "sintatico.mly"
       (Lexing.position)
# 1602 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__13_ in
        let _v : (Sast.expressao Ast.declaracao_funcao) = 
# 86 "sintatico.mly"
                      (Funcao{fn_nome=id;fn_prms=List.flatten p; fn_tiporeturn=tp;fn_locais= List.flatten bv;fn_cmds=lc} )
# 1610 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = v;
          MenhirLib.EngineTypes.startp = _startpos_v_;
          MenhirLib.EngineTypes.endp = _endpos_v_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let v : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 1631 "sintatico.ml"
        ) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_v_ in
        let _v : (Sast.expressao) = 
# 136 "sintatico.mly"
                ( ExpVar v    )
# 1639 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = i;
          MenhirLib.EngineTypes.startp = _startpos_i_;
          MenhirLib.EngineTypes.endp = _endpos_i_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let i : (
# 8 "sintatico.mly"
       (int * Lexing.position)
# 1660 "sintatico.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (Sast.expressao) = 
# 137 "sintatico.mly"
                       ( ExpInt i    )
# 1668 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = s;
          MenhirLib.EngineTypes.startp = _startpos_s_;
          MenhirLib.EngineTypes.endp = _endpos_s_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let s : (
# 11 "sintatico.mly"
       (string * Lexing.position)
# 1689 "sintatico.ml"
        ) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_s_ in
        let _v : (Sast.expressao) = 
# 138 "sintatico.mly"
                         ( ExpString s )
# 1697 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = r;
          MenhirLib.EngineTypes.startp = _startpos_r_;
          MenhirLib.EngineTypes.endp = _endpos_r_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let r : (
# 9 "sintatico.mly"
       (float * Lexing.position)
# 1718 "sintatico.ml"
        ) = Obj.magic r in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_r_ in
        let _endpos = _endpos_r_ in
        let _v : (Sast.expressao) = 
# 139 "sintatico.mly"
                         ( ExpReal r   )
# 1726 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = b;
          MenhirLib.EngineTypes.startp = _startpos_b_;
          MenhirLib.EngineTypes.endp = _endpos_b_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let b : (
# 42 "sintatico.mly"
       (bool * Lexing.position)
# 1747 "sintatico.ml"
        ) = Obj.magic b in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_b_ in
        let _endpos = _endpos_b_ in
        let _v : (Sast.expressao) = 
# 140 "sintatico.mly"
            ( ExpBool b )
# 1755 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao) = 
# 141 "sintatico.mly"
                  ( c )
# 1780 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 25 "sintatico.mly"
       (Lexing.position)
# 1812 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 151 "sintatico.mly"
             ( (Mais, pos)  )
# 1823 "sintatico.ml"
          
        in
        
# 143 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1829 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 26 "sintatico.mly"
       (Lexing.position)
# 1861 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 152 "sintatico.mly"
                    ( (Menos, pos) )
# 1872 "sintatico.ml"
          
        in
        
# 143 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1878 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 27 "sintatico.mly"
       (Lexing.position)
# 1910 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 153 "sintatico.mly"
                          ( (Mult, pos)  )
# 1921 "sintatico.ml"
          
        in
        
# 143 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1927 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 28 "sintatico.mly"
       (Lexing.position)
# 1959 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 154 "sintatico.mly"
                       ( (Div, pos)   )
# 1970 "sintatico.ml"
          
        in
        
# 143 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1976 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 29 "sintatico.mly"
       (Lexing.position)
# 2008 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 155 "sintatico.mly"
                       ( (Mod, pos)   )
# 2019 "sintatico.ml"
          
        in
        
# 143 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2025 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 30 "sintatico.mly"
       (Lexing.position)
# 2057 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 156 "sintatico.mly"
                    ( (Menor, pos) )
# 2068 "sintatico.ml"
          
        in
        
# 143 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2074 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 31 "sintatico.mly"
       (Lexing.position)
# 2106 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 157 "sintatico.mly"
                    ( (Igual, pos) )
# 2117 "sintatico.ml"
          
        in
        
# 143 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2123 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 32 "sintatico.mly"
       (Lexing.position)
# 2155 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 158 "sintatico.mly"
                         ( (MenorIgual, pos) )
# 2166 "sintatico.ml"
          
        in
        
# 143 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2172 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 33 "sintatico.mly"
       (Lexing.position)
# 2204 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 159 "sintatico.mly"
                         ( (MaiorIgual, pos) )
# 2215 "sintatico.ml"
          
        in
        
# 143 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2221 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 34 "sintatico.mly"
       (Lexing.position)
# 2253 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 160 "sintatico.mly"
                        ( (Difer, pos) )
# 2264 "sintatico.ml"
          
        in
        
# 143 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2270 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 35 "sintatico.mly"
       (Lexing.position)
# 2302 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 161 "sintatico.mly"
                    ( (Maior, pos) )
# 2313 "sintatico.ml"
          
        in
        
# 143 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2319 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 36 "sintatico.mly"
       (Lexing.position)
# 2351 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 162 "sintatico.mly"
                 ((And, pos))
# 2362 "sintatico.ml"
          
        in
        
# 143 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2368 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 37 "sintatico.mly"
       (Lexing.position)
# 2400 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 163 "sintatico.mly"
                 ( (Or, pos)    )
# 2411 "sintatico.ml"
          
        in
        
# 143 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2417 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 2448 "sintatico.ml"
        ) = Obj.magic _3 in
        let e : (Sast.expressao) = Obj.magic e in
        let _1 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 2454 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao) = 
# 144 "sintatico.mly"
                           ( e )
# 2462 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.comandos) = 
# 185 "/usr/share/menhir/standard.mly"
    ( [] )
# 2480 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.comandos) = Obj.magic xs in
        let x : (Sast.expressao Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.comandos) = 
# 187 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2511 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Ast.declaracao list list) = 
# 185 "/usr/share/menhir/standard.mly"
    ( [] )
# 2529 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Ast.declaracao list list) = Obj.magic xs in
        let x : (Ast.declaracao list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.declaracao list list) = 
# 187 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2560 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.funcoes) = 
# 185 "/usr/share/menhir/standard.mly"
    ( [] )
# 2578 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.funcoes) = Obj.magic xs in
        let x : (Sast.expressao Ast.declaracao_funcao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.funcoes) = 
# 187 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2609 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list list) = 
# 185 "/usr/share/menhir/standard.mly"
    ( [] )
# 2627 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : ((Ast.ident Ast.pos * Ast.tipo) list list) = Obj.magic xs in
        let x : ((Ast.ident Ast.pos * Ast.tipo) list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list list) = 
# 187 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2658 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Ast.ident Ast.pos list) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 2676 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Ast.ident Ast.pos list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.ident Ast.pos list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 2701 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.comandos option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 2719 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _50;
          MenhirLib.EngineTypes.startp = _startpos__50_;
          MenhirLib.EngineTypes.endp = _endpos__50_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _40;
            MenhirLib.EngineTypes.startp = _startpos__40_;
            MenhirLib.EngineTypes.endp = _endpos__40_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = cs0;
              MenhirLib.EngineTypes.startp = _startpos_cs0_;
              MenhirLib.EngineTypes.endp = _endpos_cs0_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _20;
                MenhirLib.EngineTypes.startp = _startpos__20_;
                MenhirLib.EngineTypes.endp = _endpos__20_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _10;
                  MenhirLib.EngineTypes.startp = _startpos__10_;
                  MenhirLib.EngineTypes.endp = _endpos__10_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _50 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 2760 "sintatico.ml"
        ) = Obj.magic _50 in
        let _40 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 2765 "sintatico.ml"
        ) = Obj.magic _40 in
        let cs0 : (Sast.expressao Ast.comandos) = Obj.magic cs0 in
        let _20 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 2771 "sintatico.ml"
        ) = Obj.magic _20 in
        let _10 : (
# 20 "sintatico.mly"
       (Lexing.position)
# 2776 "sintatico.ml"
        ) = Obj.magic _10 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__10_ in
        let _endpos = _endpos__50_ in
        let _v : (Sast.expressao Ast.comandos option) = let x =
          let _5 = _50 in
          let _4 = _40 in
          let cs = cs0 in
          let _2 = _20 in
          let _1 = _10 in
          
# 110 "sintatico.mly"
                                                                 (cs)
# 2790 "sintatico.ml"
          
        in
        
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 2796 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = t;
          MenhirLib.EngineTypes.startp = _startpos_t_;
          MenhirLib.EngineTypes.endp = _endpos_t_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = xs0;
              MenhirLib.EngineTypes.startp = _startpos_xs0_;
              MenhirLib.EngineTypes.endp = _endpos_xs0_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let t : (Ast.tipo) = Obj.magic t in
        let _2 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 2828 "sintatico.ml"
        ) = Obj.magic _2 in
        let xs0 : (Ast.ident Ast.pos list) = Obj.magic xs0 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_xs0_ in
        let _endpos = _endpos_t_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = let ids =
          let xs = xs0 in
          
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 2839 "sintatico.ml"
          
        in
        
# 80 "sintatico.mly"
                                                                     (  List.map (fun id -> (id,t)) ids )
# 2845 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _8;
          MenhirLib.EngineTypes.startp = _startpos__8_;
          MenhirLib.EngineTypes.endp = _endpos__8_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _7;
            MenhirLib.EngineTypes.startp = _startpos__7_;
            MenhirLib.EngineTypes.endp = _endpos__7_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = cs;
              MenhirLib.EngineTypes.startp = _startpos_cs_;
              MenhirLib.EngineTypes.endp = _endpos_cs_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _5;
                MenhirLib.EngineTypes.startp = _startpos__5_;
                MenhirLib.EngineTypes.endp = _endpos__5_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = ds;
                  MenhirLib.EngineTypes.startp = _startpos_ds_;
                  MenhirLib.EngineTypes.endp = _endpos_ds_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = fs;
                    MenhirLib.EngineTypes.startp = _startpos_fs_;
                    MenhirLib.EngineTypes.endp = _endpos_fs_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = _2;
                      MenhirLib.EngineTypes.startp = _startpos__2_;
                      MenhirLib.EngineTypes.endp = _endpos__2_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.state = _menhir_s;
                        MenhirLib.EngineTypes.semv = p;
                        MenhirLib.EngineTypes.startp = _startpos_p_;
                        MenhirLib.EngineTypes.endp = _endpos_p_;
                        MenhirLib.EngineTypes.next = _menhir_stack;
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _8 : unit = Obj.magic _8 in
        let _7 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 2902 "sintatico.ml"
        ) = Obj.magic _7 in
        let cs : (Sast.expressao Ast.comandos) = Obj.magic cs in
        let _5 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 2908 "sintatico.ml"
        ) = Obj.magic _5 in
        let ds : (Ast.declaracao list list) = Obj.magic ds in
        let fs : (Sast.expressao Ast.funcoes) = Obj.magic fs in
        let _2 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 2915 "sintatico.ml"
        ) = Obj.magic _2 in
        let p : (
# 12 "sintatico.mly"
       (string * Lexing.position)
# 2920 "sintatico.ml"
        ) = Obj.magic p in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_p_ in
        let _endpos = _endpos__8_ in
        let _v : (
# 52 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 2928 "sintatico.ml"
        ) = 
# 62 "sintatico.mly"
              ( Programa (fst p,fs, List.flatten ds, cs) )
# 2932 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 2953 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.ident Ast.pos list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2961 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : (Ast.ident Ast.pos list) = Obj.magic xs in
        let _2 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 2993 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 2998 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.ident Ast.pos list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 3006 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 3031 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _2 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 3063 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 3072 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = e;
          MenhirLib.EngineTypes.startp = _startpos_e_;
          MenhirLib.EngineTypes.endp = _endpos_e_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let e : (Sast.expressao) = Obj.magic e in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e_ in
        let _endpos = _endpos_e_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 133 "sintatico.mly"
                      ( [e] )
# 3097 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e;
          MenhirLib.EngineTypes.startp = _startpos_e_;
          MenhirLib.EngineTypes.endp = _endpos_e_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = s;
              MenhirLib.EngineTypes.startp = _startpos_s_;
              MenhirLib.EngineTypes.endp = _endpos_s_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e : (Sast.expressao) = Obj.magic e in
        let _2 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 3129 "sintatico.ml"
        ) = Obj.magic _2 in
        let s : (Sast.expressao Ast.expressoes) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_e_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 134 "sintatico.mly"
                                ( s @ [e] )
# 3138 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = t;
          MenhirLib.EngineTypes.startp = _startpos_t_;
          MenhirLib.EngineTypes.endp = _endpos_t_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let t : (Ast.tipo) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos_t_ in
        let _v : (Ast.tipo) = 
# 69 "sintatico.mly"
                      ( t )
# 3163 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 3184 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 72 "sintatico.mly"
                        ( TipoInt    )
# 3192 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 3213 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 73 "sintatico.mly"
                     ( TipoReal )
# 3221 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 3242 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 74 "sintatico.mly"
                       ( TipoString )
# 3250 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 3271 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 75 "sintatico.mly"
                     ( TipoChar )
# 3279 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 43 "sintatico.mly"
       (Lexing.position)
# 3300 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 76 "sintatico.mly"
               (TipoBool)
# 3308 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
    |]
  
  and trace =
    None
  
end

module MenhirInterpreter = struct
  
  module ET = MenhirLib.TableInterpreter.MakeEngineTable (Tables)
  
  module TI = MenhirLib.Engine.Make (ET)
  
  include TI
  
end

let programa =
  fun lexer lexbuf ->
    (Obj.magic (MenhirInterpreter.entry 0 lexer lexbuf) : (
# 52 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 3339 "sintatico.ml"
    ))

module Incremental = struct
  
  let programa =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (
# 52 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 3349 "sintatico.ml"
      ) MenhirInterpreter.checkpoint)
  
end

# 219 "/usr/share/menhir/standard.mly"
  


# 3358 "sintatico.ml"
