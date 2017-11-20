
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20170607

module MenhirBasics = struct
  
  exception Error
  
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
    | LITSTRING of (
# 10 "sintatico.mly"
       (string)
# 39 "sintatico.ml"
  )
    | LITREAL of (
# 8 "sintatico.mly"
       (float)
# 44 "sintatico.ml"
  )
    | LITINT of (
# 7 "sintatico.mly"
       (int)
# 49 "sintatico.ml"
  )
    | LEIALN
    | LEIA
    | INTEGER
    | IGUAL
    | IF
    | ID of (
# 9 "sintatico.mly"
       (string)
# 59 "sintatico.ml"
  )
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
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

# 2 "sintatico.mly"
  
open Ast


# 92 "sintatico.ml"

module Tables = struct
  
  include MenhirBasics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | APAR ->
          50
      | ATRIB ->
          49
      | BEGIN ->
          48
      | BOOLEAN ->
          47
      | CASE ->
          46
      | CHAR ->
          45
      | DIFERENTE ->
          44
      | DIVIDE ->
          43
      | DO ->
          42
      | DOISPONTOS ->
          41
      | E ->
          40
      | ELSE ->
          39
      | END ->
          38
      | ENDPROG ->
          37
      | EOF ->
          36
      | FOR ->
          35
      | FPAR ->
          34
      | FUNCAO ->
          33
      | ID _ ->
          32
      | IF ->
          31
      | IGUAL ->
          30
      | INTEGER ->
          29
      | LEIA ->
          28
      | LEIALN ->
          27
      | LITINT _ ->
          26
      | LITREAL _ ->
          25
      | LITSTRING _ ->
          24
      | MAIOR ->
          23
      | MAIORIGUAL ->
          22
      | MAIS ->
          21
      | MENOR ->
          20
      | MENORIGUAL ->
          19
      | MENOS ->
          18
      | MODULO ->
          17
      | MULTIPLICA ->
          16
      | OF ->
          15
      | OU ->
          14
      | PONTO ->
          13
      | PONTOVIRG ->
          12
      | PRINT ->
          11
      | PRINTLN ->
          10
      | PROCEDURE ->
          9
      | PROGRAM ->
          8
      | REAL ->
          7
      | STRING ->
          6
      | THEN ->
          5
      | TO ->
          4
      | VAR ->
          3
      | VIRG ->
          2
      | WHILE ->
          1
  
  and error_terminal =
    0
  
  and token2value : token -> Obj.t =
    fun _tok ->
      match _tok with
      | APAR ->
          Obj.repr ()
      | ATRIB ->
          Obj.repr ()
      | BEGIN ->
          Obj.repr ()
      | BOOLEAN ->
          Obj.repr ()
      | CASE ->
          Obj.repr ()
      | CHAR ->
          Obj.repr ()
      | DIFERENTE ->
          Obj.repr ()
      | DIVIDE ->
          Obj.repr ()
      | DO ->
          Obj.repr ()
      | DOISPONTOS ->
          Obj.repr ()
      | E ->
          Obj.repr ()
      | ELSE ->
          Obj.repr ()
      | END ->
          Obj.repr ()
      | ENDPROG ->
          Obj.repr ()
      | EOF ->
          Obj.repr ()
      | FOR ->
          Obj.repr ()
      | FPAR ->
          Obj.repr ()
      | FUNCAO ->
          Obj.repr ()
      | ID _v ->
          Obj.repr _v
      | IF ->
          Obj.repr ()
      | IGUAL ->
          Obj.repr ()
      | INTEGER ->
          Obj.repr ()
      | LEIA ->
          Obj.repr ()
      | LEIALN ->
          Obj.repr ()
      | LITINT _v ->
          Obj.repr _v
      | LITREAL _v ->
          Obj.repr _v
      | LITSTRING _v ->
          Obj.repr _v
      | MAIOR ->
          Obj.repr ()
      | MAIORIGUAL ->
          Obj.repr ()
      | MAIS ->
          Obj.repr ()
      | MENOR ->
          Obj.repr ()
      | MENORIGUAL ->
          Obj.repr ()
      | MENOS ->
          Obj.repr ()
      | MODULO ->
          Obj.repr ()
      | MULTIPLICA ->
          Obj.repr ()
      | OF ->
          Obj.repr ()
      | OU ->
          Obj.repr ()
      | PONTO ->
          Obj.repr ()
      | PONTOVIRG ->
          Obj.repr ()
      | PRINT ->
          Obj.repr ()
      | PRINTLN ->
          Obj.repr ()
      | PROCEDURE ->
          Obj.repr ()
      | PROGRAM ->
          Obj.repr ()
      | REAL ->
          Obj.repr ()
      | STRING ->
          Obj.repr ()
      | THEN ->
          Obj.repr ()
      | TO ->
          Obj.repr ()
      | VAR ->
          Obj.repr ()
      | VIRG ->
          Obj.repr ()
      | WHILE ->
          Obj.repr ()
  
  and default_reduction =
    (8, "\000\000\000\000\000\000\000\000\000>2\000\000\000DCBEF\000\000\000\000\000A\000\021\000\000\000\022\000\000\000\026\027\025\000\000\000\000\000H\000\000\000\000\000\000\030\028\000\029\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000*6\000\016\000\000@\000\000\000\000\000\000\000\018\000\000\000\000\017\000\000\014\000\000\r\000\000\000\000\000G\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\011\b\004\006\n\007\005\t\003:\000\000\012\000\000\002\0004\000\000\015\000,\000\000\000\000\000\0008\019\000\000\020\000\000\023\000.\000\000;\000\000\000\000\000<\0000\001")
  
  and error =
    (51, "\000\128\000\000\000\000\000\000\000\000\016\000\000\000 \000\000\000\000\b\000\000\000`\000@\000\000\000\b\000\000\000\000\000\000\000\000@\000\000\000 \016\001\000\000\000\000\002\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\004\000\006\000\000\b\000\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\001\000\000\000\b\000\b\000\000\000\001\000\000\000\000\000\000\000\016\000\024\000\000 \000(\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \0000\000\000@\000P\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004@0\000\025\146\002\000\000\000\028\016\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000X\029\254\004A\240\192\000\0008(\000\b\000\000\007\004\000\001,\014\255\002 \248\000\000\000\000\016\000\000\000\000\000\000\000\000\000\001\127\129\016L\000\000\000\014\b\000\002X\021\254\004A\240\000\000\0008 \000\t`W\248\017\007\192\000\000\000\224\128\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000p@\000\016\000\000\000\000\000\000\000\000\001\193\000\000K\002\191\192\136>\000\000\000\007\004\000\001,\n\255\002 \248\000\000\000\028\016\000\004\176+\252\b\131\224\000\000\000p@\000\018\192\175\240\"\015\128\000\000\001\193\000\000K\002\191\192\136>\000\000\000\007\004\000\001,\n\255\002 \248\000\000\000\028\016\000\004\176+\252\b\131\224\000\000\000p@\000\018\192\175\240\"\015\128\000\000\001\193\000\000K\002\191\192\136>\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\016\001\127\129\016L\000\000\000\014\b\000\002\000\000\000\000\000\000\000\000\191\192\128.\000\000\000\000\000\000\004@0\000\025\146\002\000\000\000\000\000\000\004\000\000\003\130\000\000\128\000\000\000\016\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\007\004\000\001\000\000\000\000 \000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000p@\000\016\000\175\240 \t\128\000\000\000\000\000\000\000\000\0008 \000\b\000W\248\016\004\192\000\000\000\000\000\000\000\000\000\028\016\000\004\016\011\252\b\002`\000\000\000\000\000\000D\003\000\001\153  \000\000\000\001\000\000\000\000\000\000\000\000\000\000 \000\000\000\002\000\000\000\224\128\000!\000_\224@\019\000\000\000\003\130\000\000\128\001\127\129\000\\\000\000\000\000\000\000\b\128`\0003$\004\000\000\000\000 \000\000\000(\000\000\000\000\000\000\000\224\128\000 \000\000\000\000`\001\000\192\000f@\b\000\002\000\000\000\000 \000\000\014\b\000\002\000\021\254\004\0010\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\001\127\129\000l\004\003\000\001\153\000 \000\000\000\000\000\000\000\000\0008 \192\b\000\000\000\000\000\000\000\000\000\000\002\000\000\001\000\000\000\000\000\000\000\000\000\000\000 \024\000\012\203\001\000\000\000\000\000\000\000\000\000\000\000\004\000\016\012\000>e\192\136\000\000\000\000\000\004@0\000\025\146\002\000\000\000\000\000@\000\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\001\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000@\000@\000\000\000\000\000\000\000\000\000\000\000\128\000\192\000\001\000\001@\000\000\000\000\000\000\016\000\000\000\128\000\128\000\000\000\000\000\017\000\192\000fP\b\000\000\000\000\002\000\000\000\000\000\000\128\000\000\000\000\000\000\000\004\000\000\0000\000 \000\000\000\000\000\000\000\000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\000\003\000/\000\030\000\004\000\b\000\012\0009\0000\0009\000\000\000\000\000@\0008\000.\000\000\000\000\000\000\000\000\000\000\000|\000&\0009\000H\000.\000\000\000\150\000\000\000`\000.\000\172\000\000\000f\004\162\000\003\000\000\000\000\000\000\000\005\000\003\000\003\000R\000\136\000\000\003\228\000\003\000\148\000\003\000\214\000\003\000\000\000\000\000\003\000\000\000\003\001\024\000\003\001Z\000\003\001\156\000\003\001\222\000\003\002 \000\003\002b\000\003\002\164\000\003\002\230\000\003\003(\000\000\000\000\000\134\000\000\003\166\000\003\000\000\003\166\000l\004\162\000j\000\003\000\142\000\188\000\000\000r\000\003\000\152\000\202\000\000\000\003\004&\000\000\000\003\004D\000\000\000\003\003\166\000\144\004\162\000\180\000\000\000\025\000\003\003\166\000\003\003\228\000\166\004\162\000\180\000\015\000\003\000D\004\162\000>\000\003\004\134\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\188\000\242\000\000\003\166\004\162\000\000\004\192\000\000\000\192\000\246\000\000\004\162\000\000\000\196\003Z\000\180\004\162\000\202\001\000\000\000\000\000\000\210\001\012\000\000\000\230\001\030\000\000\000&\000\000\000\246\000.\000\000\000&\000\234\004\162\001\002\001\006\000\000\000\004\000\000\000\000"), (16, "\001\025\000\166\001\025\001\025\000\030\000\185\000\166\000\006\001\194\000\n\001\025\001\025\001\025\000\193\001\025\001\025\001\025\001\025\001\025\001\025\001\025\001\025\000V\000\138\000\142\000\146\000\"\000\014\001\025\000:\000>\000\150\001\025\000\209\000\185\000\018\000\022\001\162\001\025\001\025\001\025\001\025\001\025\000]\000\166\000]\000]\001\025\000\154\000\158\000\185\000\030\000B\000]\000\166\000]\000\026\000]\000]\000]\000]\000]\000]\000]\000]\000\241\0002\000\177\000F\0006\000J\000]\000\225\001\202\000R\000]\000\161\000^\000\161\000\161\001\210\000]\000]\000]\000]\000]\000\161\000j\000\161\000r\000\186\000\214\000\194\000\222\000\238\000\206\000\246\000\254\000z\000\130\000\170\001*\001B\001J\001\006\001R\001V\001^\000\161\000y\001f\000y\000y\001j\001\014\000\161\000\161\000\230\001\022\000y\001\146\000y\001\154\000y\000y\000\194\000y\000y\000\206\000y\000y\001\182\002\006\002\n\002&\002*\002:\000y\002B\002J\002N\000y\000\129\002Z\000\129\000\129\002^\000y\000y\000y\000y\000y\000\129\002f\000\129\002j\000\129\000\129\000\194\000\129\000\129\000\206\000\129\000\129\002z\002\138\002\146\002\151\000\000\000\000\000\129\000\000\000\000\000\000\000\129\000\141\000\000\000\141\000\141\000\000\000\129\000\129\000\129\000\129\000\129\000\141\000\000\000\141\000\000\000\186\000\214\000\194\000\141\000\141\000\206\000\141\000\141\000\000\000\000\000\000\000\000\000\000\000\000\000\141\000\000\000\000\000\000\000\141\000}\000\000\000}\000}\000\000\000\141\000\141\000\141\000\230\000\141\000}\000\000\000}\000\000\000}\000}\000\194\000}\000}\000\206\000}\000}\000\000\000\000\000\000\000\000\000\000\000\000\000}\000\000\000\000\000\000\000}\000\133\000\000\000\133\000\133\000\000\000}\000}\000}\000}\000}\000\133\000\000\000\133\000\000\000\186\000\214\000\194\000\133\000\133\000\206\000\133\000\133\000\000\000\000\000\000\000\000\000\000\000\000\000\133\000\000\000\000\000\000\000\133\000\145\000\000\000\145\000\145\000\000\000\133\000\133\000\133\000\230\000\133\000\145\000\000\000\145\000\000\000\186\000\214\000\194\000\145\000\145\000\206\000\145\000\145\000\000\000\000\000\000\000\000\000\000\000\000\000\145\000\000\000\000\000\000\000\145\000\153\000\000\000\153\000\153\000\000\000\145\000\145\000\145\000\230\000\145\000\153\000\000\000\153\000\000\000\186\000\214\000\194\000\153\000\153\000\206\000\153\000\153\000\000\000\000\000\000\000\000\000\000\000\000\000\153\000\000\000\000\000\000\000\153\000\137\000\000\000\137\000\137\000\000\000\153\000\153\000\153\000\230\000\153\000\137\000\000\000\137\000\000\000\186\000\214\000\194\000\137\000\137\000\206\000\137\000\137\000\000\000\000\000\000\000\000\000\000\000\000\000\137\000\000\000\000\000\000\000\137\000\157\000\000\000\157\000\157\000\000\000\137\000\137\000\137\000\230\000\137\000\157\000\000\000\157\000\000\000\186\000\214\000\194\000\222\000\238\000\206\000\246\000\254\000\000\000\000\000\000\000\000\000\000\000\000\001\006\000\000\000\000\000\000\000\157\000\149\000\000\000\149\000\149\000\000\000\157\000\157\000\157\000\230\001\022\000\149\000\000\000\149\000\000\000\186\000\214\000\194\000\149\000\149\000\206\000\149\000\149\000\000\000\000\000\217\000\000\000\000\000\000\000\149\000\000\000\000\000\000\000\149\000\217\000\217\000\000\000\000\000\000\000\149\000\149\000\149\000\230\000\149\000\000\000\000\000\000\000\000\000\217\000\217\000\217\000\217\000\217\000\000\000\000\000\217\000\217\000\000\000\000\000\217\000\000\000\217\000\217\002>\0012\000\000\001\170\001\142\000\000\000\000\000\217\000\000\000\000\000\000\000\217\000\000\000\178\000\000\000\186\000\214\000\194\000\222\000\238\000\206\000\246\000\254\000\000\000\000\000\000\000\000\000\000\000\000\001\006\000\000\000\000\000\000\000\249\000\000\000\000\000\000\000\000\000\000\001\014\002\018\001>\000\230\001\022\000\178\000\000\000\186\000\214\000\194\000\222\000\238\000\206\000\246\000\254\000\000\000\000\000\000\000\000\000\000\000\000\001\006\000\000\000\000\000\000\001\030\000\000\000\000\000\000\000\000\000\000\001\014\000\000\001\178\000\230\001\022\001v\000\000\000\178\000\000\000\186\000\214\000\194\000\222\000\238\000\206\000\246\000\254\000\000\000\000\000\000\001\130\000\000\000\178\001\006\000\186\000\214\000\194\000\222\000\238\000\206\000\246\000\254\000\000\001\014\000\000\000\000\000\230\001\022\001\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\014\000\000\000\000\000\230\001\022\001\218\000\000\000\178\000\134\000\186\000\214\000\194\000\222\000\238\000\206\000\246\000\254\001F\001Z\000\000\000\000\000\000\000\000\001\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\014\001n\001z\000\230\001\022\001\134\000\150\000\000\000\000\001\150\000\000\000\169\000\169\000\138\000\142\000\146\000\000\000\000\000\000\000\000\001\186\000\150\000\000\000\000\000\000\000\000\000\000\000\201\000\201\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\158"))
  
  and lhs =
    (8, "\000\028\027\027\027\027\027\027\027\027\026\025\024\024\023\022\021\021\020\019\018\018\017\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\016\015\015\014\014\r\r\012\012\011\011\n\n\t\t\b\b\007\006\005\005\004\004\003\002\002\002\002\002\001\001")
  
  and goto =
    ((16, "\000\005\000\000\000\000\000\017\000\000\000\000\000\t\000\000\000\n\000\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\000\000\007\0000\000\000\000\b\000\000\000\000\000\000\000\000\000\028\000\000\000\000\000\000\000\003\001P\000\000\000\000\000\000\000\000\001\018\001R\000\000\000\000\000\000\000\000\001T\000\000\001V\000\000\001X\000\000\000\000\001Z\000\000\001h\000\000\001j\000\000\001\138\000\000\001\140\000\000\001\142\000\000\001\144\000\000\001\158\000\000\001\160\000\000\001\162\000\000\000\000\000\000\000\000\000\000\000\000\001\026\000\000\000\000\000\000\000\024\000\000\001\028\000\000\000\000\000\000\000\000\001B\000\000\000\000\000\000\001\164\000\000\000\000\001\166\000\000\000\000\001\198\000\000\000\000\0006\000:\000\000\000\000\001\212\000\000\001\214\000\000\000\000\000P\000T\000\000\001\020\000J\000\190\000\000\001\216\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\220\000\000\001\022\000\000\000\000\000\000\000\000\000n\000\000\000\000\000`\000\000\000\136\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\226\000\000\000\000\000p\000\000\001\240\000\000\000\166\000\000\000\000\000\000\0006\000\000\000\000"), (8, "t\011\028\012\169\161\025\026\158\167\n \020t\153\156\025\030xyz{|}~\127\140\150t\023hxyz{|}~\127\140\168t\142p\167\129xyz{|}~\127\140\137t\149\160xyz{|}~\127\140\000t\141\000\000\000xyz{|}~\127\140\146t\000\000xyz{|}~\127\140t\000\164\000\000\000xyz{|}~\127\140t\000\000xyz{|}~\127\128\000\000\000\000\000\000xyz{|}~\127\134)))I))\000NTJ\000r\136\000\000L\132\132\000LL333)33Y\135\135\000))))))\000\000L\000\000\000))3O,.02533333379))))33\000\000\000\000)))));=?A\000\0003333CEG]`)33333\000)))\000\000\000\000\000c\000\000\028\000\0003jlv\028\000\157333\156\000\000\162\000\000\000\156"))
  
  and semantic_action =
    [|
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e;
              MenhirLib.EngineTypes.startp = _startpos_e_;
              MenhirLib.EngineTypes.endp = _endpos_e_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let c : (Ast.comando) = Obj.magic c in
        let _2 : unit = Obj.magic _2 in
        let e : (Ast.expressao) = Obj.magic e in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.cases) = 
