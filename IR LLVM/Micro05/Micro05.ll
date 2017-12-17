; ModuleID = 'Micro05.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Digite o nome: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Digite H  para Homem ou M para Mulher: \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Sexo s\C3\B3 pode ser H ou M\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Foram inseridos %d Homens\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Foram inseridos %d Mulheres\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %nome = alloca [45 x i8], align 16
  %sexo = alloca i8, align 1
  %x = alloca i32, align 4
  %m = alloca i32, align 4
  %h = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 5, i32* %max, align 4
  store i32 0, i32* %h, align 4
  store i32 0, i32* %m, align 4
  store i32 1, i32* %x, align 4
  br label %2

; <label>:2                                       ; preds = %23, %0
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %max, align 4
  %5 = icmp sle i32 %3, %4
  br i1 %5, label %6, label %26

; <label>:6                                       ; preds = %2
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %8 = getelementptr inbounds [45 x i8], [45 x i8]* %nome, i32 0, i32 0
  %9 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %8)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0))
  %11 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %sexo)
  %12 = load i8, i8* %sexo, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %20 [
    i32 72, label %14
    i32 77, label %17
  ]

; <label>:14                                      ; preds = %6
  %15 = load i32, i32* %h, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %h, align 4
  br label %22

; <label>:17                                      ; preds = %6
  %18 = load i32, i32* %m, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %m, align 4
  br label %22

; <label>:20                                      ; preds = %6
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %22

; <label>:22                                      ; preds = %20, %17, %14
  br label %23

; <label>:23                                      ; preds = %22
  %24 = load i32, i32* %x, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %x, align 4
  br label %2

; <label>:26                                      ; preds = %2
  %27 = load i32, i32* %h, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i32 %27)
  %29 = load i32, i32* %m, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i32 %29)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1-24 (tags/RELEASE_381/final)"}
