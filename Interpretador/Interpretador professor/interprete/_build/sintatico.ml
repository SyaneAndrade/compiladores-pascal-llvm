
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20170607

module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VIRG of (
# 16 "sintatico.mly"
       (Lexing.position)
# 16 "sintatico.ml"
  )
    | STRING of (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 21 "sintatico.ml"
  )
    | SENAO of (
# 22 "sintatico.mly"
       (Lexing.position)
# 26 "sintatico.ml"
  )
    | SE of (
# 22 "sintatico.mly"
       (Lexing.position)
# 31 "sintatico.ml"
  )
    | SAIDA of (
# 24 "sintatico.mly"
       (Lexing.position)
# 36 "sintatico.ml"
  )
    | RETORNE of (
# 25 "sintatico.mly"
       (Lexing.position)
# 41 "sintatico.ml"
  )
    | REGISTRO of (
# 21 "sintatico.mly"
       (Lexing.position)
# 46 "sintatico.ml"
  )
    | PTV of (
# 16 "sintatico.mly"
       (Lexing.position)
# 51 "sintatico.ml"
  )
    | PTO of (
# 16 "sintatico.mly"
       (Lexing.position)
# 56 "sintatico.ml"
  )
    | PROGRAMA of (
# 12 "sintatico.mly"
       (Lexing.position)
# 61 "sintatico.ml"
  )
    | PPTO of (
# 16 "sintatico.mly"
       (Lexing.position)
# 66 "sintatico.ml"
  )
    | OULOG of (
# 35 "sintatico.mly"
       (Lexing.position)
# 71 "sintatico.ml"
  )
    | MULT of (
# 28 "sintatico.mly"
       (Lexing.position)
# 76 "sintatico.ml"
  )
    | MENOS of (
# 27 "sintatico.mly"
       (Lexing.position)
# 81 "sintatico.ml"
  )
    | MENOR of (
# 30 "sintatico.mly"
       (Lexing.position)
# 86 "sintatico.ml"
  )
    | MAIS of (
# 26 "sintatico.mly"
       (Lexing.position)
# 91 "sintatico.ml"
  )
    | MAIOR of (
# 33 "sintatico.mly"
       (Lexing.position)
# 96 "sintatico.ml"
  )
    | INTEIRO of (
# 19 "sintatico.mly"
       (Lexing.position)
# 101 "sintatico.ml"
  )
    | INT of (
# 8 "sintatico.mly"
       (int * Lexing.position)
# 106 "sintatico.ml"
  )
    | INICIO of (
# 13 "sintatico.mly"
       (Lexing.position)
# 111 "sintatico.ml"
  )
    | IGUAL of (
# 31 "sintatico.mly"
       (Lexing.position)
# 116 "sintatico.ml"
  )
    | ID of (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 121 "sintatico.ml"
  )
    | FUNCAO of (
# 15 "sintatico.mly"
       (Lexing.position)
# 126 "sintatico.ml"
  )
    | FPAR of (
# 18 "sintatico.mly"
       (Lexing.position)
# 131 "sintatico.ml"
  )
    | FIM of (
# 14 "sintatico.mly"
       (Lexing.position)
# 136 "sintatico.ml"
  )
    | FCOL of (
# 17 "sintatico.mly"
       (Lexing.position)
# 141 "sintatico.ml"
  )
    | EOF
    | ENTRADA of (
# 23 "sintatico.mly"
       (Lexing.position)
# 147 "sintatico.ml"
  )
    | ENTAO of (
# 22 "sintatico.mly"
       (Lexing.position)
# 152 "sintatico.ml"
  )
    | ELOG of (
# 34 "sintatico.mly"
       (Lexing.position)
# 157 "sintatico.ml"
  )
    | DPTOS of (
# 16 "sintatico.mly"
       (Lexing.position)
# 162 "sintatico.ml"
  )
    | DIV of (
# 29 "sintatico.mly"
       (Lexing.position)
# 167 "sintatico.ml"
  )
    | DIFER of (
# 32 "sintatico.mly"
       (Lexing.position)
# 172 "sintatico.ml"
  )
    | DE of (
# 20 "sintatico.mly"
       (Lexing.position)
# 177 "sintatico.ml"
  )
    | CONCAT of (
# 36 "sintatico.mly"
       (Lexing.position)
# 182 "sintatico.ml"
  )
    | CADEIA of (
# 19 "sintatico.mly"
       (Lexing.position)
# 187 "sintatico.ml"
  )
    | BOOLEANO of (
# 19 "sintatico.mly"
       (Lexing.position)
# 192 "sintatico.ml"
  )
    | BOOL of (
# 11 "sintatico.mly"
       (bool * Lexing.position)
# 197 "sintatico.ml"
  )
    | ATRIB of (
# 25 "sintatico.mly"
       (Lexing.position)
# 202 "sintatico.ml"
  )
    | ARRANJO of (
# 20 "sintatico.mly"
       (Lexing.position)
# 207 "sintatico.ml"
  )
    | APAR of (
# 18 "sintatico.mly"
       (Lexing.position)
# 212 "sintatico.ml"
  )
    | ACOL of (
# 17 "sintatico.mly"
       (Lexing.position)
# 217 "sintatico.ml"
  )
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

# 2 "sintatico.mly"
  
open Lexing
open Ast
open Sast

# 233 "sintatico.ml"

