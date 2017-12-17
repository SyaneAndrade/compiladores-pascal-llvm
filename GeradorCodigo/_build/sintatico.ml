
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20170607

module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE of (
# 23 "sintatico.mly"
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
# 23 "sintatico.mly"
       (Lexing.position)
# 31 "sintatico.ml"
  )
    | THEN of (
# 22 "sintatico.mly"
       (Lexing.position)
# 36 "sintatico.ml"
  )
    | STRING of (
# 19 "sintatico.mly"
       (Lexing.position)
# 41 "sintatico.ml"
  )
    | REGISTRO of (
# 21 "sintatico.mly"
       (Lexing.position)
# 46 "sintatico.ml"
  )
    | REAL of (
# 19 "sintatico.mly"
       (Lexing.position)
# 51 "sintatico.ml"
  )
    | PROGRAM of (
# 12 "sintatico.mly"
       (string * Lexing.position)
# 56 "sintatico.ml"
  )
    | PROCEDURE of (
# 43 "sintatico.mly"
       (Lexing.position)
# 61 "sintatico.ml"
  )
    | PRINTLN of (
# 25 "sintatico.mly"
       (Lexing.position)
# 66 "sintatico.ml"
  )
    | PRINT of (
# 25 "sintatico.mly"
       (Lexing.position)
# 71 "sintatico.ml"
  )
    | PPTO of (
# 47 "sintatico.mly"
       (Lexing.position)
# 76 "sintatico.ml"
  )
    | PONTOVIRG of (
# 17 "sintatico.mly"
       (Lexing.position)
# 81 "sintatico.ml"
  )
    | PONTO of (
# 17 "sintatico.mly"
       (Lexing.position)
# 86 "sintatico.ml"
  )
    | OU of (
# 39 "sintatico.mly"
       (Lexing.position)
# 91 "sintatico.ml"
  )
    | OF of (
# 41 "sintatico.mly"
       (Lexing.position)
# 96 "sintatico.ml"
  )
    | MULTIPLICA of (
# 29 "sintatico.mly"
       (Lexing.position)
# 101 "sintatico.ml"
  )
    | MODULO of (
# 31 "sintatico.mly"
       (Lexing.position)
# 106 "sintatico.ml"
  )
    | MENOS of (
# 28 "sintatico.mly"
       (Lexing.position)
# 111 "sintatico.ml"
  )
    | MENORIGUAL of (
# 34 "sintatico.mly"
       (Lexing.position)
# 116 "sintatico.ml"
  )
    | MENOR of (
# 32 "sintatico.mly"
       (Lexing.position)
# 121 "sintatico.ml"
  )
    | MAIS of (
# 27 "sintatico.mly"
       (Lexing.position)
# 126 "sintatico.ml"
  )
    | MAIORIGUAL of (
# 35 "sintatico.mly"
       (Lexing.position)
# 131 "sintatico.ml"
  )
    | MAIOR of (
# 37 "sintatico.mly"
       (Lexing.position)
# 136 "sintatico.ml"
  )
    | LITSTRING of (
# 11 "sintatico.mly"
       (string * Lexing.position)
# 141 "sintatico.ml"
  )
    | LITREAL of (
# 9 "sintatico.mly"
       (float * Lexing.position)
# 146 "sintatico.ml"
  )
    | LITINT of (
# 8 "sintatico.mly"
       (int * Lexing.position)
# 151 "sintatico.ml"
  )
    | LEIALN of (
# 24 "sintatico.mly"
       (Lexing.position)
# 156 "sintatico.ml"
  )
    | LEIA of (
# 24 "sintatico.mly"
       (Lexing.position)
# 161 "sintatico.ml"
  )
    | INTEGER of (
# 19 "sintatico.mly"
       (Lexing.position)
# 166 "sintatico.ml"
  )
    | IGUAL of (
# 33 "sintatico.mly"
       (Lexing.position)
# 171 "sintatico.ml"
  )
    | IF of (
# 22 "sintatico.mly"
       (Lexing.position)
# 176 "sintatico.ml"
  )
    | ID of (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 181 "sintatico.ml"
  )
    | FUNCAO of (
# 42 "sintatico.mly"
       (Lexing.position)
# 186 "sintatico.ml"
  )
    | FPAR of (
# 18 "sintatico.mly"
       (Lexing.position)
# 191 "sintatico.ml"
  )
    | FOR of (
# 23 "sintatico.mly"
       (Lexing.position)
# 196 "sintatico.ml"
  )
    | FCOL of (
# 46 "sintatico.mly"
       (Lexing.position)
# 201 "sintatico.ml"
  )
    | EOF
    | ENDPROG of (
# 15 "sintatico.mly"
       (Lexing.position)
# 207 "sintatico.ml"
  )
    | END of (
# 14 "sintatico.mly"
       (Lexing.position)
# 212 "sintatico.ml"
  )
    | ELSE of (
# 22 "sintatico.mly"
       (Lexing.position)
# 217 "sintatico.ml"
  )
    | E of (
# 38 "sintatico.mly"
       (Lexing.position)
# 222 "sintatico.ml"
  )
    | DOISPONTOS of (
# 17 "sintatico.mly"
       (Lexing.position)
# 227 "sintatico.ml"
  )
    | DO of (
# 23 "sintatico.mly"
       (Lexing.position)
# 232 "sintatico.ml"
  )
    | DIVIDE of (
# 30 "sintatico.mly"
       (Lexing.position)
# 237 "sintatico.ml"
  )
    | DIFERENTE of (
# 36 "sintatico.mly"
       (Lexing.position)
# 242 "sintatico.ml"
  )
    | DE of (
# 20 "sintatico.mly"
       (Lexing.position)
# 247 "sintatico.ml"
  )
    | CHAR of (
# 19 "sintatico.mly"
       (Lexing.position)
# 252 "sintatico.ml"
  )
    | CASE of (
# 40 "sintatico.mly"
       (Lexing.position)
# 257 "sintatico.ml"
  )
    | BOOLEAN of (
# 45 "sintatico.mly"
       (Lexing.position)
# 262 "sintatico.ml"
  )
    | BOOL of (
# 44 "sintatico.mly"
       (bool * Lexing.position)
# 267 "sintatico.ml"
  )
    | BEGIN of (
# 13 "sintatico.mly"
       (Lexing.position)
# 272 "sintatico.ml"
  )
    | ATRIB of (
# 26 "sintatico.mly"
       (Lexing.position)
# 277 "sintatico.ml"
  )
    | ARRANJO of (
# 20 "sintatico.mly"
       (Lexing.position)
# 282 "sintatico.ml"
  )
    | APAR of (
# 18 "sintatico.mly"
       (Lexing.position)
# 287 "sintatico.ml"
  )
    | ACOL of (
# 46 "sintatico.mly"
       (Lexing.position)
# 292 "sintatico.ml"
  )
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