# 125 "sintatico.mly"
                                            (Case(e,c))
# 357 "sintatico.ml"
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
        let c : (Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.comando) = 
# 91 "sintatico.mly"
                              ( c )
# 382 "sintatico.ml"
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
        let c : (Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.comando) = 
# 92 "sintatico.mly"
                              ( c )
# 407 "sintatico.ml"
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
        let c : (Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.comando) = 
# 93 "sintatico.mly"
                              ( c )
# 432 "sintatico.ml"
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
        let c : (Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.comando) = 
# 94 "sintatico.mly"
                              ( c )
# 457 "sintatico.ml"
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
        let c : (Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.comando) = 
# 95 "sintatico.mly"
                            ( c )
# 482 "sintatico.ml"
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
        let c : (Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.comando) = 
# 96 "sintatico.mly"
                             ( c )
# 507 "sintatico.ml"
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
        let c : (Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.comando) = 
# 97 "sintatico.mly"
                             ( c )
# 532 "sintatico.ml"
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
        let c : (Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.comando) = 
# 98 "sintatico.mly"
                            (c )
# 557 "sintatico.ml"
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
        let _4 : unit = Obj.magic _4 in
        let e : (Ast.expressao) = Obj.magic e in
        let _2 : unit = Obj.magic _2 in
        let v : (Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos__4_ in
        let _v : (Ast.comando) = 
# 100 "sintatico.mly"
                                                           (CmdAtrib (v,e))
# 600 "sintatico.ml"
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
              MenhirLib.EngineTypes.semv = default;
              MenhirLib.EngineTypes.startp = _startpos_default_;
              MenhirLib.EngineTypes.endp = _endpos_default_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = c;
                MenhirLib.EngineTypes.startp = _startpos_c_;
                MenhirLib.EngineTypes.endp = _endpos_c_;
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
        } = _menhir_stack in
        let _7 : unit = Obj.magic _7 in
        let _6 : unit = Obj.magic _6 in
        let default : (Ast.comando option) = Obj.magic default in
        let c : (Ast.cases list) = Obj.magic c in
        let _3 : unit = Obj.magic _3 in
        let v : (Ast.variavel) = Obj.magic v in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__7_ in
        let _v : (Ast.comando) = 
