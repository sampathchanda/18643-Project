; ModuleID = '/home/littlefoot/18643_project/Hardware-Accel/HW/cnn_layer_2/solution1/.autopilot/db/a.o.2.bc'
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

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define void @feature_extractor([144 x i32]* %A, [75 x float]* %W, [48 x i32]* %feature) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([144 x i32]* %A) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([75 x float]* %W) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([48 x i32]* %feature) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @feature_extractor_str) nounwind
  %C = alloca [192 x float], align 4
  %S = alloca [192 x float], align 4
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i2 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond2 = icmp eq i2 %i, -1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  %i_1 = add i2 %i, 1
  br i1 %exitcond2, label %.preheader3, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str) nounwind
  call fastcc void @feature_extractor_convolve([144 x i32]* nocapture %A, [75 x float]* nocapture %W, i2 %i, [192 x float]* nocapture %C, i2 %i) nounwind
  br label %1

.preheader3:                                      ; preds = %1, %relu.exit
  %j = phi i2 [ %j_1, %relu.exit ], [ 0, %1 ]
  %exitcond1 = icmp eq i2 %j, -1
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  %j_1 = add i2 %j, 1
  br i1 %exitcond1, label %.preheader, label %3

; <label>:3                                       ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str1) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str1) nounwind
  %tmp_2 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %j, i3 0)
  %p_addr_cast = zext i5 %tmp_2 to i6
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.i, %3
  %i_i = phi i4 [ 0, %3 ], [ %i_2, %.preheader.i ]
  %exitcond1_i = icmp eq i4 %i_i, -8
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  %i_2 = add i4 %i_i, 1
  br i1 %exitcond1_i, label %relu.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.loopexit
  %tmp_i_trn_cast = zext i4 %i_i to i6
  %p_addr1 = add i6 %tmp_i_trn_cast, %p_addr_cast
  %tmp_1 = call i9 @_ssdm_op_BitConcatenate.i9.i6.i3(i6 %p_addr1, i3 0)
  %p_addr2 = zext i9 %tmp_1 to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %4
  %j_i = phi i4 [ %j_2, %4 ], [ 0, %.preheader.i.preheader ]
  %exitcond_i = icmp eq i4 %j_i, -8
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  %j_2 = add i4 %j_i, 1
  br i1 %exitcond_i, label %.loopexit, label %4

; <label>:4                                       ; preds = %.preheader.i
  %tmp_i_trn = zext i4 %j_i to i32
  %p_addr3 = add i32 %tmp_i_trn, %p_addr2
  %tmp_8 = zext i32 %p_addr3 to i64
  %C_addr = getelementptr [192 x float]* %C, i64 0, i64 %tmp_8
  %C_load = load float* %C_addr, align 4
  %b_assign_to_int = bitcast float %C_load to i32
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %b_assign_to_int, i32 23, i32 30)
  %tmp_7 = trunc i32 %b_assign_to_int to i23
  %notlhs = icmp ne i8 %tmp, -1
  %notrhs = icmp eq i23 %tmp_7, 0
  %tmp_4 = or i1 %notrhs, %notlhs
  %tmp_5 = fcmp olt float %C_load, 0.000000e+00
  %tmp_6 = and i1 %tmp_4, %tmp_5
  %a_assign = select i1 %tmp_6, float 0.000000e+00, float %C_load
  %S_addr = getelementptr [192 x float]* %S, i64 0, i64 %tmp_8
  store float %a_assign, float* %S_addr, align 4
  br label %.preheader.i

relu.exit:                                        ; preds = %.loopexit
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str1, i32 %tmp_3) nounwind
  br label %.preheader3

.preheader:                                       ; preds = %.preheader3, %5
  %k = phi i2 [ %k_1, %5 ], [ 0, %.preheader3 ]
  %exitcond = icmp eq i2 %k, -1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  %k_1 = add i2 %k, 1
  br i1 %exitcond, label %6, label %5

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str2) nounwind
  call fastcc void @feature_extractor_maxpool([192 x float]* nocapture %S, i2 %k, [48 x i32]* nocapture %feature, i2 %k) nounwind
  br label %.preheader