# 2 "sintatico.mly"
  
open Lexing
open Ast
open Sast

# 308 "sintatico.ml"

module Tables = struct
  
  include MenhirBasics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | ACOL _ ->
          57
      | APAR _ ->
          56
      | ARRANJO _ ->
          55
      | ATRIB _ ->
          54
      | BEGIN _ ->
          53
      | BOOL _ ->
          52
      | BOOLEAN _ ->
          51
      | CASE _ ->
          50
      | CHAR _ ->
          49
      | DE _ ->
          48
      | DIFERENTE _ ->
          47
      | DIVIDE _ ->
          46
      | DO _ ->
          45
      | DOISPONTOS _ ->
          44
      | E _ ->
          43
      | ELSE _ ->
          42
      | END _ ->
          41
      | ENDPROG _ ->
          40
      | EOF ->
          39
      | FCOL _ ->
          38
      | FOR _ ->
          37
      | FPAR _ ->
          36
      | FUNCAO _ ->
          35
      | ID _ ->
          34
      | IF _ ->
          33
      | IGUAL _ ->
          32
      | INTEGER _ ->
          31
      | LEIA _ ->
          30
      | LEIALN _ ->
          29
      | LITINT _ ->
          28
      | LITREAL _ ->
          27
      | LITSTRING _ ->
          26
      | MAIOR _ ->
          25
      | MAIORIGUAL _ ->
          24
      | MAIS _ ->
          23
      | MENOR _ ->
          22
      | MENORIGUAL _ ->
          21
      | MENOS _ ->
          20
      | MODULO _ ->
          19
      | MULTIPLICA _ ->
          18
      | OF _ ->
          17
      | OU _ ->
          16
      | PONTO _ ->
          15
      | PONTOVIRG _ ->
          14
      | PPTO _ ->
          13
      | PRINT _ ->
          12
      | PRINTLN _ ->
          11
      | PROCEDURE _ ->
          10
      | PROGRAM _ ->
          9
      | REAL _ ->
          8
      | REGISTRO _ ->
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
      | ACOL _v ->
          Obj.repr _v
      | APAR _v ->
          Obj.repr _v
      | ARRANJO _v ->
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
      | DE _v ->
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
      | FCOL _v ->
          Obj.repr _v
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
      | PPTO _v ->
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
      | REGISTRO _v ->
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
    (8, "\000\000\000\000\000\000\000\000>6\000\000\000JIHKL;4\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000,\000\000\000CEDF\000\0008\000\000G\000\021\000\000\000\022\000\000\000\026\027\025\000\000\002\028\000\000\000N\000\000\000\000\000 \029\000\"\000\000\000!\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000O\000+\000\000\000\003\000\004\000\000\000\000\000\000\000\018\000\000@\000\000\000\000\017\000\000\000\000\014\000\000\000\000\r\000\000\000\000\000\000\000\000\000\000\000\000\000\000\015\000\000\000\012\n\006\b\011\t\007\005\000.\000\000\000\000\000\000\000:\019\000\000\020\000\000\023\0000\000\000\000\000\000<\0002\001")
  
  and error =
    (58, "\000@\000\000\000\000\000\000\000\128\000\000\000\000\001\000\000\000\003\000\000@\000\000\000\000\128\000\000\000\000\000\000\000\000\000\128\000\000\000\n\002\000\002\000\000\000\000\000\128\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\128\128\000\000\000\000\000\000 \000\002\128\000\001\000\000P\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\002\000\000(\000\000\016\000\005\000\000\b\000\000\000\000\000\016\000\000\000 \000\004\000\000\000\000\b\000\000\000\000\000\000\000\000\128\000\014\000\000\004\000\001D\000\000\000\000 \000\000\000\000\000\000\000\002\000\0008\000\000\016\000\005\016\000\000\000\000\000\000\001\000\000\000\b\000\000\000\000\001\000\000\000\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000 \0008\000\000\016\000\005\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000 @\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \000\003\128\000\001\000\000Q\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016@\024\000>d@\b\128\000\000\014\b\000\002 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\011\000\239\240\"\133\192\176\000\000\003\130\128\000\136\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\014\b\000\002\"\192;\252\b\161p$\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\014\b\000\002 \000\011\252\b!0\000\000\000\000\224\128\000\",\002\191\192\138\023\002\000\000\000\014\b\000\002 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0008 \000\b\128\000\000\000\000\000\000\000\000\000\003\130\000\000\136\176\n\255\002(\\\b\000\000\0008 \000\b\128\000\000\000\000\000\000\000\000\000\003\130\000\000\136\176\n\255\002(\\\b\000\000\0008 \000\b\139\000\175\240\"\133\192\128\000\000\003\130\000\000\136\176\n\255\002(\\\b\000\000\0008 \000\b\139\000\175\240\"\133\192\128\000\000\003\130\000\000\136\176\n\255\002(\\\b\000\000\0008 \000\b\139\000\175\240\"\133\192\128\000\000\003\130\000\000\136\176\n\255\002(\\\b\000\000\0008 \000\b\139\000\175\240\"\133\192\128\000\000\000\000\000\000\000\000\002\255\002 L\000\000\000\000\000\000\000\000\b\000\000\000\002\000\000\000\000\000\003\130\000\000\136\128\002\255\002 L\000\000\000\000\000\000\000\000\b\000/\240\"\004\192\000\000\000\000\000\000\000\000\000\002\255\002\000\\\000\000\000\000\000\000\000\004\016\006\000\015\153\016\002 \000\000\000\000\000\000\b\000\000\000\224\128\000\"\000\000\000\000\b\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\128\002\255\002 L\000\000\000\0008 \000\b\128\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\224\128\000\"\000\000\000\000\b\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\0008 \000\b\128\000\000\000\002\000\000\000\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\128\000\000\014\b\000\002 \000\000\000\000\128\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\014\b\000\002 @\011\252\b\0010\000\000\000\000\000\000\000\016@\024\000>d@\b\128\000\000\014\b\000\002 \000\011\252\b\0010 \000\000\000\224\128\000\"\b\000\191\192\128\019\000\000\000\000\014\b\000\002 \000\011\252\b\001p\000\000\000\000\000\000\000\016@\024\000>d@\b\128\000\000\000\000\016\000\000\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\191\192\128\019\002\000\000\000\014\b\000\002 \000+\252\b\0010\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000`\000\249\147\000\"\000\000\000\000\000\000\000\016\006/\255\1854\194\160\000\000\000\000\004\000\001\000`\000\249\147\128\"\000\000\000\000\000\000\004\016\006\000\015\153\016\002 \000\000\000\000\004\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000 \000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000 \000\004\000\000\000\000\000\000\000\001\000\000\000\002\000\000@\000\000\000\000\000\000\016@\024\000>d\128\b\128\000\000\000\000 \000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\016\000\000\0000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\000\003\000\003\000R\000%\000+\000$\000\003\000\b\000\000\000\000\000$\000\007\000\232\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\024\000\024\000\232\000X\000\b\000\b\0006\003\140\000A\0008\003\140\000 \000\\\000\130\000f\000\000\000T\000D\003\140\000\000\000\000\000\000\000\000\000\140\000A\000\000\000X\000\158\000\000\000\146\000\000\000Z\003\140\000\166\000\000\000Z\004\236\000-\000\000\000\000\000\000\000Z\000-\000\000\000\000\000-\000\182\000\132\000\000\000-\0048\000-\001\018\000-\000\000\000\000\000-\000\000\000-\001\\\000-\000\000\000-\001\166\000-\001\240\000-\002:\000-\002\132\000-\002\206\000-\003\024\000-\003b\000-\003\172\000\000\005 \000\000\000\002\000-\0048\000\000\004x\000\000\0048\000d\004\236\000`\000-\000\144\000\206\000\000\004\184\000-\000\000\000|\000-\000\166\000\212\000\000\000\130\000-\000\178\000\224\000\000\000\144\000-\000\188\000\234\000\000\000-\0048\000\158\004\236\000-\005 \000-\0048\000-\004x\000\160\004\236\000\188\000\252\000\000\005j\000-\0048\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\236\000\000\000\003\000\204\003\230\000\182\004\236\000\210\001\014\000\000\000\000\000\218\001\020\000\000\000\226\001*\000\000\000\b\000\000\000\b\000\222\004\236\000\252\001\002\000\000\000R\000\000\000\000"), (16, "\000=\000\030\000v\001\154\000\234\000\238\000\242\000f\000\006\000\217\000=\000=\000\246\000\n\000\254\000q\000\018\000q\000q\000q\000q\000q\000q\000q\000q\000=\000=\000=\000=\000=\001\002\000q\000=\000=\001\006\000\022\000=\001\162\000\026\000=\000=\0002\000q\000\241\000\193\000q\000q\0011\000V\0011\0011\000=\000\026\000q\000\201\000=\000Z\000\185\000b\0011\0011\0011\000\209\0011\0011\0011\0011\0011\0011\0011\0011\000n\000z\000\130\000\134\000\193\000\014\0011\000\138\000\142\000\150\0011\000\154\0011\000\178\000\190\000\194\000\202\0011\000\210\0011\0011\0011\000]\000\193\000]\000]\000\218\000\226\0011\001\018\000\250\0011\001\182\001\190\000]\001\014\000]\001\198\000]\000]\000]\000]\000]\000]\000]\000]\001\202\001\222\001\230\001\234\001\242\0006\000]\000:\001\250\001\254\000]\002\006\000]\002\014\002\018\002\"\002B\000]\002J\000]\000]\000]\000\165\002N\000\165\000\165\002\142\002\150\000]\002\158\000>\001\022\002\162\002\174\000\165\002\178\000\165\002\186\001&\0012\001:\001J\001Z\001R\001b\001j\002\190\002\210\000B\002\218\000F\002\223\001r\000\000\000\000\000\000\000\165\000\000\000\165\000y\000\000\000y\000y\001z\000\000\000\165\001B\001\130\000\000\000\000\000\000\000y\000\000\000y\000\165\001&\0012\000y\000y\000y\000y\000y\000y\000\000\000\000\000\000\000\000\000\000\000\000\000y\000\000\000\000\000\000\000y\000\000\000y\000\145\000\000\000\145\000\145\000y\000\000\000y\001B\000y\000\000\000\000\000\000\000\145\000\000\000\145\000y\001&\0012\001:\000\145\000\145\001R\000\145\000\145\000\000\000\000\000\000\000\000\000\000\000\000\000\145\000\000\000\000\000\000\000\145\000\000\000\145\000u\000\000\000u\000u\000\145\000\000\000\145\001B\000\145\000\000\000\000\000\000\000u\000\000\000u\000\145\001&\0012\000u\000u\000u\000u\000u\000u\000\000\000\000\000\000\000\000\000\000\000\000\000u\000\000\000\000\000\000\000u\000\000\000u\000\137\000\000\000\137\000\137\000u\000\000\000u\001B\000u\000\000\000\000\000\000\000\137\000\000\000\137\000u\001&\0012\001:\000\137\000\137\001R\000\137\000\137\000\000\000\000\000\000\000\000\000\000\000\000\000\137\000\000\000\000\000\000\000\137\000\000\000\137\000\149\000\000\000\149\000\149\000\137\000\000\000\137\001B\000\137\000\000\000\000\000\000\000\149\000\000\000\149\000\137\001&\0012\001:\000\149\000\149\001R\000\149\000\149\000\000\000\000\000\000\000\000\000\000\000\000\000\149\000\000\000\000\000\000\000\149\000\000\000\149\000\157\000\000\000\157\000\157\000\149\000\000\000\149\001B\000\149\000\000\000\000\000\000\000\157\000\000\000\157\000\149\001&\0012\001:\000\157\000\157\001R\000\157\000\157\000\000\000\000\000\000\000\000\000\000\000\000\000\157\000\000\000\000\000\000\000\157\000\000\000\157\000\141\000\000\000\141\000\141\000\157\000\000\000\157\001B\000\157\000\000\000\000\000\000\000\141\000\000\000\141\000\157\001&\0012\001:\000\141\000\141\001R\000\141\000\141\000\000\000\000\000\000\000\000\000\000\000\000\000\141\000\000\000\000\000\000\000\141\000\000\000\141\000\161\000\000\000\161\000\161\000\141\000\000\000\141\001B\000\141\000\000\000\000\000\000\000\161\000\000\000\161\000\141\001&\0012\001:\001J\001Z\001R\001b\001j\000\000\0006\000r\000:\000\000\000\000\001r\000\000\000\000\000\000\000\161\000\000\000\161\000\153\000\000\000\153\000\153\000\161\000\000\000\161\001B\001\130\000\000\000\000\000\000\000\153\000>\000\153\000\161\001&\0012\001:\000\153\000\153\001R\000\153\000\153\000\000\000\000\000\000\000\000\000\225\000\000\000\153\000B\000\000\000F\000\153\000\000\000\153\000~\000\225\000\225\000\000\000\153\000\000\000\153\001B\000\153\000\000\000\000\000\000\000\000\000\000\000\000\000\153\000\225\000\225\000\225\000\225\000\225\000\000\000\000\000\225\000\225\000\000\000\000\000\225\000\000\000\000\000\225\000\225\002\146\001\005\000\000\0026\002\030\000\000\000\000\000\000\000\000\000\000\000\225\000\000\000\000\002^\000\225\001\030\000\000\001&\0012\001:\001J\001Z\001R\001b\001j\000\000\000\000\000\000\000\000\000\000\000\000\001r\000\000\001\001\000\000\001\005\000\000\001\138\000\000\000\000\000\000\000\000\001z\000\000\001\178\001B\001\130\001\030\000\000\001&\0012\001:\001J\001Z\001R\001b\001j\000\000\000\000\000\000\000\000\000\000\000\000\001r\000\000\001\210\000\000\001\001\000\000\000\000\000\000\000\000\000\000\000\000\001z\000\000\002>\001B\001\130\001\030\000\000\001&\0012\001:\001J\001Z\001R\001b\001j\000\000\000\230\000\000\000\000\000\000\000\000\001r\000\000\000\000\000\000\000\249\001\186\001\218\000\000\000\000\000\000\000\000\001z\000\000\000\000\001B\001\130\000\000\000\000\000\000\000\000\000\234\000\238\000\242\001\238\002\002\000\000\000\000\002\022\000\246\000\000\000\000\002&\000\000\000\000\000\177\000\177\001\030\000\000\001&\0012\001:\001J\001Z\001R\001b\001j\001\002\000\000\000\000\000\000\001\006\000\000\001r\000\000\000\000\000\000\001\146\000\000\000\000\000\000\000\000\000\000\000\000\001z\000\000\000\000\001B\001\130\000\000\000\000\000\000\000\000\000\000\001\030\002.\001&\0012\001:\001J\001Z\001R\001b\001j\000\000\000\000\000\000\000\000\000\000\000\000\001r\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001z\000\000\000\000\001B\001\130\000\000\000\000\000\000\000\000\000\000\000\000\002V"))
  
  and lhs =
    (8, "\000\031\031\030\029\029\029\029\029\029\029\028\027\027\026\025\024\024\023\022\021\021\020\019\019\019\019\019\019\019\019\019\019\019\019\019\019\019\019\019\019\019\019\018\017\017\016\016\015\015\014\014\r\r\012\012\011\011\n\t\b\b\007\007\006\006\005\005\005\004\003\002\002\002\002\002\001\001\001")
  
  and goto =
    ((16, "\000\015\000\000\000\184\000\000\000\000\000\015\000\000\000\007\000\000\000\000\000\230\000\000\000\022\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\"\000\000\000\t\0004\000\000\000\012\000H\000\000\001\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\001\b\000\000\000\000\000\000\000\000\000\000\000N\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\016\000\000\000\000\000\000\000\003\000Z\000\000\000\000\000\000\000D\000\028\000\000\000\000\000\152\000\000\000\000\000\000\001$\000\000\001<\000\000\001J\000\000\000\000\001L\000\000\001N\000\000\001P\000\000\001h\000\000\001j\000\000\001l\000\000\001x\000\000\001z\000\000\001|\000\000\001\148\000\000\001\150\000\000\000\000\000\000\000\000\000\000\001\152\000\000\000\000\000\000\000\000\000\000\000\000\000\026\000\000\001\026\000\000\000\000\000\000\000\000\001\028\000\000\000\000\001\030\000\000\000\000\000\000\000\000\001 \000\000\000\000\000\000\000\000\001\"\000\000\000\000\000\000\001\154\000\000\000\000\000<\001\168\000\000\001\192\000\000\001\194\000\000\000\000\000X\000\000\000\000\000\000\000\000\001\196\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000z\000\000\000\000\000\000\000\136\000\000\000\150\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\184\000\000\001\204\000\000\000\184\000\000\000\000\000\000\000\186\000\000\000\000"), (8, "C\n\187\0114\t\012\021()*28\019CC\174\177\149\024f\153\154\155\156\157\158\159\160\162\171C\149j\027\153\154\155\156\157\158\159\160\162LCC\163/\149%.\153\154\155\156\157\158\159\160\162\146C\149lk\153\154\155\156\157\158\159\160\162LCC\161\170\149\000\000\153\154\155\156\157\158\159\160\162\167C\149d\000\153\154\155\156\157\158\159\160\162L\179\186\182\000\149\185\185\153\154\155\156\157\158\159\160\162\n\000\011\000\000\012\020()*,()*+()*6CCCCCCqvy~\131\000\000\000\000\000\000CtttttGCCCC\000LLLLLLI\000\000\000CCCKNPRLCCC\000\000\000LLLLTVX\000CCCCZ\\^LLLC\000\000\000\000LLL`bh\135CCC4\000\000\139LLLL\178\0004\000\000\177L\141\143\151\180\000\000\000\000\177\000\000LLL"))
  
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
# 590 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 595 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__2_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 171 "sintatico.mly"
                ( [] )