# 123 "sintatico.mly"
                                                                                                (CmdCase(v,c,default))
# 661 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = xs;
            MenhirLib.EngineTypes.startp = _startpos_xs_;
            MenhirLib.EngineTypes.endp = _endpos_xs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let xs : (Ast.expressao) = Obj.magic xs in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Ast.comando) = 
# 111 "sintatico.mly"
                                             (CmdEntrada xs)
# 698 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = xs;
            MenhirLib.EngineTypes.startp = _startpos_xs_;
            MenhirLib.EngineTypes.endp = _endpos_xs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let xs : (Ast.expressao) = Obj.magic xs in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Ast.comando) = 
# 112 "sintatico.mly"
                                  (CmdEntradaln xs)
# 735 "sintatico.ml"
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
        let _11 : unit = Obj.magic _11 in
        let _10 : unit = Obj.magic _10 in
        let c : (Ast.comandos) = Obj.magic c in
        let _8 : unit = Obj.magic _8 in
        let _7 : unit = Obj.magic _7 in
        let e : (Ast.expressao) = Obj.magic e in
        let _5 : unit = Obj.magic _5 in
        let ex : (Ast.expressao) = Obj.magic ex in
        let _3 : unit = Obj.magic _3 in
        let v : (Ast.variavel) = Obj.magic v in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__11_ in
        let _v : (Ast.comando) = 
