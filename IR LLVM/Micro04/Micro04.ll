; ModuleID = 'Micro04.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Digite um numero: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Ao total foram digitados %d numeros no intervalo 10 e 150\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %x = alloca i32, align 4
  %num = alloca i32, align 4
  %intervalo = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %intervalo, align 4
  store i32 1, i32* %x, align 4
  br label %2

; <label>:2                                       ; preds = %18, %0
  %3 = load i32, i32* %x, align 4
  %4 = icmp sle i32 %3, 5
  br i1 %4, label %5, label %21

; <label>:5                                       ; preds = %2
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %num)
  %8 = load i32, i32* %num, align 4
  %9 = icmp sge i32 %8, 10
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %5
  %11 = load i32, i32* %num, align 4
  %12 = icmp sle i32 %11, 150
  br i1 %12, label %13, label %16

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* %intervalo, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %intervalo, align 4
  br label %16

; <label>:16                                      ; preds = %13, %10
  br label %17

; <label>:17                                      ; preds = %16, %5
  br label %18

; <label>:18                                      ; preds = %17
  %19 = load i32, i32* %x, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %x, align 4
  br label %2

; <label>:21                                      ; preds = %2
  %22 = load i32, i32* %intervalo, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i32 0, i32 0), i32 %22)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1-24 (tags/RELEASE_381/final)"}
