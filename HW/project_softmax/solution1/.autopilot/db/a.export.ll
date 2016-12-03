; ModuleID = 'C:/Users/AraniBasu/Documents/GitHub/Reconfig-project/Hardware-Accel/HW/project_softmax/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [5 x i8] c"bram\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str3 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@p_str4 = private unnamed_addr constant [15 x i8] c"softmax_label9\00", align 1
@p_str5 = private unnamed_addr constant [16 x i8] c"softmax_label10\00", align 1
@p_str6 = private unnamed_addr constant [16 x i8] c"softmax_label11\00", align 1
@p_str7 = private unnamed_addr constant [16 x i8] c"softmax_label12\00", align 1
@softmax_str = internal unnamed_addr constant [8 x i8] c"softmax\00"

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare double @llvm.exp.f64(double) nounwind readonly

define void @softmax([2 x float]* %inp, [2 x float]* %out_r) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([2 x float]* %inp) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([2 x float]* %out_r) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @softmax_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([2 x float]* %out_r, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([2 x float]* %inp, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i2 [ 0, %0 ], [ %i_1, %2 ]
  %sum = phi float [ 0.000000e+00, %0 ], [ %sum_2, %2 ]
  %exitcond3 = icmp eq i2 %i, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %i_1 = add i2 %i, 1
  br i1 %exitcond3, label %.preheader5, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str4) nounwind
  %tmp = zext i2 %i to i64
  %inp_addr = getelementptr [2 x float]* %inp, i64 0, i64 %tmp
  %inp_load = load float* %inp_addr, align 4
  %sum_2 = fadd float %sum, %inp_load
  br label %1

.preheader5:                                      ; preds = %1, %3
  %temp_1_s = phi float [ %temp_1_1, %3 ], [ undef, %1 ]
  %temp_0_s = phi float [ %temp_1_2, %3 ], [ undef, %1 ]
  %i1 = phi i2 [ %i_2, %3 ], [ 0, %1 ]
  %exitcond2 = icmp eq i2 %i1, -2
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %i_2 = add i2 %i1, 1
  br i1 %exitcond2, label %.preheader4, label %3

; <label>:3                                       ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str5) nounwind
  %tmp_3 = zext i2 %i1 to i64
  %inp_addr_1 = getelementptr [2 x float]* %inp, i64 0, i64 %tmp_3
  %inp_load_1 = load float* %inp_addr_1, align 4
  %temp_0 = fdiv float %inp_load_1, %sum
  %tmp_11 = trunc i2 %i1 to i1
  %temp_1_1 = select i1 %tmp_11, float %temp_0, float %temp_1_s
  %temp_1_2 = select i1 %tmp_11, float %temp_0_s, float %temp_0
  br label %.preheader5

.preheader4:                                      ; preds = %.preheader5, %4
  %sum_1 = phi float [ %sum_3, %4 ], [ 0.000000e+00, %.preheader5 ]
  %i2 = phi i2 [ %i_3, %4 ], [ 0, %.preheader5 ]
  %exitcond1 = icmp eq i2 %i2, -2
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %i_3 = add i2 %i2, 1
  br i1 %exitcond1, label %.preheader.preheader, label %4

.preheader.preheader:                             ; preds = %.preheader4
  %tmp_6 = fpext float %sum_1 to double
  br label %.preheader

; <label>:4                                       ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str6) nounwind
  %tmp_12 = trunc i2 %i2 to i1
  %temp_load_phi = select i1 %tmp_12, float %temp_1_s, float %temp_0_s
  %tmp_8 = fpext float %temp_load_phi to double
  %tmp_9 = call double @llvm.exp.f64(double %tmp_8)
  %tmp_s = fpext float %sum_1 to double
  %tmp_1 = fadd double %tmp_s, %tmp_9
  %sum_3 = fptrunc double %tmp_1 to float
  br label %.preheader4

.preheader:                                       ; preds = %5, %.preheader.preheader
  %i3 = phi i2 [ %i_4, %5 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i2 %i3, -2
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %i_4 = add i2 %i3, 1
  br i1 %exitcond, label %6, label %5

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str7) nounwind
  %tmp_2 = zext i2 %i3 to i64
  %tmp_13 = trunc i2 %i3 to i1
  %temp_load_1_phi = select i1 %tmp_13, float %temp_1_s, float %temp_0_s
  %tmp_5 = fpext float %temp_load_1_phi to double
  %tmp_4 = call double @llvm.exp.f64(double %tmp_5)
  %tmp_7 = fdiv double %tmp_4, %tmp_6
  %tmp_10 = fptrunc double %tmp_7 to float
  %out_addr = getelementptr [2 x float]* %out_r, i64 0, i64 %tmp_2
  store float %tmp_10, float* %out_addr, align 4
  br label %.preheader

; <label>:6                                       ; preds = %.preheader
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"inp", metadata !4, metadata !"float", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 1, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"out", metadata !4, metadata !"float", i32 0, i32 31}