module Tables = struct
  
  include MenhirBasics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | ACOL _ ->
          42
      | APAR _ ->
          41
      | ARRANJO _ ->
          40
      | ATRIB _ ->
          39
      | BOOL _ ->
          38
      | BOOLEANO _ ->
          37
      | CADEIA _ ->
          36
      | CONCAT _ ->
          35
      | DE _ ->
          34
      | DIFER _ ->
          33
      | DIV _ ->
          32
      | DPTOS _ ->
          31
      | ELOG _ ->
          30
      | ENTAO _ ->
          29
      | ENTRADA _ ->
          28
      | EOF ->
          27
      | FCOL _ ->
          26
      | FIM _ ->
          25
      | FPAR _ ->
          24
      | FUNCAO _ ->
          23
      | ID _ ->
          22
      | IGUAL _ ->
          21
      | INICIO _ ->
          20
      | INT _ ->
          19
      | INTEIRO _ ->
          18
      | MAIOR _ ->
          17
      | MAIS _ ->
          16
      | MENOR _ ->
          15
      | MENOS _ ->
          14
      | MULT _ ->
          13
      | OULOG _ ->
          12
      | PPTO _ ->
          11
      | PROGRAMA _ ->
          10
      | PTO _ ->
          9
      | PTV _ ->
          8
      | REGISTRO _ ->
          7
      | RETORNE _ ->
          6
      | SAIDA _ ->
          5
      | SE _ ->
          4
      | SENAO _ ->
          3
      | STRING _ ->
          2
      | VIRG _ ->
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
      | BOOL _v ->
          Obj.repr _v
      | BOOLEANO _v ->
          Obj.repr _v
      | CADEIA _v ->
          Obj.repr _v
      | CONCAT _v ->
          Obj.repr _v
      | DE _v ->
          Obj.repr _v
      | DIFER _v ->
          Obj.repr _v
      | DIV _v ->
          Obj.repr _v
      | DPTOS _v ->
          Obj.repr _v
      | ELOG _v ->
          Obj.repr _v
      | ENTAO _v ->
          Obj.repr _v
      | ENTRADA _v ->
          Obj.repr _v
      | EOF ->
          Obj.repr ()
      | FCOL _v ->
          Obj.repr _v
      | FIM _v ->
          Obj.repr _v
      | FPAR _v ->
          Obj.repr _v
      | FUNCAO _v ->
          Obj.repr _v
      | ID _v ->
          Obj.repr _v
      | IGUAL _v ->
          Obj.repr _v
      | INICIO _v ->
          Obj.repr _v
      | INT _v ->
          Obj.repr _v
      | INTEIRO _v ->
          Obj.repr _v
      | MAIOR _v ->
          Obj.repr _v
      | MAIS _v ->
          Obj.repr _v
      | MENOR _v ->
          Obj.repr _v
      | MENOS _v ->
          Obj.repr _v
      | MULT _v ->
          Obj.repr _v
      | OULOG _v ->
          Obj.repr _v
      | PPTO _v ->
          Obj.repr _v
      | PROGRAMA _v ->
          Obj.repr _v
      | PTO _v ->
          Obj.repr _v
      | PTV _v ->
          Obj.repr _v
      | REGISTRO _v ->
          Obj.repr _v
      | RETORNE _v ->
          Obj.repr _v
      | SAIDA _v ->
          Obj.repr _v
      | SE _v ->
          Obj.repr _v
      | SENAO _v ->
          Obj.repr _v
      | STRING _v ->
          Obj.repr _v
      | VIRG _v ->
          Obj.repr _v
  
  and default_reduction =
    (8, "\000\000\000\0008\000\000\000\000\000BCD\000\000\000\000\"\000\000\000=?>@\000\000.\000\000A\000\016\000\000\000\000\000\0005,\000\000<\000\000\000\000\000\000\019\000\000\018\000\000\020\000\000\000F\000\000\000\000\000\023 \000\000\000\024\000\000\000\000\000\000\000\000\000\000\000\000\000\000G\000!*\000\002\000\000:\000\000\000\000\000\r\000\000\012\000\000\000\011\000\0002\000\000\000\t\004\006\b\005\007\003\0000\000\n\000\000\000\014\000\000\015\000$\000(\000\000\000\000\0006\000&\001")
  
  and error =
    (43, "\000 \000\000\000\000\000\001`\000\001\000\000\000\004\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\002\000\000@\b\000\003 \000\000\016\000\000\000\000\000\001\000\000 \004\000\001\144\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\004\000\000\000\000\128\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\128\000\000\000\000\000\016\000\016\002\000\000\200\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\t\000\000\000\000\000\000\000\000\000\000\004\000\000\002\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\001 \000\000\000\000\b\000\000\000\000\000\000\000 \000\000(\000\000\000\000\000\002\000\000@\b\000\003 \000\000\000\000\000\000\000\000\000\000\b\000\000\016\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\002\000\000@\b\000\003 \000\000P\000\000\000\000\b\000\000\005\192\002I\000H\000\000\000\000\000\000\000\000\000\000\"\000\001 \000$\000\000\000\000\000\0163\241(\180Y\000\000\148\000\018\000\000\000\000\000\004\000\002@\000I\003?\018\139D\128\000\001\000\000\000\000\000\000\000\000@\000$\000\004\128\003\241\b\180\001\000\000\144\000\018@\143\196\162\209\004\000\002@\000H\000\000\000\000\000\000\000\000\000\000\002\000\001 \000$\129\031\137E\162\b\000\004\128\000\144\000\000\000\000\000 \000\018\000\002H\017\248\148Z \128\000H\000\t G\226Qh\130\000\001 \000$\129\031\137E\162\b\000\004\128\000\146\004~%\022\136 \000\018\000\002H\017\248\148Z \128\000H\000\t G\226Qh\130\000\001 \000$\129\031\137E\162\000\000\000\000\000\000\000~$\022\128\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\004\b\252H-\000@\000$\000\004\128\000\000\000\000\000\000~$\022\128\000\000\000\004\000\005\192\002A\000H\128\000H\000\t\000@\000\000\000\000\000\000\000\000\000A\000$\000\004\128 \000\000\000\000\000\000\000\000\000\000\143\196\002\208\004\000\002@\000H\002\000\000\000\000\000\000\000\000\000\001\000\000\004\000\000\\\000$\016\004\128\000\000\000\000\000\000~ \022\136 \000\018\000\002@\017\248\128Z\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\192\002I\000H\000\000\000\000\000\000G\226\001h\128\000\000\000\000\000\000\000\000\128\000\002\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\002\000\000\000\000\000\000\000\000\000\002\224\001$\128$\000\000\000\000\000\000\000\002\192\000\000\000\000\000\000\000\000\000\b\000\000\005\192\002I\000H\000\000\001\000\000\000@\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\002@\000\000\000\000\000\000\000\000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\000\014\000D\000\016\000\t\000\000\000\011\003D\000\n\000\012\003D\000\000\000\000\000\000\000\004\0004\000T\000X\000\000\000N\000H\003D\000\000\000\000\000\000\000\000\000~\000\n\000\000\000^\000\140\000\000\000\156\000\000\000\026\000\130\000`\000J\000v\003D\000\000\000\000\000z\000J\000\000\000\136\000~\003D\000D\000\162\003j\000\000\000~\000\152\000\000\000\003\003R\000\000\000\152\000D\000\166\000\000\000\152\002~\000\152\000\134\000\152\000\000\000\000\000\152\000\190\000\152\000\000\000\152\000\246\000\152\001.\000\152\001f\000\152\001\158\000\152\001\214\000\152\002\014\000\152\002F\000\000\002\198\000\000\000\000\000\178\000\000\002~\000\152\000\000\002\246\000\172\003R\000\152\000\220\000\000\003R\000\224\000\000\002\198\000\152\000\228\000\000\000b\003R\000\000\000\023\000\152\003*\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003R\000\000\002\178\000\000\000\196\000\244\000\242\000\000\000\214\000\250\000\000\003j\000\000\000D\000\000\000\242\003j\000\234\001\014\000\236\000\000\000\026\000\000\000\000"), (16, "\001\017\000\254\001\006\001\018\001\"\001*\001:\001\017\001\017\000\014\001B\001\017\001\017\001\017\001\017\001\017\001\017\000\006\000\n\001J\001\017\001\026\001R\001\017\0012\001\017\000\026\000\"\001\194\001\017\000\177\001\017\001\017\000\145\001\017\000A\000\138\000&\001\017\000\217\000\222\001\017\000A\000\238\000:\000>\000A\000A\000A\000A\000A\000A\001\182\000B\000\153\000A\000\n\000\153\000A\000\150\000A\000\169\000\170\000F\000A\000N\000A\000A\000u\000A\000R\000j\000v\000A\000\193\000u\000\246\000z\000\202\000u\001\006\001\018\001\"\001*\001:\000\233\000\130\000\142\001B\000\146\000\154\000u\000\182\000u\000\186\000\214\000U\001J\000\218\001\026\001R\000\198\0012\000U\000\210\000\242\000u\000U\001\006\000U\000U\000U\000U\001n\000\226\001\134\000U\000\230\001\146\000U\001\158\000U\001\174\001\250\000a\000U\001\254\001\026\000U\002\002\000U\000a\002\n\002\014\000U\000a\001\006\001\018\000a\001*\000a\002&\002.\0022\000a\0027\000\000\000a\000\000\000a\000\000\000\000\000Q\000a\000\000\001\026\000a\000\000\0012\000Q\000\000\000\000\000a\000Q\001\006\000Q\000Q\000Q\000Q\000\000\000\000\000\000\000Q\000\000\000\000\000Q\000\000\000Q\000\000\000\000\000y\000Q\000\000\001\026\000Q\000\000\000Q\000y\000\000\000\000\000Q\000y\001\006\001\018\000y\001*\000y\000\000\000\000\000\000\000y\000\000\000\000\000y\000\000\000y\000\000\000\000\000m\000y\000\000\001\026\000y\000\000\000y\000m\000\000\000\000\000y\000m\001\006\001\018\000m\001*\000m\000\000\000\000\000\000\000m\000\000\000\000\000m\000\000\000m\000\000\000\000\000e\000m\000\000\001\026\000m\000\000\0012\000e\000\000\000\000\000m\000e\001\006\001\018\001\"\001*\001:\000\000\000\000\000\000\000e\000\000\000\000\000e\000\000\000e\000\000\000\000\000q\000e\000\000\001\026\000e\000\000\0012\000q\000\000\000\000\000e\000q\001\006\001\018\001\"\001*\001:\000\000\000\000\000\000\001B\000\000\000\000\000q\000\000\000q\000\000\000\000\000i\000q\000\000\001\026\001R\000\000\0012\000i\000\000\000\000\000q\000i\001\006\001\018\001\"\001*\001:\000\000\000\000\000\000\000i\000\000\000\000\000i\000\000\000i\000\000\000\000\001v\000i\000\000\001\026\000i\000\000\0012\000\225\000\000\000\000\000i\000\254\001\006\001\018\001\"\001*\001:\000\000\000\000\000\000\001B\000\000\000\000\000\225\000\000\001Z\000\000\000\000\000\000\001J\000\000\001\026\001R\001\242\0012\000\000\000\000\000}\000}\000}\000}\000}\000}\000\205\000\000\000\000\000}\000\254\001\006\001\018\001\"\001*\001:\000\000\000\000\000}\001B\000}\000}\001b\000}\000\000\000\000\000\000\000}\001J\000\000\001\026\001R\000\000\0012\000\254\001\006\001\018\001\"\001*\001:\000\000\000\000\000\000\001B\000\000\000\000\001\130\000\000\000\000\000\000\000\000\000\000\001J\000\000\001\026\001R\001\202\0012\000\000\000\000\000\254\001\006\001\018\001\"\001*\001:\000\000\000\000\000\030\001B\000\202\000\185\000\206\001\138\001\150\000\000\000\201\000\000\001J\000*\001\026\001R\000\202\0012\000\206\001\138\001\150\000\214\000\000\000\000\000\218\000\000\000\161\000\185\000\000\000\000\001\166\000.\0002\000\214\000\000\0006\000\218\000\000\000\000\000\137\000\226\000\000\001\166\000\230\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\226\000\000\000\000\000\230"))
  
  and lhs =
    (8, "\000\031\030\030\030\030\030\030\029\028\027\026\025\024\023\022\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\021\020\019\019\018\018\017\017\016\016\015\015\014\014\r\r\012\012\011\011\n\t\b\b\007\007\006\006\005\005\005\004\003\002\002\002\001\001\001")
  
  and goto =
    ((16, "\000\017\000\228\000\000\000\003\000\000\000\000\000\002\000\014\000\000\000\014\000\000\000\000\000\000\000\000\000(\000\000\000\000\000\000\000\000\000\000\000\022\000\000\000\000\000\000\000\000\000\000\000T\000\000\000\000\000\000\000\000\000\000\000\000\000J\000\000\000\000\000\234\000\000\000>\000\000\000\000\000\000\000>\000\000\000\000\000\000\000b\000\240\000\000\000\003\000\000\000\000\000\208\000\000\000\000\000\002\000\000\001\000\000\000\000\000\000\000\001\b\000\000\001\018\000\000\001\024\000\000\000\000\001\030\000\000\001 \000\000\001\"\000\000\001$\000\000\001.\000\000\001>\000\000\001P\000\000\001X\000\000\001b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\142\000\000\000\000\000\000\000$\000\206\000\000\000\000\000\180\000\000\000\000\000\000\000\238\000\000\000\000\000^\000J\000\000\000\000\001h\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\138\000\000\001\024\000\000\000\000\000\176\000\000\000\000\000\000\000\000\000j\000\000\000\000"), (8, ";\145;\022\023\024 \005Z\022\023\024\026\022\023\024\025[\130;p\029]tuvwxy\133|mD\022\023\024(,;p\019*tuvwxyz|o\022\023\0240\137\028;p~\143tuvwxyz|{;\144;\000\000\000\143p_\000tuvwxyz|\134;p;]tuvwxy\133|gD\000;;\000\139\000pdituvwxy\133|;D\006)]`k*\006;\000\"-;DD\1351;\000];\135\000;;;;\006XD\000;?\000\000\000\136AD;C\135DFHJLD;\000DN;DDDD;\000P;D\000\000\000\000\000\000RD\000\000T\000\000\000\000VD\000r\000D\000\000\000\000D\000\000D"))
  
  and semantic_action =
    [|
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = xs0;
            MenhirLib.EngineTypes.startp = _startpos_xs0_;
            MenhirLib.EngineTypes.endp = _endpos_xs0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = nome;
                MenhirLib.EngineTypes.startp = _startpos_nome_;
                MenhirLib.EngineTypes.endp = _endpos_nome_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 465 "sintatico.ml"
        ) = Obj.magic _4 in
        let xs0 : (Sast.expressao Ast.expressoes) = Obj.magic xs0 in
        let _2 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 471 "sintatico.ml"
        ) = Obj.magic _2 in
        let nome : (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 476 "sintatico.ml"
        ) = Obj.magic nome in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_nome_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao) = let args =
          let xs = xs0 in
          
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 486 "sintatico.ml"
          
        in
        
