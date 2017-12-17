; ModuleID = 'Micro09.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Digite o preco: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Digite o a venda: \00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"O novo preco \C3\A9 %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %preco = alloca float, align 4
  %venda = alloca float, align 4
  %novoPreco = alloca float, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %3 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %preco)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %venda)
  %6 = load float, float* %venda, align 4
  %7 = fcmp ogt float %6, 5.000000e+02
  br i1 %7, label %11, label %8

; <label>:8                                       ; preds = %0
  %9 = load float, float* %preco, align 4
  %10 = fcmp olt float %9, 3.000000e+01
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %8, %0
  %12 = load float, float* %preco, align 4
  %13 = fpext float %12 to double
  %14 = fadd double %13, 1.000000e+01
  %15 = fptrunc double %14 to float
  store float %15, float* %novoPreco, align 4
  br label %34

; <label>:16                                      ; preds = %8
  %17 = load float, float* %venda, align 4
  %18 = fcmp oge float %17, 5.000000e+02
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %16
  %20 = load float, float* %venda, align 4
  %21 = fcmp ole float %20, 1.200000e+03
  br i1 %21, label %28, label %22

; <label>:22                                      ; preds = %19, %16
  %23 = load float, float* %preco, align 4
  %24 = fcmp oge float %23, 3.000000e+01
  br i1 %24, label %25, label %33

; <label>:25                                      ; preds = %22
  %26 = load float, float* %preco, align 4
  %27 = fcmp ole float %26, 8.000000e+01
  br i1 %27, label %28, label %33

; <label>:28                                      ; preds = %25, %19
  %29 = load float, float* %preco, align 4
  %30 = fpext float %29 to double
  %31 = fsub double %30, 2.000000e+01
  %32 = fptrunc double %31 to float
  store float %32, float* %novoPreco, align 4
  br label %33

; <label>:33                                      ; preds = %28, %25, %22
  br label %34

; <label>:34                                      ; preds = %33, %11
  %35 = load float, float* %novoPreco, align 4
  %36 = fpext float %35 to double
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), double %36)
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1-24 (tags/RELEASE_381/final)"}
