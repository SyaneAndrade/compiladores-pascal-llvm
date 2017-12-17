; ModuleID = 'Micro08.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Digite um numero: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"O numero %d \C3\A9 maior que 10\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"O numero %d \C3\A9 menor que 10\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %num = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %num, align 4
  br label %2

; <label>:2                                       ; preds = %19, %0
  %3 = load i32, i32* %num, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %20

; <label>:5                                       ; preds = %2
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %num)
  %8 = load i32, i32* %num, align 4
  %9 = icmp sgt i32 %8, 10
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %5
  %11 = load i32, i32* %num, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 %11)
  br label %13

; <label>:13                                      ; preds = %10, %5
  %14 = load i32, i32* %num, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %19

; <label>:16                                      ; preds = %13
  %17 = load i32, i32* %num, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i32 %17)
  br label %19

; <label>:19                                      ; preds = %16, %13
  br label %2

; <label>:20                                      ; preds = %2
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1-24 (tags/RELEASE_381/final)"}