; <label>:6                                       ; preds = %.preheader
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_12 = trunc i32 %empty to i8
  ret i8 %empty_12
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_13 = zext i23 %1 to i24
  %empty_14 = shl i24 %empty, 23
  %empty_15 = or i24 %empty_14, %empty_13
  ret i24 %empty_15
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define internal fastcc void @feature_extractor_maxpool([192 x float]* nocapture %input_mat, i2 %tmp_4, [48 x i32]* nocapture %output_mat, i2 %tmp_41) {
  %tmp_41_read = call i2 @_ssdm_op_Read.ap_auto.i2(i2 %tmp_41)
  %tmp_4_read = call i2 @_ssdm_op_Read.ap_auto.i2(i2 %tmp_4)
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_41_read, i2 0)
  %p_addr4_cast = zext i4 %tmp_s to i5
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader5, %0
  %i = phi i3 [ 0, %0 ], [ %i_2, %.preheader5 ]
  %exitcond3 = icmp eq i3 %i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_2 = add i3 %i, 1
  br i1 %exitcond3, label %2, label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %.loopexit
  %tmp = shl i3 %i, 1
  %tmp_trn_cast = zext i3 %i to i5
  %p_addr5 = add i5 %p_addr4_cast, %tmp_trn_cast
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %p_addr5, i2 0)
  %p_addr6 = zext i7 %tmp_8 to i32
  br label %.preheader5

.preheader5:                                      ; preds = %1, %.preheader5.preheader
  %j = phi i3 [ %j_2, %1 ], [ 0, %.preheader5.preheader ]
  %exitcond2 = icmp eq i3 %j, -4
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %j_2 = add i3 %j, 1
  br i1 %exitcond2, label %.loopexit, label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5
  %tmp_9 = shl i3 %j, 1
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader, %.preheader4.preheader
  %max = phi i32 [ 0, %.preheader4.preheader ], [ %max_1, %.preheader ]
  %k = phi i2 [ 0, %.preheader4.preheader ], [ %k_2, %.preheader ]
  %k_cast = zext i2 %k to i3
  %exitcond1 = icmp eq i2 %k, -2
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %k_2 = add i2 %k, 1
  br i1 %exitcond1, label %1, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader4
  %tmp_2 = add i3 %tmp, %k_cast
  br label %.preheader

.preheader:                                       ; preds = %_ifconv, %.preheader.preheader
  %max_1 = phi i32 [ %max_2, %_ifconv ], [ %max, %.preheader.preheader ]
  %l = phi i2 [ %l_1, %_ifconv ], [ 0, %.preheader.preheader ]
  %l_cast = zext i2 %l to i3
  %exitcond = icmp eq i2 %l, -2
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %l_1 = add i2 %l, 1
  br i1 %exitcond, label %.preheader4, label %_ifconv