# 603 "sintatico.ml"
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
# 634 "sintatico.ml"
        ) = Obj.magic _3 in
        let seq : (Sast.expressao Ast.expressoes) = Obj.magic seq in
        let _1 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 640 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 172 "sintatico.mly"
                          ( seq )
# 648 "sintatico.ml"
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
# 675 "sintatico.ml"
        ) = Obj.magic nome in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_nome_ in
        let _endpos = _endpos_a_ in
        let _v : (Sast.expressao) = 
# 186 "sintatico.mly"
                         ( ExpChamada(nome, a) )
# 683 "sintatico.ml"
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
# 113 "sintatico.mly"
                              ( c )
# 708 "sintatico.ml"
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
# 114 "sintatico.mly"
                              ( c )
# 733 "sintatico.ml"
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
# 115 "sintatico.mly"
                              ( c )
# 758 "sintatico.ml"
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
# 116 "sintatico.mly"
                              ( c )
# 783 "sintatico.ml"
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
# 117 "sintatico.mly"
                            ( c )
# 808 "sintatico.ml"
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
# 118 "sintatico.mly"
                             ( c )
# 833 "sintatico.ml"
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
# 120 "sintatico.mly"
                           (c )
# 858 "sintatico.ml"
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
# 894 "sintatico.ml"
        ) = Obj.magic _4 in
        let e : (Sast.expressao) = Obj.magic e in
        let _2 : (
# 26 "sintatico.mly"
       (Lexing.position)
# 900 "sintatico.ml"
        ) = Obj.magic _2 in
        let v : (Sast.expressao) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.comando) = 
