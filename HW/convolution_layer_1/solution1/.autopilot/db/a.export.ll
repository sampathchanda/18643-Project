; ModuleID = '/home/littlefoot/18643_project/Hardware-Accel/HW/convolution_layer_1/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [13 x i8] c"BUFFER_RESET\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"SCAN_LINE\00", align 1
@p_str3 = private unnamed_addr constant [13 x i8] c"BUFFER_SHIFT\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a16]
@convolve_str = internal unnamed_addr constant [9 x i8] c"convolve\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

declare void @_GLOBAL__I_a16() nounwind section ".text.startup"

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define void @convolve(i8* %image_V, [25 x float]* %weights, float* %conv_output_V, i32* %done) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %conv_output_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %image_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %image_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([25 x float]* %weights), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(float* %conv_output_V), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %done), !map !23
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @convolve_str) nounwind
  call fastcc void @convolve_Loop_BUFFER_RESET_proc([25 x float]* %weights, i8* %image_V, float* %conv_output_V)
  call fastcc void @convolve_Block__proc(i32* %done)
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_9 = trunc i32 %empty to i8
  ret i8 %empty_9
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_10 = zext i23 %1 to i24
  %empty_11 = shl i24 %empty, 23
  %empty_12 = or i24 %empty_11, %empty_10
  ret i24 %empty_12
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define internal fastcc void @convolve_Loop_BUFFER_RESET_proc([25 x float]* nocapture %weights, i8* %image_V, float* %conv_output_V) {
newFuncRoot:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i8* %image_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  %empty_13 = call i32 (...)* @_ssdm_op_SpecInterface(float* %conv_output_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  %linebuff = alloca [117 x i8], align 16
  br label %0

.exitStub:                                        ; preds = %.preheader9
  ret void

; <label>:0                                       ; preds = %1, %newFuncRoot
  %pos_0_i_i = phi i7 [ 0, %newFuncRoot ], [ %pos, %1 ]
  %exitcond7_i_i = icmp eq i7 %pos_0_i_i, -11
  %pos = add i7 %pos_0_i_i, 1
  br i1 %exitcond7_i_i, label %.preheader9, label %1

; <label>:1                                       ; preds = %0
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 117, i64 117, i64 117)
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str1) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_i = zext i7 %pos_0_i_i to i64
  %linebuff_addr = getelementptr inbounds [117 x i8]* %linebuff, i64 0, i64 %tmp_i
  store i8 0, i8* %linebuff_addr, align 1
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1, i32 %tmp)
  br label %0

.preheader9:                                      ; preds = %0, %._crit_edge10
  %t = phi i32 [ %p_t, %._crit_edge10 ], [ 0, %0 ]
  %pixels_read = phi i10 [ %pixels_read_1, %._crit_edge10 ], [ 0, %0 ]
  %exitcond6 = icmp eq i10 %pixels_read, -240
  %pixels_read_1 = add i10 %pixels_read, 1
  br i1 %exitcond6, label %.exitStub, label %4

._crit_edge10:                                    ; preds = %5, %2
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str2, i32 %tmp_2)
  br label %.preheader9