_ifconv:                                          ; preds = %.preheader
  %tmp_5 = add i3 %l_cast, %tmp_9
  %tmp_14 = call i8 @_ssdm_op_BitConcatenate.i8.i2.i3.i3(i2 %tmp_4_read, i3 %tmp_2, i3 %tmp_5)
  %tmp_15 = zext i8 %tmp_14 to i64
  %input_mat_addr = getelementptr [192 x float]* %input_mat, i64 0, i64 %tmp_15
  %input_mat_load = load float* %input_mat_addr, align 4
  %tmp_7 = sitofp i32 %max_1 to float
  %p_Val2_1 = bitcast float %input_mat_load to i32
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_1, i32 23, i32 30)
  %loc_V_1 = trunc i32 %p_Val2_1 to i23
  %tmp_7_to_int = bitcast float %tmp_7 to i32
  %tmp_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_7_to_int, i32 23, i32 30)
  %tmp_17 = trunc i32 %tmp_7_to_int to i23
  %notlhs = icmp ne i8 %loc_V, -1
  %notrhs = icmp eq i23 %loc_V_1, 0
  %tmp_6 = or i1 %notrhs, %notlhs
  %notlhs1 = icmp ne i8 %tmp_1, -1
  %notrhs2 = icmp eq i23 %tmp_17, 0
  %tmp_10 = or i1 %notrhs2, %notlhs1
  %tmp_11 = and i1 %tmp_6, %tmp_10
  %tmp_12 = fcmp ogt float %input_mat_load, %tmp_7
  %tmp_13 = and i1 %tmp_11, %tmp_12
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_1, i32 31)
  %p_Result_1 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1) nounwind
  %tmp_i_i = zext i24 %p_Result_1 to i78
  %tmp_i_i_i_cast1 = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_cast1
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_1_i_i = sub i8 127, %loc_V
  %tmp_1_i_i_cast = sext i8 %tmp_1_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_1_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_2_i_i = zext i32 %sh_assign_1_cast to i78
  %tmp_3_i_i = lshr i24 %p_Result_1, %sh_assign_1_cast_cast
  %tmp_5_i_i = shl i78 %tmp_i_i, %tmp_2_i_i
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_3_i_i, i32 23)
  %tmp_16 = zext i1 %tmp_20 to i32
  %tmp_18 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_5_i_i, i32 23, i32 54)
  %p_Val2_4 = select i1 %isNeg, i32 %tmp_16, i32 %tmp_18
  %p_Val2_7_i_i = sub i32 0, %p_Val2_4
  %p_Val2_s = select i1 %p_Result_s, i32 %p_Val2_7_i_i, i32 %p_Val2_4
  %max_2 = select i1 %tmp_13, i32 %p_Val2_s, i32 %max_1
  br label %.preheader

; <label>:1                                       ; preds = %.preheader4
  %tmp_1_trn = zext i3 %j to i32
  %p_addr7 = add i32 %p_addr6, %tmp_1_trn
  %tmp_3 = zext i32 %p_addr7 to i64
  %output_mat_addr = getelementptr [48 x i32]* %output_mat, i64 0, i64 %tmp_3
  store i32 %max, i32* %output_mat_addr, align 4
  br label %.preheader5

; <label>:2                                       ; preds = %.loopexit
  ret void
}

define internal fastcc void @feature_extractor_convolve([144 x i32]* nocapture %A, [75 x float]* nocapture %B, i2 %tmp, [192 x float]* nocapture %conv, i2 %tmp1) {
  %tmp1_read = call i2 @_ssdm_op_Read.ap_auto.i2(i2 %tmp1)
  %tmp_read = call i2 @_ssdm_op_Read.ap_auto.i2(i2 %tmp)
  %tmp_19 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp1_read, i3 0)
  %p_addr6_cast = zext i5 %tmp_19 to i6
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader9, %0
  %s = phi i4 [ 0, %0 ], [ %s_1, %.preheader9 ]
  %exitcond5 = icmp eq i4 %s, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %s_1 = add i4 %s, 1
  br i1 %exitcond5, label %.preheader8.preheader, label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %.loopexit
  %tmp2_trn_cast = zext i4 %s to i6
  %p_addr7 = add i6 %tmp2_trn_cast, %p_addr6_cast
  %tmp_21 = call i9 @_ssdm_op_BitConcatenate.i9.i6.i3(i6 %p_addr7, i3 0)
  %p_addr8 = zext i9 %tmp_21 to i32
  br label %.preheader9

.preheader8.preheader:                            ; preds = %.loopexit
  %tmp_cast_trn_cast = zext i2 %tmp_read to i5
  %tmp_20 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_read, i2 0)
  %p_shl_cast = zext i4 %tmp_20 to i5
  %p_addr2 = add i5 %tmp_cast_trn_cast, %p_shl_cast
  br label %.preheader8

.preheader9:                                      ; preds = %.preheader9.preheader, %1
  %t = phi i4 [ %t_1, %1 ], [ 0, %.preheader9.preheader ]
  %exitcond4 = icmp eq i4 %t, -8
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %t_1 = add i4 %t, 1
  br i1 %exitcond4, label %.loopexit, label %1

