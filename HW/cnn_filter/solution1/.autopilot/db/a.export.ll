; ModuleID = '/home/littlefoot/18643_project/Hardware-Accel/HW/cnn_filter/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [9 x i8] c"Convolve\00", align 1
@p_str1 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"Pool\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@feature_extractor_str = internal unnamed_addr constant [18 x i8] c"feature_extractor\00"

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

declare double @llvm.exp.f64(double) nounwind readonly

define void @feature_extractor([784 x i32]* %A, [150 x float]* %W, [864 x i32]* %feature) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([784 x i32]* %A) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([150 x float]* %W) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([864 x i32]* %feature) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @feature_extractor_str) nounwind
  %C = alloca [3456 x float], align 4
  %S = alloca [3456 x float], align 4
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i3 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond2 = icmp eq i3 %i, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %i_1 = add i3 %i, 1
  br i1 %exitcond2, label %.preheader3, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str) nounwind
  call fastcc void @feature_extractor_convolve([784 x i32]* nocapture %A, [150 x float]* nocapture %W, i3 %i, [3456 x float]* nocapture %C, i3 %i) nounwind
  br label %1

.preheader3:                                      ; preds = %.loopexit, %1
  %j = phi i3 [ 0, %1 ], [ %j_1, %.loopexit ]
  %exitcond1 = icmp eq i3 %j, -2
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %j_1 = add i3 %j, 1
  br i1 %exitcond1, label %.preheader, label %3

; <label>:3                                       ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str1) nounwind
  %tmp = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %j, i5 0)
  %p_shl_cast = zext i8 %tmp to i9
  %tmp_1 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %j, i3 0)
  %p_shl1_cast = zext i6 %tmp_1 to i9
  %p_addr = sub i9 %p_shl_cast, %p_shl1_cast
  %p_addr_cast = sext i9 %p_addr to i10
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.i, %3
  %i_i = phi i5 [ 0, %3 ], [ %i_2, %.preheader.i ]
  %exitcond1_i = icmp eq i5 %i_i, -8
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24) nounwind
  %i_2 = add i5 %i_i, 1
  br i1 %exitcond1_i, label %.preheader3, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.loopexit
  %tmp_i_trn_cast = zext i5 %i_i to i10
  %p_addr1 = add i10 %p_addr_cast, %tmp_i_trn_cast
  %tmp_2 = call i15 @_ssdm_op_BitConcatenate.i15.i10.i5(i10 %p_addr1, i5 0)
  %p_shl2 = sext i15 %tmp_2 to i32
  %tmp_3 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %p_addr1, i3 0)
  %p_shl3 = sext i13 %tmp_3 to i32
  %p_addr2 = sub i32 %p_shl2, %p_shl3
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_ifconv.i
  %j_i = phi i5 [ %j_2, %_ifconv.i ], [ 0, %.preheader.i.preheader ]
  %exitcond_i = icmp eq i5 %j_i, -8
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24) nounwind
  %j_2 = add i5 %j_i, 1
  br i1 %exitcond_i, label %.loopexit, label %_ifconv.i