# 143 "sintatico.mly"
                                                                 (
             ExpChamada  (nome, args))
# 493 "sintatico.ml"
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
# 104 "sintatico.mly"
                              ( c )
# 518 "sintatico.ml"
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
# 105 "sintatico.mly"
                              ( c )
# 543 "sintatico.ml"
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
# 106 "sintatico.mly"
                              ( c )
# 568 "sintatico.ml"
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
# 107 "sintatico.mly"
                              ( c )
# 593 "sintatico.ml"
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
# 108 "sintatico.mly"
                              ( c )
# 618 "sintatico.ml"
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
# 109 "sintatico.mly"
                              ( c )
# 643 "sintatico.ml"
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
            MenhirLib.EngineTypes.semv = dir;
            MenhirLib.EngineTypes.startp = _startpos_dir_;
            MenhirLib.EngineTypes.endp = _endpos_dir_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = esq;
                MenhirLib.EngineTypes.startp = _startpos_esq_;
                MenhirLib.EngineTypes.endp = _endpos_esq_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 679 "sintatico.ml"
        ) = Obj.magic _4 in
        let dir : (Sast.expressao) = Obj.magic dir in
        let _2 : (
# 25 "sintatico.mly"
       (Lexing.position)
# 685 "sintatico.ml"
        ) = Obj.magic _2 in
        let esq : (Sast.expressao) = Obj.magic esq in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_esq_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.comando) = 