; <label>:1                                       ; preds = %.preheader9
  %tmp_9_trn = zext i4 %t to i32
  %p_addr9 = add i32 %p_addr8, %tmp_9_trn
  %tmp_23 = zext i32 %p_addr9 to i64
  %conv_addr = getelementptr [192 x float]* %conv, i64 0, i64 %tmp_23
  store float 0.000000e+00, float* %conv_addr, align 4
  br label %.preheader9

.preheader8:                                      ; preds = %.preheader8.preheader, %4
  %i = phi i4 [ %i_2, %4 ], [ 2, %.preheader8.preheader ]
  %exitcond3 = icmp eq i4 %i, -6
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  br i1 %exitcond3, label %5, label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %.preheader8
  %tmp_22 = trunc i4 %i to i3
  %tmp_6 = add i3 -2, %tmp_22
  %tmp_6_cast5 = zext i3 %tmp_6 to i4
  br label %.preheader7

.preheader7:                                      ; preds = %3, %.preheader7.preheader
  %j = phi i4 [ %j_2, %3 ], [ 2, %.preheader7.preheader ]
  %exitcond2 = icmp eq i4 %j, -6
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  br i1 %exitcond2, label %4, label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7
  %tmp_24 = trunc i4 %j to i3
  %tmp_s = add i3 -2, %tmp_24
  %tmp_cast3 = zext i3 %tmp_s to i4
  %tmp_25 = call i8 @_ssdm_op_BitConcatenate.i8.i2.i3.i3(i2 %tmp1_read, i3 %tmp_6, i3 %tmp_s)
  %tmp_26 = zext i8 %tmp_25 to i64
  %conv_addr_1 = getelementptr [192 x float]* %conv, i64 0, i64 %tmp_26
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader, %.preheader6.preheader
  %k = phi i3 [ 0, %.preheader6.preheader ], [ %k_2, %.preheader ]
  %k_cast = zext i3 %k to i4
  %exitcond1 = icmp eq i3 %k, -3
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5)
  %k_2 = add i3 %k, 1
  br i1 %exitcond1, label %3, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader6
  %x = add i4 %k_cast, %tmp_6_cast5
  %tmp_27 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %x, i4 0)
  %p_shl1_cast = zext i8 %tmp_27 to i9
  %tmp_28 = call i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4 %x, i2 0)
  %p_shl2_cast = zext i6 %tmp_28 to i9
  %p_addr = sub i9 %p_shl1_cast, %p_shl2_cast
  %p_addr_cast = sext i9 %p_addr to i10
  %tmp_3_trn_cast = zext i3 %k to i5
  %p_addr3 = add i5 %p_addr2, %tmp_3_trn_cast
  %p_addr3_cast = zext i5 %p_addr3 to i32
  %tmp_29 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %p_addr3, i2 0)
  %p_shl3 = zext i7 %tmp_29 to i32
  %p_addr4 = add i32 %p_addr3_cast, %p_shl3
  br label %.preheader

.preheader:                                       ; preds = %2, %.preheader.preheader
  %l = phi i3 [ %l_1, %2 ], [ 0, %.preheader.preheader ]
  %l_cast = zext i3 %l to i4
  %exitcond = icmp eq i3 %l, -3
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5)
  %l_1 = add i3 %l, 1
  br i1 %exitcond, label %.preheader6, label %2

; <label>:2                                       ; preds = %.preheader
  %y = add i4 %tmp_cast3, %l_cast
  %tmp_4_trn_cast = zext i4 %y to i10
  %p_addr1 = add i10 %tmp_4_trn_cast, %p_addr_cast
  %p_addr1_cast = sext i10 %p_addr1 to i32
  %tmp_30 = zext i32 %p_addr1_cast to i64
  %A_addr = getelementptr [144 x i32]* %A, i64 0, i64 %tmp_30
  %A_load = load i32* %A_addr, align 4
  %tmp_5 = sitofp i32 %A_load to float
  %tmp_8_trn = zext i3 %l to i32
  %p_addr5 = add i32 %tmp_8_trn, %p_addr4
  %tmp_31 = zext i32 %p_addr5 to i64
  %B_addr = getelementptr [75 x float]* %B, i64 0, i64 %tmp_31
  %B_load = load float* %B_addr, align 4
  %tmp_10 = fmul float %tmp_5, %B_load
  %conv_load = load float* %conv_addr_1, align 4
  %tmp_11 = fadd float %conv_load, %tmp_10
  store float %tmp_11, float* %conv_addr_1, align 4
  br label %.preheader