# 119 "sintatico.mly"
                                                                                                 ( CmdFor(v,ex,e,c) )
# 820 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = p;
            MenhirLib.EngineTypes.startp = _startpos_p_;
            MenhirLib.EngineTypes.endp = _endpos_p_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = id;
                MenhirLib.EngineTypes.startp = _startpos_id_;
                MenhirLib.EngineTypes.endp = _endpos_id_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : unit = Obj.magic _4 in
        let p : (Ast.expressoes option) = Obj.magic p in
        let _2 : unit = Obj.magic _2 in
        let id : (
# 9 "sintatico.mly"
       (string)
# 859 "sintatico.ml"
        ) = Obj.magic id in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id_ in
        let _endpos = _endpos__4_ in
        let _v : (Ast.comando) = 
# 103 "sintatico.mly"
                                                                                               (CmdChamadaFuncao (id, p))
# 867 "sintatico.ml"
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
        let _5 : unit = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let xs : (Ast.expressoes) = Obj.magic xs in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Ast.comando) = 
# 115 "sintatico.mly"
                                                                                     ( CmdSaida xs)
# 916 "sintatico.ml"
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
        let _5 : unit = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let cs : (Ast.expressoes) = Obj.magic cs in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Ast.comando) = 
# 116 "sintatico.mly"
                                                                                 ( CmdSaidaln cs)