# 111 "sintatico.mly"
                                                          (
      CmdAtrib (esq,dir)
)
# 696 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = _2;
          MenhirLib.EngineTypes.startp = _startpos__2_;
          MenhirLib.EngineTypes.endp = _endpos__2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = exp;
            MenhirLib.EngineTypes.startp = _startpos_exp_;
            MenhirLib.EngineTypes.endp = _endpos_exp_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 722 "sintatico.ml"
        ) = Obj.magic _2 in
        let exp : (Sast.expressao) = Obj.magic exp in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_exp_ in
        let _endpos = _endpos__2_ in
        let _v : (Sast.expressao Ast.comando) = 
# 130 "sintatico.mly"
                                 ( CmdChamada exp )
# 731 "sintatico.ml"
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
        let _3 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 762 "sintatico.ml"
        ) = Obj.magic _3 in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _1 : (
# 23 "sintatico.mly"
       (Lexing.position)
# 768 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao Ast.comando) = 
# 122 "sintatico.mly"
                                                                         (
                   CmdEntrada xs
               )
# 778 "sintatico.ml"
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
# 16 "sintatico.mly"
       (Lexing.position)
# 809 "sintatico.ml"
        ) = Obj.magic _3 in
        let e : (Sast.expressao option) = Obj.magic e in
        let _1 : (
# 25 "sintatico.mly"
       (Lexing.position)
# 815 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao Ast.comando) = 
# 132 "sintatico.mly"
                                          ( CmdRetorno e)
# 823 "sintatico.ml"
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
        let _3 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 854 "sintatico.ml"
        ) = Obj.magic _3 in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _1 : (
# 24 "sintatico.mly"
       (Lexing.position)
# 860 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao Ast.comando) = 
# 126 "sintatico.mly"
                                                                     (
                 CmdSaida xs
         )
# 870 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = _10;
          MenhirLib.EngineTypes.startp = _startpos__10_;
          MenhirLib.EngineTypes.endp = _endpos__10_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _9;
            MenhirLib.EngineTypes.startp = _startpos__9_;
            MenhirLib.EngineTypes.endp = _endpos__9_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _8;
              MenhirLib.EngineTypes.startp = _startpos__8_;
              MenhirLib.EngineTypes.endp = _endpos__8_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = senao;
                MenhirLib.EngineTypes.startp = _startpos_senao_;
                MenhirLib.EngineTypes.endp = _endpos_senao_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = entao;
                  MenhirLib.EngineTypes.startp = _startpos_entao_;
                  MenhirLib.EngineTypes.endp = _endpos_entao_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = _5;
                    MenhirLib.EngineTypes.startp = _startpos__5_;
                    MenhirLib.EngineTypes.endp = _endpos__5_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = _4;
                      MenhirLib.EngineTypes.startp = _startpos__4_;
                      MenhirLib.EngineTypes.endp = _endpos__4_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.semv = teste;
                        MenhirLib.EngineTypes.startp = _startpos_teste_;
                        MenhirLib.EngineTypes.endp = _endpos_teste_;
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
                };
              };
            };
          };
        } = _menhir_stack in
        let _10 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 936 "sintatico.ml"
        ) = Obj.magic _10 in
        let _9 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 941 "sintatico.ml"
        ) = Obj.magic _9 in
        let _8 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 946 "sintatico.ml"
        ) = Obj.magic _8 in
        let senao : (Sast.expressao Ast.comandos option) = Obj.magic senao in
        let entao : (Sast.expressao Ast.comandos) = Obj.magic entao in
        let _5 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 953 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 958 "sintatico.ml"
        ) = Obj.magic _4 in
        let teste : (Sast.expressao) = Obj.magic teste in
        let _2 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 964 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 969 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__10_ in
        let _v : (Sast.expressao Ast.comando) = 