; <label>:3                                       ; preds = %.preheader6
  %j_2 = add i4 %j, 1
  br label %.preheader7

; <label>:4                                       ; preds = %.preheader7
  %i_2 = add i4 %i, 1
  br label %.preheader8

; <label>:5                                       ; preds = %.preheader8
  ret void
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2, i3) nounwind readnone {
entry:
  %empty = zext i2 %0 to i5
  %empty_24 = zext i3 %1 to i5
  %empty_25 = shl i5 %empty, 3
  %empty_26 = or i5 %empty_25, %empty_24
  ret i5 %empty_26
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4
  %empty_27 = zext i2 %1 to i4
  %empty_28 = shl i4 %empty, 2
  %empty_29 = or i4 %empty_28, %empty_27
  ret i4 %empty_29
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i2.i3.i3(i2, i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %1 to i6
  %empty_30 = zext i3 %2 to i6
  %empty_31 = shl i6 %empty, 3
  %empty_32 = or i6 %empty_31, %empty_30
  %empty_33 = zext i2 %0 to i8
  %empty_34 = zext i6 %empty_32 to i8
  %empty_35 = shl i8 %empty_33, 6
  %empty_36 = or i8 %empty_35, %empty_34
  ret i8 %empty_36
}

define weak i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78, i32, i32) nounwind readnone {
entry:
  %empty = call i78 @llvm.part.select.i78(i78 %0, i32 %1, i32 %2)
  %empty_37 = trunc i78 %empty to i32
  ret i32 %empty_37
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4, i2) nounwind readnone {
entry:
  %empty = zext i4 %0 to i6
  %empty_38 = zext i2 %1 to i6
  %empty_39 = shl i6 %empty, 2
  %empty_40 = or i6 %empty_39, %empty_38
  ret i6 %empty_40
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4, i4) nounwind readnone {
entry:
  %empty = zext i4 %0 to i8
  %empty_41 = zext i4 %1 to i8
  %empty_42 = shl i8 %empty, 4
  %empty_43 = or i8 %empty_42, %empty_41
  ret i8 %empty_43
}

define weak i2 @_ssdm_op_Read.ap_auto.i2(i2) {
entry:
  ret i2 %0
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i6.i3(i6, i3) nounwind readnone {
entry:
  %empty = zext i6 %0 to i9
  %empty_44 = zext i3 %1 to i9
  %empty_45 = shl i9 %empty, 3
  %empty_46 = or i9 %empty_45, %empty_44
  ret i9 %empty_46
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5, i2) nounwind readnone {
entry:
  %empty = zext i5 %0 to i7
  %empty_47 = zext i2 %1 to i7
  %empty_48 = shl i7 %empty, 2
  %empty_49 = or i7 %empty_48, %empty_47
  ret i7 %empty_49
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_50 = and i32 %0, %empty
  %empty_51 = icmp ne i32 %empty_50, 0
  ret i1 %empty_51
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_52 = shl i9 1, %empty
  %empty_53 = and i9 %0, %empty_52
  %empty_54 = icmp ne i9 %empty_53, 0
  ret i1 %empty_54
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_55 = shl i24 1, %empty
  %empty_56 = and i24 %0, %empty_55
  %empty_57 = icmp ne i24 %empty_56, 0
  ret i1 %empty_57
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i78 @llvm.part.select.i78(i78, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

declare i3 @_ssdm_op_BitConcatenate.i3.i2.i1(i2, i1) nounwind readnone

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

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
!12 = metadata !{i32 0, i32 11, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"W", metadata !17, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18, metadata !19, metadata !19}
!18 = metadata !{i32 0, i32 2, i32 1}
!19 = metadata !{i32 0, i32 4, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"feature", metadata !24, metadata !"int", i32 0, i32 31}
!24 = metadata !{metadata !18, metadata !25, metadata !25}
!25 = metadata !{i32 0, i32 3, i32 1}
