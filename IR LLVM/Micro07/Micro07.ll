; ModuleID = 'Micro07.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Digite um numero: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Positivo\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Negativo\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Zero\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Deseja finalizar S ou N:\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %num = alloca i32, align 4
  %programa = alloca i32, align 4
  %opc = alloca i8, align 1
  store i32 0, i32* %1, align 4
  store i32 1, i32* %programa, align 4
  br label %2

; <label>:2                                       ; preds = %32, %0
  %3 = load i32, i32* %programa, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %33

; <label>:5                                       ; preds = %2
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %num)
  %8 = load i32, i32* %num, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %5
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %10, %5
  %13 = load i32, i32* %num, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %12
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  br label %17

; <label>:17                                      ; preds = %15, %12
  %18 = load i32, i32* %num, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20                                      ; preds = %17
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  br label %22

; <label>:22                                      ; preds = %20, %17
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0))
  %24 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* %opc)
  %25 = load i8, i8* %opc, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 83
  br i1 %27, label %28, label %32

; <label>:28                                      ; preds = %22
  %29 = load i8, i8* %opc, align 1
  %30 = sext i8 %29 to i32
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 %30)
  store i32 0, i32* %programa, align 4
  br label %32

; <label>:32                                      ; preds = %28, %22
  br label %2

; <label>:33                                      ; preds = %2
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1-24 (tags/RELEASE_381/final)"}