# 122 "sintatico.mly"
                                                            (CmdAtrib (v,e))
# 909 "sintatico.ml"
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
# 950 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 955 "sintatico.ml"
        ) = Obj.magic _4 in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _2 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 961 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 24 "sintatico.mly"
       (Lexing.position)
# 966 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.comando) = 
# 141 "sintatico.mly"
                                                                                      (CmdEntrada xs)
# 974 "sintatico.ml"
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
# 1015 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1020 "sintatico.ml"
        ) = Obj.magic _4 in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _2 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1026 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 24 "sintatico.mly"
       (Lexing.position)
# 1031 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.comando) = 
# 142 "sintatico.mly"
                                                                           (CmdEntradaln xs)
# 1039 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = _11;
          MenhirLib.EngineTypes.startp = _startpos__11_;
          MenhirLib.EngineTypes.endp = _endpos__11_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = c;
              MenhirLib.EngineTypes.startp = _startpos_c_;
              MenhirLib.EngineTypes.endp = _endpos_c_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _8;
                MenhirLib.EngineTypes.startp = _startpos__8_;
                MenhirLib.EngineTypes.endp = _endpos__8_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _7;
                  MenhirLib.EngineTypes.startp = _startpos__7_;
                  MenhirLib.EngineTypes.endp = _endpos__7_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = e;
                    MenhirLib.EngineTypes.startp = _startpos_e_;
                    MenhirLib.EngineTypes.endp = _endpos_e_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = _5;
                      MenhirLib.EngineTypes.startp = _startpos__5_;
                      MenhirLib.EngineTypes.endp = _endpos__5_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.semv = ex;
                        MenhirLib.EngineTypes.startp = _startpos_ex_;
                        MenhirLib.EngineTypes.endp = _endpos_ex_;
                        MenhirLib.EngineTypes.next = {
                          MenhirLib.EngineTypes.semv = _3;
                          MenhirLib.EngineTypes.startp = _startpos__3_;
                          MenhirLib.EngineTypes.endp = _endpos__3_;
                          MenhirLib.EngineTypes.next = {
                            MenhirLib.EngineTypes.semv = v;
                            MenhirLib.EngineTypes.startp = _startpos_v_;
                            MenhirLib.EngineTypes.endp = _endpos_v_;
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
        } = _menhir_stack in
        let _11 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1110 "sintatico.ml"
        ) = Obj.magic _11 in
        let _10 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1115 "sintatico.ml"
        ) = Obj.magic _10 in
        let c : (Sast.expressao Ast.comandos) = Obj.magic c in
        let _8 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 1121 "sintatico.ml"
        ) = Obj.magic _8 in
        let _7 : (
# 23 "sintatico.mly"
       (Lexing.position)
# 1126 "sintatico.ml"
        ) = Obj.magic _7 in
        let e : (Sast.expressao) = Obj.magic e in
        let _5 : (
# 23 "sintatico.mly"
       (Lexing.position)
# 1132 "sintatico.ml"
        ) = Obj.magic _5 in
        let ex : (Sast.expressao) = Obj.magic ex in
        let _3 : (
# 26 "sintatico.mly"
       (Lexing.position)
# 1138 "sintatico.ml"
        ) = Obj.magic _3 in
        let v : (Sast.expressao) = Obj.magic v in
        let _1 : (
# 23 "sintatico.mly"
       (Lexing.position)
# 1144 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__11_ in
        let _v : (Sast.expressao Ast.comando) = 
# 152 "sintatico.mly"
                                              ( 
                                        CmdFor(v, ex, e, c) 
                                )
# 1154 "sintatico.ml"
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
# 126 "sintatico.mly"
                             ( CmdChamada exp )
# 1179 "sintatico.ml"
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
# 1220 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1225 "sintatico.ml"
        ) = Obj.magic _4 in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _2 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1231 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 25 "sintatico.mly"
       (Lexing.position)