_ifconv.i:                                        ; preds = %.preheader.i
  %tmp_i_trn = zext i5 %j_i to i32
  %p_addr3 = add i32 %tmp_i_trn, %p_addr2
  %tmp_5 = zext i32 %p_addr3 to i64
  %C_addr = getelementptr [3456 x float]* %C, i64 0, i64 %tmp_5
  %C_load = load float* %C_addr, align 4
  %tmp_12_to_int_i = bitcast float %C_load to i32
  %tmp_12_neg_i = xor i32 %tmp_12_to_int_i, -2147483648
  %tmp_10_i = bitcast i32 %tmp_12_neg_i to float
  %tmp_11_i = fpext float %tmp_10_i to double
  %x_assign = call double @llvm.exp.f64(double %tmp_11_i) nounwind
  %p_Val2_1 = bitcast double %x_assign to i64
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_1, i32 63)
  %loc_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_1, i32 52, i32 62) nounwind
  %loc_V_1 = trunc i64 %p_Val2_1 to i52
  %p_Result_1 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %loc_V_1) nounwind
  %tmp_i_i_i = zext i53 %p_Result_1 to i136
  %tmp_i_i_i_i_cast2 = zext i11 %loc_V to i12
  %sh_assign = add i12 -1023, %tmp_i_i_i_i_cast2
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign, i32 11)
  %tmp_i_i_i_14 = sub i11 1023, %loc_V
  %tmp_i_i_i_cast = sext i11 %tmp_i_i_i_14 to i12
  %sh_assign_1 = select i1 %isNeg, i12 %tmp_i_i_i_cast, i12 %sh_assign
  %sh_assign_2_i_cast = sext i12 %sh_assign_1 to i32
  %tmp_9_i_i_i = zext i32 %sh_assign_2_i_cast to i136
  %tmp_9_i_i_i_cast = zext i32 %sh_assign_2_i_cast to i53
  %tmp_10_i_i_i = lshr i53 %p_Result_1, %tmp_9_i_i_i_cast
  %tmp_12_i_i_i = shl i136 %tmp_i_i_i, %tmp_9_i_i_i
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i53.i32(i53 %tmp_10_i_i_i, i32 52)
  %tmp_7 = zext i1 %tmp_10 to i32
  %tmp_8 = call i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136 %tmp_12_i_i_i, i32 52, i32 83)
  %p_Val2_4 = select i1 %isNeg, i32 %tmp_7, i32 %tmp_8
  %p_Val2_i_i_i = sub i32 0, %p_Val2_4
  %p_Val2_s = select i1 %p_Result_s, i32 %p_Val2_i_i_i, i32 %p_Val2_4
  %tmp_13_i = add nsw i32 1, %p_Val2_s
  %tmp_14_i = sdiv i32 1, %tmp_13_i
  %tmp_15_i = sitofp i32 %tmp_14_i to float
  %S_addr = getelementptr [3456 x float]* %S, i64 0, i64 %tmp_5
  store float %tmp_15_i, float* %S_addr, align 4
  br label %.preheader.i

.preheader:                                       ; preds = %.preheader3, %4
  %k = phi i3 [ %k_1, %4 ], [ 0, %.preheader3 ]
  %exitcond = icmp eq i3 %k, -2
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %k_1 = add i3 %k, 1
  br i1 %exitcond, label %5, label %4

; <label>:4                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str2) nounwind
  call fastcc void @feature_extractor_maxpool([3456 x float]* nocapture %S, i3 %k, [864 x i32]* nocapture %feature, i3 %k) nounwind
  br label %.preheader

; <label>:5                                       ; preds = %.preheader
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_16 = trunc i32 %empty to i8
  ret i8 %empty_16
}

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_17 = trunc i64 %empty to i11
  ret i11 %empty_17
}