# 965 "sintatico.ml"
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
        let senao : (Ast.comandos option) = Obj.magic senao in
        let _6 : unit = Obj.magic _6 in
        let entao : (Ast.comandos) = Obj.magic entao in
        let _4 : unit = Obj.magic _4 in
        let _3 : unit = Obj.magic _3 in
        let teste : (Ast.expressao) = Obj.magic teste in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_senao_ in
        let _v : (Ast.comando) = 
# 107 "sintatico.mly"
  (CmdSe (teste, entao, senao))
# 1026 "sintatico.ml"
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
        let _7 : unit = Obj.magic _7 in
        let _6 : unit = Obj.magic _6 in
        let c : (Ast.comandos) = Obj.magic c in
        let _4 : unit = Obj.magic _4 in
        let _3 : unit = Obj.magic _3 in
        let teste : (Ast.expressao) = Obj.magic teste in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__7_ in
        let _v : (Ast.comando) = 
# 121 "sintatico.mly"
                                                                       (CmdWhile(teste,c))
# 1087 "sintatico.ml"
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
        let _5 : unit = Obj.magic _5 in
        let t : (Ast.tipo) = Obj.magic t in
        let _3 : unit = Obj.magic _3 in
        let ids : (Ast.ident list) = Obj.magic ids in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Ast.declaracao list) = 