# 1236 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.comando) = 
# 145 "sintatico.mly"
                                                                                     ( CmdSaida xs)
# 1244 "sintatico.ml"
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
# 1285 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1290 "sintatico.ml"
        ) = Obj.magic _4 in
        let cs : (Sast.expressao Ast.expressoes) = Obj.magic cs in
        let _2 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1296 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 25 "sintatico.mly"
       (Lexing.position)
# 1301 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.comando) = 
# 146 "sintatico.mly"
                                                                                 ( CmdSaidaln cs)
# 1309 "sintatico.ml"
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
# 1361 "sintatico.ml"
        ) = Obj.magic _6 in
        let entao : (Sast.expressao Ast.comandos) = Obj.magic entao in
        let _4 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 1367 "sintatico.ml"
        ) = Obj.magic _4 in
        let _3 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 1372 "sintatico.ml"
        ) = Obj.magic _3 in
        let teste : (Sast.expressao) = Obj.magic teste in
        let _1 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 1378 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_senao_ in
        let _v : (Sast.expressao Ast.comando) = 
# 135 "sintatico.mly"
                                                (
                        CmdSe (teste, entao, senao)
                )
# 1388 "sintatico.ml"
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
# 1439 "sintatico.ml"
        ) = Obj.magic _7 in
        let _6 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1444 "sintatico.ml"
        ) = Obj.magic _6 in
        let c : (Sast.expressao Ast.comandos) = Obj.magic c in
        let _4 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 1450 "sintatico.ml"
        ) = Obj.magic _4 in
        let _3 : (
# 23 "sintatico.mly"
       (Lexing.position)
# 1455 "sintatico.ml"
        ) = Obj.magic _3 in
        let teste : (Sast.expressao) = Obj.magic teste in
        let _1 : (
# 23 "sintatico.mly"
       (Lexing.position)
# 1461 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__7_ in
        let _v : (Sast.expressao Ast.comando) = 
# 159 "sintatico.mly"
                                      (
                                CmdWhile(teste,c)
                        )
# 1471 "sintatico.ml"
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
# 1512 "sintatico.ml"
        ) = Obj.magic _5 in
        let t : (Ast.tipo) = Obj.magic t in
        let _3 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1518 "sintatico.ml"
        ) = Obj.magic _3 in
        let ids : (Ast.ident Ast.pos list) = Obj.magic ids in
        let _1 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1524 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Ast.declaracao list) = 