define weak i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1, i52) nounwind readnone {
entry:
  %empty = zext i1 %0 to i53
  %empty_18 = zext i52 %1 to i53
  %empty_19 = shl i53 %empty, 52
  %empty_20 = or i53 %empty_19, %empty_18
  ret i53 %empty_20
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_21 = zext i23 %1 to i24
  %empty_22 = shl i24 %empty, 23
  %empty_23 = or i24 %empty_22, %empty_21
  ret i24 %empty_23
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define internal fastcc void @feature_extractor_maxpool([3456 x float]* nocapture %input_mat, i3 %tmp_4, [864 x i32]* nocapture %output_mat, i3 %tmp_41) {
  %tmp_41_read = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %tmp_41)
  %tmp_4_read = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %tmp_4)
  %tmp_s = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp_4_read, i5 0)
  %p_shl9_cast = zext i8 %tmp_s to i9
  %tmp_5 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_4_read, i3 0)
  %p_shl1_cast = zext i6 %tmp_5 to i9
  %p_addr = sub i9 %p_shl9_cast, %p_shl1_cast
  %p_addr_cast = sext i9 %p_addr to i10
  %tmp_9 = call i7 @_ssdm_op_BitConcatenate.i7.i3.i4(i3 %tmp_41_read, i4 0)
  %p_shl_cast = zext i7 %tmp_9 to i8
  %tmp_14 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %tmp_41_read, i2 0)
  %p_shl8_cast = zext i5 %tmp_14 to i8
  %p_addr4 = sub i8 %p_shl_cast, %p_shl8_cast
  %p_addr4_cast = sext i8 %p_addr4 to i9
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader5, %0
  %i = phi i4 [ 0, %0 ], [ %i_2, %.preheader5 ]
  %exitcond3 = icmp eq i4 %i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 12, i64 12, i64 12)
  %i_2 = add i4 %i, 1
  br i1 %exitcond3, label %2, label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %.loopexit
  %tmp = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %i, i1 false)
  %tmp_trn_cast = zext i4 %i to i9
  %p_addr5 = add i9 %tmp_trn_cast, %p_addr4_cast
  %tmp_15 = call i13 @_ssdm_op_BitConcatenate.i13.i9.i4(i9 %p_addr5, i4 0)
  %p_shl2 = sext i13 %tmp_15 to i32
  %tmp_16 = call i11 @_ssdm_op_BitConcatenate.i11.i9.i2(i9 %p_addr5, i2 0)
  %p_shl3 = sext i11 %tmp_16 to i32
  %p_addr6 = sub i32 %p_shl2, %p_shl3
  br label %.preheader5

.preheader5:                                      ; preds = %1, %.preheader5.preheader
  %j = phi i4 [ %j_2, %1 ], [ 0, %.preheader5.preheader ]
  %exitcond2 = icmp eq i4 %j, -4
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 12, i64 12, i64 12)
  %j_2 = add i4 %j, 1
  br i1 %exitcond2, label %.loopexit, label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5
  %tmp_1 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %j, i1 false)
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader, %.preheader4.preheader
  %max = phi i32 [ 0, %.preheader4.preheader ], [ %max_1, %.preheader ]
  %k = phi i2 [ 0, %.preheader4.preheader ], [ %k_2, %.preheader ]
  %k_cast3 = zext i2 %k to i5
  %exitcond1 = icmp eq i2 %k, -2
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %k_2 = add i2 %k, 1
  br i1 %exitcond1, label %1, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader4
  %tmp_3 = add i5 %k_cast3, %tmp
  %tmp_5_trn_cast = zext i5 %tmp_3 to i10
  %p_addr1 = add i10 %p_addr_cast, %tmp_5_trn_cast
  %tmp_18 = call i15 @_ssdm_op_BitConcatenate.i15.i10.i5(i10 %p_addr1, i5 0)
  %p_shl4 = sext i15 %tmp_18 to i32
  %tmp_19 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %p_addr1, i3 0)
  %p_shl5 = sext i13 %tmp_19 to i32
  %p_addr2 = sub i32 %p_shl4, %p_shl5
  br label %.preheader

.preheader:                                       ; preds = %_ifconv, %.preheader.preheader
  %max_1 = phi i32 [ %max_2, %_ifconv ], [ %max, %.preheader.preheader ]
  %l = phi i2 [ %l_1, %_ifconv ], [ 0, %.preheader.preheader ]
  %l_cast2 = zext i2 %l to i5
  %exitcond = icmp eq i2 %l, -2
  %empty_26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %l_1 = add i2 %l, 1
  br i1 %exitcond, label %.preheader4, label %_ifconv