; <label>:2                                       ; preds = %.preheader
  %input_assign_to_int = bitcast float %p_02_1 to i32
  %tmp_7 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_assign_to_int, i32 23, i32 30)
  %tmp_1 = trunc i32 %input_assign_to_int to i23
  %notlhs = icmp ne i8 %tmp_7, -1
  %notrhs = icmp eq i23 %tmp_1, 0
  %tmp_10 = or i1 %notrhs, %notlhs
  %tmp_11 = fcmp ogt float %p_02_1, 0.000000e+00
  %tmp_13 = and i1 %tmp_10, %tmp_11
  %p_Val2_s = select i1 %tmp_13, i32 %input_assign_to_int, i32 0
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %p_Result_s = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1) nounwind
  %tmp_i_cast_i = zext i24 %p_Result_s to i31
  %tmp_i_i_cast_i = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_cast_i
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_1_i_i = sub i8 127, %loc_V
  %tmp_1_i_cast_i = sext i8 %tmp_1_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_1_i_cast_i, i9 %sh_assign
  %sh_assign_1_i_cast_i_cast = sext i9 %sh_assign_1 to i24
  %tmp_3_i_i = lshr i24 %p_Result_s, %sh_assign_1_i_cast_i_cast
  %tmp_4_i_cast_i = zext i9 %sh_assign_1 to i31
  %tmp_5_i_i = shl i31 %tmp_i_cast_i, %tmp_4_i_cast_i
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_3_i_i, i32 23)
  %tmp_14 = zext i1 %tmp_23 to i8
  %tmp_15 = call i8 @_ssdm_op_PartSelect.i8.i31.i32.i32(i31 %tmp_5_i_i, i32 23, i32 30)
  %result_V = select i1 %isNeg, i8 %tmp_14, i8 %tmp_15
  %output_s = zext i8 %result_V to i32
  %output_2 = sitofp i32 %output_s to float
  %tmp_5 = icmp ugt i10 %pixels_read, 116
  %tmp_24 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %m, i32 2, i32 31)
  %icmp = icmp sgt i30 %tmp_24, 0
  %not_s = xor i1 %tmp_4, true
  %tmp1 = and i1 %tmp_5, %not_s
  %or_cond = and i1 %tmp1, %icmp
  br i1 %or_cond, label %5, label %._crit_edge10

.preheader8:                                      ; preds = %.preheader
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 25, i64 25, i64 25)
  %exitcond = icmp eq i3 %j, -3
  %j_mid2 = select i1 %exitcond, i3 0, i3 %j
  %i_s = add i3 %i, 1
  %i_mid2 = select i1 %exitcond, i3 %i_s, i3 %i
  %i_cast7_cast = zext i3 %i_mid2 to i4
  %p_shl2 = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %i_mid2, i5 0)
  %p_shl2_cast = zext i8 %p_shl2 to i9
  %p_shl3 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %i_mid2, i2 0)
  %p_shl3_cast = zext i5 %p_shl3 to i9
  %tmp_12 = sub i9 %p_shl2_cast, %p_shl3_cast
  %j_cast4_cast = zext i3 %j_mid2 to i4
  %j_cast5 = zext i3 %j_mid2 to i9
  %tmp_25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_16 = add i9 %j_cast5, %tmp_12
  %tmp_16_cast = sext i9 %tmp_16 to i32
  %tmp_17 = zext i32 %tmp_16_cast to i64
  %linebuff_addr_3 = getelementptr inbounds [117 x i8]* %linebuff, i64 0, i64 %tmp_17
  %linebuff_load_1 = load i8* %linebuff_addr_3, align 1
  %tmp_18 = zext i8 %linebuff_load_1 to i32
  %tmp_19 = sitofp i32 %tmp_18 to float
  %tmp2 = add i4 %j_cast4_cast, %i_cast7_cast
  %tmp2_cast = zext i4 %tmp2 to i5
  %tmp_20 = add i5 %p_shl3, %tmp2_cast
  %tmp_21 = zext i5 %tmp_20 to i64
  %weights_addr = getelementptr [25 x float]* %weights, i64 0, i64 %tmp_21
  %weights_load = load float* %weights_addr, align 4
  %tmp_22 = fmul float %tmp_19, %weights_load
  %output = fadd float %p_02_1, %tmp_22
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_25)
  %j_1 = add i3 %j_mid2, 1
  br label %.preheader

.preheader:                                       ; preds = %3, %.preheader8
  %indvar_flatten = phi i5 [ %indvar_flatten_next, %.preheader8 ], [ 0, %3 ]
  %i = phi i3 [ %i_mid2, %.preheader8 ], [ 0, %3 ]
  %p_02_1 = phi float [ %output, %.preheader8 ], [ 0.000000e+00, %3 ]
  %j = phi i3 [ %j_1, %.preheader8 ], [ 0, %3 ]
  %exitcond_flatten = icmp eq i5 %indvar_flatten, -7
  %indvar_flatten_next = add i5 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.preheader8