# 68 "sintatico.mly"
                                                                                       (List.map (fun id -> DecVar (id,t)) ids )
# 1532 "sintatico.ml"
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
# 1568 "sintatico.ml"
        ) = Obj.magic _4 in
        let t : (Ast.tipo) = Obj.magic t in
        let _2 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1574 "sintatico.ml"
        ) = Obj.magic _2 in
        let ids : (Ast.ident Ast.pos list) = Obj.magic ids in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ids_ in
        let _endpos = _endpos__4_ in
        let _v : (Ast.declaracao list) = 
# 69 "sintatico.mly"
                                                                          (List.map (fun id -> DecVar (id,t)) ids )
# 1583 "sintatico.ml"
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
# 1664 "sintatico.ml"
        ) = Obj.magic _13 in
        let _12 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1669 "sintatico.ml"
        ) = Obj.magic _12 in
        let lc : (Sast.expressao Ast.comandos) = Obj.magic lc in
        let _10 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 1675 "sintatico.ml"
        ) = Obj.magic _10 in
        let bv : (Ast.declaracao list list) = Obj.magic bv in
        let _8 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1681 "sintatico.ml"
        ) = Obj.magic _8 in
        let tp : (Ast.tipo) = Obj.magic tp in
        let _6 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1687 "sintatico.ml"
        ) = Obj.magic _6 in
        let _5 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1692 "sintatico.ml"
        ) = Obj.magic _5 in
        let p : ((Ast.ident Ast.pos * Ast.tipo) list list) = Obj.magic p in
        let _3 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1698 "sintatico.ml"
        ) = Obj.magic _3 in
        let id : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 1703 "sintatico.ml"
        ) = Obj.magic id in
        let _1 : (
# 42 "sintatico.mly"
       (Lexing.position)
# 1708 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__13_ in
        let _v : (Sast.expressao Ast.declaracao_funcao) = 
# 103 "sintatico.mly"
                      (
                Funcao {
                        fn_nome=id;
                        fn_prms=List.flatten p; 
                        fn_tiporeturn=tp;
                        fn_locais= List.flatten bv;
                        fn_cmds=lc
                } 
        )
# 1724 "sintatico.ml"
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
        let v : (Sast.expressao Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_v_ in
        let _v : (Sast.expressao) = 
# 176 "sintatico.mly"
                      ( ExpVar v    )
# 1749 "sintatico.ml"
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
# 1770 "sintatico.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (Sast.expressao) = 
# 177 "sintatico.mly"
                       ( ExpInt i    )
# 1778 "sintatico.ml"
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
# 1799 "sintatico.ml"
        ) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_s_ in
        let _v : (Sast.expressao) = 
# 178 "sintatico.mly"
                         ( ExpString s )
# 1807 "sintatico.ml"
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
# 1828 "sintatico.ml"
        ) = Obj.magic r in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_r_ in
        let _endpos = _endpos_r_ in
        let _v : (Sast.expressao) = 
# 179 "sintatico.mly"
                         ( ExpReal r   )
# 1836 "sintatico.ml"
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
# 44 "sintatico.mly"
       (bool * Lexing.position)
# 1857 "sintatico.ml"
        ) = Obj.magic b in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_b_ in
        let _endpos = _endpos_b_ in
        let _v : (Sast.expressao) = 
# 180 "sintatico.mly"
            ( ExpBool b )
# 1865 "sintatico.ml"
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
# 181 "sintatico.mly"
                  ( c )
# 1890 "sintatico.ml"
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
# 1922 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 191 "sintatico.mly"
             ( (Mais, pos)  )
# 1933 "sintatico.ml"
          
        in
        
# 183 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1939 "sintatico.ml"
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
# 1971 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 192 "sintatico.mly"
                    ( (Menos, pos) )
# 1982 "sintatico.ml"
          
        in
        
# 183 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1988 "sintatico.ml"
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
# 2020 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 193 "sintatico.mly"
                          ( (Mult, pos)  )
# 2031 "sintatico.ml"
          
        in
        
# 183 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2037 "sintatico.ml"
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
# 2069 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 194 "sintatico.mly"
                       ( (Div, pos)   )
# 2080 "sintatico.ml"
          
        in
        
# 183 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2086 "sintatico.ml"
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
# 2118 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 195 "sintatico.mly"
                       ( (Mod, pos)   )
# 2129 "sintatico.ml"
          
        in
        
# 183 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2135 "sintatico.ml"
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
# 2167 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 196 "sintatico.mly"
                    ( (Menor, pos) )
# 2178 "sintatico.ml"
          
        in
        
# 183 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2184 "sintatico.ml"
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
# 2216 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 197 "sintatico.mly"
                    ( (Igual, pos) )
# 2227 "sintatico.ml"
          
        in
        
# 183 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2233 "sintatico.ml"
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
# 2265 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 198 "sintatico.mly"
                         ( (MenorIgual, pos) )