_ifconv:                                          ; preds = %.preheader
  %tmp_6 = add i5 %l_cast2, %tmp_1
  %tmp_7_trn = zext i5 %tmp_6 to i32
  %p_addr3 = add i32 %p_addr2, %tmp_7_trn
  %tmp_20 = zext i32 %p_addr3 to i64
  %input_mat_addr = getelementptr [3456 x float]* %input_mat, i64 0, i64 %tmp_20
  %input_mat_load = load float* %input_mat_addr, align 4
  %tmp_8 = sitofp i32 %max_1 to float
  %p_Val2_5 = bitcast float %input_mat_load to i32
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_5, i32 23, i32 30)
  %loc_V_2 = trunc i32 %p_Val2_5 to i23
  %tmp_8_to_int = bitcast float %tmp_8 to i32
  %tmp_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_8_to_int, i32 23, i32 30)
  %tmp_22 = trunc i32 %tmp_8_to_int to i23
  %notlhs = icmp ne i8 %loc_V, -1
  %notrhs = icmp eq i23 %loc_V_2, 0
  %tmp_7 = or i1 %notrhs, %notlhs
  %notlhs1 = icmp ne i8 %tmp_2, -1
  %notrhs2 = icmp eq i23 %tmp_22, 0
  %tmp_10 = or i1 %notrhs2, %notlhs1
  %tmp_11 = and i1 %tmp_7, %tmp_10
  %tmp_12 = fcmp ogt float %input_mat_load, %tmp_8
  %tmp_13 = and i1 %tmp_11, %tmp_12
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_5, i32 31)
  %p_Result_2 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_2) nounwind
  %tmp_i_i = zext i24 %p_Result_2 to i78
  %tmp_i_i_i_cast1 = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_cast1
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_1_i_i = sub i8 127, %loc_V
  %tmp_1_i_i_cast = sext i8 %tmp_1_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_1_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_2_i_i = zext i32 %sh_assign_1_cast to i78
  %tmp_3_i_i = lshr i24 %p_Result_2, %sh_assign_1_cast_cast
  %tmp_5_i_i = shl i78 %tmp_i_i, %tmp_2_i_i
  %tmp_25 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_3_i_i, i32 23)
  %tmp_21 = zext i1 %tmp_25 to i32
  %tmp_23 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_5_i_i, i32 23, i32 54)
  %p_Val2_8 = select i1 %isNeg, i32 %tmp_21, i32 %tmp_23
  %p_Val2_7_i_i = sub i32 0, %p_Val2_8
  %p_Val2_s = select i1 %p_Result_s, i32 %p_Val2_7_i_i, i32 %p_Val2_8
  %max_2 = select i1 %tmp_13, i32 %p_Val2_s, i32 %max_1
  br label %.preheader

; <label>:1                                       ; preds = %.preheader4
  %tmp_2_trn = zext i4 %j to i32
  %p_addr7 = add i32 %p_addr6, %tmp_2_trn
  %tmp_17 = zext i32 %p_addr7 to i64
  %output_mat_addr = getelementptr [864 x i32]* %output_mat, i64 0, i64 %tmp_17
  store i32 %max, i32* %output_mat_addr, align 4
  br label %.preheader5

; <label>:2                                       ; preds = %.loopexit
  ret void
}

define internal fastcc void @feature_extractor_convolve([784 x i32]* nocapture %A, [150 x float]* nocapture %B, i3 %tmp, [3456 x float]* nocapture %conv, i3 %tmp1) {
  %tmp1_read = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %tmp1)
  %tmp_read = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %tmp)
  %tmp_24 = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp1_read, i5 0)
  %p_shl_cast = zext i8 %tmp_24 to i9
  %tmp_25 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp1_read, i3 0)
  %p_shl6_cast = zext i6 %tmp_25 to i9
  %p_addr6 = sub i9 %p_shl_cast, %p_shl6_cast
  %p_addr10_cast = sext i9 %p_addr6 to i10
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader9, %0
  %s = phi i5 [ 0, %0 ], [ %s_1, %.preheader9 ]
  %exitcond5 = icmp eq i5 %s, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24)
  %s_1 = add i5 %s, 1
  br i1 %exitcond5, label %.preheader8.preheader, label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %.loopexit
  %tmp2_trn_cast = zext i5 %s to i10
  %p_addr10 = add i10 %p_addr10_cast, %tmp2_trn_cast
  %tmp_27 = call i15 @_ssdm_op_BitConcatenate.i15.i10.i5(i10 %p_addr10, i5 0)
  %p_shl = sext i15 %tmp_27 to i32
  %tmp_28 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %p_addr10, i3 0)
  %p_shl1 = sext i13 %tmp_28 to i32
  %p_addr11 = sub i32 %p_shl, %p_shl1
  br label %.preheader9