; <label>:3                                       ; preds = %_ifconv, %4
  %pos1 = phi i7 [ 0, %4 ], [ %pos_1, %_ifconv ]
  %exitcond5 = icmp eq i7 %pos1, -11
  %pos_1 = add i7 %pos1, 1
  br i1 %exitcond5, label %.preheader, label %_ifconv

; <label>:4                                       ; preds = %.preheader9
  %pixels_read_cast9 = zext i10 %pixels_read to i32
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str2) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str2)
  %read = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %image_V)
  %m = sub nsw i32 %pixels_read_cast9, %t
  %tmp_4 = icmp sgt i32 %m, 27
  %t_1 = add nsw i32 %t, 28
  %p_t = select i1 %tmp_4, i32 %t_1, i32 %t
  br label %3

_ifconv:                                          ; preds = %3
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 117, i64 117, i64 117)
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str3) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 2, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_6 = icmp ult i7 %pos1, -12
  %tmp_8 = zext i7 %pos_1 to i64
  %linebuff_addr_1 = getelementptr inbounds [117 x i8]* %linebuff, i64 0, i64 %tmp_8
  %linebuff_load = load i8* %linebuff_addr_1, align 1
  %tmp_9 = select i1 %tmp_6, i8 %linebuff_load, i8 %read
  %tmp_s = zext i7 %pos1 to i64
  %linebuff_addr_2 = getelementptr inbounds [117 x i8]* %linebuff, i64 0, i64 %tmp_s
  store i8 %tmp_9, i8* %linebuff_addr_2, align 1
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str3, i32 %tmp_3)
  br label %3

; <label>:5                                       ; preds = %2
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %conv_output_V, float %output_2)
  br label %._crit_edge10
}

define internal fastcc void @convolve_Block__proc(i32* nocapture %done) {
newFuncRoot:
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %done, i32 0)
  ret void
}

define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

define weak i8 @_ssdm_op_PartSelect.i8.i31.i32.i32(i31, i32, i32) nounwind readnone {
entry:
  %empty = call i31 @llvm.part.select.i31(i31 %0, i32 %1, i32 %2)
  %empty_22 = trunc i31 %empty to i8
  ret i8 %empty_22
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5
  %empty_23 = zext i2 %1 to i5
  %empty_24 = shl i5 %empty, 2
  %empty_25 = or i5 %empty_24, %empty_23
  ret i5 %empty_25
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3, i5) nounwind readnone {
entry:
  %empty = zext i3 %0 to i8
  %empty_26 = zext i5 %1 to i8
  %empty_27 = shl i8 %empty, 5
  %empty_28 = or i8 %empty_27, %empty_26
  ret i8 %empty_28
}

define weak void @_ssdm_op_Write.ap_auto.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.floatP(float*, float) {
entry:
  %empty = call float @_autotb_FifoWrite_float(float* %0, float %1)
  ret void
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_29 = shl i9 1, %empty
  %empty_30 = and i9 %0, %empty_29
  %empty_31 = icmp ne i9 %empty_30, 0
  ret i1 %empty_31
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_32 = shl i24 1, %empty
  %empty_33 = and i24 %0, %empty_32
  %empty_34 = icmp ne i24 %empty_33, 0
  ret i1 %empty_34
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_35 = trunc i32 %empty to i30
  ret i30 %empty_35
}

declare i8 @_autotb_FifoRead_i8(i8*)

declare float @_autotb_FifoWrite_float(float*, float)

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i31 @llvm.part.select.i31(i31, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [2 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 7, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"image.V", metadata !11, metadata !"unsigned char", i32 0, i32 7}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"weights", metadata !17, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 24, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"conv_output.V", metadata !11, metadata !"float", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"done", metadata !11, metadata !"int", i32 0, i32 31}