# 62 "sintatico.mly"
                                                                                       (List.map (fun id -> DecVar (id,t)) ids )
# 1136 "sintatico.ml"
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
        let _4 : unit = Obj.magic _4 in
        let t : (Ast.tipo) = Obj.magic t in
        let _2 : unit = Obj.magic _2 in
        let ids : (Ast.ident list) = Obj.magic ids in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ids_ in
        let _endpos = _endpos__4_ in
        let _v : (Ast.declaracao list) = 
# 63 "sintatico.mly"
                                                                          (List.map (fun id -> DecVar (id,t)) ids )
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
        let _13 : unit = Obj.magic _13 in
        let _12 : unit = Obj.magic _12 in
        let lc : (Ast.comandos) = Obj.magic lc in
        let _10 : unit = Obj.magic _10 in
        let bv : (Ast.declaracao list list) = Obj.magic bv in
        let _8 : unit = Obj.magic _8 in
        let tp : (Ast.tipo) = Obj.magic tp in
        let _6 : unit = Obj.magic _6 in
        let _5 : unit = Obj.magic _5 in
        let p : (Ast.declaracao_parametros) = Obj.magic p in
        let _3 : unit = Obj.magic _3 in
        let id : (
# 9 "sintatico.mly"
       (string)
# 1271 "sintatico.ml"
        ) = Obj.magic id in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__13_ in
        let _v : (Ast.declaracao_funcao) = 
# 84 "sintatico.mly"
                      (Funcao(id, p, tp,List.flatten bv, lc) )
# 1280 "sintatico.ml"
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
        let v : (Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_v_ in
        let _v : (Ast.expressao) = 
# 128 "sintatico.mly"
                      ( ExpVar v    )
# 1305 "sintatico.ml"
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
# 7 "sintatico.mly"
       (int)
# 1326 "sintatico.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (Ast.expressao) = 
# 129 "sintatico.mly"
                       ( ExpInt i    )
# 1334 "sintatico.ml"
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
# 10 "sintatico.mly"
       (string)
# 1355 "sintatico.ml"
        ) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_s_ in
        let _v : (Ast.expressao) = 
# 130 "sintatico.mly"
                         ( ExpString s )
# 1363 "sintatico.ml"
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
# 8 "sintatico.mly"
       (float)
# 1384 "sintatico.ml"
        ) = Obj.magic r in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_r_ in
        let _endpos = _endpos_r_ in
        let _v : (Ast.expressao) = 
# 131 "sintatico.mly"
                         ( ExpReal r   )
# 1392 "sintatico.ml"
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
        let c : (Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Ast.expressao) = 
# 132 "sintatico.mly"
                       (ExpChamadaF c)
# 1417 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 137 "sintatico.mly"
         ( Mais  )
# 1456 "sintatico.ml"
          
        in
        
# 133 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1462 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 138 "sintatico.mly"
                ( Menos )