.preheader8.preheader:                            ; preds = %.loopexit
  %tmp_cast_trn_cast = zext i3 %tmp_read to i6
  %tmp_26 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %tmp_read, i2 0)
  %p_shl9_cast = zext i5 %tmp_26 to i6
  %p_addr2 = add i6 %tmp_cast_trn_cast, %p_shl9_cast
  br label %.preheader8

.preheader9:                                      ; preds = %.preheader9.preheader, %1
  %t = phi i5 [ %t_1, %1 ], [ 0, %.preheader9.preheader ]
  %exitcond4 = icmp eq i5 %t, -8
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24)
  %t_1 = add i5 %t, 1
  br i1 %exitcond4, label %.loopexit, label %1

; <label>:1                                       ; preds = %.preheader9
  %tmp_9_trn = zext i5 %t to i32
  %p_addr12 = add i32 %p_addr11, %tmp_9_trn
  %tmp_31 = zext i32 %p_addr12 to i64
  %conv_addr = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_31
  store float 0.000000e+00, float* %conv_addr, align 4
  br label %.preheader9

.preheader8:                                      ; preds = %.preheader8.preheader, %4
  %i = phi i5 [ %i_2, %4 ], [ 2, %.preheader8.preheader ]
  %exitcond3 = icmp eq i5 %i, -6
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24)
  br i1 %exitcond3, label %5, label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %.preheader8
  %tmp_6 = add i5 %i, -2
  %tmp_7_trn_cast = zext i5 %tmp_6 to i10
  %p_addr7 = add i10 %p_addr10_cast, %tmp_7_trn_cast
  %tmp_29 = call i15 @_ssdm_op_BitConcatenate.i15.i10.i5(i10 %p_addr7, i5 0)
  %p_shl2 = sext i15 %tmp_29 to i32
  %tmp_30 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %p_addr7, i3 0)
  %p_shl3 = sext i13 %tmp_30 to i32
  %p_addr8 = sub i32 %p_shl2, %p_shl3
  br label %.preheader7

.preheader7:                                      ; preds = %3, %.preheader7.preheader
  %j = phi i5 [ %j_2, %3 ], [ 2, %.preheader7.preheader ]
  %exitcond2 = icmp eq i5 %j, -6
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24)
  br i1 %exitcond2, label %4, label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7
  %tmp_s = add i5 %j, -2
  %tmp_1_trn = zext i5 %tmp_s to i32
  %p_addr9 = add i32 %p_addr8, %tmp_1_trn
  %tmp_32 = zext i32 %p_addr9 to i64
  %conv_addr_1 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_32
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader, %.preheader6.preheader
  %k = phi i3 [ 0, %.preheader6.preheader ], [ %k_2, %.preheader ]
  %k_cast4 = zext i3 %k to i5
  %exitcond1 = icmp eq i3 %k, -3
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5)
  %k_2 = add i3 %k, 1
  br i1 %exitcond1, label %3, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader6
  %x = add i5 %k_cast4, %tmp_6
  %tmp_33 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %x, i5 0)
  %p_shl14_cast = zext i10 %tmp_33 to i11
  %tmp_34 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %x, i2 0)
  %p_shl15_cast = zext i7 %tmp_34 to i11
  %p_addr = sub i11 %p_shl14_cast, %p_shl15_cast
  %p_addr_cast = sext i11 %p_addr to i12
  %tmp_3_trn_cast = zext i3 %k to i6
  %p_addr3 = add i6 %p_addr2, %tmp_3_trn_cast
  %p_addr3_cast = zext i6 %p_addr3 to i32
  %tmp_35 = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %p_addr3, i2 0)
  %p_shl4 = zext i8 %tmp_35 to i32
  %p_addr4 = add i32 %p_addr3_cast, %p_shl4
  br label %.preheader

