; ModuleID = 'dot-product.c'
source_filename = "dot-product.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64--linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @print_array(double*, i32) #0 {
  %3 = alloca double*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store double* %0, double** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %18, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %7
  %12 = load double*, double** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double, double* %12, i64 %14
  %16 = load double, double* %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), double %16)
  br label %18

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %7

; <label>:21:                                     ; preds = %7
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define double @dot_product(double*, double*, i32) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %27, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %30

; <label>:13:                                     ; preds = %9
  %14 = load double*, double** %4, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %14, i64 %16
  %18 = load double, double* %17, align 8
  %19 = load double*, double** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %19, i64 %21
  %23 = load double, double* %22, align 8
  %24 = fmul double %18, %23
  %25 = load double, double* %7, align 8
  %26 = fadd double %25, %24
  store double %26, double* %7, align 8
  br label %27

; <label>:27:                                     ; preds = %13
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %9

; <label>:30:                                     ; preds = %9
  %31 = load double, double* %7, align 8
  ret double %31
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [5 x double], align 16
  %7 = alloca [5 x double], align 16
  %8 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = bitcast [5 x double]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 40, i32 16, i1 false)
  %10 = bitcast i8* %9 to [5 x double]*
  %11 = getelementptr [5 x double], [5 x double]* %10, i32 0, i32 0
  store double 1.000000e+00, double* %11
  %12 = getelementptr [5 x double], [5 x double]* %10, i32 0, i32 1
  store double 2.000000e+00, double* %12
  %13 = getelementptr [5 x double], [5 x double]* %10, i32 0, i32 2
  store double 3.000000e+00, double* %13
  %14 = getelementptr [5 x double], [5 x double]* %10, i32 0, i32 3
  store double 4.000000e+00, double* %14
  %15 = getelementptr [5 x double], [5 x double]* %10, i32 0, i32 4
  store double 5.000000e+00, double* %15
  %16 = bitcast [5 x double]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 40, i32 16, i1 false)
  %17 = bitcast i8* %16 to [5 x double]*
  %18 = getelementptr [5 x double], [5 x double]* %17, i32 0, i32 0
  store double 5.000000e+00, double* %18
  %19 = getelementptr [5 x double], [5 x double]* %17, i32 0, i32 1
  store double 4.000000e+00, double* %19
  %20 = getelementptr [5 x double], [5 x double]* %17, i32 0, i32 2
  store double 3.000000e+00, double* %20
  %21 = getelementptr [5 x double], [5 x double]* %17, i32 0, i32 3
  store double 2.000000e+00, double* %21
  %22 = getelementptr [5 x double], [5 x double]* %17, i32 0, i32 4
  store double 1.000000e+00, double* %22
  %23 = getelementptr inbounds [5 x double], [5 x double]* %6, i32 0, i32 0
  call void @print_array(double* %23, i32 5)
  %24 = getelementptr inbounds [5 x double], [5 x double]* %7, i32 0, i32 0
  call void @print_array(double* %24, i32 5)
  %25 = getelementptr inbounds [5 x double], [5 x double]* %6, i32 0, i32 0
  %26 = getelementptr inbounds [5 x double], [5 x double]* %7, i32 0, i32 0
  %27 = call double @dot_product(double* %25, double* %26, i32 5)
  store double %27, double* %8, align 8
  %28 = load double, double* %8, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), double %28)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.1 (https://github.com/llvm-mirror/clang.git b1a96fa34696e4556a9b83b3022b5feba2367a36) (https://github.com/llvm-mirror/llvm.git 2c9cf4f65f36fe91710c4b1bfd2f8d9533ac01b5)"}