# 1501 "sintatico.ml"
          
        in
        
# 133 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1507 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 139 "sintatico.mly"
                      ( Mult  )
# 1546 "sintatico.ml"
          
        in
        
# 133 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1552 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 140 "sintatico.mly"
                   ( Div   )
# 1591 "sintatico.ml"
          
        in
        
# 133 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1597 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 141 "sintatico.mly"
                   ( Mod   )
# 1636 "sintatico.ml"
          
        in
        
# 133 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1642 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 142 "sintatico.mly"
                ( Menor )
# 1681 "sintatico.ml"
          
        in
        
# 133 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1687 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 143 "sintatico.mly"
                ( Igual )
# 1726 "sintatico.ml"
          
        in
        
# 133 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1732 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 144 "sintatico.mly"
                     ( MenorIgual )
# 1771 "sintatico.ml"
          
        in
        
# 133 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1777 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 145 "sintatico.mly"
                     ( MaiorIgual )
# 1816 "sintatico.ml"
          
        in
        
# 133 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1822 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 146 "sintatico.mly"
                    ( Difer )
# 1861 "sintatico.ml"
          
        in
        
# 133 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1867 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 147 "sintatico.mly"
                ( Maior )
# 1906 "sintatico.ml"
          
        in
        
# 133 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1912 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 148 "sintatico.mly"
             ( And     )
# 1951 "sintatico.ml"
          
        in
        
# 133 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1957 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Ast.expressao) = Obj.magic e2 in
        let _10 : unit = Obj.magic _10 in
        let e1 : (Ast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Ast.expressao) = let op =
          let _1 = _10 in
          
# 149 "sintatico.mly"
             ( Or    )
# 1996 "sintatico.ml"
          
        in
        
# 133 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 2002 "sintatico.ml"
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
        let _3 : unit = Obj.magic _3 in
        let e : (Ast.expressao) = Obj.magic e in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Ast.expressao) = 
# 134 "sintatico.mly"
                           ( Expar(e) )
# 2039 "sintatico.ml"
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
        let _v : (Ast.comandos) = 
# 185 "/usr/share/menhir/standard.mly"
    ( [] )
# 2057 "sintatico.ml"
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
        let xs : (Ast.comandos) = Obj.magic xs in
        let x : (Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.comandos) = 
# 187 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2088 "sintatico.ml"
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
# 2106 "sintatico.ml"
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
# 2137 "sintatico.ml"
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
        let _v : (Ast.funcoes) = 
# 185 "/usr/share/menhir/standard.mly"
    ( [] )
# 2155 "sintatico.ml"
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
        let xs : (Ast.funcoes) = Obj.magic xs in
        let x : (Ast.declaracao_funcao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.funcoes) = 
# 187 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2186 "sintatico.ml"
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
        let _v : (Ast.ident list) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 2204 "sintatico.ml"
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
        let x : (Ast.ident list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.ident list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 2229 "sintatico.ml"
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
        let x : (Ast.cases) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.cases list) = 
# 195 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2254 "sintatico.ml"
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
        let xs : (Ast.cases list) = Obj.magic xs in
        let x : (Ast.cases) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.cases list) = 