.preheader:                                       ; preds = %2, %.preheader.preheader
  %l = phi i3 [ %l_1, %2 ], [ 0, %.preheader.preheader ]
  %l_cast2 = zext i3 %l to i5
  %exitcond = icmp eq i3 %l, -3
  %empty_31 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5)
  %l_1 = add i3 %l, 1
  br i1 %exitcond, label %.preheader6, label %2

; <label>:2                                       ; preds = %.preheader
  %y = add i5 %tmp_s, %l_cast2
  %tmp_4_trn_cast = zext i5 %y to i12
  %p_addr1 = add i12 %tmp_4_trn_cast, %p_addr_cast
  %p_addr1_cast = sext i12 %p_addr1 to i32
  %tmp_36 = zext i32 %p_addr1_cast to i64
  %A_addr = getelementptr [784 x i32]* %A, i64 0, i64 %tmp_36
  %A_load = load i32* %A_addr, align 4
  %tmp_5 = sitofp i32 %A_load to float
  %tmp_8_trn = zext i3 %l to i32
  %p_addr5 = add i32 %tmp_8_trn, %p_addr4
  %tmp_37 = zext i32 %p_addr5 to i64
  %B_addr = getelementptr [150 x float]* %B, i64 0, i64 %tmp_37
  %B_load = load float* %B_addr, align 4
  %tmp_10 = fmul float %tmp_5, %B_load
  %conv_load = load float* %conv_addr_1, align 4
  %tmp_11 = fadd float %conv_load, %tmp_10
  store float %tmp_11, float* %conv_addr_1, align 4
  br label %.preheader

; <label>:3                                       ; preds = %.preheader6
  %j_2 = add i5 %j, 1
  br label %.preheader7

; <label>:4                                       ; preds = %.preheader7
  %i_2 = add i5 %i, 1
  br label %.preheader8

; <label>:5                                       ; preds = %.preheader8
  ret void
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_32 = zext i3 %1 to i6
  %empty_33 = shl i6 %empty, 3
  %empty_34 = or i6 %empty_33, %empty_32
  ret i6 %empty_34
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3, i5) nounwind readnone {
entry:
  %empty = zext i3 %0 to i8
  %empty_35 = zext i5 %1 to i8
  %empty_36 = shl i8 %empty, 5
  %empty_37 = or i8 %empty_36, %empty_35
  ret i8 %empty_37
}

define weak i32 @_ssdm_op_PartSelect.i32.i136.i32.i32(i136, i32, i32) nounwind readnone {
entry:
  %empty = call i136 @llvm.part.select.i136(i136 %0, i32 %1, i32 %2)
  %empty_38 = trunc i136 %empty to i32
  ret i32 %empty_38
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5
  %empty_39 = zext i2 %1 to i5
  %empty_40 = shl i5 %empty, 2
  %empty_41 = or i5 %empty_40, %empty_39
  ret i5 %empty_41
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i3.i4(i3, i4) nounwind readnone {
entry:
  %empty = zext i3 %0 to i7
  %empty_42 = zext i4 %1 to i7
  %empty_43 = shl i7 %empty, 4
  %empty_44 = or i7 %empty_43, %empty_42
  ret i7 %empty_44
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5
  %empty_45 = zext i1 %1 to i5
  %empty_46 = shl i5 %empty, 1
  %empty_47 = or i5 %empty_46, %empty_45
  ret i5 %empty_47
}

define weak i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78, i32, i32) nounwind readnone {
entry:
  %empty = call i78 @llvm.part.select.i78(i78 %0, i32 %1, i32 %2)
  %empty_48 = trunc i78 %empty to i32
  ret i32 %empty_48
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5, i2) nounwind readnone {
entry:
  %empty = zext i5 %0 to i7
  %empty_49 = zext i2 %1 to i7
  %empty_50 = shl i7 %empty, 2
  %empty_51 = or i7 %empty_50, %empty_49
  ret i7 %empty_51
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5, i5) nounwind readnone {
entry:
  %empty = zext i5 %0 to i10
  %empty_52 = zext i5 %1 to i10
  %empty_53 = shl i10 %empty, 5
  %empty_54 = or i10 %empty_53, %empty_52
  ret i10 %empty_54
}