# 2276 "sintatico.ml"
          
        in
        
# 183 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2282 "sintatico.ml"
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
# 2314 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 199 "sintatico.mly"
                         ( (MaiorIgual, pos) )
# 2325 "sintatico.ml"
          
        in
        
# 183 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2331 "sintatico.ml"
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
# 2363 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 200 "sintatico.mly"
                        ( (Difer, pos) )
# 2374 "sintatico.ml"
          
        in
        
# 183 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2380 "sintatico.ml"
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
# 2412 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 201 "sintatico.mly"
                    ( (Maior, pos) )
# 2423 "sintatico.ml"
          
        in
        
# 183 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2429 "sintatico.ml"
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
# 38 "sintatico.mly"
       (Lexing.position)
# 2461 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 202 "sintatico.mly"
                 ((And, pos))
# 2472 "sintatico.ml"
          
        in
        
# 183 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2478 "sintatico.ml"
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
# 39 "sintatico.mly"
       (Lexing.position)
# 2510 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 203 "sintatico.mly"
                 ( (Or, pos)    )
# 2521 "sintatico.ml"
          
        in
        
# 183 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2527 "sintatico.ml"
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
# 2558 "sintatico.ml"
        ) = Obj.magic _3 in
        let e : (Sast.expressao) = Obj.magic e in
        let _1 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 2564 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao) = 
# 184 "sintatico.mly"
                           ( e )
# 2572 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = fim;
          MenhirLib.EngineTypes.startp = _startpos_fim_;
          MenhirLib.EngineTypes.endp = _endpos_fim_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = inicio;
              MenhirLib.EngineTypes.startp = _startpos_inicio_;
              MenhirLib.EngineTypes.endp = _endpos_inicio_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let fim : (
# 8 "sintatico.mly"
       (int * Lexing.position)
# 2603 "sintatico.ml"
        ) = Obj.magic fim in
        let _2 : (
# 47 "sintatico.mly"
       (Lexing.position)
# 2608 "sintatico.ml"
        ) = Obj.magic _2 in
        let inicio : (
# 8 "sintatico.mly"
       (int * Lexing.position)
# 2613 "sintatico.ml"
        ) = Obj.magic inicio in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_inicio_ in
        let _endpos = _endpos_fim_ in
        let _v : (int Ast.pos * int Ast.pos) = 
# 93 "sintatico.mly"
                                       ( (inicio, fim) )
# 2621 "sintatico.ml"
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
# 2639 "sintatico.ml"
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
# 2670 "sintatico.ml"
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
# 2688 "sintatico.ml"
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
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.funcoes) = 
# 185 "/usr/share/menhir/standard.mly"
    ( [] )
# 2737 "sintatico.ml"
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
# 2768 "sintatico.ml"
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
# 2786 "sintatico.ml"
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
# 2817 "sintatico.ml"
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
# 2835 "sintatico.ml"
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
# 2860 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = _40;
          MenhirLib.EngineTypes.startp = _startpos__40_;
          MenhirLib.EngineTypes.endp = _endpos__40_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = tp0;
            MenhirLib.EngineTypes.startp = _startpos_tp0_;
            MenhirLib.EngineTypes.endp = _endpos_tp0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _20;
              MenhirLib.EngineTypes.startp = _startpos__20_;
              MenhirLib.EngineTypes.endp = _endpos__20_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = id0;
                MenhirLib.EngineTypes.startp = _startpos_id0_;
                MenhirLib.EngineTypes.endp = _endpos_id0_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _40 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 2896 "sintatico.ml"
        ) = Obj.magic _40 in
        let tp0 : (Ast.tipo) = Obj.magic tp0 in
        let _20 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 2902 "sintatico.ml"
        ) = Obj.magic _20 in
        let id0 : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 2907 "sintatico.ml"
        ) = Obj.magic id0 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id0_ in
        let _endpos = _endpos__40_ in
        let _v : (Ast.campos) = let x =
          let _4 = _40 in
          let tp = tp0 in
          let _2 = _20 in
          let id = id0 in
          
# 90 "sintatico.mly"
                                                                         ( (id, tp) )
# 2920 "sintatico.ml"
          
        in
        
# 195 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2926 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _40;
            MenhirLib.EngineTypes.startp = _startpos__40_;
            MenhirLib.EngineTypes.endp = _endpos__40_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = tp0;
              MenhirLib.EngineTypes.startp = _startpos_tp0_;
              MenhirLib.EngineTypes.endp = _endpos_tp0_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _20;
                MenhirLib.EngineTypes.startp = _startpos__20_;
                MenhirLib.EngineTypes.endp = _endpos__20_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = id0;
                  MenhirLib.EngineTypes.startp = _startpos_id0_;
                  MenhirLib.EngineTypes.endp = _endpos_id0_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let xs : (Ast.campos) = Obj.magic xs in
        let _40 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 2968 "sintatico.ml"
        ) = Obj.magic _40 in
        let tp0 : (Ast.tipo) = Obj.magic tp0 in
        let _20 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 2974 "sintatico.ml"
        ) = Obj.magic _20 in
        let id0 : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 2979 "sintatico.ml"
        ) = Obj.magic id0 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id0_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.campos) = let x =
          let _4 = _40 in
          let tp = tp0 in
          let _2 = _20 in
          let id = id0 in
          
# 90 "sintatico.mly"
                                                                         ( (id, tp) )
# 2992 "sintatico.ml"
          
        in
        
# 197 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2998 "sintatico.ml"
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
# 3016 "sintatico.ml"
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
# 3057 "sintatico.ml"
        ) = Obj.magic _50 in
        let _40 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 3062 "sintatico.ml"
        ) = Obj.magic _40 in
        let cs0 : (Sast.expressao Ast.comandos) = Obj.magic cs0 in
        let _20 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 3068 "sintatico.ml"
        ) = Obj.magic _20 in
        let _10 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 3073 "sintatico.ml"
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
          
# 135 "sintatico.mly"
                                          (cs)
# 3087 "sintatico.ml"
          
        in
        
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 3093 "sintatico.ml"
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
# 3125 "sintatico.ml"
        ) = Obj.magic _2 in
        let xs0 : (Ast.ident Ast.pos list) = Obj.magic xs0 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_xs0_ in
        let _endpos = _endpos_t_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = let ids =
          let xs = xs0 in
          
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 3136 "sintatico.ml"
          
        in
        