# 197 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2285 "sintatico.ml"
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
        let _v : (Ast.expressoes option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 2303 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = arg0;
          MenhirLib.EngineTypes.startp = _startpos_arg0_;
          MenhirLib.EngineTypes.endp = _endpos_arg0_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let arg0 : (Ast.expressoes) = Obj.magic arg0 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_arg0_ in
        let _endpos = _endpos_arg0_ in
        let _v : (Ast.expressoes option) = let x =
          let arg = arg0 in
          
# 103 "sintatico.mly"
                                                                                   (arg)
# 2330 "sintatico.ml"
          
        in
        
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 2336 "sintatico.ml"
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
        let _v : (Ast.comandos option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 2354 "sintatico.ml"
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
        let _50 : unit = Obj.magic _50 in
        let _40 : unit = Obj.magic _40 in
        let cs0 : (Ast.comandos) = Obj.magic cs0 in
        let _20 : unit = Obj.magic _20 in
        let _10 : unit = Obj.magic _10 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__10_ in
        let _endpos = _endpos__50_ in
        let _v : (Ast.comandos option) = let x =
          let _5 = _50 in
          let _4 = _40 in
          let cs = cs0 in
          let _2 = _20 in
          let _1 = _10 in
          
# 106 "sintatico.mly"
                                                                 (cs)
# 2409 "sintatico.ml"
          
        in
        
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 2415 "sintatico.ml"
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
        let _v : (Ast.comando option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 2433 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = cs0;
          MenhirLib.EngineTypes.startp = _startpos_cs0_;
          MenhirLib.EngineTypes.endp = _endpos_cs0_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let cs0 : (Ast.comando) = Obj.magic cs0 in
        let _10 : unit = Obj.magic _10 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__10_ in
        let _endpos = _endpos_cs0_ in
        let _v : (Ast.comando option) = let x =
          let cs = cs0 in
          let _1 = _10 in
          
# 123 "sintatico.mly"
                                                                           (cs)
# 2467 "sintatico.ml"
          
        in
        
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 2473 "sintatico.ml"
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
        let _2 : unit = Obj.magic _2 in
        let xs0 : (Ast.ident list) = Obj.magic xs0 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_xs0_ in
        let _endpos = _endpos_t_ in
        let _v : (Ast.declaracao_parametros) = let ids =
          let xs = xs0 in
          
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 2512 "sintatico.ml"
          
        in
        
# 78 "sintatico.mly"
                                                                     (  List.map (fun id -> Parametros (id,t)) ids )
# 2518 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = _9;
          MenhirLib.EngineTypes.startp = _startpos__9_;
          MenhirLib.EngineTypes.endp = _endpos__9_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _8;
            MenhirLib.EngineTypes.startp = _startpos__8_;
            MenhirLib.EngineTypes.endp = _endpos__8_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = cs;
              MenhirLib.EngineTypes.startp = _startpos_cs_;
              MenhirLib.EngineTypes.endp = _endpos_cs_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _6;
                MenhirLib.EngineTypes.startp = _startpos__6_;
                MenhirLib.EngineTypes.endp = _endpos__6_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = ds;
                  MenhirLib.EngineTypes.startp = _startpos_ds_;
                  MenhirLib.EngineTypes.endp = _endpos_ds_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = fs;
                    MenhirLib.EngineTypes.startp = _startpos_fs_;
                    MenhirLib.EngineTypes.endp = _endpos_fs_;
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
        } = _menhir_stack in
        let _9 : unit = Obj.magic _9 in
        let _8 : unit = Obj.magic _8 in
        let cs : (Ast.comandos) = Obj.magic cs in
        let _6 : unit = Obj.magic _6 in
        let ds : (Ast.declaracao list list) = Obj.magic ds in
        let fs : (Ast.funcoes) = Obj.magic fs in
        let _3 : unit = Obj.magic _3 in
        let id : (
# 9 "sintatico.mly"
       (string)
# 2586 "sintatico.ml"
        ) = Obj.magic id in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__9_ in
        let _v : (
# 50 "sintatico.mly"
       (Ast.programa)
# 2595 "sintatico.ml"
        ) = 
# 60 "sintatico.mly"
              ( Programa (fs, List.flatten ds, cs) )
# 2599 "sintatico.ml"
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
# 9 "sintatico.mly"
       (string)
# 2620 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.ident list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2628 "sintatico.ml"
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
        let xs : (Ast.ident list) = Obj.magic xs in
        let _2 : unit = Obj.magic _2 in
        let x : (
# 9 "sintatico.mly"
       (string)
# 2661 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.ident list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2669 "sintatico.ml"
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
        let x : (Ast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.expressoes) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2694 "sintatico.ml"
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
        let xs : (Ast.expressoes) = Obj.magic xs in
        let _2 : unit = Obj.magic _2 in
        let x : (Ast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.expressoes) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2731 "sintatico.ml"
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
# 67 "sintatico.mly"
                      ( t )
# 2756 "sintatico.ml"
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
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 70 "sintatico.mly"
                        ( TipoInt    )
# 2781 "sintatico.ml"
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
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 71 "sintatico.mly"
                     ( TipoReal )
# 2806 "sintatico.ml"
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
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 72 "sintatico.mly"
                       ( TipoString )
# 2831 "sintatico.ml"
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
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 73 "sintatico.mly"
                     ( TipoChar )
# 2856 "sintatico.ml"
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
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 74 "sintatico.mly"
           (TipoBool)
# 2881 "sintatico.ml"
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
# 9 "sintatico.mly"
       (string)
# 2902 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.variavel) = 
# 152 "sintatico.mly"
                     ( VarSimples x )
# 2910 "sintatico.ml"
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
# 9 "sintatico.mly"
       (string)
# 2941 "sintatico.ml"
        ) = Obj.magic x in
        let _2 : unit = Obj.magic _2 in
        let v : (Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.variavel) = 
# 153 "sintatico.mly"
                                ( VarCampo (v,x) )
# 2951 "sintatico.ml"
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
# 50 "sintatico.mly"
       (Ast.programa)
# 2982 "sintatico.ml"
    ))

module Incremental = struct
  
  let programa =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (
# 50 "sintatico.mly"
       (Ast.programa)
# 2992 "sintatico.ml"
      ) MenhirInterpreter.checkpoint)
  
end

# 219 "/usr/share/menhir/standard.mly"
  


# 3001 "sintatico.ml"