define weak i3 @_ssdm_op_Read.ap_auto.i3(i3) {
entry:
  ret i3 %0
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10, i3) nounwind readnone {
entry:
  %empty = zext i10 %0 to i13
  %empty_55 = zext i3 %1 to i13
  %empty_56 = shl i13 %empty, 3
  %empty_57 = or i13 %empty_56, %empty_55
  ret i13 %empty_57
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i10.i5(i10, i5) nounwind readnone {
entry:
  %empty = zext i10 %0 to i15
  %empty_58 = zext i5 %1 to i15
  %empty_59 = shl i15 %empty, 5
  %empty_60 = or i15 %empty_59, %empty_58
  ret i15 %empty_60
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i9.i2(i9, i2) nounwind readnone {
entry:
  %empty = zext i9 %0 to i11
  %empty_61 = zext i2 %1 to i11
  %empty_62 = shl i11 %empty, 2
  %empty_63 = or i11 %empty_62, %empty_61
  ret i11 %empty_63
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i9.i4(i9, i4) nounwind readnone {
entry:
  %empty = zext i9 %0 to i13
  %empty_64 = zext i4 %1 to i13
  %empty_65 = shl i13 %empty, 4
  %empty_66 = or i13 %empty_65, %empty_64
  ret i13 %empty_66
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8
  %empty_67 = zext i2 %1 to i8
  %empty_68 = shl i8 %empty, 2
  %empty_69 = or i8 %empty_68, %empty_67
  ret i8 %empty_69
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_70 = shl i64 1, %empty
  %empty_71 = and i64 %0, %empty_70
  %empty_72 = icmp ne i64 %empty_71, 0
  ret i1 %empty_72
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_73 = shl i12 1, %empty
  %empty_74 = and i12 %0, %empty_73
  %empty_75 = icmp ne i12 %empty_74, 0
  ret i1 %empty_75
}

define weak i1 @_ssdm_op_BitSelect.i1.i53.i32(i53, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i53
  %empty_76 = shl i53 1, %empty
  %empty_77 = and i53 %0, %empty_76
  %empty_78 = icmp ne i53 %empty_77, 0
  ret i1 %empty_78
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_79 = and i32 %0, %empty
  %empty_80 = icmp ne i32 %empty_79, 0
  ret i1 %empty_80
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_81 = shl i9 1, %empty
  %empty_82 = and i9 %0, %empty_81
  %empty_83 = icmp ne i9 %empty_82, 0
  ret i1 %empty_83
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_84 = shl i24 1, %empty
  %empty_85 = and i24 %0, %empty_84
  %empty_86 = icmp ne i24 %empty_85, 0
  ret i1 %empty_86
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i136 @llvm.part.select.i136(i136, i32, i32) nounwind readnone

declare i78 @llvm.part.select.i78(i78, i32, i32) nounwind readnone

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"A", metadata !11, metadata !"int", i32 0, i32 31}
!11 = metadata !{metadata !12, metadata !12}
!12 = metadata !{i32 0, i32 27, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"W", metadata !17, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18, metadata !19, metadata !19}
!18 = metadata !{i32 0, i32 5, i32 1}
!19 = metadata !{i32 0, i32 4, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"feature", metadata !24, metadata !"int", i32 0, i32 31}
!24 = metadata !{metadata !18, metadata !25, metadata !25}
!25 = metadata !{i32 0, i32 11, i32 1}