# 118 "sintatico.mly"
                       (
              CmdSe (teste, entao, senao)
            )
# 979 "sintatico.ml"
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
          MenhirLib.EngineTypes.semv = _12;
          MenhirLib.EngineTypes.startp = _startpos__12_;
          MenhirLib.EngineTypes.endp = _endpos__12_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _11;
            MenhirLib.EngineTypes.startp = _startpos__11_;
            MenhirLib.EngineTypes.endp = _endpos__11_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = cs;
              MenhirLib.EngineTypes.startp = _startpos_cs_;
              MenhirLib.EngineTypes.endp = _endpos_cs_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _9;
                MenhirLib.EngineTypes.startp = _startpos__9_;
                MenhirLib.EngineTypes.endp = _endpos__9_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = ds;
                  MenhirLib.EngineTypes.startp = _startpos_ds_;
                  MenhirLib.EngineTypes.endp = _endpos_ds_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = tret;
                    MenhirLib.EngineTypes.startp = _startpos_tret_;
                    MenhirLib.EngineTypes.endp = _endpos_tret_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = _6;
                      MenhirLib.EngineTypes.startp = _startpos__6_;
                      MenhirLib.EngineTypes.endp = _endpos__6_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.semv = _5;
                        MenhirLib.EngineTypes.startp = _startpos__5_;
                        MenhirLib.EngineTypes.endp = _endpos__5_;
                        MenhirLib.EngineTypes.next = {
                          MenhirLib.EngineTypes.semv = xs0;
                          MenhirLib.EngineTypes.startp = _startpos_xs0_;
                          MenhirLib.EngineTypes.endp = _endpos_xs0_;
                          MenhirLib.EngineTypes.next = {
                            MenhirLib.EngineTypes.semv = _3;
                            MenhirLib.EngineTypes.startp = _startpos__3_;
                            MenhirLib.EngineTypes.endp = _endpos__3_;
                            MenhirLib.EngineTypes.next = {
                              MenhirLib.EngineTypes.semv = nome;
                              MenhirLib.EngineTypes.startp = _startpos_nome_;
                              MenhirLib.EngineTypes.endp = _endpos_nome_;
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
        } = _menhir_stack in
        let _12 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1055 "sintatico.ml"
        ) = Obj.magic _12 in
        let _11 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1060 "sintatico.ml"
        ) = Obj.magic _11 in
        let cs : (Sast.expressao Ast.comandos) = Obj.magic cs in
        let _9 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 1066 "sintatico.ml"
        ) = Obj.magic _9 in
        let ds : (Ast.declaracao list list) = Obj.magic ds in
        let tret : (Ast.tipo) = Obj.magic tret in
        let _6 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1073 "sintatico.ml"
        ) = Obj.magic _6 in
        let _5 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1078 "sintatico.ml"
        ) = Obj.magic _5 in
        let xs0 : ((Ast.ident Ast.pos * Ast.tipo) list) = Obj.magic xs0 in
        let _3 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1084 "sintatico.ml"
        ) = Obj.magic _3 in
        let nome : (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 1089 "sintatico.ml"
        ) = Obj.magic nome in
        let _1 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 1094 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__12_ in
        let _v : (Sast.expressao Ast.funcao) = let formais =
          let xs = xs0 in
          