# 97 "sintatico.mly"
                                                                     (  List.map (fun id -> (id,t)) ids )
# 3142 "sintatico.ml"
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
# 3199 "sintatico.ml"
        ) = Obj.magic _7 in
        let cs : (Sast.expressao Ast.comandos) = Obj.magic cs in
        let _5 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 3205 "sintatico.ml"
        ) = Obj.magic _5 in
        let ds : (Ast.declaracao list list) = Obj.magic ds in
        let fs : (Sast.expressao Ast.funcoes) = Obj.magic fs in
        let _2 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 3212 "sintatico.ml"
        ) = Obj.magic _2 in
        let p : (
# 12 "sintatico.mly"
       (string * Lexing.position)
# 3217 "sintatico.ml"
        ) = Obj.magic p in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_p_ in
        let _endpos = _endpos__8_ in
        let _v : (
# 56 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 3225 "sintatico.ml"
        ) = 
# 66 "sintatico.mly"
              ( Programa (fst p,fs, List.flatten ds, cs) )
# 3229 "sintatico.ml"
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
# 3250 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.ident Ast.pos list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 3258 "sintatico.ml"
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
# 3290 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 3295 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.ident Ast.pos list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 3303 "sintatico.ml"
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
# 3328 "sintatico.ml"
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
# 3360 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 3369 "sintatico.ml"
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
# 173 "sintatico.mly"
                      ( [e] )
# 3394 "sintatico.ml"
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
# 3426 "sintatico.ml"
        ) = Obj.magic _2 in
        let s : (Sast.expressao Ast.expressoes) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_e_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 174 "sintatico.mly"
                                ( s @ [e] )
# 3435 "sintatico.ml"
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
# 73 "sintatico.mly"
                      ( t )
# 3460 "sintatico.ml"
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
# 74 "sintatico.mly"
                      ( t )
# 3485 "sintatico.ml"
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
# 75 "sintatico.mly"
                      ( t )
# 3510 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = tp;
          MenhirLib.EngineTypes.startp = _startpos_tp_;
          MenhirLib.EngineTypes.endp = _endpos_tp_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _5;
            MenhirLib.EngineTypes.startp = _startpos__5_;
            MenhirLib.EngineTypes.endp = _endpos__5_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _4;
              MenhirLib.EngineTypes.startp = _startpos__4_;
              MenhirLib.EngineTypes.endp = _endpos__4_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = lim;
                MenhirLib.EngineTypes.startp = _startpos_lim_;
                MenhirLib.EngineTypes.endp = _endpos_lim_;
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
          };
        } = _menhir_stack in
        let tp : (Ast.tipo) = Obj.magic tp in
        let _5 : (
# 20 "sintatico.mly"
       (Lexing.position)
# 3557 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 46 "sintatico.mly"
       (Lexing.position)
# 3562 "sintatico.ml"
        ) = Obj.magic _4 in
        let lim : (int Ast.pos * int Ast.pos) = Obj.magic lim in
        let _2 : (
# 46 "sintatico.mly"
       (Lexing.position)
# 3568 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 20 "sintatico.mly"
       (Lexing.position)
# 3573 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_tp_ in
        let _v : (Ast.tipo) = 
# 84 "sintatico.mly"
                                                       (
                let (inicio, fim) = lim in
                TipoArranjo (tp, inicio, fim)
            )
# 3584 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _3;
            MenhirLib.EngineTypes.startp = _startpos__3_;
            MenhirLib.EngineTypes.endp = _endpos__3_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = campos;
              MenhirLib.EngineTypes.startp = _startpos_campos_;
              MenhirLib.EngineTypes.endp = _endpos_campos_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = _1;
                MenhirLib.EngineTypes.startp = _startpos__1_;
                MenhirLib.EngineTypes.endp = _endpos__1_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 3620 "sintatico.ml"
        ) = Obj.magic _4 in
        let _3 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 3625 "sintatico.ml"
        ) = Obj.magic _3 in
        let campos : (Ast.campos) = Obj.magic campos in
        let _1 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 3631 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__4_ in
        let _v : (Ast.tipo) = 
# 91 "sintatico.mly"
                            ( TipoRegistro campos )
# 3639 "sintatico.ml"
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
# 3660 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 78 "sintatico.mly"
                        ( TipoInt    )
# 3668 "sintatico.ml"
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
# 3689 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 79 "sintatico.mly"
                     ( TipoReal )
# 3697 "sintatico.ml"
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
# 3718 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 80 "sintatico.mly"
                       ( TipoString )
# 3726 "sintatico.ml"
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
# 3747 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 81 "sintatico.mly"
                     ( TipoChar )
# 3755 "sintatico.ml"
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
# 45 "sintatico.mly"
       (Lexing.position)
# 3776 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 82 "sintatico.mly"
               (TipoBool)
# 3784 "sintatico.ml"
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
# 3805 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.variavel) = 
# 206 "sintatico.mly"
                     ( VarSimples x )
# 3813 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
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
        } = _menhir_stack in
        let x : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 3844 "sintatico.ml"
        ) = Obj.magic x in
        let _2 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 3849 "sintatico.ml"
        ) = Obj.magic _2 in
        let v : (Sast.expressao Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.variavel) = 
# 207 "sintatico.mly"
                                ( VarCampo (v,x) )
# 3858 "sintatico.ml"
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
# 46 "sintatico.mly"
       (Lexing.position)
# 3894 "sintatico.ml"
        ) = Obj.magic _4 in
        let e : (Sast.expressao) = Obj.magic e in
        let _2 : (
# 46 "sintatico.mly"
       (Lexing.position)
# 3900 "sintatico.ml"
        ) = Obj.magic _2 in
        let v : (Sast.expressao Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.variavel) = 
# 208 "sintatico.mly"
                                           ( VarElemento (v,e) )
# 3909 "sintatico.ml"
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
# 56 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 3940 "sintatico.ml"
    ))

module Incremental = struct
  
  let programa =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (
# 56 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 3950 "sintatico.ml"
      ) MenhirInterpreter.checkpoint)
  
end

# 219 "/usr/share/menhir/standard.mly"
  


# 3959 "sintatico.ml"