# 206 "/usr/share/menhir/standard.mly"
    ( xs )
# 1104 "sintatico.ml"
          
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
# 1118 "sintatico.ml"
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
# 16 "sintatico.mly"
       (Lexing.position)
# 1154 "sintatico.ml"
        ) = Obj.magic _4 in
        let t : (Ast.tipo) = Obj.magic t in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1160 "sintatico.ml"
        ) = Obj.magic _2 in
        let ids : (Ast.ident Ast.pos list) = Obj.magic ids in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ids_ in
        let _endpos = _endpos__4_ in
        let _v : (Ast.declaracao list) = 
# 62 "sintatico.mly"
                                                             (
                   List.map (fun id -> DecVar (id,t)) ids  )
# 1170 "sintatico.ml"
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
# 135 "sintatico.mly"
                      ( ExpVar v    )
# 1195 "sintatico.ml"
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
# 1216 "sintatico.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (Sast.expressao) = 
# 136 "sintatico.mly"
                      ( ExpInt i    )
# 1224 "sintatico.ml"
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
       (string * Lexing.position)
# 1245 "sintatico.ml"
        ) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_s_ in
        let _v : (Sast.expressao) = 
# 137 "sintatico.mly"
                      ( ExpString s )
# 1253 "sintatico.ml"
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
# 11 "sintatico.mly"
       (bool * Lexing.position)
# 1274 "sintatico.ml"
        ) = Obj.magic b in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_b_ in
        let _endpos = _endpos_b_ in
        let _v : (Sast.expressao) = 
# 138 "sintatico.mly"
                      ( ExpBool b   )
# 1282 "sintatico.ml"
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
# 1314 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 147 "sintatico.mly"
                ( (Mais, pos)  )
# 1325 "sintatico.ml"
          
        in
        
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1331 "sintatico.ml"
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
# 1363 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 148 "sintatico.mly"
                       ( (Menos, pos) )
# 1374 "sintatico.ml"
          
        in
        
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1380 "sintatico.ml"
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
# 1412 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 149 "sintatico.mly"
                       ( (Mult, pos)  )
# 1423 "sintatico.ml"
          
        in
        
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1429 "sintatico.ml"
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
# 1461 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 150 "sintatico.mly"
                       ( (Div, pos)   )
# 1472 "sintatico.ml"
          
        in
        
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1478 "sintatico.ml"
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
# 1510 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 151 "sintatico.mly"
                       ( (Menor, pos) )
# 1521 "sintatico.ml"
          
        in
        
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1527 "sintatico.ml"
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
# 1559 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 152 "sintatico.mly"
                       ( (Igual, pos) )
# 1570 "sintatico.ml"
          
        in
        
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1576 "sintatico.ml"
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
# 1608 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 153 "sintatico.mly"
                       ( (Difer, pos) )
# 1619 "sintatico.ml"
          
        in
        
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1625 "sintatico.ml"
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
# 1657 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 154 "sintatico.mly"
                       ( (Maior, pos) )
# 1668 "sintatico.ml"
          
        in
        
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1674 "sintatico.ml"
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
# 1706 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 155 "sintatico.mly"
                       ( (E, pos)     )
# 1717 "sintatico.ml"
          
        in
        
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1723 "sintatico.ml"
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
# 1755 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 156 "sintatico.mly"
                       ( (Ou, pos)    )
# 1766 "sintatico.ml"
          
        in
        
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1772 "sintatico.ml"
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
# 1804 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 157 "sintatico.mly"
                       ( (Concat, pos))
# 1815 "sintatico.ml"
          
        in
        
# 139 "sintatico.mly"
                                      ( ExpOp (op, e1, e2) )
# 1821 "sintatico.ml"
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
# 140 "sintatico.mly"
                        ( c )
# 1846 "sintatico.ml"
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
# 1877 "sintatico.ml"
        ) = Obj.magic _3 in
        let e : (Sast.expressao) = Obj.magic e in
        let _1 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 1883 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao) = 
# 141 "sintatico.mly"
                           ( e )
# 1891 "sintatico.ml"
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
# 1922 "sintatico.ml"
        ) = Obj.magic fim in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1927 "sintatico.ml"
        ) = Obj.magic _2 in
        let inicio : (
# 8 "sintatico.mly"
       (int * Lexing.position)
# 1932 "sintatico.ml"
        ) = Obj.magic inicio in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_inicio_ in
        let _endpos = _endpos_fim_ in
        let _v : (int Ast.pos * int Ast.pos) = 
# 102 "sintatico.mly"
                                 ( (inicio, fim) )
# 1940 "sintatico.ml"
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
# 1958 "sintatico.ml"
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
# 1989 "sintatico.ml"
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
# 2007 "sintatico.ml"
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
        let x : (Sast.expressao Ast.funcao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.funcoes) = 
# 187 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2038 "sintatico.ml"
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
# 2056 "sintatico.ml"
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
# 2087 "sintatico.ml"
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
        let _v : (Sast.expressao Ast.expressoes) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 2105 "sintatico.ml"
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
        let x : (Sast.expressao Ast.expressoes) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 2130 "sintatico.ml"
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
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = 
# 128 "/usr/share/menhir/standard.mly"
    ( [] )
# 2148 "sintatico.ml"
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
        let x : ((Ast.ident Ast.pos * Ast.tipo) list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = 
# 130 "/usr/share/menhir/standard.mly"
    ( x )
# 2173 "sintatico.ml"
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
# 16 "sintatico.mly"
       (Lexing.position)
# 2209 "sintatico.ml"
        ) = Obj.magic _40 in
        let tp0 : (Ast.tipo) = Obj.magic tp0 in
        let _20 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2215 "sintatico.ml"
        ) = Obj.magic _20 in
        let id0 : (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 2220 "sintatico.ml"
        ) = Obj.magic id0 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id0_ in
        let _endpos = _endpos__40_ in
        let _v : (Ast.campos) = let x =
          let _4 = _40 in
          let tp = tp0 in
          let _2 = _20 in
          let id = id0 in
          
# 98 "sintatico.mly"
                                                              ( (id,tp) )
# 2233 "sintatico.ml"
          
        in
        
# 195 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2239 "sintatico.ml"
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
# 16 "sintatico.mly"
       (Lexing.position)
# 2281 "sintatico.ml"
        ) = Obj.magic _40 in
        let tp0 : (Ast.tipo) = Obj.magic tp0 in
        let _20 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2287 "sintatico.ml"
        ) = Obj.magic _20 in
        let id0 : (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 2292 "sintatico.ml"
        ) = Obj.magic id0 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id0_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.campos) = let x =
          let _4 = _40 in
          let tp = tp0 in
          let _2 = _20 in
          let id = id0 in
          
# 98 "sintatico.mly"
                                                              ( (id,tp) )
# 2305 "sintatico.ml"
          
        in
        
# 197 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2311 "sintatico.ml"
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
        let x : (Sast.expressao Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.comandos) = 
# 195 "/usr/share/menhir/standard.mly"
    ( [ x ] )
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
# 197 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2367 "sintatico.ml"
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
# 2385 "sintatico.ml"
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
        let cs0 : (Sast.expressao Ast.comandos) = Obj.magic cs0 in
        let _10 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 2412 "sintatico.ml"
        ) = Obj.magic _10 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__10_ in
        let _endpos = _endpos_cs0_ in
        let _v : (Sast.expressao Ast.comandos option) = let x =
          let cs = cs0 in
          let _1 = _10 in
          
# 117 "sintatico.mly"
                                              (cs)
# 2423 "sintatico.ml"
          
        in
        
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
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
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 2447 "sintatico.ml"
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
        let _v : (Sast.expressao option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 2472 "sintatico.ml"
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
              MenhirLib.EngineTypes.semv = nome;
              MenhirLib.EngineTypes.startp = _startpos_nome_;
              MenhirLib.EngineTypes.endp = _endpos_nome_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let t : (Ast.tipo) = Obj.magic t in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2504 "sintatico.ml"
        ) = Obj.magic _2 in
        let nome : (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 2509 "sintatico.ml"
        ) = Obj.magic nome in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_nome_ in
        let _endpos = _endpos_t_ in
        let _v : (Ast.ident Ast.pos * Ast.tipo) = 
# 80 "sintatico.mly"
                                    ( (nome, t) )
# 2517 "sintatico.ml"
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
              MenhirLib.EngineTypes.semv = _6;
              MenhirLib.EngineTypes.startp = _startpos__6_;
              MenhirLib.EngineTypes.endp = _endpos__6_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = cs;
                MenhirLib.EngineTypes.startp = _startpos_cs_;
                MenhirLib.EngineTypes.endp = _endpos_cs_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _4;
                  MenhirLib.EngineTypes.startp = _startpos__4_;
                  MenhirLib.EngineTypes.endp = _endpos__4_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = fs;
                    MenhirLib.EngineTypes.startp = _startpos_fs_;
                    MenhirLib.EngineTypes.endp = _endpos_fs_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = ds;
                      MenhirLib.EngineTypes.startp = _startpos_ds_;
                      MenhirLib.EngineTypes.endp = _endpos_ds_;
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
        } = _menhir_stack in
        let _8 : unit = Obj.magic _8 in
        let _7 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2574 "sintatico.ml"
        ) = Obj.magic _7 in
        let _6 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 2579 "sintatico.ml"
        ) = Obj.magic _6 in
        let cs : (Sast.expressao Ast.comandos) = Obj.magic cs in
        let _4 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 2585 "sintatico.ml"
        ) = Obj.magic _4 in
        let fs : (Sast.expressao Ast.funcoes) = Obj.magic fs in
        let ds : (Ast.declaracao list list) = Obj.magic ds in
        let _1 : (
# 12 "sintatico.mly"
       (Lexing.position)
# 2592 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__8_ in
        let _v : (
# 48 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 2600 "sintatico.ml"
        ) = 
# 58 "sintatico.mly"
              ( Programa (List.flatten ds, fs, cs) )
# 2604 "sintatico.ml"
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
       (string * Lexing.position)
# 2625 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.ident Ast.pos list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2633 "sintatico.ml"
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
# 16 "sintatico.mly"
       (Lexing.position)
# 2665 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (
# 9 "sintatico.mly"
       (string * Lexing.position)
# 2670 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.ident Ast.pos list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2678 "sintatico.ml"
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
# 2703 "sintatico.ml"
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
# 16 "sintatico.mly"
       (Lexing.position)
# 2735 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2744 "sintatico.ml"
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
        let x : (Ast.ident Ast.pos * Ast.tipo) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = 
# 215 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2769 "sintatico.ml"
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
        let xs : ((Ast.ident Ast.pos * Ast.tipo) list) = Obj.magic xs in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 2801 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (Ast.ident Ast.pos * Ast.tipo) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = 
# 217 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 2810 "sintatico.ml"
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
# 82 "sintatico.mly"
                      ( t )
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
# 83 "sintatico.mly"
                      ( t )
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
# 84 "sintatico.mly"
                      ( t )
# 2885 "sintatico.ml"
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
# 2932 "sintatico.ml"
        ) = Obj.magic _5 in
        let _4 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 2937 "sintatico.ml"
        ) = Obj.magic _4 in
        let lim : (int Ast.pos * int Ast.pos) = Obj.magic lim in
        let _2 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 2943 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 20 "sintatico.mly"
       (Lexing.position)
# 2948 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_tp_ in
        let _v : (Ast.tipo) = 
# 92 "sintatico.mly"
                                                       (
                let (inicio, fim) = lim in
                TipoArranjo (tp, inicio, fim)
            )
# 2959 "sintatico.ml"
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
# 2995 "sintatico.ml"
        ) = Obj.magic _4 in
        let _3 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 3000 "sintatico.ml"
        ) = Obj.magic _3 in
        let campos : (Ast.campos) = Obj.magic campos in
        let _1 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 3006 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__4_ in
        let _v : (Ast.tipo) = 
# 99 "sintatico.mly"
                            ( TipoRegistro campos )
# 3014 "sintatico.ml"
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
# 3035 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 87 "sintatico.mly"
                       ( TipoInt    )
# 3043 "sintatico.ml"
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
# 3064 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 88 "sintatico.mly"
                       ( TipoString )
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
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 3093 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 89 "sintatico.mly"
                       ( TipoBool   )
# 3101 "sintatico.ml"
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
       (string * Lexing.position)
# 3122 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.variavel) = 
# 160 "sintatico.mly"
                     ( VarSimples x )
# 3130 "sintatico.ml"
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
       (string * Lexing.position)
# 3161 "sintatico.ml"
        ) = Obj.magic x in
        let _2 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 3166 "sintatico.ml"
        ) = Obj.magic _2 in
        let v : (Sast.expressao Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.variavel) = 
# 161 "sintatico.mly"
                              ( VarCampo (v,x) )
# 3175 "sintatico.ml"
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
# 3211 "sintatico.ml"
        ) = Obj.magic _4 in
        let e : (Sast.expressao) = Obj.magic e in
        let _2 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 3217 "sintatico.ml"
        ) = Obj.magic _2 in
        let v : (Sast.expressao Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.variavel) = 
# 162 "sintatico.mly"
                                           ( VarElemento (v,e) )
# 3226 "sintatico.ml"
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
# 48 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 3257 "sintatico.ml"
    ))

module Incremental = struct
  
  let programa =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (
# 48 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 3267 "sintatico.ml"
      ) MenhirInterpreter.checkpoint)
  
end

# 219 "/usr/share/menhir/standard.mly"
  


# 3276 "sintatico.ml"
