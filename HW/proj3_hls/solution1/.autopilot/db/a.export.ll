; ModuleID = 'C:/Users/sunny/Google_Drive/CMU/Courses/CMU/18643/vivado_projects/proj3_hls/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str4 = private unnamed_addr constant [4 x i8] c"HP0\00", align 1
@p_str5 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str6 = private unnamed_addr constant [4 x i8] c"HP1\00", align 1
@p_str7 = private unnamed_addr constant [4 x i8] c"HP2\00", align 1
@p_str8 = private unnamed_addr constant [4 x i8] c"HP3\00", align 1
@p_str9 = private unnamed_addr constant [5 x i8] c"CONV\00", align 1
@p_str10 = private unnamed_addr constant [5 x i8] c"ReLU\00", align 1
@p_str11 = private unnamed_addr constant [8 x i8] c"Maxpool\00", align 1
@p_str12 = private unnamed_addr constant [16 x i8] c"convolve_label5\00", align 1
@p_str15 = private unnamed_addr constant [12 x i8] c"ReLU_label0\00", align 1
@p_str16 = private unnamed_addr constant [15 x i8] c"maxpool_label6\00", align 1
@p_str17 = private unnamed_addr constant [15 x i8] c"flatten_label7\00", align 1
@p_str18 = private unnamed_addr constant [11 x i8] c"FCL_label8\00", align 1
@p_str19 = private unnamed_addr constant [15 x i8] c"softmax_label9\00", align 1
@p_str20 = private unnamed_addr constant [16 x i8] c"softmax_label10\00", align 1
@p_str21 = private unnamed_addr constant [16 x i8] c"softmax_label11\00", align 1
@p_str22 = private unnamed_addr constant [16 x i8] c"softmax_label12\00", align 1
@llvm_global_ctors_0 = appending global [3 x i32] [i32 65535, i32 65535, i32 65535]
@llvm_global_ctors_1 = appending global [3 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a63, void ()* @_GLOBAL__I_a1948]
@obj_detector_str = internal unnamed_addr constant [13 x i8] c"obj_detector\00"
@memcpy_OC_OC_A_str = internal unnamed_addr constant [10 x i8] c"memcpy..A\00"
@p_str39 = internal unnamed_addr constant [1 x i8] zeroinitializer
@burstread_OC_region_str = internal unnamed_addr constant [17 x i8] c"burstread.region\00"
@memcpy_OC_OC_W0_str = internal unnamed_addr constant [11 x i8] c"memcpy..W0\00"
@p_str41 = internal unnamed_addr constant [1 x i8] zeroinitializer
@memcpy_OC_OC_W1_str = internal unnamed_addr constant [11 x i8] c"memcpy..W1\00"
@p_str52 = internal unnamed_addr constant [1 x i8] zeroinitializer
@memcpy_OC_res_OC_local_res_OC_s = internal unnamed_addr constant [25 x i8] c"memcpy.res.local_res.gep\00"
@p_str180 = internal unnamed_addr constant [1 x i8] zeroinitializer
@burstwrite_OC_region_str = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@bundle = internal constant [1 x i8] zeroinitializer
@mode7 = internal constant [10 x i8] c"s_axilite\00"
@bundle8 = internal constant [1 x i8] zeroinitializer
@mode9 = internal constant [10 x i8] c"s_axilite\00"
@bundle10 = internal constant [1 x i8] zeroinitializer
@mode11 = internal constant [10 x i8] c"s_axilite\00"
@bundle12 = internal constant [1 x i8] zeroinitializer

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecInterface(...) nounwind {
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

define internal fastcc double @obj_detector_fmax(double %x, double %y) nounwind uwtable readnone {
_ifconv:
  %y_read = call double @_ssdm_op_Read.ap_auto.double(double %y) nounwind
  %x_read = call double @_ssdm_op_Read.ap_auto.double(double %x) nounwind
  %p_Val2_s = bitcast double %x_read to i64
  %p_Result_6 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_s, i32 63)
  %loc_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_s, i32 52, i32 62) nounwind
  %loc_V_1 = trunc i64 %p_Val2_s to i52
  %p_Val2_1 = bitcast double %y_read to i64
  %loc_V_2 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_1, i32 52, i32 62) nounwind
  %loc_V_3 = trunc i64 %p_Val2_1 to i52
  %tmp_i = icmp eq i11 %loc_V, 0
  %tmp_i_7 = icmp eq i52 %loc_V_1, 0
  %tmp_1_i = icmp eq i11 %loc_V_2, 0
  %tmp_2_i = icmp eq i52 %loc_V_3, 0
  %tmp = and i1 %tmp_i_7, %tmp_1_i
  %tmp1 = and i1 %tmp_i, %tmp_2_i
  %or_cond2_i = and i1 %tmp1, %tmp
  %tmp_3_i = icmp ne i11 %loc_V, -1
  %or_cond3_i = or i1 %tmp_3_i, %tmp_i_7
  %tmp_4_i = icmp ne i11 %loc_V_2, -1
  %or_cond4_i = or i1 %tmp_4_i, %tmp_2_i
  %tmp_8 = and i1 %or_cond3_i, %or_cond4_i
  %tmp_9 = fcmp ogt double %x_read, %y_read
  %tmp_s = and i1 %tmp_8, %tmp_9
  %res = select i1 %tmp_s, double %x_read, double %y_read
  %x_fp_sig_V = or i52 %loc_V_1, -2251799813685248
  %p_Result_s = call i64 @_ssdm_op_BitConcatenate.i64.i1.i11.i52(i1 %p_Result_6, i11 -1, i52 %x_fp_sig_V) nounwind
  %res_1 = bitcast i64 %p_Result_s to double
  %sel_tmp1 = xor i1 %or_cond2_i, %or_cond3_i
  %sel_tmp2 = and i1 %sel_tmp1, %or_cond4_i
  %res_2 = select i1 %sel_tmp2, double %res, double %res_1
  %res_3 = select i1 %or_cond2_i, double %y_read, double %res_2
  %sel_tmp7_demorgan = or i1 %or_cond2_i, %or_cond3_i
  %sel_tmp7 = xor i1 %sel_tmp7_demorgan, true
  %sel_tmp8 = and i1 %or_cond4_i, %sel_tmp7
  %res_4 = select i1 %sel_tmp8, double %y_read, double %res_3
  %sel_tmp = xor i1 %or_cond4_i, true
  %sel_tmp3 = and i1 %sel_tmp1, %sel_tmp
  %res_5 = select i1 %sel_tmp3, double %x_read, double %res_4
  ret double %res_5
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind

declare void @_GLOBAL__I_a63() nounwind

declare void @_GLOBAL__I_a1948() nounwind

declare double @llvm.exp.f64(double) nounwind readonly

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define internal fastcc void @obj_detector_flatten([72 x float]* nocapture %inp_0, [72 x float]* nocapture %inp_1, [72 x float]* nocapture %inp_2, [72 x float]* nocapture %inp_3, [72 x float]* nocapture %inp_4, [72 x float]* nocapture %inp_5, [72 x float]* nocapture %inp_6, [72 x float]* nocapture %inp_7, [72 x float]* nocapture %inp_8, [72 x float]* nocapture %inp_9, [72 x float]* nocapture %inp_10, [72 x float]* nocapture %inp_11, [864 x float]* %out_r) {
  br label %1

; <label>:1                                       ; preds = %.preheader.preheader.0, %0
  %i = phi i3 [ 0, %0 ], [ %i_1, %.preheader.preheader.0 ]
  %exitcond2 = icmp eq i3 %i, -2
  %i_1 = add i3 %i, 1
  br i1 %exitcond2, label %2, label %.preheader.preheader.0

.preheader.preheader.0:                           ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str17) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str17)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_s = call i10 @_ssdm_op_BitConcatenate.i10.i3.i3.i4(i3 %i, i3 %i, i4 0)
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i3.i4(i3 %i, i4 0)
  %p_shl_cast = zext i7 %tmp to i8
  %tmp_2 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %i, i2 0)
  %p_shl1_cast = zext i5 %tmp_2 to i8
  %p_addr = sub i8 %p_shl_cast, %p_shl1_cast
  %p_addr_cast1 = sext i8 %p_addr to i9
  %p_addr_cast = sext i8 %p_addr to i32
  %tmp_3 = zext i32 %p_addr_cast to i64
  %inp_0_addr = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_3
  %inp_0_load = load float* %inp_0_addr, align 4
  %tmp_4 = zext i10 %tmp_s to i64
  %out_addr = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_4
  store float %inp_0_load, float* %out_addr, align 4
  %inp_1_addr = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_3
  %inp_1_load = load float* %inp_1_addr, align 4
  %tmp_58_0_1 = or i10 %tmp_s, 1
  %tmp_59_0_1 = zext i10 %tmp_58_0_1 to i64
  %out_addr_1 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_0_1
  store float %inp_1_load, float* %out_addr_1, align 4
  %inp_2_addr = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_3
  %inp_2_load = load float* %inp_2_addr, align 4
  %tmp_58_0_2 = or i10 %tmp_s, 2
  %tmp_59_0_2 = zext i10 %tmp_58_0_2 to i64
  %out_addr_2 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_0_2
  store float %inp_2_load, float* %out_addr_2, align 4
  %inp_3_addr = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_3
  %inp_3_load = load float* %inp_3_addr, align 4
  %tmp_58_0_3 = or i10 %tmp_s, 3
  %tmp_59_0_3 = zext i10 %tmp_58_0_3 to i64
  %out_addr_3 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_0_3
  store float %inp_3_load, float* %out_addr_3, align 4
  %inp_4_addr = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_3
  %inp_4_load = load float* %inp_4_addr, align 4
  %tmp_58_0_4 = or i10 %tmp_s, 4
  %tmp_59_0_4 = zext i10 %tmp_58_0_4 to i64
  %out_addr_4 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_0_4
  store float %inp_4_load, float* %out_addr_4, align 4
  %inp_5_addr = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_3
  %inp_5_load = load float* %inp_5_addr, align 4
  %tmp_58_0_5 = or i10 %tmp_s, 5
  %tmp_59_0_5 = zext i10 %tmp_58_0_5 to i64
  %out_addr_5 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_0_5
  store float %inp_5_load, float* %out_addr_5, align 4
  %inp_6_addr = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_3
  %inp_6_load = load float* %inp_6_addr, align 4
  %tmp_58_0_6 = or i10 %tmp_s, 6
  %tmp_59_0_6 = zext i10 %tmp_58_0_6 to i64
  %out_addr_6 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_0_6
  store float %inp_6_load, float* %out_addr_6, align 4
  %inp_7_addr = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_3
  %inp_7_load = load float* %inp_7_addr, align 4
  %tmp_58_0_7 = or i10 %tmp_s, 7
  %tmp_59_0_7 = zext i10 %tmp_58_0_7 to i64
  %out_addr_7 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_0_7
  store float %inp_7_load, float* %out_addr_7, align 4
  %inp_8_addr = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_3
  %inp_8_load = load float* %inp_8_addr, align 4
  %tmp_58_0_8 = or i10 %tmp_s, 8
  %tmp_59_0_8 = zext i10 %tmp_58_0_8 to i64
  %out_addr_8 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_0_8
  store float %inp_8_load, float* %out_addr_8, align 4
  %inp_9_addr = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_3
  %inp_9_load = load float* %inp_9_addr, align 4
  %tmp_58_0_9 = or i10 %tmp_s, 9
  %tmp_59_0_9 = zext i10 %tmp_58_0_9 to i64
  %out_addr_9 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_0_9
  store float %inp_9_load, float* %out_addr_9, align 4
  %inp_10_addr = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_3
  %inp_10_load = load float* %inp_10_addr, align 4
  %tmp_58_0_s = or i10 %tmp_s, 10
  %tmp_59_0_s = zext i10 %tmp_58_0_s to i64
  %out_addr_10 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_0_s
  store float %inp_10_load, float* %out_addr_10, align 4
  %inp_11_addr = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_3
  %inp_11_load = load float* %inp_11_addr, align 4
  %tmp_58_0_10 = or i10 %tmp_s, 11
  %tmp_59_0_10 = zext i10 %tmp_58_0_10 to i64
  %out_addr_11 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_0_10
  store float %inp_11_load, float* %out_addr_11, align 4
  %p_addr2 = or i32 %p_addr_cast, 1
  %tmp_5 = zext i32 %p_addr2 to i64
  %inp_0_addr_1 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_5
  %inp_0_load_1 = load float* %inp_0_addr_1, align 4
  %tmp_57_1_s = or i10 %tmp_s, 12
  %tmp_57_1_cast1 = zext i10 %tmp_57_1_s to i11
  %tmp_59_1 = zext i10 %tmp_57_1_s to i64
  %out_addr_12 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_1
  store float %inp_0_load_1, float* %out_addr_12, align 4
  %inp_1_addr_1 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_5
  %inp_1_load_1 = load float* %inp_1_addr_1, align 4
  %tmp_58_1_s = or i10 %tmp_s, 13
  %tmp_59_1_1 = zext i10 %tmp_58_1_s to i64
  %out_addr_13 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_1_1
  store float %inp_1_load_1, float* %out_addr_13, align 4
  %inp_2_addr_1 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_5
  %inp_2_load_1 = load float* %inp_2_addr_1, align 4
  %tmp_58_1_1 = or i10 %tmp_s, 14
  %tmp_59_1_2 = zext i10 %tmp_58_1_1 to i64
  %out_addr_14 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_1_2
  store float %inp_2_load_1, float* %out_addr_14, align 4
  %inp_3_addr_1 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_5
  %inp_3_load_1 = load float* %inp_3_addr_1, align 4
  %tmp_58_1_2 = or i10 %tmp_s, 15
  %tmp_59_1_3 = zext i10 %tmp_58_1_2 to i64
  %out_addr_15 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_1_3
  store float %inp_3_load_1, float* %out_addr_15, align 4
  %inp_4_addr_1 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_5
  %inp_4_load_1 = load float* %inp_4_addr_1, align 4
  %tmp_58_1_4 = add i11 %tmp_57_1_cast1, 4
  %tmp_59_1_4 = zext i11 %tmp_58_1_4 to i64
  %out_addr_16 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_1_4
  store float %inp_4_load_1, float* %out_addr_16, align 4
  %inp_5_addr_1 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_5
  %inp_5_load_1 = load float* %inp_5_addr_1, align 4
  %tmp_58_1_5 = add i11 %tmp_57_1_cast1, 5
  %tmp_59_1_5 = zext i11 %tmp_58_1_5 to i64
  %out_addr_17 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_1_5
  store float %inp_5_load_1, float* %out_addr_17, align 4
  %inp_6_addr_1 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_5
  %inp_6_load_1 = load float* %inp_6_addr_1, align 4
  %tmp_58_1_6 = add i11 %tmp_57_1_cast1, 6
  %tmp_59_1_6 = zext i11 %tmp_58_1_6 to i64
  %out_addr_18 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_1_6
  store float %inp_6_load_1, float* %out_addr_18, align 4
  %inp_7_addr_1 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_5
  %inp_7_load_1 = load float* %inp_7_addr_1, align 4
  %tmp_58_1_7 = add i11 %tmp_57_1_cast1, 7
  %tmp_59_1_7 = zext i11 %tmp_58_1_7 to i64
  %out_addr_19 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_1_7
  store float %inp_7_load_1, float* %out_addr_19, align 4
  %inp_8_addr_1 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_5
  %inp_8_load_1 = load float* %inp_8_addr_1, align 4
  %tmp_58_1_8 = add i11 %tmp_57_1_cast1, 8
  %tmp_59_1_8 = zext i11 %tmp_58_1_8 to i64
  %out_addr_20 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_1_8
  store float %inp_8_load_1, float* %out_addr_20, align 4
  %inp_9_addr_1 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_5
  %inp_9_load_1 = load float* %inp_9_addr_1, align 4
  %tmp_58_1_9 = add i11 %tmp_57_1_cast1, 9
  %tmp_59_1_9 = zext i11 %tmp_58_1_9 to i64
  %out_addr_21 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_1_9
  store float %inp_9_load_1, float* %out_addr_21, align 4
  %inp_10_addr_1 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_5
  %inp_10_load_1 = load float* %inp_10_addr_1, align 4
  %tmp_58_1_3 = add i11 %tmp_57_1_cast1, 10
  %tmp_59_1_s = zext i11 %tmp_58_1_3 to i64
  %out_addr_22 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_1_s
  store float %inp_10_load_1, float* %out_addr_22, align 4
  %inp_11_addr_1 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_5
  %inp_11_load_1 = load float* %inp_11_addr_1, align 4
  %tmp_58_1_10 = add i11 %tmp_57_1_cast1, 11
  %tmp_59_1_10 = zext i11 %tmp_58_1_10 to i64
  %out_addr_23 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_1_10
  store float %inp_11_load_1, float* %out_addr_23, align 4
  %p_addr3 = or i8 %p_addr, 2
  %p_addr3_cast = sext i8 %p_addr3 to i32
  %tmp_6 = zext i32 %p_addr3_cast to i64
  %inp_0_addr_2 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_6
  %inp_0_load_2 = load float* %inp_0_addr_2, align 4
  %tmp_58_2 = add i10 %tmp_s, 24
  %tmp_59_2 = zext i10 %tmp_58_2 to i64
  %out_addr_24 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_2
  store float %inp_0_load_2, float* %out_addr_24, align 4
  %inp_1_addr_2 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_6
  %inp_1_load_2 = load float* %inp_1_addr_2, align 4
  %tmp_58_2_1 = add i10 %tmp_s, 25
  %tmp_59_2_1 = zext i10 %tmp_58_2_1 to i64
  %out_addr_25 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_2_1
  store float %inp_1_load_2, float* %out_addr_25, align 4
  %inp_2_addr_2 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_6
  %inp_2_load_2 = load float* %inp_2_addr_2, align 4
  %tmp_58_2_2 = add i10 %tmp_s, 26
  %tmp_59_2_2 = zext i10 %tmp_58_2_2 to i64
  %out_addr_26 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_2_2
  store float %inp_2_load_2, float* %out_addr_26, align 4
  %inp_3_addr_2 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_6
  %inp_3_load_2 = load float* %inp_3_addr_2, align 4
  %tmp_58_2_3 = add i10 %tmp_s, 27
  %tmp_59_2_3 = zext i10 %tmp_58_2_3 to i64
  %out_addr_27 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_2_3
  store float %inp_3_load_2, float* %out_addr_27, align 4
  %inp_4_addr_2 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_6
  %inp_4_load_2 = load float* %inp_4_addr_2, align 4
  %tmp_58_2_4 = add i10 %tmp_s, 28
  %tmp_59_2_4 = zext i10 %tmp_58_2_4 to i64
  %out_addr_28 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_2_4
  store float %inp_4_load_2, float* %out_addr_28, align 4
  %inp_5_addr_2 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_6
  %inp_5_load_2 = load float* %inp_5_addr_2, align 4
  %tmp_58_2_5 = add i10 %tmp_s, 29
  %tmp_59_2_5 = zext i10 %tmp_58_2_5 to i64
  %out_addr_29 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_2_5
  store float %inp_5_load_2, float* %out_addr_29, align 4
  %inp_6_addr_2 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_6
  %inp_6_load_2 = load float* %inp_6_addr_2, align 4
  %tmp_58_2_6 = add i10 %tmp_s, 30
  %tmp_59_2_6 = zext i10 %tmp_58_2_6 to i64
  %out_addr_30 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_2_6
  store float %inp_6_load_2, float* %out_addr_30, align 4
  %inp_7_addr_2 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_6
  %inp_7_load_2 = load float* %inp_7_addr_2, align 4
  %tmp_58_2_7 = add i10 %tmp_s, 31
  %tmp_59_2_7 = zext i10 %tmp_58_2_7 to i64
  %out_addr_31 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_2_7
  store float %inp_7_load_2, float* %out_addr_31, align 4
  %inp_8_addr_2 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_6
  %inp_8_load_2 = load float* %inp_8_addr_2, align 4
  %tmp_58_2_8 = add i10 %tmp_s, 32
  %tmp_59_2_8 = zext i10 %tmp_58_2_8 to i64
  %out_addr_32 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_2_8
  store float %inp_8_load_2, float* %out_addr_32, align 4
  %inp_9_addr_2 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_6
  %inp_9_load_2 = load float* %inp_9_addr_2, align 4
  %tmp_58_2_9 = add i10 %tmp_s, 33
  %tmp_59_2_9 = zext i10 %tmp_58_2_9 to i64
  %out_addr_33 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_2_9
  store float %inp_9_load_2, float* %out_addr_33, align 4
  %inp_10_addr_2 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_6
  %inp_10_load_2 = load float* %inp_10_addr_2, align 4
  %tmp_58_2_s = add i10 %tmp_s, 34
  %tmp_59_2_s = zext i10 %tmp_58_2_s to i64
  %out_addr_34 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_2_s
  store float %inp_10_load_2, float* %out_addr_34, align 4
  %inp_11_addr_2 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_6
  %inp_11_load_2 = load float* %inp_11_addr_2, align 4
  %tmp_58_2_10 = add i10 %tmp_s, 35
  %tmp_59_2_10 = zext i10 %tmp_58_2_10 to i64
  %out_addr_35 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_2_10
  store float %inp_11_load_2, float* %out_addr_35, align 4
  %p_addr5 = or i8 %p_addr, 3
  %p_addr5_cast = sext i8 %p_addr5 to i32
  %tmp_7 = zext i32 %p_addr5_cast to i64
  %inp_0_addr_3 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_7
  %inp_0_load_3 = load float* %inp_0_addr_3, align 4
  %tmp_58_3 = add i10 %tmp_s, 36
  %tmp_59_3 = zext i10 %tmp_58_3 to i64
  %out_addr_36 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_3
  store float %inp_0_load_3, float* %out_addr_36, align 4
  %inp_1_addr_3 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_7
  %inp_1_load_3 = load float* %inp_1_addr_3, align 4
  %tmp_58_3_1 = add i10 %tmp_s, 37
  %tmp_59_3_1 = zext i10 %tmp_58_3_1 to i64
  %out_addr_37 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_3_1
  store float %inp_1_load_3, float* %out_addr_37, align 4
  %inp_2_addr_3 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_7
  %inp_2_load_3 = load float* %inp_2_addr_3, align 4
  %tmp_58_3_2 = add i10 %tmp_s, 38
  %tmp_59_3_2 = zext i10 %tmp_58_3_2 to i64
  %out_addr_38 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_3_2
  store float %inp_2_load_3, float* %out_addr_38, align 4
  %inp_3_addr_3 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_7
  %inp_3_load_3 = load float* %inp_3_addr_3, align 4
  %tmp_58_3_3 = add i10 %tmp_s, 39
  %tmp_59_3_3 = zext i10 %tmp_58_3_3 to i64
  %out_addr_39 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_3_3
  store float %inp_3_load_3, float* %out_addr_39, align 4
  %inp_4_addr_3 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_7
  %inp_4_load_3 = load float* %inp_4_addr_3, align 4
  %tmp_58_3_4 = add i10 %tmp_s, 40
  %tmp_59_3_4 = zext i10 %tmp_58_3_4 to i64
  %out_addr_40 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_3_4
  store float %inp_4_load_3, float* %out_addr_40, align 4
  %inp_5_addr_3 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_7
  %inp_5_load_3 = load float* %inp_5_addr_3, align 4
  %tmp_58_3_5 = add i10 %tmp_s, 41
  %tmp_59_3_5 = zext i10 %tmp_58_3_5 to i64
  %out_addr_41 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_3_5
  store float %inp_5_load_3, float* %out_addr_41, align 4
  %inp_6_addr_3 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_7
  %inp_6_load_3 = load float* %inp_6_addr_3, align 4
  %tmp_58_3_6 = add i10 %tmp_s, 42
  %tmp_59_3_6 = zext i10 %tmp_58_3_6 to i64
  %out_addr_42 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_3_6
  store float %inp_6_load_3, float* %out_addr_42, align 4
  %inp_7_addr_3 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_7
  %inp_7_load_3 = load float* %inp_7_addr_3, align 4
  %tmp_58_3_7 = add i10 %tmp_s, 43
  %tmp_59_3_7 = zext i10 %tmp_58_3_7 to i64
  %out_addr_43 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_3_7
  store float %inp_7_load_3, float* %out_addr_43, align 4
  %inp_8_addr_3 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_7
  %inp_8_load_3 = load float* %inp_8_addr_3, align 4
  %tmp_58_3_8 = add i10 %tmp_s, 44
  %tmp_59_3_8 = zext i10 %tmp_58_3_8 to i64
  %out_addr_44 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_3_8
  store float %inp_8_load_3, float* %out_addr_44, align 4
  %inp_9_addr_3 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_7
  %inp_9_load_3 = load float* %inp_9_addr_3, align 4
  %tmp_58_3_9 = add i10 %tmp_s, 45
  %tmp_59_3_9 = zext i10 %tmp_58_3_9 to i64
  %out_addr_45 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_3_9
  store float %inp_9_load_3, float* %out_addr_45, align 4
  %inp_10_addr_3 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_7
  %inp_10_load_3 = load float* %inp_10_addr_3, align 4
  %tmp_58_3_s = add i10 %tmp_s, 46
  %tmp_59_3_s = zext i10 %tmp_58_3_s to i64
  %out_addr_46 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_3_s
  store float %inp_10_load_3, float* %out_addr_46, align 4
  %inp_11_addr_3 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_7
  %inp_11_load_3 = load float* %inp_11_addr_3, align 4
  %tmp_58_3_10 = add i10 %tmp_s, 47
  %tmp_59_3_10 = zext i10 %tmp_58_3_10 to i64
  %out_addr_47 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_3_10
  store float %inp_11_load_3, float* %out_addr_47, align 4
  %p_addr6 = add i9 %p_addr_cast1, 4
  %p_addr6_cast = sext i9 %p_addr6 to i32
  %tmp_8 = zext i32 %p_addr6_cast to i64
  %inp_0_addr_4 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_8
  %inp_0_load_4 = load float* %inp_0_addr_4, align 4
  %tmp_58_4 = add i10 %tmp_s, 48
  %tmp_59_4 = zext i10 %tmp_58_4 to i64
  %out_addr_48 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_4
  store float %inp_0_load_4, float* %out_addr_48, align 4
  %inp_1_addr_4 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_8
  %inp_1_load_4 = load float* %inp_1_addr_4, align 4
  %tmp_58_4_1 = add i10 %tmp_s, 49
  %tmp_59_4_1 = zext i10 %tmp_58_4_1 to i64
  %out_addr_49 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_4_1
  store float %inp_1_load_4, float* %out_addr_49, align 4
  %inp_2_addr_4 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_8
  %inp_2_load_4 = load float* %inp_2_addr_4, align 4
  %tmp_58_4_2 = add i10 %tmp_s, 50
  %tmp_59_4_2 = zext i10 %tmp_58_4_2 to i64
  %out_addr_50 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_4_2
  store float %inp_2_load_4, float* %out_addr_50, align 4
  %inp_3_addr_4 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_8
  %inp_3_load_4 = load float* %inp_3_addr_4, align 4
  %tmp_58_4_3 = add i10 %tmp_s, 51
  %tmp_59_4_3 = zext i10 %tmp_58_4_3 to i64
  %out_addr_51 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_4_3
  store float %inp_3_load_4, float* %out_addr_51, align 4
  %inp_4_addr_4 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_8
  %inp_4_load_4 = load float* %inp_4_addr_4, align 4
  %tmp_58_4_4 = add i10 %tmp_s, 52
  %tmp_59_4_4 = zext i10 %tmp_58_4_4 to i64
  %out_addr_52 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_4_4
  store float %inp_4_load_4, float* %out_addr_52, align 4
  %inp_5_addr_4 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_8
  %inp_5_load_4 = load float* %inp_5_addr_4, align 4
  %tmp_58_4_5 = add i10 %tmp_s, 53
  %tmp_59_4_5 = zext i10 %tmp_58_4_5 to i64
  %out_addr_53 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_4_5
  store float %inp_5_load_4, float* %out_addr_53, align 4
  %inp_6_addr_4 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_8
  %inp_6_load_4 = load float* %inp_6_addr_4, align 4
  %tmp_58_4_6 = add i10 %tmp_s, 54
  %tmp_59_4_6 = zext i10 %tmp_58_4_6 to i64
  %out_addr_54 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_4_6
  store float %inp_6_load_4, float* %out_addr_54, align 4
  %inp_7_addr_4 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_8
  %inp_7_load_4 = load float* %inp_7_addr_4, align 4
  %tmp_58_4_7 = add i10 %tmp_s, 55
  %tmp_59_4_7 = zext i10 %tmp_58_4_7 to i64
  %out_addr_55 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_4_7
  store float %inp_7_load_4, float* %out_addr_55, align 4
  %inp_8_addr_4 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_8
  %inp_8_load_4 = load float* %inp_8_addr_4, align 4
  %tmp_58_4_8 = add i10 %tmp_s, 56
  %tmp_59_4_8 = zext i10 %tmp_58_4_8 to i64
  %out_addr_56 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_4_8
  store float %inp_8_load_4, float* %out_addr_56, align 4
  %inp_9_addr_4 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_8
  %inp_9_load_4 = load float* %inp_9_addr_4, align 4
  %tmp_58_4_9 = add i10 %tmp_s, 57
  %tmp_59_4_9 = zext i10 %tmp_58_4_9 to i64
  %out_addr_57 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_4_9
  store float %inp_9_load_4, float* %out_addr_57, align 4
  %inp_10_addr_4 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_8
  %inp_10_load_4 = load float* %inp_10_addr_4, align 4
  %tmp_58_4_s = add i10 %tmp_s, 58
  %tmp_59_4_s = zext i10 %tmp_58_4_s to i64
  %out_addr_58 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_4_s
  store float %inp_10_load_4, float* %out_addr_58, align 4
  %inp_11_addr_4 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_8
  %inp_11_load_4 = load float* %inp_11_addr_4, align 4
  %tmp_58_4_10 = add i10 %tmp_s, 59
  %tmp_59_4_10 = zext i10 %tmp_58_4_10 to i64
  %out_addr_59 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_4_10
  store float %inp_11_load_4, float* %out_addr_59, align 4
  %p_addr8 = add i9 %p_addr_cast1, 5
  %p_addr8_cast = sext i9 %p_addr8 to i32
  %tmp_9 = zext i32 %p_addr8_cast to i64
  %inp_0_addr_5 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_9
  %inp_0_load_5 = load float* %inp_0_addr_5, align 4
  %tmp_58_5 = add i10 %tmp_s, 60
  %tmp_59_5 = zext i10 %tmp_58_5 to i64
  %out_addr_60 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_5
  store float %inp_0_load_5, float* %out_addr_60, align 4
  %inp_1_addr_5 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_9
  %inp_1_load_5 = load float* %inp_1_addr_5, align 4
  %tmp_58_5_1 = add i10 %tmp_s, 61
  %tmp_59_5_1 = zext i10 %tmp_58_5_1 to i64
  %out_addr_61 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_5_1
  store float %inp_1_load_5, float* %out_addr_61, align 4
  %inp_2_addr_5 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_9
  %inp_2_load_5 = load float* %inp_2_addr_5, align 4
  %tmp_58_5_2 = add i10 %tmp_s, 62
  %tmp_59_5_2 = zext i10 %tmp_58_5_2 to i64
  %out_addr_62 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_5_2
  store float %inp_2_load_5, float* %out_addr_62, align 4
  %inp_3_addr_5 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_9
  %inp_3_load_5 = load float* %inp_3_addr_5, align 4
  %tmp_58_5_3 = add i10 %tmp_s, 63
  %tmp_59_5_3 = zext i10 %tmp_58_5_3 to i64
  %out_addr_63 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_5_3
  store float %inp_3_load_5, float* %out_addr_63, align 4
  %inp_4_addr_5 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_9
  %inp_4_load_5 = load float* %inp_4_addr_5, align 4
  %tmp_58_5_4 = add i10 %tmp_s, 64
  %tmp_59_5_4 = zext i10 %tmp_58_5_4 to i64
  %out_addr_64 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_5_4
  store float %inp_4_load_5, float* %out_addr_64, align 4
  %inp_5_addr_5 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_9
  %inp_5_load_5 = load float* %inp_5_addr_5, align 4
  %tmp_58_5_5 = add i10 %tmp_s, 65
  %tmp_59_5_5 = zext i10 %tmp_58_5_5 to i64
  %out_addr_65 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_5_5
  store float %inp_5_load_5, float* %out_addr_65, align 4
  %inp_6_addr_5 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_9
  %inp_6_load_5 = load float* %inp_6_addr_5, align 4
  %tmp_58_5_6 = add i10 %tmp_s, 66
  %tmp_59_5_6 = zext i10 %tmp_58_5_6 to i64
  %out_addr_66 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_5_6
  store float %inp_6_load_5, float* %out_addr_66, align 4
  %inp_7_addr_5 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_9
  %inp_7_load_5 = load float* %inp_7_addr_5, align 4
  %tmp_58_5_7 = add i10 %tmp_s, 67
  %tmp_59_5_7 = zext i10 %tmp_58_5_7 to i64
  %out_addr_67 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_5_7
  store float %inp_7_load_5, float* %out_addr_67, align 4
  %inp_8_addr_5 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_9
  %inp_8_load_5 = load float* %inp_8_addr_5, align 4
  %tmp_58_5_8 = add i10 %tmp_s, 68
  %tmp_59_5_8 = zext i10 %tmp_58_5_8 to i64
  %out_addr_68 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_5_8
  store float %inp_8_load_5, float* %out_addr_68, align 4
  %inp_9_addr_5 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_9
  %inp_9_load_5 = load float* %inp_9_addr_5, align 4
  %tmp_58_5_9 = add i10 %tmp_s, 69
  %tmp_59_5_9 = zext i10 %tmp_58_5_9 to i64
  %out_addr_69 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_5_9
  store float %inp_9_load_5, float* %out_addr_69, align 4
  %inp_10_addr_5 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_9
  %inp_10_load_5 = load float* %inp_10_addr_5, align 4
  %tmp_58_5_s = add i10 %tmp_s, 70
  %tmp_59_5_s = zext i10 %tmp_58_5_s to i64
  %out_addr_70 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_5_s
  store float %inp_10_load_5, float* %out_addr_70, align 4
  %inp_11_addr_5 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_9
  %inp_11_load_5 = load float* %inp_11_addr_5, align 4
  %tmp_58_5_10 = add i10 %tmp_s, 71
  %tmp_59_5_10 = zext i10 %tmp_58_5_10 to i64
  %out_addr_71 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_5_10
  store float %inp_11_load_5, float* %out_addr_71, align 4
  %p_addr9 = add i9 %p_addr_cast1, 6
  %p_addr9_cast = sext i9 %p_addr9 to i32
  %tmp_10 = zext i32 %p_addr9_cast to i64
  %inp_0_addr_6 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_10
  %inp_0_load_6 = load float* %inp_0_addr_6, align 4
  %tmp_58_6 = add i10 %tmp_s, 72
  %tmp_59_6 = zext i10 %tmp_58_6 to i64
  %out_addr_72 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_6
  store float %inp_0_load_6, float* %out_addr_72, align 4
  %inp_1_addr_6 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_10
  %inp_1_load_6 = load float* %inp_1_addr_6, align 4
  %tmp_58_6_1 = add i10 %tmp_s, 73
  %tmp_59_6_1 = zext i10 %tmp_58_6_1 to i64
  %out_addr_73 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_6_1
  store float %inp_1_load_6, float* %out_addr_73, align 4
  %inp_2_addr_6 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_10
  %inp_2_load_6 = load float* %inp_2_addr_6, align 4
  %tmp_58_6_2 = add i10 %tmp_s, 74
  %tmp_59_6_2 = zext i10 %tmp_58_6_2 to i64
  %out_addr_74 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_6_2
  store float %inp_2_load_6, float* %out_addr_74, align 4
  %inp_3_addr_6 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_10
  %inp_3_load_6 = load float* %inp_3_addr_6, align 4
  %tmp_58_6_3 = add i10 %tmp_s, 75
  %tmp_59_6_3 = zext i10 %tmp_58_6_3 to i64
  %out_addr_75 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_6_3
  store float %inp_3_load_6, float* %out_addr_75, align 4
  %inp_4_addr_6 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_10
  %inp_4_load_6 = load float* %inp_4_addr_6, align 4
  %tmp_58_6_4 = add i10 %tmp_s, 76
  %tmp_59_6_4 = zext i10 %tmp_58_6_4 to i64
  %out_addr_76 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_6_4
  store float %inp_4_load_6, float* %out_addr_76, align 4
  %inp_5_addr_6 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_10
  %inp_5_load_6 = load float* %inp_5_addr_6, align 4
  %tmp_58_6_5 = add i10 %tmp_s, 77
  %tmp_59_6_5 = zext i10 %tmp_58_6_5 to i64
  %out_addr_77 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_6_5
  store float %inp_5_load_6, float* %out_addr_77, align 4
  %inp_6_addr_6 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_10
  %inp_6_load_6 = load float* %inp_6_addr_6, align 4
  %tmp_58_6_6 = add i10 %tmp_s, 78
  %tmp_59_6_6 = zext i10 %tmp_58_6_6 to i64
  %out_addr_78 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_6_6
  store float %inp_6_load_6, float* %out_addr_78, align 4
  %inp_7_addr_6 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_10
  %inp_7_load_6 = load float* %inp_7_addr_6, align 4
  %tmp_58_6_7 = add i10 %tmp_s, 79
  %tmp_59_6_7 = zext i10 %tmp_58_6_7 to i64
  %out_addr_79 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_6_7
  store float %inp_7_load_6, float* %out_addr_79, align 4
  %inp_8_addr_6 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_10
  %inp_8_load_6 = load float* %inp_8_addr_6, align 4
  %tmp_58_6_8 = add i10 %tmp_s, 80
  %tmp_59_6_8 = zext i10 %tmp_58_6_8 to i64
  %out_addr_80 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_6_8
  store float %inp_8_load_6, float* %out_addr_80, align 4
  %inp_9_addr_6 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_10
  %inp_9_load_6 = load float* %inp_9_addr_6, align 4
  %tmp_58_6_9 = add i10 %tmp_s, 81
  %tmp_59_6_9 = zext i10 %tmp_58_6_9 to i64
  %out_addr_81 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_6_9
  store float %inp_9_load_6, float* %out_addr_81, align 4
  %inp_10_addr_6 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_10
  %inp_10_load_6 = load float* %inp_10_addr_6, align 4
  %tmp_58_6_s = add i10 %tmp_s, 82
  %tmp_59_6_s = zext i10 %tmp_58_6_s to i64
  %out_addr_82 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_6_s
  store float %inp_10_load_6, float* %out_addr_82, align 4
  %inp_11_addr_6 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_10
  %inp_11_load_6 = load float* %inp_11_addr_6, align 4
  %tmp_58_6_10 = add i10 %tmp_s, 83
  %tmp_59_6_10 = zext i10 %tmp_58_6_10 to i64
  %out_addr_83 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_6_10
  store float %inp_11_load_6, float* %out_addr_83, align 4
  %p_addr11 = add i9 %p_addr_cast1, 7
  %p_addr11_cast = sext i9 %p_addr11 to i32
  %tmp_11 = zext i32 %p_addr11_cast to i64
  %inp_0_addr_7 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_11
  %inp_0_load_7 = load float* %inp_0_addr_7, align 4
  %tmp_58_7 = add i10 %tmp_s, 84
  %tmp_59_7 = zext i10 %tmp_58_7 to i64
  %out_addr_84 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_7
  store float %inp_0_load_7, float* %out_addr_84, align 4
  %inp_1_addr_7 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_11
  %inp_1_load_7 = load float* %inp_1_addr_7, align 4
  %tmp_58_7_1 = add i10 %tmp_s, 85
  %tmp_59_7_1 = zext i10 %tmp_58_7_1 to i64
  %out_addr_85 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_7_1
  store float %inp_1_load_7, float* %out_addr_85, align 4
  %inp_2_addr_7 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_11
  %inp_2_load_7 = load float* %inp_2_addr_7, align 4
  %tmp_58_7_2 = add i10 %tmp_s, 86
  %tmp_59_7_2 = zext i10 %tmp_58_7_2 to i64
  %out_addr_86 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_7_2
  store float %inp_2_load_7, float* %out_addr_86, align 4
  %inp_3_addr_7 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_11
  %inp_3_load_7 = load float* %inp_3_addr_7, align 4
  %tmp_58_7_3 = add i10 %tmp_s, 87
  %tmp_59_7_3 = zext i10 %tmp_58_7_3 to i64
  %out_addr_87 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_7_3
  store float %inp_3_load_7, float* %out_addr_87, align 4
  %inp_4_addr_7 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_11
  %inp_4_load_7 = load float* %inp_4_addr_7, align 4
  %tmp_58_7_4 = add i10 %tmp_s, 88
  %tmp_59_7_4 = zext i10 %tmp_58_7_4 to i64
  %out_addr_88 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_7_4
  store float %inp_4_load_7, float* %out_addr_88, align 4
  %inp_5_addr_7 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_11
  %inp_5_load_7 = load float* %inp_5_addr_7, align 4
  %tmp_58_7_5 = add i10 %tmp_s, 89
  %tmp_59_7_5 = zext i10 %tmp_58_7_5 to i64
  %out_addr_89 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_7_5
  store float %inp_5_load_7, float* %out_addr_89, align 4
  %inp_6_addr_7 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_11
  %inp_6_load_7 = load float* %inp_6_addr_7, align 4
  %tmp_58_7_6 = add i10 %tmp_s, 90
  %tmp_59_7_6 = zext i10 %tmp_58_7_6 to i64
  %out_addr_90 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_7_6
  store float %inp_6_load_7, float* %out_addr_90, align 4
  %inp_7_addr_7 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_11
  %inp_7_load_7 = load float* %inp_7_addr_7, align 4
  %tmp_58_7_7 = add i10 %tmp_s, 91
  %tmp_59_7_7 = zext i10 %tmp_58_7_7 to i64
  %out_addr_91 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_7_7
  store float %inp_7_load_7, float* %out_addr_91, align 4
  %inp_8_addr_7 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_11
  %inp_8_load_7 = load float* %inp_8_addr_7, align 4
  %tmp_58_7_8 = add i10 %tmp_s, 92
  %tmp_59_7_8 = zext i10 %tmp_58_7_8 to i64
  %out_addr_92 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_7_8
  store float %inp_8_load_7, float* %out_addr_92, align 4
  %inp_9_addr_7 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_11
  %inp_9_load_7 = load float* %inp_9_addr_7, align 4
  %tmp_58_7_9 = add i10 %tmp_s, 93
  %tmp_59_7_9 = zext i10 %tmp_58_7_9 to i64
  %out_addr_93 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_7_9
  store float %inp_9_load_7, float* %out_addr_93, align 4
  %inp_10_addr_7 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_11
  %inp_10_load_7 = load float* %inp_10_addr_7, align 4
  %tmp_58_7_s = add i10 %tmp_s, 94
  %tmp_59_7_s = zext i10 %tmp_58_7_s to i64
  %out_addr_94 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_7_s
  store float %inp_10_load_7, float* %out_addr_94, align 4
  %inp_11_addr_7 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_11
  %inp_11_load_7 = load float* %inp_11_addr_7, align 4
  %tmp_58_7_10 = add i10 %tmp_s, 95
  %tmp_59_7_10 = zext i10 %tmp_58_7_10 to i64
  %out_addr_95 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_7_10
  store float %inp_11_load_7, float* %out_addr_95, align 4
  %p_addr10 = add i9 %p_addr_cast1, 8
  %p_addr10_cast = sext i9 %p_addr10 to i32
  %tmp_12 = zext i32 %p_addr10_cast to i64
  %inp_0_addr_8 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_12
  %inp_0_load_8 = load float* %inp_0_addr_8, align 4
  %tmp_58_8 = add i10 %tmp_s, 96
  %tmp_59_8 = zext i10 %tmp_58_8 to i64
  %out_addr_96 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_8
  store float %inp_0_load_8, float* %out_addr_96, align 4
  %inp_1_addr_8 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_12
  %inp_1_load_8 = load float* %inp_1_addr_8, align 4
  %tmp_58_8_1 = add i10 %tmp_s, 97
  %tmp_59_8_1 = zext i10 %tmp_58_8_1 to i64
  %out_addr_97 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_8_1
  store float %inp_1_load_8, float* %out_addr_97, align 4
  %inp_2_addr_8 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_12
  %inp_2_load_8 = load float* %inp_2_addr_8, align 4
  %tmp_58_8_2 = add i10 %tmp_s, 98
  %tmp_59_8_2 = zext i10 %tmp_58_8_2 to i64
  %out_addr_98 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_8_2
  store float %inp_2_load_8, float* %out_addr_98, align 4
  %inp_3_addr_8 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_12
  %inp_3_load_8 = load float* %inp_3_addr_8, align 4
  %tmp_58_8_3 = add i10 %tmp_s, 99
  %tmp_59_8_3 = zext i10 %tmp_58_8_3 to i64
  %out_addr_99 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_8_3
  store float %inp_3_load_8, float* %out_addr_99, align 4
  %inp_4_addr_8 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_12
  %inp_4_load_8 = load float* %inp_4_addr_8, align 4
  %tmp_58_8_4 = add i10 %tmp_s, 100
  %tmp_59_8_4 = zext i10 %tmp_58_8_4 to i64
  %out_addr_100 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_8_4
  store float %inp_4_load_8, float* %out_addr_100, align 4
  %inp_5_addr_8 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_12
  %inp_5_load_8 = load float* %inp_5_addr_8, align 4
  %tmp_58_8_5 = add i10 %tmp_s, 101
  %tmp_59_8_5 = zext i10 %tmp_58_8_5 to i64
  %out_addr_101 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_8_5
  store float %inp_5_load_8, float* %out_addr_101, align 4
  %inp_6_addr_8 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_12
  %inp_6_load_8 = load float* %inp_6_addr_8, align 4
  %tmp_58_8_6 = add i10 %tmp_s, 102
  %tmp_59_8_6 = zext i10 %tmp_58_8_6 to i64
  %out_addr_102 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_8_6
  store float %inp_6_load_8, float* %out_addr_102, align 4
  %inp_7_addr_8 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_12
  %inp_7_load_8 = load float* %inp_7_addr_8, align 4
  %tmp_58_8_7 = add i10 %tmp_s, 103
  %tmp_59_8_7 = zext i10 %tmp_58_8_7 to i64
  %out_addr_103 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_8_7
  store float %inp_7_load_8, float* %out_addr_103, align 4
  %inp_8_addr_8 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_12
  %inp_8_load_8 = load float* %inp_8_addr_8, align 4
  %tmp_58_8_8 = add i10 %tmp_s, 104
  %tmp_59_8_8 = zext i10 %tmp_58_8_8 to i64
  %out_addr_104 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_8_8
  store float %inp_8_load_8, float* %out_addr_104, align 4
  %inp_9_addr_8 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_12
  %inp_9_load_8 = load float* %inp_9_addr_8, align 4
  %tmp_58_8_9 = add i10 %tmp_s, 105
  %tmp_59_8_9 = zext i10 %tmp_58_8_9 to i64
  %out_addr_105 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_8_9
  store float %inp_9_load_8, float* %out_addr_105, align 4
  %inp_10_addr_8 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_12
  %inp_10_load_8 = load float* %inp_10_addr_8, align 4
  %tmp_58_8_s = add i10 %tmp_s, 106
  %tmp_59_8_s = zext i10 %tmp_58_8_s to i64
  %out_addr_106 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_8_s
  store float %inp_10_load_8, float* %out_addr_106, align 4
  %inp_11_addr_8 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_12
  %inp_11_load_8 = load float* %inp_11_addr_8, align 4
  %tmp_58_8_10 = add i10 %tmp_s, 107
  %tmp_59_8_10 = zext i10 %tmp_58_8_10 to i64
  %out_addr_107 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_8_10
  store float %inp_11_load_8, float* %out_addr_107, align 4
  %p_addr7 = add i9 %p_addr_cast1, 9
  %p_addr7_cast = sext i9 %p_addr7 to i32
  %tmp_13 = zext i32 %p_addr7_cast to i64
  %inp_0_addr_9 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_13
  %inp_0_load_9 = load float* %inp_0_addr_9, align 4
  %tmp_58_9 = add i10 %tmp_s, 108
  %tmp_59_9 = zext i10 %tmp_58_9 to i64
  %out_addr_108 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_9
  store float %inp_0_load_9, float* %out_addr_108, align 4
  %inp_1_addr_9 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_13
  %inp_1_load_9 = load float* %inp_1_addr_9, align 4
  %tmp_58_9_1 = add i10 %tmp_s, 109
  %tmp_59_9_1 = zext i10 %tmp_58_9_1 to i64
  %out_addr_109 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_9_1
  store float %inp_1_load_9, float* %out_addr_109, align 4
  %inp_2_addr_9 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_13
  %inp_2_load_9 = load float* %inp_2_addr_9, align 4
  %tmp_58_9_2 = add i10 %tmp_s, 110
  %tmp_59_9_2 = zext i10 %tmp_58_9_2 to i64
  %out_addr_110 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_9_2
  store float %inp_2_load_9, float* %out_addr_110, align 4
  %inp_3_addr_9 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_13
  %inp_3_load_9 = load float* %inp_3_addr_9, align 4
  %tmp_58_9_3 = add i10 %tmp_s, 111
  %tmp_59_9_3 = zext i10 %tmp_58_9_3 to i64
  %out_addr_111 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_9_3
  store float %inp_3_load_9, float* %out_addr_111, align 4
  %inp_4_addr_9 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_13
  %inp_4_load_9 = load float* %inp_4_addr_9, align 4
  %tmp_58_9_4 = add i10 %tmp_s, 112
  %tmp_59_9_4 = zext i10 %tmp_58_9_4 to i64
  %out_addr_112 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_9_4
  store float %inp_4_load_9, float* %out_addr_112, align 4
  %inp_5_addr_9 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_13
  %inp_5_load_9 = load float* %inp_5_addr_9, align 4
  %tmp_58_9_5 = add i10 %tmp_s, 113
  %tmp_59_9_5 = zext i10 %tmp_58_9_5 to i64
  %out_addr_113 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_9_5
  store float %inp_5_load_9, float* %out_addr_113, align 4
  %inp_6_addr_9 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_13
  %inp_6_load_9 = load float* %inp_6_addr_9, align 4
  %tmp_58_9_6 = add i10 %tmp_s, 114
  %tmp_59_9_6 = zext i10 %tmp_58_9_6 to i64
  %out_addr_114 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_9_6
  store float %inp_6_load_9, float* %out_addr_114, align 4
  %inp_7_addr_9 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_13
  %inp_7_load_9 = load float* %inp_7_addr_9, align 4
  %tmp_58_9_7 = add i10 %tmp_s, 115
  %tmp_59_9_7 = zext i10 %tmp_58_9_7 to i64
  %out_addr_115 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_9_7
  store float %inp_7_load_9, float* %out_addr_115, align 4
  %inp_8_addr_9 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_13
  %inp_8_load_9 = load float* %inp_8_addr_9, align 4
  %tmp_58_9_8 = add i10 %tmp_s, 116
  %tmp_59_9_8 = zext i10 %tmp_58_9_8 to i64
  %out_addr_116 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_9_8
  store float %inp_8_load_9, float* %out_addr_116, align 4
  %inp_9_addr_9 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_13
  %inp_9_load_9 = load float* %inp_9_addr_9, align 4
  %tmp_58_9_9 = add i10 %tmp_s, 117
  %tmp_59_9_9 = zext i10 %tmp_58_9_9 to i64
  %out_addr_117 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_9_9
  store float %inp_9_load_9, float* %out_addr_117, align 4
  %inp_10_addr_9 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_13
  %inp_10_load_9 = load float* %inp_10_addr_9, align 4
  %tmp_58_9_s = add i10 %tmp_s, 118
  %tmp_59_9_s = zext i10 %tmp_58_9_s to i64
  %out_addr_118 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_9_s
  store float %inp_10_load_9, float* %out_addr_118, align 4
  %inp_11_addr_9 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_13
  %inp_11_load_9 = load float* %inp_11_addr_9, align 4
  %tmp_58_9_10 = add i10 %tmp_s, 119
  %tmp_59_9_10 = zext i10 %tmp_58_9_10 to i64
  %out_addr_119 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_9_10
  store float %inp_11_load_9, float* %out_addr_119, align 4
  %p_addr4 = add i9 %p_addr_cast1, 10
  %p_addr4_cast = sext i9 %p_addr4 to i32
  %tmp_14 = zext i32 %p_addr4_cast to i64
  %inp_0_addr_10 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_14
  %inp_0_load_10 = load float* %inp_0_addr_10, align 4
  %tmp_58_s = add i10 %tmp_s, 120
  %tmp_59_s = zext i10 %tmp_58_s to i64
  %out_addr_120 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_s
  store float %inp_0_load_10, float* %out_addr_120, align 4
  %inp_1_addr_10 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_14
  %inp_1_load_10 = load float* %inp_1_addr_10, align 4
  %tmp_58_10_1 = add i10 %tmp_s, 121
  %tmp_59_10_1 = zext i10 %tmp_58_10_1 to i64
  %out_addr_121 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_10_1
  store float %inp_1_load_10, float* %out_addr_121, align 4
  %inp_2_addr_10 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_14
  %inp_2_load_10 = load float* %inp_2_addr_10, align 4
  %tmp_58_10_2 = add i10 %tmp_s, 122
  %tmp_59_10_2 = zext i10 %tmp_58_10_2 to i64
  %out_addr_122 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_10_2
  store float %inp_2_load_10, float* %out_addr_122, align 4
  %inp_3_addr_10 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_14
  %inp_3_load_10 = load float* %inp_3_addr_10, align 4
  %tmp_58_10_3 = add i10 %tmp_s, 123
  %tmp_59_10_3 = zext i10 %tmp_58_10_3 to i64
  %out_addr_123 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_10_3
  store float %inp_3_load_10, float* %out_addr_123, align 4
  %inp_4_addr_10 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_14
  %inp_4_load_10 = load float* %inp_4_addr_10, align 4
  %tmp_58_10_4 = add i10 %tmp_s, 124
  %tmp_59_10_4 = zext i10 %tmp_58_10_4 to i64
  %out_addr_124 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_10_4
  store float %inp_4_load_10, float* %out_addr_124, align 4
  %inp_5_addr_10 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_14
  %inp_5_load_10 = load float* %inp_5_addr_10, align 4
  %tmp_58_10_5 = add i10 %tmp_s, 125
  %tmp_59_10_5 = zext i10 %tmp_58_10_5 to i64
  %out_addr_125 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_10_5
  store float %inp_5_load_10, float* %out_addr_125, align 4
  %inp_6_addr_10 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_14
  %inp_6_load_10 = load float* %inp_6_addr_10, align 4
  %tmp_58_10_6 = add i10 %tmp_s, 126
  %tmp_59_10_6 = zext i10 %tmp_58_10_6 to i64
  %out_addr_126 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_10_6
  store float %inp_6_load_10, float* %out_addr_126, align 4
  %inp_7_addr_10 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_14
  %inp_7_load_10 = load float* %inp_7_addr_10, align 4
  %tmp_58_10_7 = add i10 %tmp_s, 127
  %tmp_59_10_7 = zext i10 %tmp_58_10_7 to i64
  %out_addr_127 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_10_7
  store float %inp_7_load_10, float* %out_addr_127, align 4
  %inp_8_addr_10 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_14
  %inp_8_load_10 = load float* %inp_8_addr_10, align 4
  %tmp_58_10_8 = add i10 %tmp_s, 128
  %tmp_59_10_8 = zext i10 %tmp_58_10_8 to i64
  %out_addr_128 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_10_8
  store float %inp_8_load_10, float* %out_addr_128, align 4
  %inp_9_addr_10 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_14
  %inp_9_load_10 = load float* %inp_9_addr_10, align 4
  %tmp_58_10_9 = add i10 %tmp_s, 129
  %tmp_59_10_9 = zext i10 %tmp_58_10_9 to i64
  %out_addr_129 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_10_9
  store float %inp_9_load_10, float* %out_addr_129, align 4
  %inp_10_addr_10 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_14
  %inp_10_load_10 = load float* %inp_10_addr_10, align 4
  %tmp_58_10_s = add i10 %tmp_s, 130
  %tmp_59_10_s = zext i10 %tmp_58_10_s to i64
  %out_addr_130 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_10_s
  store float %inp_10_load_10, float* %out_addr_130, align 4
  %inp_11_addr_10 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_14
  %inp_11_load_10 = load float* %inp_11_addr_10, align 4
  %tmp_58_10_10 = add i10 %tmp_s, 131
  %tmp_59_10_10 = zext i10 %tmp_58_10_10 to i64
  %out_addr_131 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_10_10
  store float %inp_11_load_10, float* %out_addr_131, align 4
  %p_addr1 = add i9 %p_addr_cast1, 11
  %p_addr1_cast = sext i9 %p_addr1 to i32
  %tmp_15 = zext i32 %p_addr1_cast to i64
  %inp_0_addr_11 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_15
  %inp_0_load_11 = load float* %inp_0_addr_11, align 4
  %tmp_58_1 = add i10 %tmp_s, 132
  %tmp_59_10 = zext i10 %tmp_58_1 to i64
  %out_addr_132 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_10
  store float %inp_0_load_11, float* %out_addr_132, align 4
  %inp_1_addr_11 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_15
  %inp_1_load_11 = load float* %inp_1_addr_11, align 4
  %tmp_58_11_1 = add i10 %tmp_s, 133
  %tmp_59_11_1 = zext i10 %tmp_58_11_1 to i64
  %out_addr_133 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_11_1
  store float %inp_1_load_11, float* %out_addr_133, align 4
  %inp_2_addr_11 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_15
  %inp_2_load_11 = load float* %inp_2_addr_11, align 4
  %tmp_58_11_2 = add i10 %tmp_s, 134
  %tmp_59_11_2 = zext i10 %tmp_58_11_2 to i64
  %out_addr_134 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_11_2
  store float %inp_2_load_11, float* %out_addr_134, align 4
  %inp_3_addr_11 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_15
  %inp_3_load_11 = load float* %inp_3_addr_11, align 4
  %tmp_58_11_3 = add i10 %tmp_s, 135
  %tmp_59_11_3 = zext i10 %tmp_58_11_3 to i64
  %out_addr_135 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_11_3
  store float %inp_3_load_11, float* %out_addr_135, align 4
  %inp_4_addr_11 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_15
  %inp_4_load_11 = load float* %inp_4_addr_11, align 4
  %tmp_58_11_4 = add i10 %tmp_s, 136
  %tmp_59_11_4 = zext i10 %tmp_58_11_4 to i64
  %out_addr_136 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_11_4
  store float %inp_4_load_11, float* %out_addr_136, align 4
  %inp_5_addr_11 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_15
  %inp_5_load_11 = load float* %inp_5_addr_11, align 4
  %tmp_58_11_5 = add i10 %tmp_s, 137
  %tmp_59_11_5 = zext i10 %tmp_58_11_5 to i64
  %out_addr_137 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_11_5
  store float %inp_5_load_11, float* %out_addr_137, align 4
  %inp_6_addr_11 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_15
  %inp_6_load_11 = load float* %inp_6_addr_11, align 4
  %tmp_58_11_6 = add i10 %tmp_s, 138
  %tmp_59_11_6 = zext i10 %tmp_58_11_6 to i64
  %out_addr_138 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_11_6
  store float %inp_6_load_11, float* %out_addr_138, align 4
  %inp_7_addr_11 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_15
  %inp_7_load_11 = load float* %inp_7_addr_11, align 4
  %tmp_58_11_7 = add i10 %tmp_s, 139
  %tmp_59_11_7 = zext i10 %tmp_58_11_7 to i64
  %out_addr_139 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_11_7
  store float %inp_7_load_11, float* %out_addr_139, align 4
  %inp_8_addr_11 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_15
  %inp_8_load_11 = load float* %inp_8_addr_11, align 4
  %tmp_58_11_8 = add i10 %tmp_s, 140
  %tmp_59_11_8 = zext i10 %tmp_58_11_8 to i64
  %out_addr_140 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_11_8
  store float %inp_8_load_11, float* %out_addr_140, align 4
  %inp_9_addr_11 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_15
  %inp_9_load_11 = load float* %inp_9_addr_11, align 4
  %tmp_58_11_9 = add i10 %tmp_s, 141
  %tmp_59_11_9 = zext i10 %tmp_58_11_9 to i64
  %out_addr_141 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_11_9
  store float %inp_9_load_11, float* %out_addr_141, align 4
  %inp_10_addr_11 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_15
  %inp_10_load_11 = load float* %inp_10_addr_11, align 4
  %tmp_58_11_s = add i10 %tmp_s, 142
  %tmp_59_11_s = zext i10 %tmp_58_11_s to i64
  %out_addr_142 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_11_s
  store float %inp_10_load_11, float* %out_addr_142, align 4
  %inp_11_addr_11 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_15
  %inp_11_load_11 = load float* %inp_11_addr_11, align 4
  %tmp_58_11_10 = add i10 %tmp_s, 143
  %tmp_59_11_10 = zext i10 %tmp_58_11_10 to i64
  %out_addr_143 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_59_11_10
  store float %inp_11_load_11, float* %out_addr_143, align 4
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str17, i32 %tmp_1)
  br label %1

; <label>:2                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_9 = trunc i64 %empty to i11
  ret i11 %empty_9
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i1.i11.i52(i1, i11, i52) nounwind readnone {
entry:
  %empty = zext i11 %1 to i63
  %empty_10 = zext i52 %2 to i63
  %empty_11 = shl i63 %empty, 52
  %empty_12 = or i63 %empty_11, %empty_10
  %empty_13 = zext i1 %0 to i64
  %empty_14 = zext i63 %empty_12 to i64
  %empty_15 = shl i64 %empty_13, 63
  %empty_16 = or i64 %empty_15, %empty_14
  ret i64 %empty_16
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define internal fastcc { float, float } @obj_detector_softmax(float %inp_0_read, float %inp_1_read) readonly {
  %inp_1_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %inp_1_read)
  %inp_0_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %inp_0_read)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i2 [ 0, %0 ], [ %i_2, %2 ]
  %sum = phi float [ 0.000000e+00, %0 ], [ %sum_2, %2 ]
  %exitcond3 = icmp eq i2 %i, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_2 = add i2 %i, 1
  br i1 %exitcond3, label %.preheader5, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str19) nounwind
  %tmp = trunc i2 %i to i1
  %inp_1_read_assign = select i1 %tmp, float %inp_1_read_1, float %inp_0_read_1
  %sum_2 = fadd float %sum, %inp_1_read_assign
  br label %1

.preheader5:                                      ; preds = %1, %3
  %temp_0_s = phi float [ %temp_1_1, %3 ], [ undef, %1 ]
  %temp_1_s = phi float [ %temp_1_2, %3 ], [ undef, %1 ]
  %i1 = phi i2 [ %i_3, %3 ], [ 0, %1 ]
  %exitcond2 = icmp eq i2 %i1, -2
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_3 = add i2 %i1, 1
  br i1 %exitcond2, label %.preheader4, label %3

; <label>:3                                       ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str20) nounwind
  %tmp_4 = trunc i2 %i1 to i1
  %inp_1_read_assign_1 = select i1 %tmp_4, float %inp_1_read_1, float %inp_0_read_1
  %temp_0 = fdiv float %inp_1_read_assign_1, %sum
  %temp_1_1 = select i1 %tmp_4, float %temp_0_s, float %temp_0
  %temp_1_2 = select i1 %tmp_4, float %temp_0, float %temp_1_s
  br label %.preheader5

.preheader4:                                      ; preds = %.preheader5, %4
  %sum_1 = phi float [ %sum_3, %4 ], [ 0.000000e+00, %.preheader5 ]
  %i2 = phi i2 [ %i_4, %4 ], [ 0, %.preheader5 ]
  %exitcond1 = icmp eq i2 %i2, -2
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_4 = add i2 %i2, 1
  br i1 %exitcond1, label %.preheader.preheader, label %4

.preheader.preheader:                             ; preds = %.preheader4
  %tmp_s = fpext float %sum_1 to double
  br label %.preheader

; <label>:4                                       ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str21) nounwind
  %tmp_12 = trunc i2 %i2 to i1
  %temp_load_phi = select i1 %tmp_12, float %temp_1_s, float %temp_0_s
  %tmp_5 = fpext float %temp_load_phi to double
  %tmp_6 = call double @llvm.exp.f64(double %tmp_5)
  %tmp_7 = fpext float %sum_1 to double
  %tmp_8 = fadd double %tmp_7, %tmp_6
  %sum_3 = fptrunc double %tmp_8 to float
  br label %.preheader4

.preheader:                                       ; preds = %5, %.preheader.preheader
  %out_0_write_assign = phi float [ undef, %.preheader.preheader ], [ %out_0_write_assign_1, %5 ]
  %out_1_write_assign = phi float [ undef, %.preheader.preheader ], [ %out_1_write_assign_1, %5 ]
  %i3 = phi i2 [ 0, %.preheader.preheader ], [ %i_5, %5 ]
  %exitcond = icmp eq i2 %i3, -2
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_5 = add i2 %i3, 1
  br i1 %exitcond, label %6, label %5

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str22) nounwind
  %tmp_13 = trunc i2 %i3 to i1
  %temp_load_1_phi = select i1 %tmp_13, float %temp_1_s, float %temp_0_s
  %tmp_9 = fpext float %temp_load_1_phi to double
  %tmp_10 = call double @llvm.exp.f64(double %tmp_9)
  %tmp_11 = fdiv double %tmp_10, %tmp_s
  %out = fptrunc double %tmp_11 to float
  %out_0_write_assign_1 = select i1 %tmp_13, float %out_0_write_assign, float %out
  %out_1_write_assign_1 = select i1 %tmp_13, float %out, float %out_1_write_assign
  br label %.preheader

; <label>:6                                       ; preds = %.preheader
  %mrv = insertvalue { float, float } undef, float %out_0_write_assign, 0
  %mrv_1 = insertvalue { float, float } %mrv, float %out_1_write_assign, 1
  ret { float, float } %mrv_1
}

define internal fastcc void @obj_detector_maxpool([3456 x float]* %inp, i3 %tmp_24, [72 x float]* nocapture %out_0, [72 x float]* nocapture %out_1, [72 x float]* nocapture %out_2, [72 x float]* nocapture %out_3, [72 x float]* nocapture %out_4, [72 x float]* nocapture %out_5, [72 x float]* nocapture %out_6, [72 x float]* nocapture %out_7, [72 x float]* nocapture %out_8, [72 x float]* nocapture %out_9, [72 x float]* nocapture %out_10, [72 x float]* nocapture %out_11, i3 %tmp_241) {
  %tmp_241_read = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %tmp_241)
  %tmp_24_read = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %tmp_24)
  %tmp_16 = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp_24_read, i5 0)
  %p_shl2_cast = zext i8 %tmp_16 to i9
  %tmp_17 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_24_read, i3 0)
  %p_shl3_cast = zext i6 %tmp_17 to i9
  %p_addr = sub i9 %p_shl2_cast, %p_shl3_cast
  %p_addr_cast = sext i9 %p_addr to i10
  %tmp_18 = call i7 @_ssdm_op_BitConcatenate.i7.i3.i4(i3 %tmp_241_read, i4 0)
  %p_shl_cast = zext i7 %tmp_18 to i8
  %tmp_19 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %tmp_241_read, i2 0)
  %p_shl4_cast = zext i5 %tmp_19 to i8
  %p_addr12 = sub i8 %p_shl_cast, %p_shl4_cast
  %p_addr12_cast = sext i8 %p_addr12 to i9
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_6, %2 ]
  %exitcond1 = icmp eq i4 %i, -4
  %i_6 = add i4 %i, 1
  br i1 %exitcond1, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 12, i64 12, i64 12)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str16) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str16) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %i, i1 false)
  %tmp_12 = or i5 %tmp, 1
  %tmp_trn_cast = zext i5 %tmp to i10
  %p_addr13 = add i10 %tmp_trn_cast, %p_addr_cast
  %tmp_20 = call i15 @_ssdm_op_BitConcatenate.i15.i10.i5(i10 %p_addr13, i5 0)
  %p_shl5 = sext i15 %tmp_20 to i32
  %tmp_21 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %p_addr13, i3 0)
  %p_shl6 = sext i13 %tmp_21 to i32
  %p_addr15 = sub i32 %p_shl5, %p_shl6
  %tmp_22 = zext i32 %p_addr15 to i64
  %inp_addr = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_22
  %inp_load = load float* %inp_addr, align 4
  %tmp_13 = fpext float %inp_load to double
  %p_addr16 = or i32 %p_addr15, 1
  %tmp_23 = zext i32 %p_addr16 to i64
  %inp_addr_1 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_23
  %inp_load_1 = load float* %inp_addr_1, align 4
  %tmp_14 = fpext float %inp_load_1 to double
  %tmp_15 = call fastcc double @obj_detector_fmax(double %tmp_13, double %tmp_14)
  %max1 = fptrunc double %tmp_15 to float
  %tmp_27_trn_cast = zext i5 %tmp_12 to i10
  %p_addr17 = add i10 %tmp_27_trn_cast, %p_addr_cast
  %tmp_25 = call i15 @_ssdm_op_BitConcatenate.i15.i10.i5(i10 %p_addr17, i5 0)
  %p_shl7 = sext i15 %tmp_25 to i32
  %tmp_26 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %p_addr17, i3 0)
  %p_shl8 = sext i13 %tmp_26 to i32
  %p_addr18 = sub i32 %p_shl7, %p_shl8
  %tmp_27 = zext i32 %p_addr18 to i64
  %inp_addr_2 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_27
  %inp_load_2 = load float* %inp_addr_2, align 4
  %tmp_28 = fpext float %inp_load_2 to double
  %p_addr19 = or i32 %p_addr18, 1
  %tmp_29 = zext i32 %p_addr19 to i64
  %inp_addr_3 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_29
  %inp_load_3 = load float* %inp_addr_3, align 4
  %tmp_30 = fpext float %inp_load_3 to double
  %tmp_31 = call fastcc double @obj_detector_fmax(double %tmp_28, double %tmp_30)
  %max2 = fptrunc double %tmp_31 to float
  %tmp_32 = fpext float %max1 to double
  %tmp_33 = fpext float %max2 to double
  %tmp_34 = call fastcc double @obj_detector_fmax(double %tmp_32, double %tmp_33)
  %tmp_35 = fptrunc double %tmp_34 to float
  %tmp_28_trn_cast = zext i4 %i to i9
  %p_addr21 = add i9 %tmp_28_trn_cast, %p_addr12_cast
  %p_addr21_cast = sext i9 %p_addr21 to i32
  %tmp_36 = zext i32 %p_addr21_cast to i64
  %out_0_addr = getelementptr [72 x float]* %out_0, i64 0, i64 %tmp_36
  store float %tmp_35, float* %out_0_addr, align 4
  %p_addr22 = or i32 %p_addr15, 2
  %tmp_37 = zext i32 %p_addr22 to i64
  %inp_addr_4 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_37
  %inp_load_12 = load float* %inp_addr_4, align 4
  %tmp_41_1 = fpext float %inp_load_12 to double
  %p_addr23 = or i32 %p_addr15, 3
  %tmp_38 = zext i32 %p_addr23 to i64
  %inp_addr_5 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_38
  %inp_load_13 = load float* %inp_addr_5, align 4
  %tmp_44_1 = fpext float %inp_load_13 to double
  %tmp_45_1 = call fastcc double @obj_detector_fmax(double %tmp_41_1, double %tmp_44_1)
  %max1_1 = fptrunc double %tmp_45_1 to float
  %p_addr24 = or i32 %p_addr18, 2
  %tmp_39 = zext i32 %p_addr24 to i64
  %inp_addr_6 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_39
  %inp_load_14 = load float* %inp_addr_6, align 4
  %tmp_46_1 = fpext float %inp_load_14 to double
  %p_addr25 = or i32 %p_addr18, 3
  %tmp_40 = zext i32 %p_addr25 to i64
  %inp_addr_7 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_40
  %inp_load_15 = load float* %inp_addr_7, align 4
  %tmp_47_1 = fpext float %inp_load_15 to double
  %tmp_48_1 = call fastcc double @obj_detector_fmax(double %tmp_46_1, double %tmp_47_1)
  %max2_1 = fptrunc double %tmp_48_1 to float
  %tmp_49_1 = fpext float %max1_1 to double
  %tmp_50_1 = fpext float %max2_1 to double
  %tmp_51_1 = call fastcc double @obj_detector_fmax(double %tmp_49_1, double %tmp_50_1)
  %tmp_52_1 = fptrunc double %tmp_51_1 to float
  %out_1_addr = getelementptr [72 x float]* %out_1, i64 0, i64 %tmp_36
  store float %tmp_52_1, float* %out_1_addr, align 4
  %p_addr27 = or i32 %p_addr15, 4
  %tmp_41 = zext i32 %p_addr27 to i64
  %inp_addr_8 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_41
  %inp_load_16 = load float* %inp_addr_8, align 4
  %tmp_41_2 = fpext float %inp_load_16 to double
  %p_addr28 = or i32 %p_addr15, 5
  %tmp_42 = zext i32 %p_addr28 to i64
  %inp_addr_9 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_42
  %inp_load_17 = load float* %inp_addr_9, align 4
  %tmp_44_2 = fpext float %inp_load_17 to double
  %tmp_45_2 = call fastcc double @obj_detector_fmax(double %tmp_41_2, double %tmp_44_2)
  %max1_2 = fptrunc double %tmp_45_2 to float
  %p_addr29 = or i32 %p_addr18, 4
  %tmp_43 = zext i32 %p_addr29 to i64
  %inp_addr_10 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_43
  %inp_load_18 = load float* %inp_addr_10, align 4
  %tmp_46_2 = fpext float %inp_load_18 to double
  %p_addr30 = or i32 %p_addr18, 5
  %tmp_44 = zext i32 %p_addr30 to i64
  %inp_addr_11 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_44
  %inp_load_19 = load float* %inp_addr_11, align 4
  %tmp_47_2 = fpext float %inp_load_19 to double
  %tmp_48_2 = call fastcc double @obj_detector_fmax(double %tmp_46_2, double %tmp_47_2)
  %max2_2 = fptrunc double %tmp_48_2 to float
  %tmp_49_2 = fpext float %max1_2 to double
  %tmp_50_2 = fpext float %max2_2 to double
  %tmp_51_2 = call fastcc double @obj_detector_fmax(double %tmp_49_2, double %tmp_50_2)
  %tmp_52_2 = fptrunc double %tmp_51_2 to float
  %out_2_addr = getelementptr [72 x float]* %out_2, i64 0, i64 %tmp_36
  store float %tmp_52_2, float* %out_2_addr, align 4
  %p_addr31 = or i32 %p_addr15, 6
  %tmp_45 = zext i32 %p_addr31 to i64
  %inp_addr_12 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_45
  %inp_load_20 = load float* %inp_addr_12, align 4
  %tmp_41_3 = fpext float %inp_load_20 to double
  %p_addr33 = or i32 %p_addr15, 7
  %tmp_46 = zext i32 %p_addr33 to i64
  %inp_addr_13 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_46
  %inp_load_21 = load float* %inp_addr_13, align 4
  %tmp_44_3 = fpext float %inp_load_21 to double
  %tmp_45_3 = call fastcc double @obj_detector_fmax(double %tmp_41_3, double %tmp_44_3)
  %max1_3 = fptrunc double %tmp_45_3 to float
  %p_addr34 = or i32 %p_addr18, 6
  %tmp_47 = zext i32 %p_addr34 to i64
  %inp_addr_14 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_47
  %inp_load_22 = load float* %inp_addr_14, align 4
  %tmp_46_3 = fpext float %inp_load_22 to double
  %p_addr35 = or i32 %p_addr18, 7
  %tmp_48 = zext i32 %p_addr35 to i64
  %inp_addr_15 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_48
  %inp_load_23 = load float* %inp_addr_15, align 4
  %tmp_47_3 = fpext float %inp_load_23 to double
  %tmp_48_3 = call fastcc double @obj_detector_fmax(double %tmp_46_3, double %tmp_47_3)
  %max2_3 = fptrunc double %tmp_48_3 to float
  %tmp_49_3 = fpext float %max1_3 to double
  %tmp_50_3 = fpext float %max2_3 to double
  %tmp_51_3 = call fastcc double @obj_detector_fmax(double %tmp_49_3, double %tmp_50_3)
  %tmp_52_3 = fptrunc double %tmp_51_3 to float
  %out_3_addr = getelementptr [72 x float]* %out_3, i64 0, i64 %tmp_36
  store float %tmp_52_3, float* %out_3_addr, align 4
  %p_addr36 = or i32 %p_addr15, 8
  %tmp_49 = zext i32 %p_addr36 to i64
  %inp_addr_16 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_49
  %inp_load_4 = load float* %inp_addr_16, align 4
  %tmp_41_4 = fpext float %inp_load_4 to double
  %p_addr37 = or i32 %p_addr15, 9
  %tmp_50 = zext i32 %p_addr37 to i64
  %inp_addr_17 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_50
  %inp_load_24 = load float* %inp_addr_17, align 4
  %tmp_44_4 = fpext float %inp_load_24 to double
  %tmp_45_4 = call fastcc double @obj_detector_fmax(double %tmp_41_4, double %tmp_44_4)
  %max1_4 = fptrunc double %tmp_45_4 to float
  %p_addr39 = add i32 %p_addr18, 8
  %tmp_51 = zext i32 %p_addr39 to i64
  %inp_addr_18 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_51
  %inp_load_25 = load float* %inp_addr_18, align 4
  %tmp_46_4 = fpext float %inp_load_25 to double
  %p_addr40 = add i32 %p_addr18, 9
  %tmp_52 = zext i32 %p_addr40 to i64
  %inp_addr_19 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_52
  %inp_load_26 = load float* %inp_addr_19, align 4
  %tmp_47_4 = fpext float %inp_load_26 to double
  %tmp_48_4 = call fastcc double @obj_detector_fmax(double %tmp_46_4, double %tmp_47_4)
  %max2_4 = fptrunc double %tmp_48_4 to float
  %tmp_49_4 = fpext float %max1_4 to double
  %tmp_50_4 = fpext float %max2_4 to double
  %tmp_51_4 = call fastcc double @obj_detector_fmax(double %tmp_49_4, double %tmp_50_4)
  %tmp_52_4 = fptrunc double %tmp_51_4 to float
  %out_4_addr = getelementptr [72 x float]* %out_4, i64 0, i64 %tmp_36
  store float %tmp_52_4, float* %out_4_addr, align 4
  %p_addr41 = or i32 %p_addr15, 10
  %tmp_53 = zext i32 %p_addr41 to i64
  %inp_addr_20 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_53
  %inp_load_5 = load float* %inp_addr_20, align 4
  %tmp_41_5 = fpext float %inp_load_5 to double
  %p_addr42 = or i32 %p_addr15, 11
  %tmp_54 = zext i32 %p_addr42 to i64
  %inp_addr_21 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_54
  %inp_load_27 = load float* %inp_addr_21, align 4
  %tmp_44_5 = fpext float %inp_load_27 to double
  %tmp_45_5 = call fastcc double @obj_detector_fmax(double %tmp_41_5, double %tmp_44_5)
  %max1_5 = fptrunc double %tmp_45_5 to float
  %p_addr43 = add i32 %p_addr18, 10
  %tmp_55 = zext i32 %p_addr43 to i64
  %inp_addr_22 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_55
  %inp_load_28 = load float* %inp_addr_22, align 4
  %tmp_46_5 = fpext float %inp_load_28 to double
  %p_addr45 = add i32 %p_addr18, 11
  %tmp_56 = zext i32 %p_addr45 to i64
  %inp_addr_23 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_56
  %inp_load_29 = load float* %inp_addr_23, align 4
  %tmp_47_5 = fpext float %inp_load_29 to double
  %tmp_48_5 = call fastcc double @obj_detector_fmax(double %tmp_46_5, double %tmp_47_5)
  %max2_5 = fptrunc double %tmp_48_5 to float
  %tmp_49_5 = fpext float %max1_5 to double
  %tmp_50_5 = fpext float %max2_5 to double
  %tmp_51_5 = call fastcc double @obj_detector_fmax(double %tmp_49_5, double %tmp_50_5)
  %tmp_52_5 = fptrunc double %tmp_51_5 to float
  %out_5_addr = getelementptr [72 x float]* %out_5, i64 0, i64 %tmp_36
  store float %tmp_52_5, float* %out_5_addr, align 4
  %p_addr46 = or i32 %p_addr15, 12
  %tmp_57 = zext i32 %p_addr46 to i64
  %inp_addr_24 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_57
  %inp_load_6 = load float* %inp_addr_24, align 4
  %tmp_41_6 = fpext float %inp_load_6 to double
  %p_addr47 = or i32 %p_addr15, 13
  %tmp_58 = zext i32 %p_addr47 to i64
  %inp_addr_25 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_58
  %inp_load_30 = load float* %inp_addr_25, align 4
  %tmp_44_6 = fpext float %inp_load_30 to double
  %tmp_45_6 = call fastcc double @obj_detector_fmax(double %tmp_41_6, double %tmp_44_6)
  %max1_6 = fptrunc double %tmp_45_6 to float
  %p_addr48 = add i32 %p_addr18, 12
  %tmp_59 = zext i32 %p_addr48 to i64
  %inp_addr_26 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_59
  %inp_load_31 = load float* %inp_addr_26, align 4
  %tmp_46_6 = fpext float %inp_load_31 to double
  %p_addr49 = add i32 %p_addr18, 13
  %tmp_60 = zext i32 %p_addr49 to i64
  %inp_addr_27 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_60
  %inp_load_32 = load float* %inp_addr_27, align 4
  %tmp_47_6 = fpext float %inp_load_32 to double
  %tmp_48_6 = call fastcc double @obj_detector_fmax(double %tmp_46_6, double %tmp_47_6)
  %max2_6 = fptrunc double %tmp_48_6 to float
  %tmp_49_6 = fpext float %max1_6 to double
  %tmp_50_6 = fpext float %max2_6 to double
  %tmp_51_6 = call fastcc double @obj_detector_fmax(double %tmp_49_6, double %tmp_50_6)
  %tmp_52_6 = fptrunc double %tmp_51_6 to float
  %out_6_addr = getelementptr [72 x float]* %out_6, i64 0, i64 %tmp_36
  store float %tmp_52_6, float* %out_6_addr, align 4
  %p_addr51 = or i32 %p_addr15, 14
  %tmp_61 = zext i32 %p_addr51 to i64
  %inp_addr_28 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_61
  %inp_load_7 = load float* %inp_addr_28, align 4
  %tmp_41_7 = fpext float %inp_load_7 to double
  %p_addr52 = or i32 %p_addr15, 15
  %tmp_62 = zext i32 %p_addr52 to i64
  %inp_addr_29 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_62
  %inp_load_33 = load float* %inp_addr_29, align 4
  %tmp_44_7 = fpext float %inp_load_33 to double
  %tmp_45_7 = call fastcc double @obj_detector_fmax(double %tmp_41_7, double %tmp_44_7)
  %max1_7 = fptrunc double %tmp_45_7 to float
  %p_addr53 = add i32 %p_addr18, 14
  %tmp_63 = zext i32 %p_addr53 to i64
  %inp_addr_30 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_63
  %inp_load_34 = load float* %inp_addr_30, align 4
  %tmp_46_7 = fpext float %inp_load_34 to double
  %p_addr54 = add i32 %p_addr18, 15
  %tmp_64 = zext i32 %p_addr54 to i64
  %inp_addr_31 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_64
  %inp_load_35 = load float* %inp_addr_31, align 4
  %tmp_47_7 = fpext float %inp_load_35 to double
  %tmp_48_7 = call fastcc double @obj_detector_fmax(double %tmp_46_7, double %tmp_47_7)
  %max2_7 = fptrunc double %tmp_48_7 to float
  %tmp_49_7 = fpext float %max1_7 to double
  %tmp_50_7 = fpext float %max2_7 to double
  %tmp_51_7 = call fastcc double @obj_detector_fmax(double %tmp_49_7, double %tmp_50_7)
  %tmp_52_7 = fptrunc double %tmp_51_7 to float
  %out_7_addr = getelementptr [72 x float]* %out_7, i64 0, i64 %tmp_36
  store float %tmp_52_7, float* %out_7_addr, align 4
  %p_addr55 = add i32 %p_addr15, 16
  %tmp_65 = zext i32 %p_addr55 to i64
  %inp_addr_32 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_65
  %inp_load_8 = load float* %inp_addr_32, align 4
  %tmp_41_8 = fpext float %inp_load_8 to double
  %p_addr57 = add i32 %p_addr15, 17
  %tmp_66 = zext i32 %p_addr57 to i64
  %inp_addr_33 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_66
  %inp_load_36 = load float* %inp_addr_33, align 4
  %tmp_44_8 = fpext float %inp_load_36 to double
  %tmp_45_8 = call fastcc double @obj_detector_fmax(double %tmp_41_8, double %tmp_44_8)
  %max1_8 = fptrunc double %tmp_45_8 to float
  %p_addr58 = add i32 %p_addr18, 16
  %tmp_67 = zext i32 %p_addr58 to i64
  %inp_addr_34 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_67
  %inp_load_37 = load float* %inp_addr_34, align 4
  %tmp_46_8 = fpext float %inp_load_37 to double
  %p_addr59 = add i32 %p_addr18, 17
  %tmp_68 = zext i32 %p_addr59 to i64
  %inp_addr_35 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_68
  %inp_load_38 = load float* %inp_addr_35, align 4
  %tmp_47_8 = fpext float %inp_load_38 to double
  %tmp_48_8 = call fastcc double @obj_detector_fmax(double %tmp_46_8, double %tmp_47_8)
  %max2_8 = fptrunc double %tmp_48_8 to float
  %tmp_49_8 = fpext float %max1_8 to double
  %tmp_50_8 = fpext float %max2_8 to double
  %tmp_51_8 = call fastcc double @obj_detector_fmax(double %tmp_49_8, double %tmp_50_8)
  %tmp_52_8 = fptrunc double %tmp_51_8 to float
  %out_8_addr = getelementptr [72 x float]* %out_8, i64 0, i64 %tmp_36
  store float %tmp_52_8, float* %out_8_addr, align 4
  %p_addr60 = add i32 %p_addr15, 18
  %tmp_69 = zext i32 %p_addr60 to i64
  %inp_addr_36 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_69
  %inp_load_9 = load float* %inp_addr_36, align 4
  %tmp_41_9 = fpext float %inp_load_9 to double
  %p_addr61 = add i32 %p_addr15, 19
  %tmp_70 = zext i32 %p_addr61 to i64
  %inp_addr_37 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_70
  %inp_load_39 = load float* %inp_addr_37, align 4
  %tmp_44_9 = fpext float %inp_load_39 to double
  %tmp_45_9 = call fastcc double @obj_detector_fmax(double %tmp_41_9, double %tmp_44_9)
  %max1_9 = fptrunc double %tmp_45_9 to float
  %p_addr56 = add i32 %p_addr18, 18
  %tmp_71 = zext i32 %p_addr56 to i64
  %inp_addr_38 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_71
  %inp_load_40 = load float* %inp_addr_38, align 4
  %tmp_46_9 = fpext float %inp_load_40 to double
  %p_addr50 = add i32 %p_addr18, 19
  %tmp_72 = zext i32 %p_addr50 to i64
  %inp_addr_39 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_72
  %inp_load_41 = load float* %inp_addr_39, align 4
  %tmp_47_9 = fpext float %inp_load_41 to double
  %tmp_48_9 = call fastcc double @obj_detector_fmax(double %tmp_46_9, double %tmp_47_9)
  %max2_9 = fptrunc double %tmp_48_9 to float
  %tmp_49_9 = fpext float %max1_9 to double
  %tmp_50_9 = fpext float %max2_9 to double
  %tmp_51_9 = call fastcc double @obj_detector_fmax(double %tmp_49_9, double %tmp_50_9)
  %tmp_52_9 = fptrunc double %tmp_51_9 to float
  %out_9_addr = getelementptr [72 x float]* %out_9, i64 0, i64 %tmp_36
  store float %tmp_52_9, float* %out_9_addr, align 4
  %p_addr44 = add i32 %p_addr15, 20
  %tmp_73 = zext i32 %p_addr44 to i64
  %inp_addr_40 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_73
  %inp_load_10 = load float* %inp_addr_40, align 4
  %tmp_41_s = fpext float %inp_load_10 to double
  %p_addr38 = add i32 %p_addr15, 21
  %tmp_74 = zext i32 %p_addr38 to i64
  %inp_addr_41 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_74
  %inp_load_42 = load float* %inp_addr_41, align 4
  %tmp_44_s = fpext float %inp_load_42 to double
  %tmp_45_s = call fastcc double @obj_detector_fmax(double %tmp_41_s, double %tmp_44_s)
  %max1_s = fptrunc double %tmp_45_s to float
  %p_addr32 = add i32 %p_addr18, 20
  %tmp_75 = zext i32 %p_addr32 to i64
  %inp_addr_42 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_75
  %inp_load_43 = load float* %inp_addr_42, align 4
  %tmp_46_s = fpext float %inp_load_43 to double
  %p_addr26 = add i32 %p_addr18, 21
  %tmp_76 = zext i32 %p_addr26 to i64
  %inp_addr_43 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_76
  %inp_load_44 = load float* %inp_addr_43, align 4
  %tmp_47_s = fpext float %inp_load_44 to double
  %tmp_48_s = call fastcc double @obj_detector_fmax(double %tmp_46_s, double %tmp_47_s)
  %max2_s = fptrunc double %tmp_48_s to float
  %tmp_49_s = fpext float %max1_s to double
  %tmp_50_s = fpext float %max2_s to double
  %tmp_51_s = call fastcc double @obj_detector_fmax(double %tmp_49_s, double %tmp_50_s)
  %tmp_52_s = fptrunc double %tmp_51_s to float
  %out_10_addr = getelementptr [72 x float]* %out_10, i64 0, i64 %tmp_36
  store float %tmp_52_s, float* %out_10_addr, align 4
  %p_addr20 = add i32 %p_addr15, 22
  %tmp_77 = zext i32 %p_addr20 to i64
  %inp_addr_44 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_77
  %inp_load_11 = load float* %inp_addr_44, align 4
  %tmp_41_10 = fpext float %inp_load_11 to double
  %p_addr14 = add i32 %p_addr15, 23
  %tmp_78 = zext i32 %p_addr14 to i64
  %inp_addr_45 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_78
  %inp_load_45 = load float* %inp_addr_45, align 4
  %tmp_44_10 = fpext float %inp_load_45 to double
  %tmp_45_10 = call fastcc double @obj_detector_fmax(double %tmp_41_10, double %tmp_44_10)
  %max1_10 = fptrunc double %tmp_45_10 to float
  %p_addr9 = add i32 %p_addr18, 22
  %tmp_79 = zext i32 %p_addr9 to i64
  %inp_addr_46 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_79
  %inp_load_46 = load float* %inp_addr_46, align 4
  %tmp_46_10 = fpext float %inp_load_46 to double
  %p_addr3 = add i32 %p_addr18, 23
  %tmp_80 = zext i32 %p_addr3 to i64
  %inp_addr_47 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_80
  %inp_load_47 = load float* %inp_addr_47, align 4
  %tmp_47_10 = fpext float %inp_load_47 to double
  %tmp_48_10 = call fastcc double @obj_detector_fmax(double %tmp_46_10, double %tmp_47_10)
  %max2_10 = fptrunc double %tmp_48_10 to float
  %tmp_49_10 = fpext float %max1_10 to double
  %tmp_50_10 = fpext float %max2_10 to double
  %tmp_51_10 = call fastcc double @obj_detector_fmax(double %tmp_49_10, double %tmp_50_10)
  %tmp_52_10 = fptrunc double %tmp_51_10 to float
  %out_11_addr = getelementptr [72 x float]* %out_11, i64 0, i64 %tmp_36
  store float %tmp_52_10, float* %out_11_addr, align 4
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str16, i32 %tmp_s) nounwind
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc void @obj_detector_ReLU([3456 x float]* nocapture %inp, i3 %tmp_21, [3456 x float]* nocapture %out_r, i3 %tmp_211) {
  %tmp_211_read = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %tmp_211)
  %tmp_21_read = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %tmp_21)
  %tmp = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp_21_read, i5 0)
  %p_shl9_cast = zext i8 %tmp to i9
  %tmp_s = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_21_read, i3 0)
  %p_shl10_cast = zext i6 %tmp_s to i9
  %p_addr = sub i9 %p_shl9_cast, %p_shl10_cast
  %p_addr_cast = sext i9 %p_addr to i10
  %tmp_81 = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp_211_read, i5 0)
  %p_shl_cast = zext i8 %tmp_81 to i9
  %tmp_82 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_211_read, i3 0)
  %p_shl11_cast = zext i6 %tmp_82 to i9
  %p_addr12 = sub i9 %p_shl_cast, %p_shl11_cast
  %p_addr12_cast = sext i9 %p_addr12 to i10
  br label %1

; <label>:1                                       ; preds = %5, %0
  %i = phi i5 [ 0, %0 ], [ %i_5, %5 ]
  %exitcond1 = icmp eq i5 %i, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24)
  %i_5 = add i5 %i, 1
  br i1 %exitcond1, label %6, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str15) nounwind
  %tmp_30 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str15) nounwind
  %tmp_trn_cast = zext i5 %i to i10
  %p_addr1 = add i10 %p_addr_cast, %tmp_trn_cast
  %tmp_27 = call i15 @_ssdm_op_BitConcatenate.i15.i10.i5(i10 %p_addr1, i5 0)
  %p_shl = sext i15 %tmp_27 to i32
  %tmp_28 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %p_addr1, i3 0)
  %p_shl1 = sext i13 %tmp_28 to i32
  %p_addr2 = sub i32 %p_shl, %p_shl1
  %p_addr13 = add i10 %p_addr12_cast, %tmp_trn_cast
  %tmp_29 = call i15 @_ssdm_op_BitConcatenate.i15.i10.i5(i10 %p_addr13, i5 0)
  %p_shl2 = sext i15 %tmp_29 to i32
  %tmp_31 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %p_addr13, i3 0)
  %p_shl3 = sext i13 %tmp_31 to i32
  %p_addr15 = sub i32 %p_shl2, %p_shl3
  br label %3

; <label>:3                                       ; preds = %4, %2
  %j = phi i5 [ 0, %2 ], [ %j_1, %4 ]
  %exitcond = icmp eq i5 %j, -8
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24)
  %j_1 = add i5 %j, 1
  br i1 %exitcond, label %5, label %4

; <label>:4                                       ; preds = %3
  %tmp_trn = zext i5 %j to i32
  %p_addr3 = add i32 %tmp_trn, %p_addr2
  %tmp_83 = zext i32 %p_addr3 to i64
  %inp_addr = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_83
  %inp_load = load float* %inp_addr, align 4
  %inp_load_to_int = bitcast float %inp_load to i32
  %tmp_11 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_to_int, i32 23, i32 30)
  %tmp_32 = trunc i32 %inp_load_to_int to i23
  %notlhs = icmp ne i8 %tmp_11, -1
  %notrhs = icmp eq i23 %tmp_32, 0
  %tmp_13 = or i1 %notrhs, %notlhs
  %tmp_14 = fcmp ogt float %inp_load, 0.000000e+00
  %tmp_15 = and i1 %tmp_13, %tmp_14
  %p_addr16 = add i32 %tmp_trn, %p_addr15
  %tmp_84 = zext i32 %p_addr16 to i64
  %out_addr = getelementptr [3456 x float]* %out_r, i64 0, i64 %tmp_84
  %inp_load_s = select i1 %tmp_15, float %inp_load, float 0.000000e+00
  store float %inp_load_s, float* %out_addr, align 4
  br label %3

; <label>:5                                       ; preds = %3
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str15, i32 %tmp_30) nounwind
  br label %1

; <label>:6                                       ; preds = %1
  ret void
}

define internal fastcc void @obj_detector_convolve([784 x float]* %A, [150 x float]* %B, i3 %tmp_20, [3456 x float]* %conv, i3 %tmp_201) {
  %tmp_201_read = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %tmp_201)
  %tmp_20_read = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %tmp_20)
  %tmp_20_cast_trn_cast = zext i3 %tmp_20_read to i9
  %p_addr = mul i9 25, %tmp_20_cast_trn_cast
  %tmp_33 = trunc i9 %p_addr to i8
  %tmp_85 = zext i9 %p_addr to i64
  %B_addr = getelementptr [150 x float]* %B, i64 0, i64 %tmp_85
  %p_addr62 = add i8 1, %tmp_33
  %tmp_86 = zext i8 %p_addr62 to i64
  %B_addr_1 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_86
  %p_addr64 = add i8 2, %tmp_33
  %tmp_87 = zext i8 %p_addr64 to i64
  %B_addr_2 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_87
  %p_addr65 = add i8 3, %tmp_33
  %tmp_88 = zext i8 %p_addr65 to i64
  %B_addr_3 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_88
  %p_addr67 = add i8 4, %tmp_33
  %tmp_89 = zext i8 %p_addr67 to i64
  %B_addr_4 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_89
  %p_addr68 = add i8 5, %tmp_33
  %tmp_90 = zext i8 %p_addr68 to i64
  %B_addr_5 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_90
  %p_addr70 = add i8 6, %tmp_33
  %tmp_91 = zext i8 %p_addr70 to i64
  %B_addr_6 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_91
  %p_addr71 = add i8 7, %tmp_33
  %tmp_92 = zext i8 %p_addr71 to i64
  %B_addr_7 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_92
  %p_addr73 = add i8 8, %tmp_33
  %tmp_93 = zext i8 %p_addr73 to i64
  %B_addr_8 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_93
  %p_addr74 = add i8 9, %tmp_33
  %tmp_94 = zext i8 %p_addr74 to i64
  %B_addr_9 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_94
  %p_addr76 = add i8 10, %tmp_33
  %tmp_95 = zext i8 %p_addr76 to i64
  %B_addr_10 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_95
  %p_addr77 = add i8 11, %tmp_33
  %tmp_96 = zext i8 %p_addr77 to i64
  %B_addr_11 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_96
  %p_addr79 = add i8 12, %tmp_33
  %tmp_97 = zext i8 %p_addr79 to i64
  %B_addr_12 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_97
  %p_addr80 = add i8 13, %tmp_33
  %tmp_98 = zext i8 %p_addr80 to i64
  %B_addr_13 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_98
  %p_addr82 = add i8 14, %tmp_33
  %tmp_99 = zext i8 %p_addr82 to i64
  %B_addr_14 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_99
  %p_addr83 = add i8 15, %tmp_33
  %tmp_100 = zext i8 %p_addr83 to i64
  %B_addr_15 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_100
  %p_addr85 = add i8 16, %tmp_33
  %tmp_101 = zext i8 %p_addr85 to i64
  %B_addr_16 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_101
  %p_addr86 = add i8 17, %tmp_33
  %tmp_102 = zext i8 %p_addr86 to i64
  %B_addr_17 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_102
  %p_addr88 = add i8 18, %tmp_33
  %tmp_103 = zext i8 %p_addr88 to i64
  %B_addr_18 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_103
  %p_addr89 = add i8 19, %tmp_33
  %tmp_104 = zext i8 %p_addr89 to i64
  %B_addr_19 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_104
  %p_addr91 = add i8 20, %tmp_33
  %tmp_105 = zext i8 %p_addr91 to i64
  %B_addr_20 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_105
  %p_addr92 = add i8 21, %tmp_33
  %tmp_106 = zext i8 %p_addr92 to i64
  %B_addr_21 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_106
  %p_addr94 = add i8 22, %tmp_33
  %tmp_107 = zext i8 %p_addr94 to i64
  %B_addr_22 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_107
  %p_addr95 = add i8 23, %tmp_33
  %tmp_108 = zext i8 %p_addr95 to i64
  %B_addr_23 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_108
  %p_addr97 = add i8 24, %tmp_33
  %tmp_109 = zext i8 %p_addr97 to i64
  %B_addr_24 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_109
  %tmp_110 = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp_201_read, i5 0)
  %p_shl_cast = zext i8 %tmp_110 to i9
  %tmp_111 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_201_read, i3 0)
  %p_shl16_cast = zext i6 %tmp_111 to i9
  %p_addr98 = sub i9 %p_shl_cast, %p_shl16_cast
  %p_addr98_cast = sext i9 %p_addr98 to i10
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 2, %0 ], [ %i_7, %2 ]
  %exitcond3 = icmp eq i5 %i, -6
  br i1 %exitcond3, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24)
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str12) nounwind
  %tmp_31 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str12)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp = add i5 %i, -2
  %tmp_trn_cast = zext i5 %tmp to i10
  %p_addr100 = add i10 %p_addr98_cast, %tmp_trn_cast
  %tmp_34 = call i15 @_ssdm_op_BitConcatenate.i15.i10.i5(i10 %p_addr100, i5 0)
  %p_shl = sext i15 %tmp_34 to i32
  %tmp_35 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %p_addr100, i3 0)
  %p_shl4 = sext i13 %tmp_35 to i32
  %p_addr101 = sub i32 %p_shl, %p_shl4
  %tmp_112 = zext i32 %p_addr101 to i64
  %conv_addr = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_112
  %tmp_113 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %tmp, i5 0)
  %p_shl19_cast = zext i10 %tmp_113 to i11
  %tmp_114 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %tmp, i2 0)
  %p_shl20_cast = zext i7 %tmp_114 to i11
  %p_addr103 = sub i11 %p_shl19_cast, %p_shl20_cast
  %p_addr103_cast1 = sext i11 %p_addr103 to i12
  %p_addr103_cast = sext i11 %p_addr103 to i32
  %tmp_115 = zext i32 %p_addr103_cast to i64
  %A_addr = getelementptr [784 x float]* %A, i64 0, i64 %tmp_115
  %A_load = load float* %A_addr, align 4
  %B_load = load float* %B_addr, align 4
  %temp = fmul float %A_load, %B_load
  %tmp_32 = fadd float %temp, 0.000000e+00
  %p_addr104 = or i32 %p_addr103_cast, 1
  %tmp_116 = zext i32 %p_addr104 to i64
  %A_addr_1 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_116
  %A_load_1 = load float* %A_addr_1, align 4
  %B_load_1 = load float* %B_addr_1, align 4
  %temp_23 = fmul float %A_load_1, %B_load_1
  %tmp_32_0_0_1 = fadd float %tmp_32, %temp_23
  %p_addr106 = or i11 %p_addr103, 2
  %p_addr106_cast = sext i11 %p_addr106 to i32
  %tmp_117 = zext i32 %p_addr106_cast to i64
  %A_addr_2 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_117
  %A_load_2 = load float* %A_addr_2, align 4
  %B_load_2 = load float* %B_addr_2, align 4
  %temp_1_0_0_1 = fmul float %A_load_2, %B_load_2
  %tmp_32_0_0_2 = fadd float %tmp_32_0_0_1, %temp_1_0_0_1
  %p_addr107 = or i11 %p_addr103, 3
  %p_addr107_cast = sext i11 %p_addr107 to i32
  %tmp_118 = zext i32 %p_addr107_cast to i64
  %A_addr_3 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_118
  %A_load_3 = load float* %A_addr_3, align 4
  %B_load_3 = load float* %B_addr_3, align 4
  %temp_1_0_0_2 = fmul float %A_load_3, %B_load_3
  %tmp_32_0_0_3 = fadd float %tmp_32_0_0_2, %temp_1_0_0_2
  %p_addr109 = add i12 %p_addr103_cast1, 4
  %p_addr109_cast = sext i12 %p_addr109 to i32
  %tmp_119 = zext i32 %p_addr109_cast to i64
  %A_addr_4 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_119
  %A_load_4 = load float* %A_addr_4, align 4
  %B_load_4 = load float* %B_addr_4, align 4
  %temp_1_0_0_3 = fmul float %A_load_4, %B_load_4
  %tmp_s = fadd float %tmp_32_0_0_3, %temp_1_0_0_3
  %x_0_1 = add i5 %i, -1
  %tmp_120 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %x_0_1, i5 0)
  %p_shl21_cast = zext i10 %tmp_120 to i11
  %tmp_121 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %x_0_1, i2 0)
  %p_shl22_cast = zext i7 %tmp_121 to i11
  %p_addr110 = sub i11 %p_shl21_cast, %p_shl22_cast
  %p_addr110_cast1 = sext i11 %p_addr110 to i12
  %p_addr110_cast = sext i11 %p_addr110 to i32
  %tmp_122 = zext i32 %p_addr110_cast to i64
  %A_addr_5 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_122
  %A_load_5 = load float* %A_addr_5, align 4
  %B_load_5 = load float* %B_addr_5, align 4
  %temp_0_1 = fmul float %A_load_5, %B_load_5
  %tmp_32_0_1 = fadd float %tmp_s, %temp_0_1
  %p_addr112 = or i32 %p_addr110_cast, 1
  %tmp_123 = zext i32 %p_addr112 to i64
  %A_addr_6 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_123
  %A_load_6 = load float* %A_addr_6, align 4
  %B_load_6 = load float* %B_addr_6, align 4
  %temp_1_0_1 = fmul float %A_load_6, %B_load_6
  %tmp_32_0_1_1 = fadd float %tmp_32_0_1, %temp_1_0_1
  %p_addr113 = or i11 %p_addr110, 2
  %p_addr113_cast = sext i11 %p_addr113 to i32
  %tmp_124 = zext i32 %p_addr113_cast to i64
  %A_addr_7 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_124
  %A_load_7 = load float* %A_addr_7, align 4
  %B_load_7 = load float* %B_addr_7, align 4
  %temp_1_0_1_1 = fmul float %A_load_7, %B_load_7
  %tmp_32_0_1_2 = fadd float %tmp_32_0_1_1, %temp_1_0_1_1
  %p_addr115 = or i11 %p_addr110, 3
  %p_addr115_cast = sext i11 %p_addr115 to i32
  %tmp_125 = zext i32 %p_addr115_cast to i64
  %A_addr_8 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_125
  %A_load_8 = load float* %A_addr_8, align 4
  %B_load_8 = load float* %B_addr_8, align 4
  %temp_1_0_1_2 = fmul float %A_load_8, %B_load_8
  %tmp_32_0_1_3 = fadd float %tmp_32_0_1_2, %temp_1_0_1_2
  %p_addr116 = add i12 %p_addr110_cast1, 4
  %p_addr116_cast = sext i12 %p_addr116 to i32
  %tmp_126 = zext i32 %p_addr116_cast to i64
  %A_addr_9 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_126
  %A_load_9 = load float* %A_addr_9, align 4
  %B_load_9 = load float* %B_addr_9, align 4
  %temp_1_0_1_3 = fmul float %A_load_9, %B_load_9
  %tmp_31_0_1 = fadd float %tmp_32_0_1_3, %temp_1_0_1_3
  %tmp_127 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %i, i5 0)
  %p_shl23_cast = zext i10 %tmp_127 to i11
  %tmp_128 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %i, i2 0)
  %p_shl24_cast = zext i7 %tmp_128 to i11
  %p_addr118 = sub i11 %p_shl23_cast, %p_shl24_cast
  %p_addr118_cast1 = sext i11 %p_addr118 to i12
  %p_addr118_cast = sext i11 %p_addr118 to i32
  %tmp_129 = zext i32 %p_addr118_cast to i64
  %A_addr_10 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_129
  %A_load_10 = load float* %A_addr_10, align 4
  %B_load_10 = load float* %B_addr_10, align 4
  %temp_0_2 = fmul float %A_load_10, %B_load_10
  %tmp_32_0_2 = fadd float %tmp_31_0_1, %temp_0_2
  %p_addr119 = or i32 %p_addr118_cast, 1
  %tmp_130 = zext i32 %p_addr119 to i64
  %A_addr_11 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_130
  %A_load_11 = load float* %A_addr_11, align 4
  %B_load_11 = load float* %B_addr_11, align 4
  %temp_1_0_2 = fmul float %A_load_11, %B_load_11
  %tmp_32_0_2_1 = fadd float %tmp_32_0_2, %temp_1_0_2
  %p_addr121 = or i11 %p_addr118, 2
  %p_addr121_cast = sext i11 %p_addr121 to i32
  %tmp_131 = zext i32 %p_addr121_cast to i64
  %A_addr_12 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_131
  %A_load_12 = load float* %A_addr_12, align 4
  %B_load_12 = load float* %B_addr_12, align 4
  %temp_1_0_2_1 = fmul float %A_load_12, %B_load_12
  %tmp_32_0_2_2 = fadd float %tmp_32_0_2_1, %temp_1_0_2_1
  %p_addr122 = or i11 %p_addr118, 3
  %p_addr122_cast = sext i11 %p_addr122 to i32
  %tmp_132 = zext i32 %p_addr122_cast to i64
  %A_addr_13 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_132
  %A_load_13 = load float* %A_addr_13, align 4
  %B_load_13 = load float* %B_addr_13, align 4
  %temp_1_0_2_2 = fmul float %A_load_13, %B_load_13
  %tmp_32_0_2_3 = fadd float %tmp_32_0_2_2, %temp_1_0_2_2
  %p_addr124 = add i12 %p_addr118_cast1, 4
  %p_addr124_cast = sext i12 %p_addr124 to i32
  %tmp_133 = zext i32 %p_addr124_cast to i64
  %A_addr_14 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_133
  %A_load_14 = load float* %A_addr_14, align 4
  %B_load_14 = load float* %B_addr_14, align 4
  %temp_1_0_2_3 = fmul float %A_load_14, %B_load_14
  %tmp_31_0_2 = fadd float %tmp_32_0_2_3, %temp_1_0_2_3
  %i_7 = add i5 %i, 1
  %tmp_134 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %i_7, i5 0)
  %p_shl25_cast = zext i10 %tmp_134 to i11
  %tmp_135 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %i_7, i2 0)
  %p_shl26_cast = zext i7 %tmp_135 to i11
  %p_addr125 = sub i11 %p_shl25_cast, %p_shl26_cast
  %p_addr125_cast1 = sext i11 %p_addr125 to i12
  %p_addr125_cast = sext i11 %p_addr125 to i32
  %tmp_136 = zext i32 %p_addr125_cast to i64
  %A_addr_15 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_136
  %A_load_15 = load float* %A_addr_15, align 4
  %B_load_15 = load float* %B_addr_15, align 4
  %temp_0_3 = fmul float %A_load_15, %B_load_15
  %tmp_32_0_3 = fadd float %tmp_31_0_2, %temp_0_3
  %p_addr127 = or i32 %p_addr125_cast, 1
  %tmp_137 = zext i32 %p_addr127 to i64
  %A_addr_16 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_137
  %A_load_16 = load float* %A_addr_16, align 4
  %B_load_16 = load float* %B_addr_16, align 4
  %temp_1_0_3 = fmul float %A_load_16, %B_load_16
  %tmp_32_0_3_1 = fadd float %tmp_32_0_3, %temp_1_0_3
  %p_addr128 = or i11 %p_addr125, 2
  %p_addr128_cast = sext i11 %p_addr128 to i32
  %tmp_138 = zext i32 %p_addr128_cast to i64
  %A_addr_17 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_138
  %A_load_17 = load float* %A_addr_17, align 4
  %B_load_17 = load float* %B_addr_17, align 4
  %temp_1_0_3_1 = fmul float %A_load_17, %B_load_17
  %tmp_32_0_3_2 = fadd float %tmp_32_0_3_1, %temp_1_0_3_1
  %p_addr130 = or i11 %p_addr125, 3
  %p_addr130_cast = sext i11 %p_addr130 to i32
  %tmp_139 = zext i32 %p_addr130_cast to i64
  %A_addr_18 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_139
  %A_load_18 = load float* %A_addr_18, align 4
  %B_load_18 = load float* %B_addr_18, align 4
  %temp_1_0_3_2 = fmul float %A_load_18, %B_load_18
  %tmp_32_0_3_3 = fadd float %tmp_32_0_3_2, %temp_1_0_3_2
  %p_addr131 = add i12 %p_addr125_cast1, 4
  %p_addr131_cast = sext i12 %p_addr131 to i32
  %tmp_140 = zext i32 %p_addr131_cast to i64
  %A_addr_19 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_140
  %A_load_19 = load float* %A_addr_19, align 4
  %B_load_19 = load float* %B_addr_19, align 4
  %temp_1_0_3_3 = fmul float %A_load_19, %B_load_19
  %tmp_31_0_3 = fadd float %tmp_32_0_3_3, %temp_1_0_3_3
  %x_0_4 = add i5 %i, 2
  %tmp_141 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %x_0_4, i5 0)
  %p_shl27_cast = zext i10 %tmp_141 to i11
  %tmp_142 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %x_0_4, i2 0)
  %p_shl28_cast = zext i7 %tmp_142 to i11
  %p_addr133 = sub i11 %p_shl27_cast, %p_shl28_cast
  %p_addr133_cast1 = sext i11 %p_addr133 to i12
  %p_addr133_cast = sext i11 %p_addr133 to i32
  %tmp_143 = zext i32 %p_addr133_cast to i64
  %A_addr_20 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_143
  %A_load_20 = load float* %A_addr_20, align 4
  %B_load_20 = load float* %B_addr_20, align 4
  %temp_0_4 = fmul float %A_load_20, %B_load_20
  %tmp_32_0_4 = fadd float %tmp_31_0_3, %temp_0_4
  %p_addr134 = or i32 %p_addr133_cast, 1
  %tmp_144 = zext i32 %p_addr134 to i64
  %A_addr_21 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_144
  %A_load_21 = load float* %A_addr_21, align 4
  %B_load_21 = load float* %B_addr_21, align 4
  %temp_1_0_4 = fmul float %A_load_21, %B_load_21
  %tmp_32_0_4_1 = fadd float %tmp_32_0_4, %temp_1_0_4
  %p_addr136 = or i11 %p_addr133, 2
  %p_addr136_cast = sext i11 %p_addr136 to i32
  %tmp_145 = zext i32 %p_addr136_cast to i64
  %A_addr_22 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_145
  %A_load_22 = load float* %A_addr_22, align 4
  %B_load_22 = load float* %B_addr_22, align 4
  %temp_1_0_4_1 = fmul float %A_load_22, %B_load_22
  %tmp_32_0_4_2 = fadd float %tmp_32_0_4_1, %temp_1_0_4_1
  %p_addr137 = or i11 %p_addr133, 3
  %p_addr137_cast = sext i11 %p_addr137 to i32
  %tmp_146 = zext i32 %p_addr137_cast to i64
  %A_addr_23 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_146
  %A_load_23 = load float* %A_addr_23, align 4
  %B_load_23 = load float* %B_addr_23, align 4
  %temp_1_0_4_2 = fmul float %A_load_23, %B_load_23
  %tmp_32_0_4_3 = fadd float %tmp_32_0_4_2, %temp_1_0_4_2
  %p_addr139 = add i12 %p_addr133_cast1, 4
  %p_addr139_cast = sext i12 %p_addr139 to i32
  %tmp_147 = zext i32 %p_addr139_cast to i64
  %A_addr_24 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_147
  %A_load_24 = load float* %A_addr_24, align 4
  %B_load_24 = load float* %B_addr_24, align 4
  %temp_1_0_4_3 = fmul float %A_load_24, %B_load_24
  %tmp_31_0_4 = fadd float %tmp_32_0_4_3, %temp_1_0_4_3
  store float %tmp_31_0_4, float* %conv_addr, align 4
  %p_addr140 = or i32 %p_addr101, 1
  %tmp_148 = zext i32 %p_addr140 to i64
  %conv_addr_1 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_148
  %temp_s = fmul float %A_load_1, %B_load
  %tmp_32_1 = fadd float %temp_s, 0.000000e+00
  %temp_1_1 = fmul float %A_load_2, %B_load_1
  %tmp_32_1_0_1 = fadd float %tmp_32_1, %temp_1_1
  %temp_1_1_0_1 = fmul float %A_load_3, %B_load_2
  %tmp_32_1_0_2 = fadd float %tmp_32_1_0_1, %temp_1_1_0_1
  %temp_1_1_0_2 = fmul float %A_load_4, %B_load_3
  %tmp_32_1_0_3 = fadd float %tmp_32_1_0_2, %temp_1_1_0_2
  %p_addr142 = add i12 %p_addr103_cast1, 5
  %p_addr142_cast = sext i12 %p_addr142 to i32
  %tmp_149 = zext i32 %p_addr142_cast to i64
  %A_addr_25 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_149
  %A_load_25 = load float* %A_addr_25, align 4
  %temp_1_1_0_3 = fmul float %A_load_25, %B_load_4
  %tmp_31_1 = fadd float %tmp_32_1_0_3, %temp_1_1_0_3
  %temp_114_1 = fmul float %A_load_6, %B_load_5
  %tmp_32_1_1 = fadd float %tmp_31_1, %temp_114_1
  %temp_1_1_1 = fmul float %A_load_7, %B_load_6
  %tmp_32_1_1_1 = fadd float %tmp_32_1_1, %temp_1_1_1
  %temp_1_1_1_1 = fmul float %A_load_8, %B_load_7
  %tmp_32_1_1_2 = fadd float %tmp_32_1_1_1, %temp_1_1_1_1
  %temp_1_1_1_2 = fmul float %A_load_9, %B_load_8
  %tmp_32_1_1_3 = fadd float %tmp_32_1_1_2, %temp_1_1_1_2
  %p_addr143 = add i12 %p_addr110_cast1, 5
  %p_addr143_cast = sext i12 %p_addr143 to i32
  %tmp_150 = zext i32 %p_addr143_cast to i64
  %A_addr_26 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_150
  %A_load_26 = load float* %A_addr_26, align 4
  %temp_1_1_1_3 = fmul float %A_load_26, %B_load_9
  %tmp_31_1_1 = fadd float %tmp_32_1_1_3, %temp_1_1_1_3
  %temp_114_2 = fmul float %A_load_11, %B_load_10
  %tmp_32_1_2 = fadd float %tmp_31_1_1, %temp_114_2
  %temp_1_1_2 = fmul float %A_load_12, %B_load_11
  %tmp_32_1_2_1 = fadd float %tmp_32_1_2, %temp_1_1_2
  %temp_1_1_2_1 = fmul float %A_load_13, %B_load_12
  %tmp_32_1_2_2 = fadd float %tmp_32_1_2_1, %temp_1_1_2_1
  %temp_1_1_2_2 = fmul float %A_load_14, %B_load_13
  %tmp_32_1_2_3 = fadd float %tmp_32_1_2_2, %temp_1_1_2_2
  %p_addr145 = add i12 %p_addr118_cast1, 5
  %p_addr145_cast = sext i12 %p_addr145 to i32
  %tmp_151 = zext i32 %p_addr145_cast to i64
  %A_addr_27 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_151
  %A_load_27 = load float* %A_addr_27, align 4
  %temp_1_1_2_3 = fmul float %A_load_27, %B_load_14
  %tmp_31_1_2 = fadd float %tmp_32_1_2_3, %temp_1_1_2_3
  %temp_114_3 = fmul float %A_load_16, %B_load_15
  %tmp_32_1_3 = fadd float %tmp_31_1_2, %temp_114_3
  %temp_1_1_3 = fmul float %A_load_17, %B_load_16
  %tmp_32_1_3_1 = fadd float %tmp_32_1_3, %temp_1_1_3
  %temp_1_1_3_1 = fmul float %A_load_18, %B_load_17
  %tmp_32_1_3_2 = fadd float %tmp_32_1_3_1, %temp_1_1_3_1
  %temp_1_1_3_2 = fmul float %A_load_19, %B_load_18
  %tmp_32_1_3_3 = fadd float %tmp_32_1_3_2, %temp_1_1_3_2
  %p_addr146 = add i12 %p_addr125_cast1, 5
  %p_addr146_cast = sext i12 %p_addr146 to i32
  %tmp_152 = zext i32 %p_addr146_cast to i64
  %A_addr_28 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_152
  %A_load_28 = load float* %A_addr_28, align 4
  %temp_1_1_3_3 = fmul float %A_load_28, %B_load_19
  %tmp_31_1_3 = fadd float %tmp_32_1_3_3, %temp_1_1_3_3
  %temp_114_4 = fmul float %A_load_21, %B_load_20
  %tmp_32_1_4 = fadd float %tmp_31_1_3, %temp_114_4
  %temp_1_1_4 = fmul float %A_load_22, %B_load_21
  %tmp_32_1_4_1 = fadd float %tmp_32_1_4, %temp_1_1_4
  %temp_1_1_4_1 = fmul float %A_load_23, %B_load_22
  %tmp_32_1_4_2 = fadd float %tmp_32_1_4_1, %temp_1_1_4_1
  %temp_1_1_4_2 = fmul float %A_load_24, %B_load_23
  %tmp_32_1_4_3 = fadd float %tmp_32_1_4_2, %temp_1_1_4_2
  %p_addr148 = add i12 %p_addr133_cast1, 5
  %p_addr148_cast = sext i12 %p_addr148 to i32
  %tmp_153 = zext i32 %p_addr148_cast to i64
  %A_addr_29 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_153
  %A_load_29 = load float* %A_addr_29, align 4
  %temp_1_1_4_3 = fmul float %A_load_29, %B_load_24
  %tmp_31_1_4 = fadd float %tmp_32_1_4_3, %temp_1_1_4_3
  store float %tmp_31_1_4, float* %conv_addr_1, align 4
  %p_addr149 = or i32 %p_addr101, 2
  %tmp_154 = zext i32 %p_addr149 to i64
  %conv_addr_2 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_154
  %temp_2 = fmul float %A_load_2, %B_load
  %tmp_32_2 = fadd float %temp_2, 0.000000e+00
  %temp_1_2 = fmul float %A_load_3, %B_load_1
  %tmp_32_2_0_1 = fadd float %tmp_32_2, %temp_1_2
  %temp_1_2_0_1 = fmul float %A_load_4, %B_load_2
  %tmp_32_2_0_2 = fadd float %tmp_32_2_0_1, %temp_1_2_0_1
  %temp_1_2_0_2 = fmul float %A_load_25, %B_load_3
  %tmp_32_2_0_3 = fadd float %tmp_32_2_0_2, %temp_1_2_0_2
  %p_addr151 = add i12 %p_addr103_cast1, 6
  %p_addr151_cast = sext i12 %p_addr151 to i32
  %tmp_155 = zext i32 %p_addr151_cast to i64
  %A_addr_30 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_155
  %A_load_30 = load float* %A_addr_30, align 4
  %temp_1_2_0_3 = fmul float %A_load_30, %B_load_4
  %tmp_31_2 = fadd float %tmp_32_2_0_3, %temp_1_2_0_3
  %temp_2_1 = fmul float %A_load_7, %B_load_5
  %tmp_32_2_1 = fadd float %tmp_31_2, %temp_2_1
  %temp_1_2_1 = fmul float %A_load_8, %B_load_6
  %tmp_32_2_1_1 = fadd float %tmp_32_2_1, %temp_1_2_1
  %temp_1_2_1_1 = fmul float %A_load_9, %B_load_7
  %tmp_32_2_1_2 = fadd float %tmp_32_2_1_1, %temp_1_2_1_1
  %temp_1_2_1_2 = fmul float %A_load_26, %B_load_8
  %tmp_32_2_1_3 = fadd float %tmp_32_2_1_2, %temp_1_2_1_2
  %p_addr152 = add i12 %p_addr110_cast1, 6
  %p_addr152_cast = sext i12 %p_addr152 to i32
  %tmp_156 = zext i32 %p_addr152_cast to i64
  %A_addr_31 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_156
  %A_load_31 = load float* %A_addr_31, align 4
  %temp_1_2_1_3 = fmul float %A_load_31, %B_load_9
  %tmp_31_2_1 = fadd float %tmp_32_2_1_3, %temp_1_2_1_3
  %temp_2_2 = fmul float %A_load_12, %B_load_10
  %tmp_32_2_2 = fadd float %tmp_31_2_1, %temp_2_2
  %temp_1_2_2 = fmul float %A_load_13, %B_load_11
  %tmp_32_2_2_1 = fadd float %tmp_32_2_2, %temp_1_2_2
  %temp_1_2_2_1 = fmul float %A_load_14, %B_load_12
  %tmp_32_2_2_2 = fadd float %tmp_32_2_2_1, %temp_1_2_2_1
  %temp_1_2_2_2 = fmul float %A_load_27, %B_load_13
  %tmp_32_2_2_3 = fadd float %tmp_32_2_2_2, %temp_1_2_2_2
  %p_addr154 = add i12 %p_addr118_cast1, 6
  %p_addr154_cast = sext i12 %p_addr154 to i32
  %tmp_157 = zext i32 %p_addr154_cast to i64
  %A_addr_32 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_157
  %A_load_32 = load float* %A_addr_32, align 4
  %temp_1_2_2_3 = fmul float %A_load_32, %B_load_14
  %tmp_31_2_2 = fadd float %tmp_32_2_2_3, %temp_1_2_2_3
  %temp_2_3 = fmul float %A_load_17, %B_load_15
  %tmp_32_2_3 = fadd float %tmp_31_2_2, %temp_2_3
  %temp_1_2_3 = fmul float %A_load_18, %B_load_16
  %tmp_32_2_3_1 = fadd float %tmp_32_2_3, %temp_1_2_3
  %temp_1_2_3_1 = fmul float %A_load_19, %B_load_17
  %tmp_32_2_3_2 = fadd float %tmp_32_2_3_1, %temp_1_2_3_1
  %temp_1_2_3_2 = fmul float %A_load_28, %B_load_18
  %tmp_32_2_3_3 = fadd float %tmp_32_2_3_2, %temp_1_2_3_2
  %p_addr155 = add i12 %p_addr125_cast1, 6
  %p_addr155_cast = sext i12 %p_addr155 to i32
  %tmp_158 = zext i32 %p_addr155_cast to i64
  %A_addr_33 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_158
  %A_load_33 = load float* %A_addr_33, align 4
  %temp_1_2_3_3 = fmul float %A_load_33, %B_load_19
  %tmp_31_2_3 = fadd float %tmp_32_2_3_3, %temp_1_2_3_3
  %temp_2_4 = fmul float %A_load_22, %B_load_20
  %tmp_32_2_4 = fadd float %tmp_31_2_3, %temp_2_4
  %temp_1_2_4 = fmul float %A_load_23, %B_load_21
  %tmp_32_2_4_1 = fadd float %tmp_32_2_4, %temp_1_2_4
  %temp_1_2_4_1 = fmul float %A_load_24, %B_load_22
  %tmp_32_2_4_2 = fadd float %tmp_32_2_4_1, %temp_1_2_4_1
  %temp_1_2_4_2 = fmul float %A_load_29, %B_load_23
  %tmp_32_2_4_3 = fadd float %tmp_32_2_4_2, %temp_1_2_4_2
  %p_addr157 = add i12 %p_addr133_cast1, 6
  %p_addr157_cast = sext i12 %p_addr157 to i32
  %tmp_159 = zext i32 %p_addr157_cast to i64
  %A_addr_34 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_159
  %A_load_34 = load float* %A_addr_34, align 4
  %temp_1_2_4_3 = fmul float %A_load_34, %B_load_24
  %tmp_31_2_4 = fadd float %tmp_32_2_4_3, %temp_1_2_4_3
  store float %tmp_31_2_4, float* %conv_addr_2, align 4
  %p_addr158 = or i32 %p_addr101, 3
  %tmp_160 = zext i32 %p_addr158 to i64
  %conv_addr_3 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_160
  %temp_3 = fmul float %A_load_3, %B_load
  %tmp_32_3 = fadd float %temp_3, 0.000000e+00
  %temp_1_3 = fmul float %A_load_4, %B_load_1
  %tmp_32_3_0_1 = fadd float %tmp_32_3, %temp_1_3
  %temp_1_3_0_1 = fmul float %A_load_25, %B_load_2
  %tmp_32_3_0_2 = fadd float %tmp_32_3_0_1, %temp_1_3_0_1
  %temp_1_3_0_2 = fmul float %A_load_30, %B_load_3
  %tmp_32_3_0_3 = fadd float %tmp_32_3_0_2, %temp_1_3_0_2
  %p_addr160 = add i12 %p_addr103_cast1, 7
  %p_addr160_cast = sext i12 %p_addr160 to i32
  %tmp_161 = zext i32 %p_addr160_cast to i64
  %A_addr_35 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_161
  %A_load_35 = load float* %A_addr_35, align 4
  %temp_1_3_0_3 = fmul float %A_load_35, %B_load_4
  %tmp_31_3 = fadd float %tmp_32_3_0_3, %temp_1_3_0_3
  %temp_3_1 = fmul float %A_load_8, %B_load_5
  %tmp_32_3_1 = fadd float %tmp_31_3, %temp_3_1
  %temp_1_3_1 = fmul float %A_load_9, %B_load_6
  %tmp_32_3_1_1 = fadd float %tmp_32_3_1, %temp_1_3_1
  %temp_1_3_1_1 = fmul float %A_load_26, %B_load_7
  %tmp_32_3_1_2 = fadd float %tmp_32_3_1_1, %temp_1_3_1_1
  %temp_1_3_1_2 = fmul float %A_load_31, %B_load_8
  %tmp_32_3_1_3 = fadd float %tmp_32_3_1_2, %temp_1_3_1_2
  %p_addr161 = add i12 %p_addr110_cast1, 7
  %p_addr161_cast = sext i12 %p_addr161 to i32
  %tmp_162 = zext i32 %p_addr161_cast to i64
  %A_addr_36 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_162
  %A_load_36 = load float* %A_addr_36, align 4
  %temp_1_3_1_3 = fmul float %A_load_36, %B_load_9
  %tmp_31_3_1 = fadd float %tmp_32_3_1_3, %temp_1_3_1_3
  %temp_3_2 = fmul float %A_load_13, %B_load_10
  %tmp_32_3_2 = fadd float %tmp_31_3_1, %temp_3_2
  %temp_1_3_2 = fmul float %A_load_14, %B_load_11
  %tmp_32_3_2_1 = fadd float %tmp_32_3_2, %temp_1_3_2
  %temp_1_3_2_1 = fmul float %A_load_27, %B_load_12
  %tmp_32_3_2_2 = fadd float %tmp_32_3_2_1, %temp_1_3_2_1
  %temp_1_3_2_2 = fmul float %A_load_32, %B_load_13
  %tmp_32_3_2_3 = fadd float %tmp_32_3_2_2, %temp_1_3_2_2
  %p_addr163 = add i12 %p_addr118_cast1, 7
  %p_addr163_cast = sext i12 %p_addr163 to i32
  %tmp_163 = zext i32 %p_addr163_cast to i64
  %A_addr_37 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_163
  %A_load_37 = load float* %A_addr_37, align 4
  %temp_1_3_2_3 = fmul float %A_load_37, %B_load_14
  %tmp_31_3_2 = fadd float %tmp_32_3_2_3, %temp_1_3_2_3
  %temp_3_3 = fmul float %A_load_18, %B_load_15
  %tmp_32_3_3 = fadd float %tmp_31_3_2, %temp_3_3
  %temp_1_3_3 = fmul float %A_load_19, %B_load_16
  %tmp_32_3_3_1 = fadd float %tmp_32_3_3, %temp_1_3_3
  %temp_1_3_3_1 = fmul float %A_load_28, %B_load_17
  %tmp_32_3_3_2 = fadd float %tmp_32_3_3_1, %temp_1_3_3_1
  %temp_1_3_3_2 = fmul float %A_load_33, %B_load_18
  %tmp_32_3_3_3 = fadd float %tmp_32_3_3_2, %temp_1_3_3_2
  %p_addr164 = add i12 %p_addr125_cast1, 7
  %p_addr164_cast = sext i12 %p_addr164 to i32
  %tmp_164 = zext i32 %p_addr164_cast to i64
  %A_addr_38 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_164
  %A_load_38 = load float* %A_addr_38, align 4
  %temp_1_3_3_3 = fmul float %A_load_38, %B_load_19
  %tmp_31_3_3 = fadd float %tmp_32_3_3_3, %temp_1_3_3_3
  %temp_3_4 = fmul float %A_load_23, %B_load_20
  %tmp_32_3_4 = fadd float %tmp_31_3_3, %temp_3_4
  %temp_1_3_4 = fmul float %A_load_24, %B_load_21
  %tmp_32_3_4_1 = fadd float %tmp_32_3_4, %temp_1_3_4
  %temp_1_3_4_1 = fmul float %A_load_29, %B_load_22
  %tmp_32_3_4_2 = fadd float %tmp_32_3_4_1, %temp_1_3_4_1
  %temp_1_3_4_2 = fmul float %A_load_34, %B_load_23
  %tmp_32_3_4_3 = fadd float %tmp_32_3_4_2, %temp_1_3_4_2
  %p_addr166 = add i12 %p_addr133_cast1, 7
  %p_addr166_cast = sext i12 %p_addr166 to i32
  %tmp_165 = zext i32 %p_addr166_cast to i64
  %A_addr_39 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_165
  %A_load_39 = load float* %A_addr_39, align 4
  %temp_1_3_4_3 = fmul float %A_load_39, %B_load_24
  %tmp_31_3_4 = fadd float %tmp_32_3_4_3, %temp_1_3_4_3
  store float %tmp_31_3_4, float* %conv_addr_3, align 4
  %p_addr167 = or i32 %p_addr101, 4
  %tmp_166 = zext i32 %p_addr167 to i64
  %conv_addr_4 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_166
  %temp_4 = fmul float %A_load_4, %B_load
  %tmp_32_4 = fadd float %temp_4, 0.000000e+00
  %temp_1_4 = fmul float %A_load_25, %B_load_1
  %tmp_32_4_0_1 = fadd float %tmp_32_4, %temp_1_4
  %temp_1_4_0_1 = fmul float %A_load_30, %B_load_2
  %tmp_32_4_0_2 = fadd float %tmp_32_4_0_1, %temp_1_4_0_1
  %temp_1_4_0_2 = fmul float %A_load_35, %B_load_3
  %tmp_32_4_0_3 = fadd float %tmp_32_4_0_2, %temp_1_4_0_2
  %p_addr169 = add i12 %p_addr103_cast1, 8
  %p_addr169_cast = sext i12 %p_addr169 to i32
  %tmp_167 = zext i32 %p_addr169_cast to i64
  %A_addr_40 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_167
  %A_load_40 = load float* %A_addr_40, align 4
  %temp_1_4_0_3 = fmul float %A_load_40, %B_load_4
  %tmp_31_4 = fadd float %tmp_32_4_0_3, %temp_1_4_0_3
  %temp_4_1 = fmul float %A_load_9, %B_load_5
  %tmp_32_4_1 = fadd float %tmp_31_4, %temp_4_1
  %temp_1_4_1 = fmul float %A_load_26, %B_load_6
  %tmp_32_4_1_1 = fadd float %tmp_32_4_1, %temp_1_4_1
  %temp_1_4_1_1 = fmul float %A_load_31, %B_load_7
  %tmp_32_4_1_2 = fadd float %tmp_32_4_1_1, %temp_1_4_1_1
  %temp_1_4_1_2 = fmul float %A_load_36, %B_load_8
  %tmp_32_4_1_3 = fadd float %tmp_32_4_1_2, %temp_1_4_1_2
  %p_addr170 = add i12 %p_addr110_cast1, 8
  %p_addr170_cast = sext i12 %p_addr170 to i32
  %tmp_168 = zext i32 %p_addr170_cast to i64
  %A_addr_41 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_168
  %A_load_41 = load float* %A_addr_41, align 4
  %temp_1_4_1_3 = fmul float %A_load_41, %B_load_9
  %tmp_31_4_1 = fadd float %tmp_32_4_1_3, %temp_1_4_1_3
  %temp_4_2 = fmul float %A_load_14, %B_load_10
  %tmp_32_4_2 = fadd float %tmp_31_4_1, %temp_4_2
  %temp_1_4_2 = fmul float %A_load_27, %B_load_11
  %tmp_32_4_2_1 = fadd float %tmp_32_4_2, %temp_1_4_2
  %temp_1_4_2_1 = fmul float %A_load_32, %B_load_12
  %tmp_32_4_2_2 = fadd float %tmp_32_4_2_1, %temp_1_4_2_1
  %temp_1_4_2_2 = fmul float %A_load_37, %B_load_13
  %tmp_32_4_2_3 = fadd float %tmp_32_4_2_2, %temp_1_4_2_2
  %p_addr172 = add i12 %p_addr118_cast1, 8
  %p_addr172_cast = sext i12 %p_addr172 to i32
  %tmp_169 = zext i32 %p_addr172_cast to i64
  %A_addr_42 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_169
  %A_load_42 = load float* %A_addr_42, align 4
  %temp_1_4_2_3 = fmul float %A_load_42, %B_load_14
  %tmp_31_4_2 = fadd float %tmp_32_4_2_3, %temp_1_4_2_3
  %temp_4_3 = fmul float %A_load_19, %B_load_15
  %tmp_32_4_3 = fadd float %tmp_31_4_2, %temp_4_3
  %temp_1_4_3 = fmul float %A_load_28, %B_load_16
  %tmp_32_4_3_1 = fadd float %tmp_32_4_3, %temp_1_4_3
  %temp_1_4_3_1 = fmul float %A_load_33, %B_load_17
  %tmp_32_4_3_2 = fadd float %tmp_32_4_3_1, %temp_1_4_3_1
  %temp_1_4_3_2 = fmul float %A_load_38, %B_load_18
  %tmp_32_4_3_3 = fadd float %tmp_32_4_3_2, %temp_1_4_3_2
  %p_addr173 = add i12 %p_addr125_cast1, 8
  %p_addr173_cast = sext i12 %p_addr173 to i32
  %tmp_170 = zext i32 %p_addr173_cast to i64
  %A_addr_43 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_170
  %A_load_43 = load float* %A_addr_43, align 4
  %temp_1_4_3_3 = fmul float %A_load_43, %B_load_19
  %tmp_31_4_3 = fadd float %tmp_32_4_3_3, %temp_1_4_3_3
  %temp_4_4 = fmul float %A_load_24, %B_load_20
  %tmp_32_4_4 = fadd float %tmp_31_4_3, %temp_4_4
  %temp_1_4_4 = fmul float %A_load_29, %B_load_21
  %tmp_32_4_4_1 = fadd float %tmp_32_4_4, %temp_1_4_4
  %temp_1_4_4_1 = fmul float %A_load_34, %B_load_22
  %tmp_32_4_4_2 = fadd float %tmp_32_4_4_1, %temp_1_4_4_1
  %temp_1_4_4_2 = fmul float %A_load_39, %B_load_23
  %tmp_32_4_4_3 = fadd float %tmp_32_4_4_2, %temp_1_4_4_2
  %p_addr175 = add i12 %p_addr133_cast1, 8
  %p_addr175_cast = sext i12 %p_addr175 to i32
  %tmp_171 = zext i32 %p_addr175_cast to i64
  %A_addr_44 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_171
  %A_load_44 = load float* %A_addr_44, align 4
  %temp_1_4_4_3 = fmul float %A_load_44, %B_load_24
  %tmp_31_4_4 = fadd float %tmp_32_4_4_3, %temp_1_4_4_3
  store float %tmp_31_4_4, float* %conv_addr_4, align 4
  %p_addr176 = or i32 %p_addr101, 5
  %tmp_172 = zext i32 %p_addr176 to i64
  %conv_addr_5 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_172
  %temp_5 = fmul float %A_load_25, %B_load
  %tmp_32_5 = fadd float %temp_5, 0.000000e+00
  %temp_1_5 = fmul float %A_load_30, %B_load_1
  %tmp_32_5_0_1 = fadd float %tmp_32_5, %temp_1_5
  %temp_1_5_0_1 = fmul float %A_load_35, %B_load_2
  %tmp_32_5_0_2 = fadd float %tmp_32_5_0_1, %temp_1_5_0_1
  %temp_1_5_0_2 = fmul float %A_load_40, %B_load_3
  %tmp_32_5_0_3 = fadd float %tmp_32_5_0_2, %temp_1_5_0_2
  %p_addr178 = add i12 %p_addr103_cast1, 9
  %p_addr178_cast = sext i12 %p_addr178 to i32
  %tmp_173 = zext i32 %p_addr178_cast to i64
  %A_addr_45 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_173
  %A_load_45 = load float* %A_addr_45, align 4
  %temp_1_5_0_3 = fmul float %A_load_45, %B_load_4
  %tmp_31_5 = fadd float %tmp_32_5_0_3, %temp_1_5_0_3
  %temp_5_1 = fmul float %A_load_26, %B_load_5
  %tmp_32_5_1 = fadd float %tmp_31_5, %temp_5_1
  %temp_1_5_1 = fmul float %A_load_31, %B_load_6
  %tmp_32_5_1_1 = fadd float %tmp_32_5_1, %temp_1_5_1
  %temp_1_5_1_1 = fmul float %A_load_36, %B_load_7
  %tmp_32_5_1_2 = fadd float %tmp_32_5_1_1, %temp_1_5_1_1
  %temp_1_5_1_2 = fmul float %A_load_41, %B_load_8
  %tmp_32_5_1_3 = fadd float %tmp_32_5_1_2, %temp_1_5_1_2
  %p_addr179 = add i12 %p_addr110_cast1, 9
  %p_addr179_cast = sext i12 %p_addr179 to i32
  %tmp_174 = zext i32 %p_addr179_cast to i64
  %A_addr_46 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_174
  %A_load_46 = load float* %A_addr_46, align 4
  %temp_1_5_1_3 = fmul float %A_load_46, %B_load_9
  %tmp_31_5_1 = fadd float %tmp_32_5_1_3, %temp_1_5_1_3
  %temp_5_2 = fmul float %A_load_27, %B_load_10
  %tmp_32_5_2 = fadd float %tmp_31_5_1, %temp_5_2
  %temp_1_5_2 = fmul float %A_load_32, %B_load_11
  %tmp_32_5_2_1 = fadd float %tmp_32_5_2, %temp_1_5_2
  %temp_1_5_2_1 = fmul float %A_load_37, %B_load_12
  %tmp_32_5_2_2 = fadd float %tmp_32_5_2_1, %temp_1_5_2_1
  %temp_1_5_2_2 = fmul float %A_load_42, %B_load_13
  %tmp_32_5_2_3 = fadd float %tmp_32_5_2_2, %temp_1_5_2_2
  %p_addr181 = add i12 %p_addr118_cast1, 9
  %p_addr181_cast = sext i12 %p_addr181 to i32
  %tmp_175 = zext i32 %p_addr181_cast to i64
  %A_addr_47 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_175
  %A_load_47 = load float* %A_addr_47, align 4
  %temp_1_5_2_3 = fmul float %A_load_47, %B_load_14
  %tmp_31_5_2 = fadd float %tmp_32_5_2_3, %temp_1_5_2_3
  %temp_5_3 = fmul float %A_load_28, %B_load_15
  %tmp_32_5_3 = fadd float %tmp_31_5_2, %temp_5_3
  %temp_1_5_3 = fmul float %A_load_33, %B_load_16
  %tmp_32_5_3_1 = fadd float %tmp_32_5_3, %temp_1_5_3
  %temp_1_5_3_1 = fmul float %A_load_38, %B_load_17
  %tmp_32_5_3_2 = fadd float %tmp_32_5_3_1, %temp_1_5_3_1
  %temp_1_5_3_2 = fmul float %A_load_43, %B_load_18
  %tmp_32_5_3_3 = fadd float %tmp_32_5_3_2, %temp_1_5_3_2
  %p_addr182 = add i12 %p_addr125_cast1, 9
  %p_addr182_cast = sext i12 %p_addr182 to i32
  %tmp_176 = zext i32 %p_addr182_cast to i64
  %A_addr_48 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_176
  %A_load_48 = load float* %A_addr_48, align 4
  %temp_1_5_3_3 = fmul float %A_load_48, %B_load_19
  %tmp_31_5_3 = fadd float %tmp_32_5_3_3, %temp_1_5_3_3
  %temp_5_4 = fmul float %A_load_29, %B_load_20
  %tmp_32_5_4 = fadd float %tmp_31_5_3, %temp_5_4
  %temp_1_5_4 = fmul float %A_load_34, %B_load_21
  %tmp_32_5_4_1 = fadd float %tmp_32_5_4, %temp_1_5_4
  %temp_1_5_4_1 = fmul float %A_load_39, %B_load_22
  %tmp_32_5_4_2 = fadd float %tmp_32_5_4_1, %temp_1_5_4_1
  %temp_1_5_4_2 = fmul float %A_load_44, %B_load_23
  %tmp_32_5_4_3 = fadd float %tmp_32_5_4_2, %temp_1_5_4_2
  %p_addr184 = add i12 %p_addr133_cast1, 9
  %p_addr184_cast = sext i12 %p_addr184 to i32
  %tmp_177 = zext i32 %p_addr184_cast to i64
  %A_addr_49 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_177
  %A_load_49 = load float* %A_addr_49, align 4
  %temp_1_5_4_3 = fmul float %A_load_49, %B_load_24
  %tmp_31_5_4 = fadd float %tmp_32_5_4_3, %temp_1_5_4_3
  store float %tmp_31_5_4, float* %conv_addr_5, align 4
  %p_addr185 = or i32 %p_addr101, 6
  %tmp_178 = zext i32 %p_addr185 to i64
  %conv_addr_6 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_178
  %temp_6 = fmul float %A_load_30, %B_load
  %tmp_32_6 = fadd float %temp_6, 0.000000e+00
  %temp_1_6 = fmul float %A_load_35, %B_load_1
  %tmp_32_6_0_1 = fadd float %tmp_32_6, %temp_1_6
  %temp_1_6_0_1 = fmul float %A_load_40, %B_load_2
  %tmp_32_6_0_2 = fadd float %tmp_32_6_0_1, %temp_1_6_0_1
  %temp_1_6_0_2 = fmul float %A_load_45, %B_load_3
  %tmp_32_6_0_3 = fadd float %tmp_32_6_0_2, %temp_1_6_0_2
  %p_addr187 = add i12 %p_addr103_cast1, 10
  %p_addr187_cast = sext i12 %p_addr187 to i32
  %tmp_179 = zext i32 %p_addr187_cast to i64
  %A_addr_50 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_179
  %A_load_50 = load float* %A_addr_50, align 4
  %temp_1_6_0_3 = fmul float %A_load_50, %B_load_4
  %tmp_31_6 = fadd float %tmp_32_6_0_3, %temp_1_6_0_3
  %temp_6_1 = fmul float %A_load_31, %B_load_5
  %tmp_32_6_1 = fadd float %tmp_31_6, %temp_6_1
  %temp_1_6_1 = fmul float %A_load_36, %B_load_6
  %tmp_32_6_1_1 = fadd float %tmp_32_6_1, %temp_1_6_1
  %temp_1_6_1_1 = fmul float %A_load_41, %B_load_7
  %tmp_32_6_1_2 = fadd float %tmp_32_6_1_1, %temp_1_6_1_1
  %temp_1_6_1_2 = fmul float %A_load_46, %B_load_8
  %tmp_32_6_1_3 = fadd float %tmp_32_6_1_2, %temp_1_6_1_2
  %p_addr188 = add i12 %p_addr110_cast1, 10
  %p_addr188_cast = sext i12 %p_addr188 to i32
  %tmp_180 = zext i32 %p_addr188_cast to i64
  %A_addr_51 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_180
  %A_load_51 = load float* %A_addr_51, align 4
  %temp_1_6_1_3 = fmul float %A_load_51, %B_load_9
  %tmp_31_6_1 = fadd float %tmp_32_6_1_3, %temp_1_6_1_3
  %temp_6_2 = fmul float %A_load_32, %B_load_10
  %tmp_32_6_2 = fadd float %tmp_31_6_1, %temp_6_2
  %temp_1_6_2 = fmul float %A_load_37, %B_load_11
  %tmp_32_6_2_1 = fadd float %tmp_32_6_2, %temp_1_6_2
  %temp_1_6_2_1 = fmul float %A_load_42, %B_load_12
  %tmp_32_6_2_2 = fadd float %tmp_32_6_2_1, %temp_1_6_2_1
  %temp_1_6_2_2 = fmul float %A_load_47, %B_load_13
  %tmp_32_6_2_3 = fadd float %tmp_32_6_2_2, %temp_1_6_2_2
  %p_addr190 = add i12 %p_addr118_cast1, 10
  %p_addr190_cast = sext i12 %p_addr190 to i32
  %tmp_181 = zext i32 %p_addr190_cast to i64
  %A_addr_52 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_181
  %A_load_52 = load float* %A_addr_52, align 4
  %temp_1_6_2_3 = fmul float %A_load_52, %B_load_14
  %tmp_31_6_2 = fadd float %tmp_32_6_2_3, %temp_1_6_2_3
  %temp_6_3 = fmul float %A_load_33, %B_load_15
  %tmp_32_6_3 = fadd float %tmp_31_6_2, %temp_6_3
  %temp_1_6_3 = fmul float %A_load_38, %B_load_16
  %tmp_32_6_3_1 = fadd float %tmp_32_6_3, %temp_1_6_3
  %temp_1_6_3_1 = fmul float %A_load_43, %B_load_17
  %tmp_32_6_3_2 = fadd float %tmp_32_6_3_1, %temp_1_6_3_1
  %temp_1_6_3_2 = fmul float %A_load_48, %B_load_18
  %tmp_32_6_3_3 = fadd float %tmp_32_6_3_2, %temp_1_6_3_2
  %p_addr191 = add i12 %p_addr125_cast1, 10
  %p_addr191_cast = sext i12 %p_addr191 to i32
  %tmp_182 = zext i32 %p_addr191_cast to i64
  %A_addr_53 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_182
  %A_load_53 = load float* %A_addr_53, align 4
  %temp_1_6_3_3 = fmul float %A_load_53, %B_load_19
  %tmp_31_6_3 = fadd float %tmp_32_6_3_3, %temp_1_6_3_3
  %temp_6_4 = fmul float %A_load_34, %B_load_20
  %tmp_32_6_4 = fadd float %tmp_31_6_3, %temp_6_4
  %temp_1_6_4 = fmul float %A_load_39, %B_load_21
  %tmp_32_6_4_1 = fadd float %tmp_32_6_4, %temp_1_6_4
  %temp_1_6_4_1 = fmul float %A_load_44, %B_load_22
  %tmp_32_6_4_2 = fadd float %tmp_32_6_4_1, %temp_1_6_4_1
  %temp_1_6_4_2 = fmul float %A_load_49, %B_load_23
  %tmp_32_6_4_3 = fadd float %tmp_32_6_4_2, %temp_1_6_4_2
  %p_addr193 = add i12 %p_addr133_cast1, 10
  %p_addr193_cast = sext i12 %p_addr193 to i32
  %tmp_183 = zext i32 %p_addr193_cast to i64
  %A_addr_54 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_183
  %A_load_54 = load float* %A_addr_54, align 4
  %temp_1_6_4_3 = fmul float %A_load_54, %B_load_24
  %tmp_31_6_4 = fadd float %tmp_32_6_4_3, %temp_1_6_4_3
  store float %tmp_31_6_4, float* %conv_addr_6, align 4
  %p_addr194 = or i32 %p_addr101, 7
  %tmp_184 = zext i32 %p_addr194 to i64
  %conv_addr_7 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_184
  %temp_7 = fmul float %A_load_35, %B_load
  %tmp_32_7 = fadd float %temp_7, 0.000000e+00
  %temp_1_7 = fmul float %A_load_40, %B_load_1
  %tmp_32_7_0_1 = fadd float %tmp_32_7, %temp_1_7
  %temp_1_7_0_1 = fmul float %A_load_45, %B_load_2
  %tmp_32_7_0_2 = fadd float %tmp_32_7_0_1, %temp_1_7_0_1
  %temp_1_7_0_2 = fmul float %A_load_50, %B_load_3
  %tmp_32_7_0_3 = fadd float %tmp_32_7_0_2, %temp_1_7_0_2
  %p_addr196 = add i12 %p_addr103_cast1, 11
  %p_addr196_cast = sext i12 %p_addr196 to i32
  %tmp_185 = zext i32 %p_addr196_cast to i64
  %A_addr_55 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_185
  %A_load_55 = load float* %A_addr_55, align 4
  %temp_1_7_0_3 = fmul float %A_load_55, %B_load_4
  %tmp_31_7 = fadd float %tmp_32_7_0_3, %temp_1_7_0_3
  %temp_7_1 = fmul float %A_load_36, %B_load_5
  %tmp_32_7_1 = fadd float %tmp_31_7, %temp_7_1
  %temp_1_7_1 = fmul float %A_load_41, %B_load_6
  %tmp_32_7_1_1 = fadd float %tmp_32_7_1, %temp_1_7_1
  %temp_1_7_1_1 = fmul float %A_load_46, %B_load_7
  %tmp_32_7_1_2 = fadd float %tmp_32_7_1_1, %temp_1_7_1_1
  %temp_1_7_1_2 = fmul float %A_load_51, %B_load_8
  %tmp_32_7_1_3 = fadd float %tmp_32_7_1_2, %temp_1_7_1_2
  %p_addr197 = add i12 %p_addr110_cast1, 11
  %p_addr197_cast = sext i12 %p_addr197 to i32
  %tmp_186 = zext i32 %p_addr197_cast to i64
  %A_addr_56 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_186
  %A_load_56 = load float* %A_addr_56, align 4
  %temp_1_7_1_3 = fmul float %A_load_56, %B_load_9
  %tmp_31_7_1 = fadd float %tmp_32_7_1_3, %temp_1_7_1_3
  %temp_7_2 = fmul float %A_load_37, %B_load_10
  %tmp_32_7_2 = fadd float %tmp_31_7_1, %temp_7_2
  %temp_1_7_2 = fmul float %A_load_42, %B_load_11
  %tmp_32_7_2_1 = fadd float %tmp_32_7_2, %temp_1_7_2
  %temp_1_7_2_1 = fmul float %A_load_47, %B_load_12
  %tmp_32_7_2_2 = fadd float %tmp_32_7_2_1, %temp_1_7_2_1
  %temp_1_7_2_2 = fmul float %A_load_52, %B_load_13
  %tmp_32_7_2_3 = fadd float %tmp_32_7_2_2, %temp_1_7_2_2
  %p_addr199 = add i12 %p_addr118_cast1, 11
  %p_addr199_cast = sext i12 %p_addr199 to i32
  %tmp_187 = zext i32 %p_addr199_cast to i64
  %A_addr_57 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_187
  %A_load_57 = load float* %A_addr_57, align 4
  %temp_1_7_2_3 = fmul float %A_load_57, %B_load_14
  %tmp_31_7_2 = fadd float %tmp_32_7_2_3, %temp_1_7_2_3
  %temp_7_3 = fmul float %A_load_38, %B_load_15
  %tmp_32_7_3 = fadd float %tmp_31_7_2, %temp_7_3
  %temp_1_7_3 = fmul float %A_load_43, %B_load_16
  %tmp_32_7_3_1 = fadd float %tmp_32_7_3, %temp_1_7_3
  %temp_1_7_3_1 = fmul float %A_load_48, %B_load_17
  %tmp_32_7_3_2 = fadd float %tmp_32_7_3_1, %temp_1_7_3_1
  %temp_1_7_3_2 = fmul float %A_load_53, %B_load_18
  %tmp_32_7_3_3 = fadd float %tmp_32_7_3_2, %temp_1_7_3_2
  %p_addr200 = add i12 %p_addr125_cast1, 11
  %p_addr200_cast = sext i12 %p_addr200 to i32
  %tmp_188 = zext i32 %p_addr200_cast to i64
  %A_addr_58 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_188
  %A_load_58 = load float* %A_addr_58, align 4
  %temp_1_7_3_3 = fmul float %A_load_58, %B_load_19
  %tmp_31_7_3 = fadd float %tmp_32_7_3_3, %temp_1_7_3_3
  %temp_7_4 = fmul float %A_load_39, %B_load_20
  %tmp_32_7_4 = fadd float %tmp_31_7_3, %temp_7_4
  %temp_1_7_4 = fmul float %A_load_44, %B_load_21
  %tmp_32_7_4_1 = fadd float %tmp_32_7_4, %temp_1_7_4
  %temp_1_7_4_1 = fmul float %A_load_49, %B_load_22
  %tmp_32_7_4_2 = fadd float %tmp_32_7_4_1, %temp_1_7_4_1
  %temp_1_7_4_2 = fmul float %A_load_54, %B_load_23
  %tmp_32_7_4_3 = fadd float %tmp_32_7_4_2, %temp_1_7_4_2
  %p_addr202 = add i12 %p_addr133_cast1, 11
  %p_addr202_cast = sext i12 %p_addr202 to i32
  %tmp_189 = zext i32 %p_addr202_cast to i64
  %A_addr_59 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_189
  %A_load_59 = load float* %A_addr_59, align 4
  %temp_1_7_4_3 = fmul float %A_load_59, %B_load_24
  %tmp_31_7_4 = fadd float %tmp_32_7_4_3, %temp_1_7_4_3
  store float %tmp_31_7_4, float* %conv_addr_7, align 4
  %p_addr203 = add i32 %p_addr101, 8
  %tmp_190 = zext i32 %p_addr203 to i64
  %conv_addr_8 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_190
  %temp_8 = fmul float %A_load_40, %B_load
  %tmp_32_8 = fadd float %temp_8, 0.000000e+00
  %temp_1_8 = fmul float %A_load_45, %B_load_1
  %tmp_32_8_0_1 = fadd float %tmp_32_8, %temp_1_8
  %temp_1_8_0_1 = fmul float %A_load_50, %B_load_2
  %tmp_32_8_0_2 = fadd float %tmp_32_8_0_1, %temp_1_8_0_1
  %temp_1_8_0_2 = fmul float %A_load_55, %B_load_3
  %tmp_32_8_0_3 = fadd float %tmp_32_8_0_2, %temp_1_8_0_2
  %p_addr205 = add i12 %p_addr103_cast1, 12
  %p_addr205_cast = sext i12 %p_addr205 to i32
  %tmp_191 = zext i32 %p_addr205_cast to i64
  %A_addr_60 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_191
  %A_load_60 = load float* %A_addr_60, align 4
  %temp_1_8_0_3 = fmul float %A_load_60, %B_load_4
  %tmp_31_8 = fadd float %tmp_32_8_0_3, %temp_1_8_0_3
  %temp_8_1 = fmul float %A_load_41, %B_load_5
  %tmp_32_8_1 = fadd float %tmp_31_8, %temp_8_1
  %temp_1_8_1 = fmul float %A_load_46, %B_load_6
  %tmp_32_8_1_1 = fadd float %tmp_32_8_1, %temp_1_8_1
  %temp_1_8_1_1 = fmul float %A_load_51, %B_load_7
  %tmp_32_8_1_2 = fadd float %tmp_32_8_1_1, %temp_1_8_1_1
  %temp_1_8_1_2 = fmul float %A_load_56, %B_load_8
  %tmp_32_8_1_3 = fadd float %tmp_32_8_1_2, %temp_1_8_1_2
  %p_addr206 = add i12 %p_addr110_cast1, 12
  %p_addr206_cast = sext i12 %p_addr206 to i32
  %tmp_192 = zext i32 %p_addr206_cast to i64
  %A_addr_61 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_192
  %A_load_61 = load float* %A_addr_61, align 4
  %temp_1_8_1_3 = fmul float %A_load_61, %B_load_9
  %tmp_31_8_1 = fadd float %tmp_32_8_1_3, %temp_1_8_1_3
  %temp_8_2 = fmul float %A_load_42, %B_load_10
  %tmp_32_8_2 = fadd float %tmp_31_8_1, %temp_8_2
  %temp_1_8_2 = fmul float %A_load_47, %B_load_11
  %tmp_32_8_2_1 = fadd float %tmp_32_8_2, %temp_1_8_2
  %temp_1_8_2_1 = fmul float %A_load_52, %B_load_12
  %tmp_32_8_2_2 = fadd float %tmp_32_8_2_1, %temp_1_8_2_1
  %temp_1_8_2_2 = fmul float %A_load_57, %B_load_13
  %tmp_32_8_2_3 = fadd float %tmp_32_8_2_2, %temp_1_8_2_2
  %p_addr208 = add i12 %p_addr118_cast1, 12
  %p_addr208_cast = sext i12 %p_addr208 to i32
  %tmp_193 = zext i32 %p_addr208_cast to i64
  %A_addr_62 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_193
  %A_load_62 = load float* %A_addr_62, align 4
  %temp_1_8_2_3 = fmul float %A_load_62, %B_load_14
  %tmp_31_8_2 = fadd float %tmp_32_8_2_3, %temp_1_8_2_3
  %temp_8_3 = fmul float %A_load_43, %B_load_15
  %tmp_32_8_3 = fadd float %tmp_31_8_2, %temp_8_3
  %temp_1_8_3 = fmul float %A_load_48, %B_load_16
  %tmp_32_8_3_1 = fadd float %tmp_32_8_3, %temp_1_8_3
  %temp_1_8_3_1 = fmul float %A_load_53, %B_load_17
  %tmp_32_8_3_2 = fadd float %tmp_32_8_3_1, %temp_1_8_3_1
  %temp_1_8_3_2 = fmul float %A_load_58, %B_load_18
  %tmp_32_8_3_3 = fadd float %tmp_32_8_3_2, %temp_1_8_3_2
  %p_addr209 = add i12 %p_addr125_cast1, 12
  %p_addr209_cast = sext i12 %p_addr209 to i32
  %tmp_194 = zext i32 %p_addr209_cast to i64
  %A_addr_63 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_194
  %A_load_63 = load float* %A_addr_63, align 4
  %temp_1_8_3_3 = fmul float %A_load_63, %B_load_19
  %tmp_31_8_3 = fadd float %tmp_32_8_3_3, %temp_1_8_3_3
  %temp_8_4 = fmul float %A_load_44, %B_load_20
  %tmp_32_8_4 = fadd float %tmp_31_8_3, %temp_8_4
  %temp_1_8_4 = fmul float %A_load_49, %B_load_21
  %tmp_32_8_4_1 = fadd float %tmp_32_8_4, %temp_1_8_4
  %temp_1_8_4_1 = fmul float %A_load_54, %B_load_22
  %tmp_32_8_4_2 = fadd float %tmp_32_8_4_1, %temp_1_8_4_1
  %temp_1_8_4_2 = fmul float %A_load_59, %B_load_23
  %tmp_32_8_4_3 = fadd float %tmp_32_8_4_2, %temp_1_8_4_2
  %p_addr211 = add i12 %p_addr133_cast1, 12
  %p_addr211_cast = sext i12 %p_addr211 to i32
  %tmp_195 = zext i32 %p_addr211_cast to i64
  %A_addr_64 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_195
  %A_load_64 = load float* %A_addr_64, align 4
  %temp_1_8_4_3 = fmul float %A_load_64, %B_load_24
  %tmp_31_8_4 = fadd float %tmp_32_8_4_3, %temp_1_8_4_3
  store float %tmp_31_8_4, float* %conv_addr_8, align 4
  %p_addr212 = add i32 %p_addr101, 9
  %tmp_196 = zext i32 %p_addr212 to i64
  %conv_addr_9 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_196
  %temp_9 = fmul float %A_load_45, %B_load
  %tmp_32_9 = fadd float %temp_9, 0.000000e+00
  %temp_1_9 = fmul float %A_load_50, %B_load_1
  %tmp_32_9_0_1 = fadd float %tmp_32_9, %temp_1_9
  %temp_1_9_0_1 = fmul float %A_load_55, %B_load_2
  %tmp_32_9_0_2 = fadd float %tmp_32_9_0_1, %temp_1_9_0_1
  %temp_1_9_0_2 = fmul float %A_load_60, %B_load_3
  %tmp_32_9_0_3 = fadd float %tmp_32_9_0_2, %temp_1_9_0_2
  %p_addr214 = add i12 %p_addr103_cast1, 13
  %p_addr214_cast = sext i12 %p_addr214 to i32
  %tmp_197 = zext i32 %p_addr214_cast to i64
  %A_addr_65 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_197
  %A_load_65 = load float* %A_addr_65, align 4
  %temp_1_9_0_3 = fmul float %A_load_65, %B_load_4
  %tmp_31_9 = fadd float %tmp_32_9_0_3, %temp_1_9_0_3
  %temp_9_1 = fmul float %A_load_46, %B_load_5
  %tmp_32_9_1 = fadd float %tmp_31_9, %temp_9_1
  %temp_1_9_1 = fmul float %A_load_51, %B_load_6
  %tmp_32_9_1_1 = fadd float %tmp_32_9_1, %temp_1_9_1
  %temp_1_9_1_1 = fmul float %A_load_56, %B_load_7
  %tmp_32_9_1_2 = fadd float %tmp_32_9_1_1, %temp_1_9_1_1
  %temp_1_9_1_2 = fmul float %A_load_61, %B_load_8
  %tmp_32_9_1_3 = fadd float %tmp_32_9_1_2, %temp_1_9_1_2
  %p_addr215 = add i12 %p_addr110_cast1, 13
  %p_addr215_cast = sext i12 %p_addr215 to i32
  %tmp_198 = zext i32 %p_addr215_cast to i64
  %A_addr_66 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_198
  %A_load_66 = load float* %A_addr_66, align 4
  %temp_1_9_1_3 = fmul float %A_load_66, %B_load_9
  %tmp_31_9_1 = fadd float %tmp_32_9_1_3, %temp_1_9_1_3
  %temp_9_2 = fmul float %A_load_47, %B_load_10
  %tmp_32_9_2 = fadd float %tmp_31_9_1, %temp_9_2
  %temp_1_9_2 = fmul float %A_load_52, %B_load_11
  %tmp_32_9_2_1 = fadd float %tmp_32_9_2, %temp_1_9_2
  %temp_1_9_2_1 = fmul float %A_load_57, %B_load_12
  %tmp_32_9_2_2 = fadd float %tmp_32_9_2_1, %temp_1_9_2_1
  %temp_1_9_2_2 = fmul float %A_load_62, %B_load_13
  %tmp_32_9_2_3 = fadd float %tmp_32_9_2_2, %temp_1_9_2_2
  %p_addr213 = add i12 %p_addr118_cast1, 13
  %p_addr213_cast = sext i12 %p_addr213 to i32
  %tmp_199 = zext i32 %p_addr213_cast to i64
  %A_addr_67 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_199
  %A_load_67 = load float* %A_addr_67, align 4
  %temp_1_9_2_3 = fmul float %A_load_67, %B_load_14
  %tmp_31_9_2 = fadd float %tmp_32_9_2_3, %temp_1_9_2_3
  %temp_9_3 = fmul float %A_load_48, %B_load_15
  %tmp_32_9_3 = fadd float %tmp_31_9_2, %temp_9_3
  %temp_1_9_3 = fmul float %A_load_53, %B_load_16
  %tmp_32_9_3_1 = fadd float %tmp_32_9_3, %temp_1_9_3
  %temp_1_9_3_1 = fmul float %A_load_58, %B_load_17
  %tmp_32_9_3_2 = fadd float %tmp_32_9_3_1, %temp_1_9_3_1
  %temp_1_9_3_2 = fmul float %A_load_63, %B_load_18
  %tmp_32_9_3_3 = fadd float %tmp_32_9_3_2, %temp_1_9_3_2
  %p_addr210 = add i12 %p_addr125_cast1, 13
  %p_addr210_cast = sext i12 %p_addr210 to i32
  %tmp_200 = zext i32 %p_addr210_cast to i64
  %A_addr_68 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_200
  %A_load_68 = load float* %A_addr_68, align 4
  %temp_1_9_3_3 = fmul float %A_load_68, %B_load_19
  %tmp_31_9_3 = fadd float %tmp_32_9_3_3, %temp_1_9_3_3
  %temp_9_4 = fmul float %A_load_49, %B_load_20
  %tmp_32_9_4 = fadd float %tmp_31_9_3, %temp_9_4
  %temp_1_9_4 = fmul float %A_load_54, %B_load_21
  %tmp_32_9_4_1 = fadd float %tmp_32_9_4, %temp_1_9_4
  %temp_1_9_4_1 = fmul float %A_load_59, %B_load_22
  %tmp_32_9_4_2 = fadd float %tmp_32_9_4_1, %temp_1_9_4_1
  %temp_1_9_4_2 = fmul float %A_load_64, %B_load_23
  %tmp_32_9_4_3 = fadd float %tmp_32_9_4_2, %temp_1_9_4_2
  %p_addr207 = add i12 %p_addr133_cast1, 13
  %p_addr207_cast = sext i12 %p_addr207 to i32
  %tmp_202 = zext i32 %p_addr207_cast to i64
  %A_addr_69 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_202
  %A_load_69 = load float* %A_addr_69, align 4
  %temp_1_9_4_3 = fmul float %A_load_69, %B_load_24
  %tmp_31_9_4 = fadd float %tmp_32_9_4_3, %temp_1_9_4_3
  store float %tmp_31_9_4, float* %conv_addr_9, align 4
  %p_addr216 = add i32 %p_addr101, 10
  %tmp_203 = zext i32 %p_addr216 to i64
  %conv_addr_10 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_203
  %temp_1 = fmul float %A_load_50, %B_load
  %tmp_32_s = fadd float %temp_1, 0.000000e+00
  %temp_1_s = fmul float %A_load_55, %B_load_1
  %tmp_32_10_0_1 = fadd float %tmp_32_s, %temp_1_s
  %temp_1_10_0_1 = fmul float %A_load_60, %B_load_2
  %tmp_32_10_0_2 = fadd float %tmp_32_10_0_1, %temp_1_10_0_1
  %temp_1_10_0_2 = fmul float %A_load_65, %B_load_3
  %tmp_32_10_0_3 = fadd float %tmp_32_10_0_2, %temp_1_10_0_2
  %p_addr204 = add i12 %p_addr103_cast1, 14
  %p_addr204_cast = sext i12 %p_addr204 to i32
  %tmp_204 = zext i32 %p_addr204_cast to i64
  %A_addr_70 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_204
  %A_load_70 = load float* %A_addr_70, align 4
  %temp_1_10_0_3 = fmul float %A_load_70, %B_load_4
  %tmp_31_s = fadd float %tmp_32_10_0_3, %temp_1_10_0_3
  %temp_10_1 = fmul float %A_load_51, %B_load_5
  %tmp_32_10_1 = fadd float %tmp_31_s, %temp_10_1
  %temp_1_10_1 = fmul float %A_load_56, %B_load_6
  %tmp_32_10_1_1 = fadd float %tmp_32_10_1, %temp_1_10_1
  %temp_1_10_1_1 = fmul float %A_load_61, %B_load_7
  %tmp_32_10_1_2 = fadd float %tmp_32_10_1_1, %temp_1_10_1_1
  %temp_1_10_1_2 = fmul float %A_load_66, %B_load_8
  %tmp_32_10_1_3 = fadd float %tmp_32_10_1_2, %temp_1_10_1_2
  %p_addr201 = add i12 %p_addr110_cast1, 14
  %p_addr201_cast = sext i12 %p_addr201 to i32
  %tmp_205 = zext i32 %p_addr201_cast to i64
  %A_addr_71 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_205
  %A_load_71 = load float* %A_addr_71, align 4
  %temp_1_10_1_3 = fmul float %A_load_71, %B_load_9
  %tmp_31_10_1 = fadd float %tmp_32_10_1_3, %temp_1_10_1_3
  %temp_10_2 = fmul float %A_load_52, %B_load_10
  %tmp_32_10_2 = fadd float %tmp_31_10_1, %temp_10_2
  %temp_1_10_2 = fmul float %A_load_57, %B_load_11
  %tmp_32_10_2_1 = fadd float %tmp_32_10_2, %temp_1_10_2
  %temp_1_10_2_1 = fmul float %A_load_62, %B_load_12
  %tmp_32_10_2_2 = fadd float %tmp_32_10_2_1, %temp_1_10_2_1
  %temp_1_10_2_2 = fmul float %A_load_67, %B_load_13
  %tmp_32_10_2_3 = fadd float %tmp_32_10_2_2, %temp_1_10_2_2
  %p_addr198 = add i12 %p_addr118_cast1, 14
  %p_addr198_cast = sext i12 %p_addr198 to i32
  %tmp_206 = zext i32 %p_addr198_cast to i64
  %A_addr_72 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_206
  %A_load_72 = load float* %A_addr_72, align 4
  %temp_1_10_2_3 = fmul float %A_load_72, %B_load_14
  %tmp_31_10_2 = fadd float %tmp_32_10_2_3, %temp_1_10_2_3
  %temp_10_3 = fmul float %A_load_53, %B_load_15
  %tmp_32_10_3 = fadd float %tmp_31_10_2, %temp_10_3
  %temp_1_10_3 = fmul float %A_load_58, %B_load_16
  %tmp_32_10_3_1 = fadd float %tmp_32_10_3, %temp_1_10_3
  %temp_1_10_3_1 = fmul float %A_load_63, %B_load_17
  %tmp_32_10_3_2 = fadd float %tmp_32_10_3_1, %temp_1_10_3_1
  %temp_1_10_3_2 = fmul float %A_load_68, %B_load_18
  %tmp_32_10_3_3 = fadd float %tmp_32_10_3_2, %temp_1_10_3_2
  %p_addr195 = add i12 %p_addr125_cast1, 14
  %p_addr195_cast = sext i12 %p_addr195 to i32
  %tmp_207 = zext i32 %p_addr195_cast to i64
  %A_addr_73 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_207
  %A_load_73 = load float* %A_addr_73, align 4
  %temp_1_10_3_3 = fmul float %A_load_73, %B_load_19
  %tmp_31_10_3 = fadd float %tmp_32_10_3_3, %temp_1_10_3_3
  %temp_10_4 = fmul float %A_load_54, %B_load_20
  %tmp_32_10_4 = fadd float %tmp_31_10_3, %temp_10_4
  %temp_1_10_4 = fmul float %A_load_59, %B_load_21
  %tmp_32_10_4_1 = fadd float %tmp_32_10_4, %temp_1_10_4
  %temp_1_10_4_1 = fmul float %A_load_64, %B_load_22
  %tmp_32_10_4_2 = fadd float %tmp_32_10_4_1, %temp_1_10_4_1
  %temp_1_10_4_2 = fmul float %A_load_69, %B_load_23
  %tmp_32_10_4_3 = fadd float %tmp_32_10_4_2, %temp_1_10_4_2
  %p_addr192 = add i12 %p_addr133_cast1, 14
  %p_addr192_cast = sext i12 %p_addr192 to i32
  %tmp_208 = zext i32 %p_addr192_cast to i64
  %A_addr_74 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_208
  %A_load_74 = load float* %A_addr_74, align 4
  %temp_1_10_4_3 = fmul float %A_load_74, %B_load_24
  %tmp_31_10_4 = fadd float %tmp_32_10_4_3, %temp_1_10_4_3
  store float %tmp_31_10_4, float* %conv_addr_10, align 4
  %p_addr217 = add i32 %p_addr101, 11
  %tmp_209 = zext i32 %p_addr217 to i64
  %conv_addr_11 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_209
  %temp_10 = fmul float %A_load_55, %B_load
  %tmp_32_10 = fadd float %temp_10, 0.000000e+00
  %temp_1_10 = fmul float %A_load_60, %B_load_1
  %tmp_32_11_0_1 = fadd float %tmp_32_10, %temp_1_10
  %temp_1_11_0_1 = fmul float %A_load_65, %B_load_2
  %tmp_32_11_0_2 = fadd float %tmp_32_11_0_1, %temp_1_11_0_1
  %temp_1_11_0_2 = fmul float %A_load_70, %B_load_3
  %tmp_32_11_0_3 = fadd float %tmp_32_11_0_2, %temp_1_11_0_2
  %p_addr189 = add i12 %p_addr103_cast1, 15
  %p_addr189_cast = sext i12 %p_addr189 to i32
  %tmp_210 = zext i32 %p_addr189_cast to i64
  %A_addr_75 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_210
  %A_load_75 = load float* %A_addr_75, align 4
  %temp_1_11_0_3 = fmul float %A_load_75, %B_load_4
  %tmp_31_10 = fadd float %tmp_32_11_0_3, %temp_1_11_0_3
  %temp_11_1 = fmul float %A_load_56, %B_load_5
  %tmp_32_11_1 = fadd float %tmp_31_10, %temp_11_1
  %temp_1_11_1 = fmul float %A_load_61, %B_load_6
  %tmp_32_11_1_1 = fadd float %tmp_32_11_1, %temp_1_11_1
  %temp_1_11_1_1 = fmul float %A_load_66, %B_load_7
  %tmp_32_11_1_2 = fadd float %tmp_32_11_1_1, %temp_1_11_1_1
  %temp_1_11_1_2 = fmul float %A_load_71, %B_load_8
  %tmp_32_11_1_3 = fadd float %tmp_32_11_1_2, %temp_1_11_1_2
  %p_addr186 = add i12 %p_addr110_cast1, 15
  %p_addr186_cast = sext i12 %p_addr186 to i32
  %tmp_211 = zext i32 %p_addr186_cast to i64
  %A_addr_76 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_211
  %A_load_76 = load float* %A_addr_76, align 4
  %temp_1_11_1_3 = fmul float %A_load_76, %B_load_9
  %tmp_31_11_1 = fadd float %tmp_32_11_1_3, %temp_1_11_1_3
  %temp_11_2 = fmul float %A_load_57, %B_load_10
  %tmp_32_11_2 = fadd float %tmp_31_11_1, %temp_11_2
  %temp_1_11_2 = fmul float %A_load_62, %B_load_11
  %tmp_32_11_2_1 = fadd float %tmp_32_11_2, %temp_1_11_2
  %temp_1_11_2_1 = fmul float %A_load_67, %B_load_12
  %tmp_32_11_2_2 = fadd float %tmp_32_11_2_1, %temp_1_11_2_1
  %temp_1_11_2_2 = fmul float %A_load_72, %B_load_13
  %tmp_32_11_2_3 = fadd float %tmp_32_11_2_2, %temp_1_11_2_2
  %p_addr183 = add i12 %p_addr118_cast1, 15
  %p_addr183_cast = sext i12 %p_addr183 to i32
  %tmp_212 = zext i32 %p_addr183_cast to i64
  %A_addr_77 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_212
  %A_load_77 = load float* %A_addr_77, align 4
  %temp_1_11_2_3 = fmul float %A_load_77, %B_load_14
  %tmp_31_11_2 = fadd float %tmp_32_11_2_3, %temp_1_11_2_3
  %temp_11_3 = fmul float %A_load_58, %B_load_15
  %tmp_32_11_3 = fadd float %tmp_31_11_2, %temp_11_3
  %temp_1_11_3 = fmul float %A_load_63, %B_load_16
  %tmp_32_11_3_1 = fadd float %tmp_32_11_3, %temp_1_11_3
  %temp_1_11_3_1 = fmul float %A_load_68, %B_load_17
  %tmp_32_11_3_2 = fadd float %tmp_32_11_3_1, %temp_1_11_3_1
  %temp_1_11_3_2 = fmul float %A_load_73, %B_load_18
  %tmp_32_11_3_3 = fadd float %tmp_32_11_3_2, %temp_1_11_3_2
  %p_addr180 = add i12 %p_addr125_cast1, 15
  %p_addr180_cast = sext i12 %p_addr180 to i32
  %tmp_213 = zext i32 %p_addr180_cast to i64
  %A_addr_78 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_213
  %A_load_78 = load float* %A_addr_78, align 4
  %temp_1_11_3_3 = fmul float %A_load_78, %B_load_19
  %tmp_31_11_3 = fadd float %tmp_32_11_3_3, %temp_1_11_3_3
  %temp_11_4 = fmul float %A_load_59, %B_load_20
  %tmp_32_11_4 = fadd float %tmp_31_11_3, %temp_11_4
  %temp_1_11_4 = fmul float %A_load_64, %B_load_21
  %tmp_32_11_4_1 = fadd float %tmp_32_11_4, %temp_1_11_4
  %temp_1_11_4_1 = fmul float %A_load_69, %B_load_22
  %tmp_32_11_4_2 = fadd float %tmp_32_11_4_1, %temp_1_11_4_1
  %temp_1_11_4_2 = fmul float %A_load_74, %B_load_23
  %tmp_32_11_4_3 = fadd float %tmp_32_11_4_2, %temp_1_11_4_2
  %p_addr177 = add i12 %p_addr133_cast1, 15
  %p_addr177_cast = sext i12 %p_addr177 to i32
  %tmp_214 = zext i32 %p_addr177_cast to i64
  %A_addr_79 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_214
  %A_load_79 = load float* %A_addr_79, align 4
  %temp_1_11_4_3 = fmul float %A_load_79, %B_load_24
  %tmp_31_11_4 = fadd float %tmp_32_11_4_3, %temp_1_11_4_3
  store float %tmp_31_11_4, float* %conv_addr_11, align 4
  %p_addr218 = add i32 %p_addr101, 12
  %tmp_215 = zext i32 %p_addr218 to i64
  %conv_addr_12 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_215
  %temp_11 = fmul float %A_load_60, %B_load
  %tmp_32_11 = fadd float %temp_11, 0.000000e+00
  %temp_1_11 = fmul float %A_load_65, %B_load_1
  %tmp_32_12_0_1 = fadd float %tmp_32_11, %temp_1_11
  %temp_1_12_0_1 = fmul float %A_load_70, %B_load_2
  %tmp_32_12_0_2 = fadd float %tmp_32_12_0_1, %temp_1_12_0_1
  %temp_1_12_0_2 = fmul float %A_load_75, %B_load_3
  %tmp_32_12_0_3 = fadd float %tmp_32_12_0_2, %temp_1_12_0_2
  %p_addr174 = add i12 %p_addr103_cast1, 16
  %p_addr174_cast = sext i12 %p_addr174 to i32
  %tmp_216 = zext i32 %p_addr174_cast to i64
  %A_addr_80 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_216
  %A_load_80 = load float* %A_addr_80, align 4
  %temp_1_12_0_3 = fmul float %A_load_80, %B_load_4
  %tmp_31_11 = fadd float %tmp_32_12_0_3, %temp_1_12_0_3
  %temp_12_1 = fmul float %A_load_61, %B_load_5
  %tmp_32_12_1 = fadd float %tmp_31_11, %temp_12_1
  %temp_1_12_1 = fmul float %A_load_66, %B_load_6
  %tmp_32_12_1_1 = fadd float %tmp_32_12_1, %temp_1_12_1
  %temp_1_12_1_1 = fmul float %A_load_71, %B_load_7
  %tmp_32_12_1_2 = fadd float %tmp_32_12_1_1, %temp_1_12_1_1
  %temp_1_12_1_2 = fmul float %A_load_76, %B_load_8
  %tmp_32_12_1_3 = fadd float %tmp_32_12_1_2, %temp_1_12_1_2
  %p_addr171 = add i12 %p_addr110_cast1, 16
  %p_addr171_cast = sext i12 %p_addr171 to i32
  %tmp_217 = zext i32 %p_addr171_cast to i64
  %A_addr_81 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_217
  %A_load_81 = load float* %A_addr_81, align 4
  %temp_1_12_1_3 = fmul float %A_load_81, %B_load_9
  %tmp_31_12_1 = fadd float %tmp_32_12_1_3, %temp_1_12_1_3
  %temp_12_2 = fmul float %A_load_62, %B_load_10
  %tmp_32_12_2 = fadd float %tmp_31_12_1, %temp_12_2
  %temp_1_12_2 = fmul float %A_load_67, %B_load_11
  %tmp_32_12_2_1 = fadd float %tmp_32_12_2, %temp_1_12_2
  %temp_1_12_2_1 = fmul float %A_load_72, %B_load_12
  %tmp_32_12_2_2 = fadd float %tmp_32_12_2_1, %temp_1_12_2_1
  %temp_1_12_2_2 = fmul float %A_load_77, %B_load_13
  %tmp_32_12_2_3 = fadd float %tmp_32_12_2_2, %temp_1_12_2_2
  %p_addr168 = add i12 %p_addr118_cast1, 16
  %p_addr168_cast = sext i12 %p_addr168 to i32
  %tmp_218 = zext i32 %p_addr168_cast to i64
  %A_addr_82 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_218
  %A_load_82 = load float* %A_addr_82, align 4
  %temp_1_12_2_3 = fmul float %A_load_82, %B_load_14
  %tmp_31_12_2 = fadd float %tmp_32_12_2_3, %temp_1_12_2_3
  %temp_12_3 = fmul float %A_load_63, %B_load_15
  %tmp_32_12_3 = fadd float %tmp_31_12_2, %temp_12_3
  %temp_1_12_3 = fmul float %A_load_68, %B_load_16
  %tmp_32_12_3_1 = fadd float %tmp_32_12_3, %temp_1_12_3
  %temp_1_12_3_1 = fmul float %A_load_73, %B_load_17
  %tmp_32_12_3_2 = fadd float %tmp_32_12_3_1, %temp_1_12_3_1
  %temp_1_12_3_2 = fmul float %A_load_78, %B_load_18
  %tmp_32_12_3_3 = fadd float %tmp_32_12_3_2, %temp_1_12_3_2
  %p_addr165 = add i12 %p_addr125_cast1, 16
  %p_addr165_cast = sext i12 %p_addr165 to i32
  %tmp_219 = zext i32 %p_addr165_cast to i64
  %A_addr_83 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_219
  %A_load_83 = load float* %A_addr_83, align 4
  %temp_1_12_3_3 = fmul float %A_load_83, %B_load_19
  %tmp_31_12_3 = fadd float %tmp_32_12_3_3, %temp_1_12_3_3
  %temp_12_4 = fmul float %A_load_64, %B_load_20
  %tmp_32_12_4 = fadd float %tmp_31_12_3, %temp_12_4
  %temp_1_12_4 = fmul float %A_load_69, %B_load_21
  %tmp_32_12_4_1 = fadd float %tmp_32_12_4, %temp_1_12_4
  %temp_1_12_4_1 = fmul float %A_load_74, %B_load_22
  %tmp_32_12_4_2 = fadd float %tmp_32_12_4_1, %temp_1_12_4_1
  %temp_1_12_4_2 = fmul float %A_load_79, %B_load_23
  %tmp_32_12_4_3 = fadd float %tmp_32_12_4_2, %temp_1_12_4_2
  %p_addr162 = add i12 %p_addr133_cast1, 16
  %p_addr162_cast = sext i12 %p_addr162 to i32
  %tmp_220 = zext i32 %p_addr162_cast to i64
  %A_addr_84 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_220
  %A_load_84 = load float* %A_addr_84, align 4
  %temp_1_12_4_3 = fmul float %A_load_84, %B_load_24
  %tmp_31_12_4 = fadd float %tmp_32_12_4_3, %temp_1_12_4_3
  store float %tmp_31_12_4, float* %conv_addr_12, align 4
  %p_addr219 = add i32 %p_addr101, 13
  %tmp_221 = zext i32 %p_addr219 to i64
  %conv_addr_13 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_221
  %temp_12 = fmul float %A_load_65, %B_load
  %tmp_32_12 = fadd float %temp_12, 0.000000e+00
  %temp_1_12 = fmul float %A_load_70, %B_load_1
  %tmp_32_13_0_1 = fadd float %tmp_32_12, %temp_1_12
  %temp_1_13_0_1 = fmul float %A_load_75, %B_load_2
  %tmp_32_13_0_2 = fadd float %tmp_32_13_0_1, %temp_1_13_0_1
  %temp_1_13_0_2 = fmul float %A_load_80, %B_load_3
  %tmp_32_13_0_3 = fadd float %tmp_32_13_0_2, %temp_1_13_0_2
  %p_addr159 = add i12 %p_addr103_cast1, 17
  %p_addr159_cast = sext i12 %p_addr159 to i32
  %tmp_222 = zext i32 %p_addr159_cast to i64
  %A_addr_85 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_222
  %A_load_85 = load float* %A_addr_85, align 4
  %temp_1_13_0_3 = fmul float %A_load_85, %B_load_4
  %tmp_31_12 = fadd float %tmp_32_13_0_3, %temp_1_13_0_3
  %temp_13_1 = fmul float %A_load_66, %B_load_5
  %tmp_32_13_1 = fadd float %tmp_31_12, %temp_13_1
  %temp_1_13_1 = fmul float %A_load_71, %B_load_6
  %tmp_32_13_1_1 = fadd float %tmp_32_13_1, %temp_1_13_1
  %temp_1_13_1_1 = fmul float %A_load_76, %B_load_7
  %tmp_32_13_1_2 = fadd float %tmp_32_13_1_1, %temp_1_13_1_1
  %temp_1_13_1_2 = fmul float %A_load_81, %B_load_8
  %tmp_32_13_1_3 = fadd float %tmp_32_13_1_2, %temp_1_13_1_2
  %p_addr156 = add i12 %p_addr110_cast1, 17
  %p_addr156_cast = sext i12 %p_addr156 to i32
  %tmp_223 = zext i32 %p_addr156_cast to i64
  %A_addr_86 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_223
  %A_load_86 = load float* %A_addr_86, align 4
  %temp_1_13_1_3 = fmul float %A_load_86, %B_load_9
  %tmp_31_13_1 = fadd float %tmp_32_13_1_3, %temp_1_13_1_3
  %temp_13_2 = fmul float %A_load_67, %B_load_10
  %tmp_32_13_2 = fadd float %tmp_31_13_1, %temp_13_2
  %temp_1_13_2 = fmul float %A_load_72, %B_load_11
  %tmp_32_13_2_1 = fadd float %tmp_32_13_2, %temp_1_13_2
  %temp_1_13_2_1 = fmul float %A_load_77, %B_load_12
  %tmp_32_13_2_2 = fadd float %tmp_32_13_2_1, %temp_1_13_2_1
  %temp_1_13_2_2 = fmul float %A_load_82, %B_load_13
  %tmp_32_13_2_3 = fadd float %tmp_32_13_2_2, %temp_1_13_2_2
  %p_addr153 = add i12 %p_addr118_cast1, 17
  %p_addr153_cast = sext i12 %p_addr153 to i32
  %tmp_224 = zext i32 %p_addr153_cast to i64
  %A_addr_87 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_224
  %A_load_87 = load float* %A_addr_87, align 4
  %temp_1_13_2_3 = fmul float %A_load_87, %B_load_14
  %tmp_31_13_2 = fadd float %tmp_32_13_2_3, %temp_1_13_2_3
  %temp_13_3 = fmul float %A_load_68, %B_load_15
  %tmp_32_13_3 = fadd float %tmp_31_13_2, %temp_13_3
  %temp_1_13_3 = fmul float %A_load_73, %B_load_16
  %tmp_32_13_3_1 = fadd float %tmp_32_13_3, %temp_1_13_3
  %temp_1_13_3_1 = fmul float %A_load_78, %B_load_17
  %tmp_32_13_3_2 = fadd float %tmp_32_13_3_1, %temp_1_13_3_1
  %temp_1_13_3_2 = fmul float %A_load_83, %B_load_18
  %tmp_32_13_3_3 = fadd float %tmp_32_13_3_2, %temp_1_13_3_2
  %p_addr150 = add i12 %p_addr125_cast1, 17
  %p_addr150_cast = sext i12 %p_addr150 to i32
  %tmp_225 = zext i32 %p_addr150_cast to i64
  %A_addr_88 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_225
  %A_load_88 = load float* %A_addr_88, align 4
  %temp_1_13_3_3 = fmul float %A_load_88, %B_load_19
  %tmp_31_13_3 = fadd float %tmp_32_13_3_3, %temp_1_13_3_3
  %temp_13_4 = fmul float %A_load_69, %B_load_20
  %tmp_32_13_4 = fadd float %tmp_31_13_3, %temp_13_4
  %temp_1_13_4 = fmul float %A_load_74, %B_load_21
  %tmp_32_13_4_1 = fadd float %tmp_32_13_4, %temp_1_13_4
  %temp_1_13_4_1 = fmul float %A_load_79, %B_load_22
  %tmp_32_13_4_2 = fadd float %tmp_32_13_4_1, %temp_1_13_4_1
  %temp_1_13_4_2 = fmul float %A_load_84, %B_load_23
  %tmp_32_13_4_3 = fadd float %tmp_32_13_4_2, %temp_1_13_4_2
  %p_addr147 = add i12 %p_addr133_cast1, 17
  %p_addr147_cast = sext i12 %p_addr147 to i32
  %tmp_226 = zext i32 %p_addr147_cast to i64
  %A_addr_89 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_226
  %A_load_89 = load float* %A_addr_89, align 4
  %temp_1_13_4_3 = fmul float %A_load_89, %B_load_24
  %tmp_31_13_4 = fadd float %tmp_32_13_4_3, %temp_1_13_4_3
  store float %tmp_31_13_4, float* %conv_addr_13, align 4
  %p_addr220 = add i32 %p_addr101, 14
  %tmp_227 = zext i32 %p_addr220 to i64
  %conv_addr_14 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_227
  %temp_13 = fmul float %A_load_70, %B_load
  %tmp_32_13 = fadd float %temp_13, 0.000000e+00
  %temp_1_13 = fmul float %A_load_75, %B_load_1
  %tmp_32_14_0_1 = fadd float %tmp_32_13, %temp_1_13
  %temp_1_14_0_1 = fmul float %A_load_80, %B_load_2
  %tmp_32_14_0_2 = fadd float %tmp_32_14_0_1, %temp_1_14_0_1
  %temp_1_14_0_2 = fmul float %A_load_85, %B_load_3
  %tmp_32_14_0_3 = fadd float %tmp_32_14_0_2, %temp_1_14_0_2
  %p_addr144 = add i12 %p_addr103_cast1, 18
  %p_addr144_cast = sext i12 %p_addr144 to i32
  %tmp_228 = zext i32 %p_addr144_cast to i64
  %A_addr_90 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_228
  %A_load_90 = load float* %A_addr_90, align 4
  %temp_1_14_0_3 = fmul float %A_load_90, %B_load_4
  %tmp_31_13 = fadd float %tmp_32_14_0_3, %temp_1_14_0_3
  %temp_14_1 = fmul float %A_load_71, %B_load_5
  %tmp_32_14_1 = fadd float %tmp_31_13, %temp_14_1
  %temp_1_14_1 = fmul float %A_load_76, %B_load_6
  %tmp_32_14_1_1 = fadd float %tmp_32_14_1, %temp_1_14_1
  %temp_1_14_1_1 = fmul float %A_load_81, %B_load_7
  %tmp_32_14_1_2 = fadd float %tmp_32_14_1_1, %temp_1_14_1_1
  %temp_1_14_1_2 = fmul float %A_load_86, %B_load_8
  %tmp_32_14_1_3 = fadd float %tmp_32_14_1_2, %temp_1_14_1_2
  %p_addr141 = add i12 %p_addr110_cast1, 18
  %p_addr141_cast = sext i12 %p_addr141 to i32
  %tmp_229 = zext i32 %p_addr141_cast to i64
  %A_addr_91 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_229
  %A_load_91 = load float* %A_addr_91, align 4
  %temp_1_14_1_3 = fmul float %A_load_91, %B_load_9
  %tmp_31_14_1 = fadd float %tmp_32_14_1_3, %temp_1_14_1_3
  %temp_14_2 = fmul float %A_load_72, %B_load_10
  %tmp_32_14_2 = fadd float %tmp_31_14_1, %temp_14_2
  %temp_1_14_2 = fmul float %A_load_77, %B_load_11
  %tmp_32_14_2_1 = fadd float %tmp_32_14_2, %temp_1_14_2
  %temp_1_14_2_1 = fmul float %A_load_82, %B_load_12
  %tmp_32_14_2_2 = fadd float %tmp_32_14_2_1, %temp_1_14_2_1
  %temp_1_14_2_2 = fmul float %A_load_87, %B_load_13
  %tmp_32_14_2_3 = fadd float %tmp_32_14_2_2, %temp_1_14_2_2
  %p_addr138 = add i12 %p_addr118_cast1, 18
  %p_addr138_cast = sext i12 %p_addr138 to i32
  %tmp_230 = zext i32 %p_addr138_cast to i64
  %A_addr_92 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_230
  %A_load_92 = load float* %A_addr_92, align 4
  %temp_1_14_2_3 = fmul float %A_load_92, %B_load_14
  %tmp_31_14_2 = fadd float %tmp_32_14_2_3, %temp_1_14_2_3
  %temp_14_3 = fmul float %A_load_73, %B_load_15
  %tmp_32_14_3 = fadd float %tmp_31_14_2, %temp_14_3
  %temp_1_14_3 = fmul float %A_load_78, %B_load_16
  %tmp_32_14_3_1 = fadd float %tmp_32_14_3, %temp_1_14_3
  %temp_1_14_3_1 = fmul float %A_load_83, %B_load_17
  %tmp_32_14_3_2 = fadd float %tmp_32_14_3_1, %temp_1_14_3_1
  %temp_1_14_3_2 = fmul float %A_load_88, %B_load_18
  %tmp_32_14_3_3 = fadd float %tmp_32_14_3_2, %temp_1_14_3_2
  %p_addr135 = add i12 %p_addr125_cast1, 18
  %p_addr135_cast = sext i12 %p_addr135 to i32
  %tmp_231 = zext i32 %p_addr135_cast to i64
  %A_addr_93 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_231
  %A_load_93 = load float* %A_addr_93, align 4
  %temp_1_14_3_3 = fmul float %A_load_93, %B_load_19
  %tmp_31_14_3 = fadd float %tmp_32_14_3_3, %temp_1_14_3_3
  %temp_14_4 = fmul float %A_load_74, %B_load_20
  %tmp_32_14_4 = fadd float %tmp_31_14_3, %temp_14_4
  %temp_1_14_4 = fmul float %A_load_79, %B_load_21
  %tmp_32_14_4_1 = fadd float %tmp_32_14_4, %temp_1_14_4
  %temp_1_14_4_1 = fmul float %A_load_84, %B_load_22
  %tmp_32_14_4_2 = fadd float %tmp_32_14_4_1, %temp_1_14_4_1
  %temp_1_14_4_2 = fmul float %A_load_89, %B_load_23
  %tmp_32_14_4_3 = fadd float %tmp_32_14_4_2, %temp_1_14_4_2
  %p_addr132 = add i12 %p_addr133_cast1, 18
  %p_addr132_cast = sext i12 %p_addr132 to i32
  %tmp_232 = zext i32 %p_addr132_cast to i64
  %A_addr_94 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_232
  %A_load_94 = load float* %A_addr_94, align 4
  %temp_1_14_4_3 = fmul float %A_load_94, %B_load_24
  %tmp_31_14_4 = fadd float %tmp_32_14_4_3, %temp_1_14_4_3
  store float %tmp_31_14_4, float* %conv_addr_14, align 4
  %p_addr221 = add i32 %p_addr101, 15
  %tmp_233 = zext i32 %p_addr221 to i64
  %conv_addr_15 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_233
  %temp_14 = fmul float %A_load_75, %B_load
  %tmp_32_14 = fadd float %temp_14, 0.000000e+00
  %temp_1_14 = fmul float %A_load_80, %B_load_1
  %tmp_32_15_0_1 = fadd float %tmp_32_14, %temp_1_14
  %temp_1_15_0_1 = fmul float %A_load_85, %B_load_2
  %tmp_32_15_0_2 = fadd float %tmp_32_15_0_1, %temp_1_15_0_1
  %temp_1_15_0_2 = fmul float %A_load_90, %B_load_3
  %tmp_32_15_0_3 = fadd float %tmp_32_15_0_2, %temp_1_15_0_2
  %p_addr129 = add i12 %p_addr103_cast1, 19
  %p_addr129_cast = sext i12 %p_addr129 to i32
  %tmp_234 = zext i32 %p_addr129_cast to i64
  %A_addr_95 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_234
  %A_load_95 = load float* %A_addr_95, align 4
  %temp_1_15_0_3 = fmul float %A_load_95, %B_load_4
  %tmp_31_14 = fadd float %tmp_32_15_0_3, %temp_1_15_0_3
  %temp_15_1 = fmul float %A_load_76, %B_load_5
  %tmp_32_15_1 = fadd float %tmp_31_14, %temp_15_1
  %temp_1_15_1 = fmul float %A_load_81, %B_load_6
  %tmp_32_15_1_1 = fadd float %tmp_32_15_1, %temp_1_15_1
  %temp_1_15_1_1 = fmul float %A_load_86, %B_load_7
  %tmp_32_15_1_2 = fadd float %tmp_32_15_1_1, %temp_1_15_1_1
  %temp_1_15_1_2 = fmul float %A_load_91, %B_load_8
  %tmp_32_15_1_3 = fadd float %tmp_32_15_1_2, %temp_1_15_1_2
  %p_addr126 = add i12 %p_addr110_cast1, 19
  %p_addr126_cast = sext i12 %p_addr126 to i32
  %tmp_235 = zext i32 %p_addr126_cast to i64
  %A_addr_96 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_235
  %A_load_96 = load float* %A_addr_96, align 4
  %temp_1_15_1_3 = fmul float %A_load_96, %B_load_9
  %tmp_31_15_1 = fadd float %tmp_32_15_1_3, %temp_1_15_1_3
  %temp_15_2 = fmul float %A_load_77, %B_load_10
  %tmp_32_15_2 = fadd float %tmp_31_15_1, %temp_15_2
  %temp_1_15_2 = fmul float %A_load_82, %B_load_11
  %tmp_32_15_2_1 = fadd float %tmp_32_15_2, %temp_1_15_2
  %temp_1_15_2_1 = fmul float %A_load_87, %B_load_12
  %tmp_32_15_2_2 = fadd float %tmp_32_15_2_1, %temp_1_15_2_1
  %temp_1_15_2_2 = fmul float %A_load_92, %B_load_13
  %tmp_32_15_2_3 = fadd float %tmp_32_15_2_2, %temp_1_15_2_2
  %p_addr123 = add i12 %p_addr118_cast1, 19
  %p_addr123_cast = sext i12 %p_addr123 to i32
  %tmp_236 = zext i32 %p_addr123_cast to i64
  %A_addr_97 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_236
  %A_load_97 = load float* %A_addr_97, align 4
  %temp_1_15_2_3 = fmul float %A_load_97, %B_load_14
  %tmp_31_15_2 = fadd float %tmp_32_15_2_3, %temp_1_15_2_3
  %temp_15_3 = fmul float %A_load_78, %B_load_15
  %tmp_32_15_3 = fadd float %tmp_31_15_2, %temp_15_3
  %temp_1_15_3 = fmul float %A_load_83, %B_load_16
  %tmp_32_15_3_1 = fadd float %tmp_32_15_3, %temp_1_15_3
  %temp_1_15_3_1 = fmul float %A_load_88, %B_load_17
  %tmp_32_15_3_2 = fadd float %tmp_32_15_3_1, %temp_1_15_3_1
  %temp_1_15_3_2 = fmul float %A_load_93, %B_load_18
  %tmp_32_15_3_3 = fadd float %tmp_32_15_3_2, %temp_1_15_3_2
  %p_addr120 = add i12 %p_addr125_cast1, 19
  %p_addr120_cast = sext i12 %p_addr120 to i32
  %tmp_237 = zext i32 %p_addr120_cast to i64
  %A_addr_98 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_237
  %A_load_98 = load float* %A_addr_98, align 4
  %temp_1_15_3_3 = fmul float %A_load_98, %B_load_19
  %tmp_31_15_3 = fadd float %tmp_32_15_3_3, %temp_1_15_3_3
  %temp_15_4 = fmul float %A_load_79, %B_load_20
  %tmp_32_15_4 = fadd float %tmp_31_15_3, %temp_15_4
  %temp_1_15_4 = fmul float %A_load_84, %B_load_21
  %tmp_32_15_4_1 = fadd float %tmp_32_15_4, %temp_1_15_4
  %temp_1_15_4_1 = fmul float %A_load_89, %B_load_22
  %tmp_32_15_4_2 = fadd float %tmp_32_15_4_1, %temp_1_15_4_1
  %temp_1_15_4_2 = fmul float %A_load_94, %B_load_23
  %tmp_32_15_4_3 = fadd float %tmp_32_15_4_2, %temp_1_15_4_2
  %p_addr117 = add i12 %p_addr133_cast1, 19
  %p_addr117_cast = sext i12 %p_addr117 to i32
  %tmp_238 = zext i32 %p_addr117_cast to i64
  %A_addr_99 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_238
  %A_load_99 = load float* %A_addr_99, align 4
  %temp_1_15_4_3 = fmul float %A_load_99, %B_load_24
  %tmp_31_15_4 = fadd float %tmp_32_15_4_3, %temp_1_15_4_3
  store float %tmp_31_15_4, float* %conv_addr_15, align 4
  %p_addr222 = add i32 %p_addr101, 16
  %tmp_239 = zext i32 %p_addr222 to i64
  %conv_addr_16 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_239
  %temp_15 = fmul float %A_load_80, %B_load
  %tmp_32_15 = fadd float %temp_15, 0.000000e+00
  %temp_1_15 = fmul float %A_load_85, %B_load_1
  %tmp_32_16_0_1 = fadd float %tmp_32_15, %temp_1_15
  %temp_1_16_0_1 = fmul float %A_load_90, %B_load_2
  %tmp_32_16_0_2 = fadd float %tmp_32_16_0_1, %temp_1_16_0_1
  %temp_1_16_0_2 = fmul float %A_load_95, %B_load_3
  %tmp_32_16_0_3 = fadd float %tmp_32_16_0_2, %temp_1_16_0_2
  %p_addr114 = add i12 %p_addr103_cast1, 20
  %p_addr114_cast = sext i12 %p_addr114 to i32
  %tmp_240 = zext i32 %p_addr114_cast to i64
  %A_addr_100 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_240
  %A_load_100 = load float* %A_addr_100, align 4
  %temp_1_16_0_3 = fmul float %A_load_100, %B_load_4
  %tmp_31_15 = fadd float %tmp_32_16_0_3, %temp_1_16_0_3
  %temp_16_1 = fmul float %A_load_81, %B_load_5
  %tmp_32_16_1 = fadd float %tmp_31_15, %temp_16_1
  %temp_1_16_1 = fmul float %A_load_86, %B_load_6
  %tmp_32_16_1_1 = fadd float %tmp_32_16_1, %temp_1_16_1
  %temp_1_16_1_1 = fmul float %A_load_91, %B_load_7
  %tmp_32_16_1_2 = fadd float %tmp_32_16_1_1, %temp_1_16_1_1
  %temp_1_16_1_2 = fmul float %A_load_96, %B_load_8
  %tmp_32_16_1_3 = fadd float %tmp_32_16_1_2, %temp_1_16_1_2
  %p_addr111 = add i12 %p_addr110_cast1, 20
  %p_addr111_cast = sext i12 %p_addr111 to i32
  %tmp_241 = zext i32 %p_addr111_cast to i64
  %A_addr_101 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_241
  %A_load_101 = load float* %A_addr_101, align 4
  %temp_1_16_1_3 = fmul float %A_load_101, %B_load_9
  %tmp_31_16_1 = fadd float %tmp_32_16_1_3, %temp_1_16_1_3
  %temp_16_2 = fmul float %A_load_82, %B_load_10
  %tmp_32_16_2 = fadd float %tmp_31_16_1, %temp_16_2
  %temp_1_16_2 = fmul float %A_load_87, %B_load_11
  %tmp_32_16_2_1 = fadd float %tmp_32_16_2, %temp_1_16_2
  %temp_1_16_2_1 = fmul float %A_load_92, %B_load_12
  %tmp_32_16_2_2 = fadd float %tmp_32_16_2_1, %temp_1_16_2_1
  %temp_1_16_2_2 = fmul float %A_load_97, %B_load_13
  %tmp_32_16_2_3 = fadd float %tmp_32_16_2_2, %temp_1_16_2_2
  %p_addr108 = add i12 %p_addr118_cast1, 20
  %p_addr108_cast = sext i12 %p_addr108 to i32
  %tmp_242 = zext i32 %p_addr108_cast to i64
  %A_addr_102 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_242
  %A_load_102 = load float* %A_addr_102, align 4
  %temp_1_16_2_3 = fmul float %A_load_102, %B_load_14
  %tmp_31_16_2 = fadd float %tmp_32_16_2_3, %temp_1_16_2_3
  %temp_16_3 = fmul float %A_load_83, %B_load_15
  %tmp_32_16_3 = fadd float %tmp_31_16_2, %temp_16_3
  %temp_1_16_3 = fmul float %A_load_88, %B_load_16
  %tmp_32_16_3_1 = fadd float %tmp_32_16_3, %temp_1_16_3
  %temp_1_16_3_1 = fmul float %A_load_93, %B_load_17
  %tmp_32_16_3_2 = fadd float %tmp_32_16_3_1, %temp_1_16_3_1
  %temp_1_16_3_2 = fmul float %A_load_98, %B_load_18
  %tmp_32_16_3_3 = fadd float %tmp_32_16_3_2, %temp_1_16_3_2
  %p_addr105 = add i12 %p_addr125_cast1, 20
  %p_addr105_cast = sext i12 %p_addr105 to i32
  %tmp_243 = zext i32 %p_addr105_cast to i64
  %A_addr_103 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_243
  %A_load_103 = load float* %A_addr_103, align 4
  %temp_1_16_3_3 = fmul float %A_load_103, %B_load_19
  %tmp_31_16_3 = fadd float %tmp_32_16_3_3, %temp_1_16_3_3
  %temp_16_4 = fmul float %A_load_84, %B_load_20
  %tmp_32_16_4 = fadd float %tmp_31_16_3, %temp_16_4
  %temp_1_16_4 = fmul float %A_load_89, %B_load_21
  %tmp_32_16_4_1 = fadd float %tmp_32_16_4, %temp_1_16_4
  %temp_1_16_4_1 = fmul float %A_load_94, %B_load_22
  %tmp_32_16_4_2 = fadd float %tmp_32_16_4_1, %temp_1_16_4_1
  %temp_1_16_4_2 = fmul float %A_load_99, %B_load_23
  %tmp_32_16_4_3 = fadd float %tmp_32_16_4_2, %temp_1_16_4_2
  %p_addr102 = add i12 %p_addr133_cast1, 20
  %p_addr102_cast = sext i12 %p_addr102 to i32
  %tmp_244 = zext i32 %p_addr102_cast to i64
  %A_addr_104 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_244
  %A_load_104 = load float* %A_addr_104, align 4
  %temp_1_16_4_3 = fmul float %A_load_104, %B_load_24
  %tmp_31_16_4 = fadd float %tmp_32_16_4_3, %temp_1_16_4_3
  store float %tmp_31_16_4, float* %conv_addr_16, align 4
  %p_addr223 = add i32 %p_addr101, 17
  %tmp_245 = zext i32 %p_addr223 to i64
  %conv_addr_17 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_245
  %temp_16 = fmul float %A_load_85, %B_load
  %tmp_32_16 = fadd float %temp_16, 0.000000e+00
  %temp_1_16 = fmul float %A_load_90, %B_load_1
  %tmp_32_17_0_1 = fadd float %tmp_32_16, %temp_1_16
  %temp_1_17_0_1 = fmul float %A_load_95, %B_load_2
  %tmp_32_17_0_2 = fadd float %tmp_32_17_0_1, %temp_1_17_0_1
  %temp_1_17_0_2 = fmul float %A_load_100, %B_load_3
  %tmp_32_17_0_3 = fadd float %tmp_32_17_0_2, %temp_1_17_0_2
  %p_addr99 = add i12 %p_addr103_cast1, 21
  %p_addr99_cast = sext i12 %p_addr99 to i32
  %tmp_246 = zext i32 %p_addr99_cast to i64
  %A_addr_105 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_246
  %A_load_105 = load float* %A_addr_105, align 4
  %temp_1_17_0_3 = fmul float %A_load_105, %B_load_4
  %tmp_31_16 = fadd float %tmp_32_17_0_3, %temp_1_17_0_3
  %temp_17_1 = fmul float %A_load_86, %B_load_5
  %tmp_32_17_1 = fadd float %tmp_31_16, %temp_17_1
  %temp_1_17_1 = fmul float %A_load_91, %B_load_6
  %tmp_32_17_1_1 = fadd float %tmp_32_17_1, %temp_1_17_1
  %temp_1_17_1_1 = fmul float %A_load_96, %B_load_7
  %tmp_32_17_1_2 = fadd float %tmp_32_17_1_1, %temp_1_17_1_1
  %temp_1_17_1_2 = fmul float %A_load_101, %B_load_8
  %tmp_32_17_1_3 = fadd float %tmp_32_17_1_2, %temp_1_17_1_2
  %p_addr96 = add i12 %p_addr110_cast1, 21
  %p_addr96_cast = sext i12 %p_addr96 to i32
  %tmp_247 = zext i32 %p_addr96_cast to i64
  %A_addr_106 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_247
  %A_load_106 = load float* %A_addr_106, align 4
  %temp_1_17_1_3 = fmul float %A_load_106, %B_load_9
  %tmp_31_17_1 = fadd float %tmp_32_17_1_3, %temp_1_17_1_3
  %temp_17_2 = fmul float %A_load_87, %B_load_10
  %tmp_32_17_2 = fadd float %tmp_31_17_1, %temp_17_2
  %temp_1_17_2 = fmul float %A_load_92, %B_load_11
  %tmp_32_17_2_1 = fadd float %tmp_32_17_2, %temp_1_17_2
  %temp_1_17_2_1 = fmul float %A_load_97, %B_load_12
  %tmp_32_17_2_2 = fadd float %tmp_32_17_2_1, %temp_1_17_2_1
  %temp_1_17_2_2 = fmul float %A_load_102, %B_load_13
  %tmp_32_17_2_3 = fadd float %tmp_32_17_2_2, %temp_1_17_2_2
  %p_addr93 = add i12 %p_addr118_cast1, 21
  %p_addr93_cast = sext i12 %p_addr93 to i32
  %tmp_248 = zext i32 %p_addr93_cast to i64
  %A_addr_107 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_248
  %A_load_107 = load float* %A_addr_107, align 4
  %temp_1_17_2_3 = fmul float %A_load_107, %B_load_14
  %tmp_31_17_2 = fadd float %tmp_32_17_2_3, %temp_1_17_2_3
  %temp_17_3 = fmul float %A_load_88, %B_load_15
  %tmp_32_17_3 = fadd float %tmp_31_17_2, %temp_17_3
  %temp_1_17_3 = fmul float %A_load_93, %B_load_16
  %tmp_32_17_3_1 = fadd float %tmp_32_17_3, %temp_1_17_3
  %temp_1_17_3_1 = fmul float %A_load_98, %B_load_17
  %tmp_32_17_3_2 = fadd float %tmp_32_17_3_1, %temp_1_17_3_1
  %temp_1_17_3_2 = fmul float %A_load_103, %B_load_18
  %tmp_32_17_3_3 = fadd float %tmp_32_17_3_2, %temp_1_17_3_2
  %p_addr90 = add i12 %p_addr125_cast1, 21
  %p_addr90_cast = sext i12 %p_addr90 to i32
  %tmp_249 = zext i32 %p_addr90_cast to i64
  %A_addr_108 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_249
  %A_load_108 = load float* %A_addr_108, align 4
  %temp_1_17_3_3 = fmul float %A_load_108, %B_load_19
  %tmp_31_17_3 = fadd float %tmp_32_17_3_3, %temp_1_17_3_3
  %temp_17_4 = fmul float %A_load_89, %B_load_20
  %tmp_32_17_4 = fadd float %tmp_31_17_3, %temp_17_4
  %temp_1_17_4 = fmul float %A_load_94, %B_load_21
  %tmp_32_17_4_1 = fadd float %tmp_32_17_4, %temp_1_17_4
  %temp_1_17_4_1 = fmul float %A_load_99, %B_load_22
  %tmp_32_17_4_2 = fadd float %tmp_32_17_4_1, %temp_1_17_4_1
  %temp_1_17_4_2 = fmul float %A_load_104, %B_load_23
  %tmp_32_17_4_3 = fadd float %tmp_32_17_4_2, %temp_1_17_4_2
  %p_addr87 = add i12 %p_addr133_cast1, 21
  %p_addr87_cast = sext i12 %p_addr87 to i32
  %tmp_250 = zext i32 %p_addr87_cast to i64
  %A_addr_109 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_250
  %A_load_109 = load float* %A_addr_109, align 4
  %temp_1_17_4_3 = fmul float %A_load_109, %B_load_24
  %tmp_31_17_4 = fadd float %tmp_32_17_4_3, %temp_1_17_4_3
  store float %tmp_31_17_4, float* %conv_addr_17, align 4
  %p_addr224 = add i32 %p_addr101, 18
  %tmp_251 = zext i32 %p_addr224 to i64
  %conv_addr_18 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_251
  %temp_17 = fmul float %A_load_90, %B_load
  %tmp_32_17 = fadd float %temp_17, 0.000000e+00
  %temp_1_17 = fmul float %A_load_95, %B_load_1
  %tmp_32_18_0_1 = fadd float %tmp_32_17, %temp_1_17
  %temp_1_18_0_1 = fmul float %A_load_100, %B_load_2
  %tmp_32_18_0_2 = fadd float %tmp_32_18_0_1, %temp_1_18_0_1
  %temp_1_18_0_2 = fmul float %A_load_105, %B_load_3
  %tmp_32_18_0_3 = fadd float %tmp_32_18_0_2, %temp_1_18_0_2
  %p_addr84 = add i12 %p_addr103_cast1, 22
  %p_addr84_cast = sext i12 %p_addr84 to i32
  %tmp_252 = zext i32 %p_addr84_cast to i64
  %A_addr_110 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_252
  %A_load_110 = load float* %A_addr_110, align 4
  %temp_1_18_0_3 = fmul float %A_load_110, %B_load_4
  %tmp_31_17 = fadd float %tmp_32_18_0_3, %temp_1_18_0_3
  %temp_18_1 = fmul float %A_load_91, %B_load_5
  %tmp_32_18_1 = fadd float %tmp_31_17, %temp_18_1
  %temp_1_18_1 = fmul float %A_load_96, %B_load_6
  %tmp_32_18_1_1 = fadd float %tmp_32_18_1, %temp_1_18_1
  %temp_1_18_1_1 = fmul float %A_load_101, %B_load_7
  %tmp_32_18_1_2 = fadd float %tmp_32_18_1_1, %temp_1_18_1_1
  %temp_1_18_1_2 = fmul float %A_load_106, %B_load_8
  %tmp_32_18_1_3 = fadd float %tmp_32_18_1_2, %temp_1_18_1_2
  %p_addr81 = add i12 %p_addr110_cast1, 22
  %p_addr81_cast = sext i12 %p_addr81 to i32
  %tmp_253 = zext i32 %p_addr81_cast to i64
  %A_addr_111 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_253
  %A_load_111 = load float* %A_addr_111, align 4
  %temp_1_18_1_3 = fmul float %A_load_111, %B_load_9
  %tmp_31_18_1 = fadd float %tmp_32_18_1_3, %temp_1_18_1_3
  %temp_18_2 = fmul float %A_load_92, %B_load_10
  %tmp_32_18_2 = fadd float %tmp_31_18_1, %temp_18_2
  %temp_1_18_2 = fmul float %A_load_97, %B_load_11
  %tmp_32_18_2_1 = fadd float %tmp_32_18_2, %temp_1_18_2
  %temp_1_18_2_1 = fmul float %A_load_102, %B_load_12
  %tmp_32_18_2_2 = fadd float %tmp_32_18_2_1, %temp_1_18_2_1
  %temp_1_18_2_2 = fmul float %A_load_107, %B_load_13
  %tmp_32_18_2_3 = fadd float %tmp_32_18_2_2, %temp_1_18_2_2
  %p_addr78 = add i12 %p_addr118_cast1, 22
  %p_addr78_cast = sext i12 %p_addr78 to i32
  %tmp_254 = zext i32 %p_addr78_cast to i64
  %A_addr_112 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_254
  %A_load_112 = load float* %A_addr_112, align 4
  %temp_1_18_2_3 = fmul float %A_load_112, %B_load_14
  %tmp_31_18_2 = fadd float %tmp_32_18_2_3, %temp_1_18_2_3
  %temp_18_3 = fmul float %A_load_93, %B_load_15
  %tmp_32_18_3 = fadd float %tmp_31_18_2, %temp_18_3
  %temp_1_18_3 = fmul float %A_load_98, %B_load_16
  %tmp_32_18_3_1 = fadd float %tmp_32_18_3, %temp_1_18_3
  %temp_1_18_3_1 = fmul float %A_load_103, %B_load_17
  %tmp_32_18_3_2 = fadd float %tmp_32_18_3_1, %temp_1_18_3_1
  %temp_1_18_3_2 = fmul float %A_load_108, %B_load_18
  %tmp_32_18_3_3 = fadd float %tmp_32_18_3_2, %temp_1_18_3_2
  %p_addr75 = add i12 %p_addr125_cast1, 22
  %p_addr75_cast = sext i12 %p_addr75 to i32
  %tmp_255 = zext i32 %p_addr75_cast to i64
  %A_addr_113 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_255
  %A_load_113 = load float* %A_addr_113, align 4
  %temp_1_18_3_3 = fmul float %A_load_113, %B_load_19
  %tmp_31_18_3 = fadd float %tmp_32_18_3_3, %temp_1_18_3_3
  %temp_18_4 = fmul float %A_load_94, %B_load_20
  %tmp_32_18_4 = fadd float %tmp_31_18_3, %temp_18_4
  %temp_1_18_4 = fmul float %A_load_99, %B_load_21
  %tmp_32_18_4_1 = fadd float %tmp_32_18_4, %temp_1_18_4
  %temp_1_18_4_1 = fmul float %A_load_104, %B_load_22
  %tmp_32_18_4_2 = fadd float %tmp_32_18_4_1, %temp_1_18_4_1
  %temp_1_18_4_2 = fmul float %A_load_109, %B_load_23
  %tmp_32_18_4_3 = fadd float %tmp_32_18_4_2, %temp_1_18_4_2
  %p_addr72 = add i12 %p_addr133_cast1, 22
  %p_addr72_cast = sext i12 %p_addr72 to i32
  %tmp_256 = zext i32 %p_addr72_cast to i64
  %A_addr_114 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_256
  %A_load_114 = load float* %A_addr_114, align 4
  %temp_1_18_4_3 = fmul float %A_load_114, %B_load_24
  %tmp_31_18_4 = fadd float %tmp_32_18_4_3, %temp_1_18_4_3
  store float %tmp_31_18_4, float* %conv_addr_18, align 4
  %p_addr225 = add i32 %p_addr101, 19
  %tmp_257 = zext i32 %p_addr225 to i64
  %conv_addr_19 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_257
  %temp_18 = fmul float %A_load_95, %B_load
  %tmp_32_18 = fadd float %temp_18, 0.000000e+00
  %temp_1_18 = fmul float %A_load_100, %B_load_1
  %tmp_32_19_0_1 = fadd float %tmp_32_18, %temp_1_18
  %temp_1_19_0_1 = fmul float %A_load_105, %B_load_2
  %tmp_32_19_0_2 = fadd float %tmp_32_19_0_1, %temp_1_19_0_1
  %temp_1_19_0_2 = fmul float %A_load_110, %B_load_3
  %tmp_32_19_0_3 = fadd float %tmp_32_19_0_2, %temp_1_19_0_2
  %p_addr69 = add i12 %p_addr103_cast1, 23
  %p_addr69_cast = sext i12 %p_addr69 to i32
  %tmp_258 = zext i32 %p_addr69_cast to i64
  %A_addr_115 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_258
  %A_load_115 = load float* %A_addr_115, align 4
  %temp_1_19_0_3 = fmul float %A_load_115, %B_load_4
  %tmp_31_18 = fadd float %tmp_32_19_0_3, %temp_1_19_0_3
  %temp_19_1 = fmul float %A_load_96, %B_load_5
  %tmp_32_19_1 = fadd float %tmp_31_18, %temp_19_1
  %temp_1_19_1 = fmul float %A_load_101, %B_load_6
  %tmp_32_19_1_1 = fadd float %tmp_32_19_1, %temp_1_19_1
  %temp_1_19_1_1 = fmul float %A_load_106, %B_load_7
  %tmp_32_19_1_2 = fadd float %tmp_32_19_1_1, %temp_1_19_1_1
  %temp_1_19_1_2 = fmul float %A_load_111, %B_load_8
  %tmp_32_19_1_3 = fadd float %tmp_32_19_1_2, %temp_1_19_1_2
  %p_addr66 = add i12 %p_addr110_cast1, 23
  %p_addr66_cast = sext i12 %p_addr66 to i32
  %tmp_259 = zext i32 %p_addr66_cast to i64
  %A_addr_116 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_259
  %A_load_116 = load float* %A_addr_116, align 4
  %temp_1_19_1_3 = fmul float %A_load_116, %B_load_9
  %tmp_31_19_1 = fadd float %tmp_32_19_1_3, %temp_1_19_1_3
  %temp_19_2 = fmul float %A_load_97, %B_load_10
  %tmp_32_19_2 = fadd float %tmp_31_19_1, %temp_19_2
  %temp_1_19_2 = fmul float %A_load_102, %B_load_11
  %tmp_32_19_2_1 = fadd float %tmp_32_19_2, %temp_1_19_2
  %temp_1_19_2_1 = fmul float %A_load_107, %B_load_12
  %tmp_32_19_2_2 = fadd float %tmp_32_19_2_1, %temp_1_19_2_1
  %temp_1_19_2_2 = fmul float %A_load_112, %B_load_13
  %tmp_32_19_2_3 = fadd float %tmp_32_19_2_2, %temp_1_19_2_2
  %p_addr63 = add i12 %p_addr118_cast1, 23
  %p_addr63_cast = sext i12 %p_addr63 to i32
  %tmp_260 = zext i32 %p_addr63_cast to i64
  %A_addr_117 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_260
  %A_load_117 = load float* %A_addr_117, align 4
  %temp_1_19_2_3 = fmul float %A_load_117, %B_load_14
  %tmp_31_19_2 = fadd float %tmp_32_19_2_3, %temp_1_19_2_3
  %temp_19_3 = fmul float %A_load_98, %B_load_15
  %tmp_32_19_3 = fadd float %tmp_31_19_2, %temp_19_3
  %temp_1_19_3 = fmul float %A_load_103, %B_load_16
  %tmp_32_19_3_1 = fadd float %tmp_32_19_3, %temp_1_19_3
  %temp_1_19_3_1 = fmul float %A_load_108, %B_load_17
  %tmp_32_19_3_2 = fadd float %tmp_32_19_3_1, %temp_1_19_3_1
  %temp_1_19_3_2 = fmul float %A_load_113, %B_load_18
  %tmp_32_19_3_3 = fadd float %tmp_32_19_3_2, %temp_1_19_3_2
  %p_addr60 = add i12 %p_addr125_cast1, 23
  %p_addr60_cast = sext i12 %p_addr60 to i32
  %tmp_261 = zext i32 %p_addr60_cast to i64
  %A_addr_118 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_261
  %A_load_118 = load float* %A_addr_118, align 4
  %temp_1_19_3_3 = fmul float %A_load_118, %B_load_19
  %tmp_31_19_3 = fadd float %tmp_32_19_3_3, %temp_1_19_3_3
  %temp_19_4 = fmul float %A_load_99, %B_load_20
  %tmp_32_19_4 = fadd float %tmp_31_19_3, %temp_19_4
  %temp_1_19_4 = fmul float %A_load_104, %B_load_21
  %tmp_32_19_4_1 = fadd float %tmp_32_19_4, %temp_1_19_4
  %temp_1_19_4_1 = fmul float %A_load_109, %B_load_22
  %tmp_32_19_4_2 = fadd float %tmp_32_19_4_1, %temp_1_19_4_1
  %temp_1_19_4_2 = fmul float %A_load_114, %B_load_23
  %tmp_32_19_4_3 = fadd float %tmp_32_19_4_2, %temp_1_19_4_2
  %p_addr57 = add i12 %p_addr133_cast1, 23
  %p_addr57_cast = sext i12 %p_addr57 to i32
  %tmp_262 = zext i32 %p_addr57_cast to i64
  %A_addr_119 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_262
  %A_load_119 = load float* %A_addr_119, align 4
  %temp_1_19_4_3 = fmul float %A_load_119, %B_load_24
  %tmp_31_19_4 = fadd float %tmp_32_19_4_3, %temp_1_19_4_3
  store float %tmp_31_19_4, float* %conv_addr_19, align 4
  %p_addr226 = add i32 %p_addr101, 20
  %tmp_263 = zext i32 %p_addr226 to i64
  %conv_addr_20 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_263
  %temp_19 = fmul float %A_load_100, %B_load
  %tmp_32_19 = fadd float %temp_19, 0.000000e+00
  %temp_1_19 = fmul float %A_load_105, %B_load_1
  %tmp_32_20_0_1 = fadd float %tmp_32_19, %temp_1_19
  %temp_1_20_0_1 = fmul float %A_load_110, %B_load_2
  %tmp_32_20_0_2 = fadd float %tmp_32_20_0_1, %temp_1_20_0_1
  %temp_1_20_0_2 = fmul float %A_load_115, %B_load_3
  %tmp_32_20_0_3 = fadd float %tmp_32_20_0_2, %temp_1_20_0_2
  %p_addr54 = add i12 %p_addr103_cast1, 24
  %p_addr54_cast = sext i12 %p_addr54 to i32
  %tmp_264 = zext i32 %p_addr54_cast to i64
  %A_addr_120 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_264
  %A_load_120 = load float* %A_addr_120, align 4
  %temp_1_20_0_3 = fmul float %A_load_120, %B_load_4
  %tmp_31_19 = fadd float %tmp_32_20_0_3, %temp_1_20_0_3
  %temp_20_1 = fmul float %A_load_101, %B_load_5
  %tmp_32_20_1 = fadd float %tmp_31_19, %temp_20_1
  %temp_1_20_1 = fmul float %A_load_106, %B_load_6
  %tmp_32_20_1_1 = fadd float %tmp_32_20_1, %temp_1_20_1
  %temp_1_20_1_1 = fmul float %A_load_111, %B_load_7
  %tmp_32_20_1_2 = fadd float %tmp_32_20_1_1, %temp_1_20_1_1
  %temp_1_20_1_2 = fmul float %A_load_116, %B_load_8
  %tmp_32_20_1_3 = fadd float %tmp_32_20_1_2, %temp_1_20_1_2
  %p_addr51 = add i12 %p_addr110_cast1, 24
  %p_addr51_cast = sext i12 %p_addr51 to i32
  %tmp_265 = zext i32 %p_addr51_cast to i64
  %A_addr_121 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_265
  %A_load_121 = load float* %A_addr_121, align 4
  %temp_1_20_1_3 = fmul float %A_load_121, %B_load_9
  %tmp_31_20_1 = fadd float %tmp_32_20_1_3, %temp_1_20_1_3
  %temp_20_2 = fmul float %A_load_102, %B_load_10
  %tmp_32_20_2 = fadd float %tmp_31_20_1, %temp_20_2
  %temp_1_20_2 = fmul float %A_load_107, %B_load_11
  %tmp_32_20_2_1 = fadd float %tmp_32_20_2, %temp_1_20_2
  %temp_1_20_2_1 = fmul float %A_load_112, %B_load_12
  %tmp_32_20_2_2 = fadd float %tmp_32_20_2_1, %temp_1_20_2_1
  %temp_1_20_2_2 = fmul float %A_load_117, %B_load_13
  %tmp_32_20_2_3 = fadd float %tmp_32_20_2_2, %temp_1_20_2_2
  %p_addr48 = add i12 %p_addr118_cast1, 24
  %p_addr48_cast = sext i12 %p_addr48 to i32
  %tmp_266 = zext i32 %p_addr48_cast to i64
  %A_addr_122 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_266
  %A_load_122 = load float* %A_addr_122, align 4
  %temp_1_20_2_3 = fmul float %A_load_122, %B_load_14
  %tmp_31_20_2 = fadd float %tmp_32_20_2_3, %temp_1_20_2_3
  %temp_20_3 = fmul float %A_load_103, %B_load_15
  %tmp_32_20_3 = fadd float %tmp_31_20_2, %temp_20_3
  %temp_1_20_3 = fmul float %A_load_108, %B_load_16
  %tmp_32_20_3_1 = fadd float %tmp_32_20_3, %temp_1_20_3
  %temp_1_20_3_1 = fmul float %A_load_113, %B_load_17
  %tmp_32_20_3_2 = fadd float %tmp_32_20_3_1, %temp_1_20_3_1
  %temp_1_20_3_2 = fmul float %A_load_118, %B_load_18
  %tmp_32_20_3_3 = fadd float %tmp_32_20_3_2, %temp_1_20_3_2
  %p_addr45 = add i12 %p_addr125_cast1, 24
  %p_addr45_cast = sext i12 %p_addr45 to i32
  %tmp_267 = zext i32 %p_addr45_cast to i64
  %A_addr_123 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_267
  %A_load_123 = load float* %A_addr_123, align 4
  %temp_1_20_3_3 = fmul float %A_load_123, %B_load_19
  %tmp_31_20_3 = fadd float %tmp_32_20_3_3, %temp_1_20_3_3
  %temp_20_4 = fmul float %A_load_104, %B_load_20
  %tmp_32_20_4 = fadd float %tmp_31_20_3, %temp_20_4
  %temp_1_20_4 = fmul float %A_load_109, %B_load_21
  %tmp_32_20_4_1 = fadd float %tmp_32_20_4, %temp_1_20_4
  %temp_1_20_4_1 = fmul float %A_load_114, %B_load_22
  %tmp_32_20_4_2 = fadd float %tmp_32_20_4_1, %temp_1_20_4_1
  %temp_1_20_4_2 = fmul float %A_load_119, %B_load_23
  %tmp_32_20_4_3 = fadd float %tmp_32_20_4_2, %temp_1_20_4_2
  %p_addr42 = add i12 %p_addr133_cast1, 24
  %p_addr42_cast = sext i12 %p_addr42 to i32
  %tmp_268 = zext i32 %p_addr42_cast to i64
  %A_addr_124 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_268
  %A_load_124 = load float* %A_addr_124, align 4
  %temp_1_20_4_3 = fmul float %A_load_124, %B_load_24
  %tmp_31_20_4 = fadd float %tmp_32_20_4_3, %temp_1_20_4_3
  store float %tmp_31_20_4, float* %conv_addr_20, align 4
  %p_addr227 = add i32 %p_addr101, 21
  %tmp_269 = zext i32 %p_addr227 to i64
  %conv_addr_21 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_269
  %temp_20 = fmul float %A_load_105, %B_load
  %tmp_32_20 = fadd float %temp_20, 0.000000e+00
  %temp_1_20 = fmul float %A_load_110, %B_load_1
  %tmp_32_21_0_1 = fadd float %tmp_32_20, %temp_1_20
  %temp_1_21_0_1 = fmul float %A_load_115, %B_load_2
  %tmp_32_21_0_2 = fadd float %tmp_32_21_0_1, %temp_1_21_0_1
  %temp_1_21_0_2 = fmul float %A_load_120, %B_load_3
  %tmp_32_21_0_3 = fadd float %tmp_32_21_0_2, %temp_1_21_0_2
  %p_addr39 = add i12 %p_addr103_cast1, 25
  %p_addr39_cast = sext i12 %p_addr39 to i32
  %tmp_270 = zext i32 %p_addr39_cast to i64
  %A_addr_125 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_270
  %A_load_125 = load float* %A_addr_125, align 4
  %temp_1_21_0_3 = fmul float %A_load_125, %B_load_4
  %tmp_31_20 = fadd float %tmp_32_21_0_3, %temp_1_21_0_3
  %temp_21_1 = fmul float %A_load_106, %B_load_5
  %tmp_32_21_1 = fadd float %tmp_31_20, %temp_21_1
  %temp_1_21_1 = fmul float %A_load_111, %B_load_6
  %tmp_32_21_1_1 = fadd float %tmp_32_21_1, %temp_1_21_1
  %temp_1_21_1_1 = fmul float %A_load_116, %B_load_7
  %tmp_32_21_1_2 = fadd float %tmp_32_21_1_1, %temp_1_21_1_1
  %temp_1_21_1_2 = fmul float %A_load_121, %B_load_8
  %tmp_32_21_1_3 = fadd float %tmp_32_21_1_2, %temp_1_21_1_2
  %p_addr36 = add i12 %p_addr110_cast1, 25
  %p_addr36_cast = sext i12 %p_addr36 to i32
  %tmp_271 = zext i32 %p_addr36_cast to i64
  %A_addr_126 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_271
  %A_load_126 = load float* %A_addr_126, align 4
  %temp_1_21_1_3 = fmul float %A_load_126, %B_load_9
  %tmp_31_21_1 = fadd float %tmp_32_21_1_3, %temp_1_21_1_3
  %temp_21_2 = fmul float %A_load_107, %B_load_10
  %tmp_32_21_2 = fadd float %tmp_31_21_1, %temp_21_2
  %temp_1_21_2 = fmul float %A_load_112, %B_load_11
  %tmp_32_21_2_1 = fadd float %tmp_32_21_2, %temp_1_21_2
  %temp_1_21_2_1 = fmul float %A_load_117, %B_load_12
  %tmp_32_21_2_2 = fadd float %tmp_32_21_2_1, %temp_1_21_2_1
  %temp_1_21_2_2 = fmul float %A_load_122, %B_load_13
  %tmp_32_21_2_3 = fadd float %tmp_32_21_2_2, %temp_1_21_2_2
  %p_addr33 = add i12 %p_addr118_cast1, 25
  %p_addr33_cast = sext i12 %p_addr33 to i32
  %tmp_272 = zext i32 %p_addr33_cast to i64
  %A_addr_127 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_272
  %A_load_127 = load float* %A_addr_127, align 4
  %temp_1_21_2_3 = fmul float %A_load_127, %B_load_14
  %tmp_31_21_2 = fadd float %tmp_32_21_2_3, %temp_1_21_2_3
  %temp_21_3 = fmul float %A_load_108, %B_load_15
  %tmp_32_21_3 = fadd float %tmp_31_21_2, %temp_21_3
  %temp_1_21_3 = fmul float %A_load_113, %B_load_16
  %tmp_32_21_3_1 = fadd float %tmp_32_21_3, %temp_1_21_3
  %temp_1_21_3_1 = fmul float %A_load_118, %B_load_17
  %tmp_32_21_3_2 = fadd float %tmp_32_21_3_1, %temp_1_21_3_1
  %temp_1_21_3_2 = fmul float %A_load_123, %B_load_18
  %tmp_32_21_3_3 = fadd float %tmp_32_21_3_2, %temp_1_21_3_2
  %p_addr30 = add i12 %p_addr125_cast1, 25
  %p_addr30_cast = sext i12 %p_addr30 to i32
  %tmp_273 = zext i32 %p_addr30_cast to i64
  %A_addr_128 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_273
  %A_load_128 = load float* %A_addr_128, align 4
  %temp_1_21_3_3 = fmul float %A_load_128, %B_load_19
  %tmp_31_21_3 = fadd float %tmp_32_21_3_3, %temp_1_21_3_3
  %temp_21_4 = fmul float %A_load_109, %B_load_20
  %tmp_32_21_4 = fadd float %tmp_31_21_3, %temp_21_4
  %temp_1_21_4 = fmul float %A_load_114, %B_load_21
  %tmp_32_21_4_1 = fadd float %tmp_32_21_4, %temp_1_21_4
  %temp_1_21_4_1 = fmul float %A_load_119, %B_load_22
  %tmp_32_21_4_2 = fadd float %tmp_32_21_4_1, %temp_1_21_4_1
  %temp_1_21_4_2 = fmul float %A_load_124, %B_load_23
  %tmp_32_21_4_3 = fadd float %tmp_32_21_4_2, %temp_1_21_4_2
  %p_addr27 = add i12 %p_addr133_cast1, 25
  %p_addr27_cast = sext i12 %p_addr27 to i32
  %tmp_274 = zext i32 %p_addr27_cast to i64
  %A_addr_129 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_274
  %A_load_129 = load float* %A_addr_129, align 4
  %temp_1_21_4_3 = fmul float %A_load_129, %B_load_24
  %tmp_31_21_4 = fadd float %tmp_32_21_4_3, %temp_1_21_4_3
  store float %tmp_31_21_4, float* %conv_addr_21, align 4
  %p_addr228 = add i32 %p_addr101, 22
  %tmp_275 = zext i32 %p_addr228 to i64
  %conv_addr_22 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_275
  %temp_21 = fmul float %A_load_110, %B_load
  %tmp_32_21 = fadd float %temp_21, 0.000000e+00
  %temp_1_21 = fmul float %A_load_115, %B_load_1
  %tmp_32_22_0_1 = fadd float %tmp_32_21, %temp_1_21
  %temp_1_22_0_1 = fmul float %A_load_120, %B_load_2
  %tmp_32_22_0_2 = fadd float %tmp_32_22_0_1, %temp_1_22_0_1
  %temp_1_22_0_2 = fmul float %A_load_125, %B_load_3
  %tmp_32_22_0_3 = fadd float %tmp_32_22_0_2, %temp_1_22_0_2
  %p_addr24 = add i12 %p_addr103_cast1, 26
  %p_addr24_cast = sext i12 %p_addr24 to i32
  %tmp_276 = zext i32 %p_addr24_cast to i64
  %A_addr_130 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_276
  %A_load_130 = load float* %A_addr_130, align 4
  %temp_1_22_0_3 = fmul float %A_load_130, %B_load_4
  %tmp_31_21 = fadd float %tmp_32_22_0_3, %temp_1_22_0_3
  %temp_22_1 = fmul float %A_load_111, %B_load_5
  %tmp_32_22_1 = fadd float %tmp_31_21, %temp_22_1
  %temp_1_22_1 = fmul float %A_load_116, %B_load_6
  %tmp_32_22_1_1 = fadd float %tmp_32_22_1, %temp_1_22_1
  %temp_1_22_1_1 = fmul float %A_load_121, %B_load_7
  %tmp_32_22_1_2 = fadd float %tmp_32_22_1_1, %temp_1_22_1_1
  %temp_1_22_1_2 = fmul float %A_load_126, %B_load_8
  %tmp_32_22_1_3 = fadd float %tmp_32_22_1_2, %temp_1_22_1_2
  %p_addr21 = add i12 %p_addr110_cast1, 26
  %p_addr21_cast = sext i12 %p_addr21 to i32
  %tmp_277 = zext i32 %p_addr21_cast to i64
  %A_addr_131 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_277
  %A_load_131 = load float* %A_addr_131, align 4
  %temp_1_22_1_3 = fmul float %A_load_131, %B_load_9
  %tmp_31_22_1 = fadd float %tmp_32_22_1_3, %temp_1_22_1_3
  %temp_22_2 = fmul float %A_load_112, %B_load_10
  %tmp_32_22_2 = fadd float %tmp_31_22_1, %temp_22_2
  %temp_1_22_2 = fmul float %A_load_117, %B_load_11
  %tmp_32_22_2_1 = fadd float %tmp_32_22_2, %temp_1_22_2
  %temp_1_22_2_1 = fmul float %A_load_122, %B_load_12
  %tmp_32_22_2_2 = fadd float %tmp_32_22_2_1, %temp_1_22_2_1
  %temp_1_22_2_2 = fmul float %A_load_127, %B_load_13
  %tmp_32_22_2_3 = fadd float %tmp_32_22_2_2, %temp_1_22_2_2
  %p_addr18 = add i12 %p_addr118_cast1, 26
  %p_addr18_cast = sext i12 %p_addr18 to i32
  %tmp_278 = zext i32 %p_addr18_cast to i64
  %A_addr_132 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_278
  %A_load_132 = load float* %A_addr_132, align 4
  %temp_1_22_2_3 = fmul float %A_load_132, %B_load_14
  %tmp_31_22_2 = fadd float %tmp_32_22_2_3, %temp_1_22_2_3
  %temp_22_3 = fmul float %A_load_113, %B_load_15
  %tmp_32_22_3 = fadd float %tmp_31_22_2, %temp_22_3
  %temp_1_22_3 = fmul float %A_load_118, %B_load_16
  %tmp_32_22_3_1 = fadd float %tmp_32_22_3, %temp_1_22_3
  %temp_1_22_3_1 = fmul float %A_load_123, %B_load_17
  %tmp_32_22_3_2 = fadd float %tmp_32_22_3_1, %temp_1_22_3_1
  %temp_1_22_3_2 = fmul float %A_load_128, %B_load_18
  %tmp_32_22_3_3 = fadd float %tmp_32_22_3_2, %temp_1_22_3_2
  %p_addr15 = add i12 %p_addr125_cast1, 26
  %p_addr15_cast = sext i12 %p_addr15 to i32
  %tmp_279 = zext i32 %p_addr15_cast to i64
  %A_addr_133 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_279
  %A_load_133 = load float* %A_addr_133, align 4
  %temp_1_22_3_3 = fmul float %A_load_133, %B_load_19
  %tmp_31_22_3 = fadd float %tmp_32_22_3_3, %temp_1_22_3_3
  %temp_22_4 = fmul float %A_load_114, %B_load_20
  %tmp_32_22_4 = fadd float %tmp_31_22_3, %temp_22_4
  %temp_1_22_4 = fmul float %A_load_119, %B_load_21
  %tmp_32_22_4_1 = fadd float %tmp_32_22_4, %temp_1_22_4
  %temp_1_22_4_1 = fmul float %A_load_124, %B_load_22
  %tmp_32_22_4_2 = fadd float %tmp_32_22_4_1, %temp_1_22_4_1
  %temp_1_22_4_2 = fmul float %A_load_129, %B_load_23
  %tmp_32_22_4_3 = fadd float %tmp_32_22_4_2, %temp_1_22_4_2
  %p_addr12 = add i12 %p_addr133_cast1, 26
  %p_addr12_cast = sext i12 %p_addr12 to i32
  %tmp_280 = zext i32 %p_addr12_cast to i64
  %A_addr_134 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_280
  %A_load_134 = load float* %A_addr_134, align 4
  %temp_1_22_4_3 = fmul float %A_load_134, %B_load_24
  %tmp_31_22_4 = fadd float %tmp_32_22_4_3, %temp_1_22_4_3
  store float %tmp_31_22_4, float* %conv_addr_22, align 4
  %p_addr229 = add i32 %p_addr101, 23
  %tmp_281 = zext i32 %p_addr229 to i64
  %conv_addr_23 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_281
  %temp_22 = fmul float %A_load_115, %B_load
  %tmp_32_22 = fadd float %temp_22, 0.000000e+00
  %temp_1_22 = fmul float %A_load_120, %B_load_1
  %tmp_32_23_0_1 = fadd float %tmp_32_22, %temp_1_22
  %temp_1_23_0_1 = fmul float %A_load_125, %B_load_2
  %tmp_32_23_0_2 = fadd float %tmp_32_23_0_1, %temp_1_23_0_1
  %temp_1_23_0_2 = fmul float %A_load_130, %B_load_3
  %tmp_32_23_0_3 = fadd float %tmp_32_23_0_2, %temp_1_23_0_2
  %p_addr9 = add i12 %p_addr103_cast1, 27
  %p_addr9_cast = sext i12 %p_addr9 to i32
  %tmp_282 = zext i32 %p_addr9_cast to i64
  %A_addr_135 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_282
  %A_load_135 = load float* %A_addr_135, align 4
  %temp_1_23_0_3 = fmul float %A_load_135, %B_load_4
  %tmp_31_22 = fadd float %tmp_32_23_0_3, %temp_1_23_0_3
  %temp_23_1 = fmul float %A_load_116, %B_load_5
  %tmp_32_23_1 = fadd float %tmp_31_22, %temp_23_1
  %temp_1_23_1 = fmul float %A_load_121, %B_load_6
  %tmp_32_23_1_1 = fadd float %tmp_32_23_1, %temp_1_23_1
  %temp_1_23_1_1 = fmul float %A_load_126, %B_load_7
  %tmp_32_23_1_2 = fadd float %tmp_32_23_1_1, %temp_1_23_1_1
  %temp_1_23_1_2 = fmul float %A_load_131, %B_load_8
  %tmp_32_23_1_3 = fadd float %tmp_32_23_1_2, %temp_1_23_1_2
  %p_addr7 = add i12 %p_addr110_cast1, 27
  %p_addr7_cast = sext i12 %p_addr7 to i32
  %tmp_283 = zext i32 %p_addr7_cast to i64
  %A_addr_136 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_283
  %A_load_136 = load float* %A_addr_136, align 4
  %temp_1_23_1_3 = fmul float %A_load_136, %B_load_9
  %tmp_31_23_1 = fadd float %tmp_32_23_1_3, %temp_1_23_1_3
  %temp_23_2 = fmul float %A_load_117, %B_load_10
  %tmp_32_23_2 = fadd float %tmp_31_23_1, %temp_23_2
  %temp_1_23_2 = fmul float %A_load_122, %B_load_11
  %tmp_32_23_2_1 = fadd float %tmp_32_23_2, %temp_1_23_2
  %temp_1_23_2_1 = fmul float %A_load_127, %B_load_12
  %tmp_32_23_2_2 = fadd float %tmp_32_23_2_1, %temp_1_23_2_1
  %temp_1_23_2_2 = fmul float %A_load_132, %B_load_13
  %tmp_32_23_2_3 = fadd float %tmp_32_23_2_2, %temp_1_23_2_2
  %p_addr5 = add i12 %p_addr118_cast1, 27
  %p_addr5_cast = sext i12 %p_addr5 to i32
  %tmp_284 = zext i32 %p_addr5_cast to i64
  %A_addr_137 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_284
  %A_load_137 = load float* %A_addr_137, align 4
  %temp_1_23_2_3 = fmul float %A_load_137, %B_load_14
  %tmp_31_23_2 = fadd float %tmp_32_23_2_3, %temp_1_23_2_3
  %temp_23_3 = fmul float %A_load_118, %B_load_15
  %tmp_32_23_3 = fadd float %tmp_31_23_2, %temp_23_3
  %temp_1_23_3 = fmul float %A_load_123, %B_load_16
  %tmp_32_23_3_1 = fadd float %tmp_32_23_3, %temp_1_23_3
  %temp_1_23_3_1 = fmul float %A_load_128, %B_load_17
  %tmp_32_23_3_2 = fadd float %tmp_32_23_3_1, %temp_1_23_3_1
  %temp_1_23_3_2 = fmul float %A_load_133, %B_load_18
  %tmp_32_23_3_3 = fadd float %tmp_32_23_3_2, %temp_1_23_3_2
  %p_addr3 = add i12 %p_addr125_cast1, 27
  %p_addr3_cast = sext i12 %p_addr3 to i32
  %tmp_285 = zext i32 %p_addr3_cast to i64
  %A_addr_138 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_285
  %A_load_138 = load float* %A_addr_138, align 4
  %temp_1_23_3_3 = fmul float %A_load_138, %B_load_19
  %tmp_31_23_3 = fadd float %tmp_32_23_3_3, %temp_1_23_3_3
  %temp_23_4 = fmul float %A_load_119, %B_load_20
  %tmp_32_23_4 = fadd float %tmp_31_23_3, %temp_23_4
  %temp_1_23_4 = fmul float %A_load_124, %B_load_21
  %tmp_32_23_4_1 = fadd float %tmp_32_23_4, %temp_1_23_4
  %temp_1_23_4_1 = fmul float %A_load_129, %B_load_22
  %tmp_32_23_4_2 = fadd float %tmp_32_23_4_1, %temp_1_23_4_1
  %temp_1_23_4_2 = fmul float %A_load_134, %B_load_23
  %tmp_32_23_4_3 = fadd float %tmp_32_23_4_2, %temp_1_23_4_2
  %p_addr1 = add i12 %p_addr133_cast1, 27
  %p_addr1_cast = sext i12 %p_addr1 to i32
  %tmp_286 = zext i32 %p_addr1_cast to i64
  %A_addr_139 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_286
  %A_load_139 = load float* %A_addr_139, align 4
  %temp_1_23_4_3 = fmul float %A_load_139, %B_load_24
  %tmp_31_23_4 = fadd float %tmp_32_23_4_3, %temp_1_23_4_3
  store float %tmp_31_23_4, float* %conv_addr_23, align 4
  %empty_23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str12, i32 %tmp_31)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_24 = trunc i32 %empty to i8
  ret i8 %empty_24
}

define void @obj_detector(float* %HP0, float* %HP1, float* %HP2, float* %HP3, i32 %A, i32 %W0, i32 %W1, i32 %res) {
  %res_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %res)
  %W1_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %W1)
  %W0_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %W0)
  %A_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %A)
  %tmp = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %res_read, i32 2, i32 31)
  %tmp_36 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %W1_read, i32 2, i32 31)
  %tmp_37 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %W0_read, i32 2, i32 31)
  %tmp_38 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %A_read, i32 2, i32 31)
  call void (...)* @_ssdm_op_SpecBitsMap(float* %HP3), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(float* %HP2), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(float* %HP1), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(float* %HP0), !map !30
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @obj_detector_str) nounwind
  %local_A = alloca [784 x float], align 4
  %local_W0 = alloca [150 x float], align 4
  %local_W1 = alloca [1728 x float], align 4
  %s0 = alloca [3456 x float], align 4
  %s1 = alloca [3456 x float], align 4
  %s2_0 = alloca [72 x float], align 4
  %s2_1 = alloca [72 x float], align 4
  %s2_2 = alloca [72 x float], align 4
  %s2_3 = alloca [72 x float], align 4
  %s2_4 = alloca [72 x float], align 4
  %s2_5 = alloca [72 x float], align 4
  %s2_6 = alloca [72 x float], align 4
  %s2_7 = alloca [72 x float], align 4
  %s2_8 = alloca [72 x float], align 4
  %s2_9 = alloca [72 x float], align 4
  %s2_10 = alloca [72 x float], align 4
  %s2_11 = alloca [72 x float], align 4
  %s3 = alloca [864 x float], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %HP0, [6 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [4 x i8]* @p_str4, [6 x i8]* @p_str5, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecInterface(i32 %A, [10 x i8]* @mode, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @bundle, [6 x i8]* @p_str5, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecInterface(float* %HP1, [6 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [4 x i8]* @p_str6, [6 x i8]* @p_str5, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecInterface(i32 %W0, [10 x i8]* @mode7, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @bundle8, [6 x i8]* @p_str5, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecInterface(float* %HP2, [6 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [4 x i8]* @p_str7, [6 x i8]* @p_str5, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecInterface(i32 %W1, [10 x i8]* @mode9, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @bundle10, [6 x i8]* @p_str5, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecInterface(float* %HP3, [6 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [4 x i8]* @p_str8, [6 x i8]* @p_str5, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecInterface(i32 %res, [10 x i8]* @mode11, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @bundle12, [6 x i8]* @p_str5, [1 x i8]* @p_str2)
  %tmp_39 = zext i30 %tmp_38 to i64
  %HP0_addr = getelementptr float* %HP0, i64 %tmp_39
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %HP0_addr, i32 784)
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %0
  %indvar = phi i10 [ 0, %0 ], [ %indvar_next, %burst.rd.body ]
  %exitcond4 = icmp eq i10 %indvar, -240
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784) nounwind
  %indvar_next = add i10 %indvar, 1
  br i1 %exitcond4, label %burst.rd.header9.preheader, label %burst.rd.body

burst.rd.header9.preheader:                       ; preds = %burst.rd.header
  %tmp_40 = zext i30 %tmp_37 to i64
  %HP1_addr = getelementptr float* %HP1, i64 %tmp_40
  %p_rd_req9 = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %HP1_addr, i32 150)
  br label %burst.rd.header9

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str39)
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @memcpy_OC_OC_A_str)
  %tmp_s = zext i10 %indvar to i64
  %HP0_addr_read = call float @_ssdm_op_Read.m_axi.floatP(float* %HP0_addr)
  %local_A_addr = getelementptr [784 x float]* %local_A, i64 0, i64 %tmp_s
  store float %HP0_addr_read, float* %local_A_addr, align 4
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin) nounwind
  br label %burst.rd.header

burst.rd.header9:                                 ; preds = %burst.rd.header9.preheader, %burst.rd.body10
  %indvar1 = phi i8 [ %indvar_next1, %burst.rd.body10 ], [ 0, %burst.rd.header9.preheader ]
  %exitcond3 = icmp eq i8 %indvar1, -106
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 150, i64 150, i64 150) nounwind
  %indvar_next1 = add i8 %indvar1, 1
  br i1 %exitcond3, label %burst.rd.header21.preheader, label %burst.rd.body10

burst.rd.header21.preheader:                      ; preds = %burst.rd.header9
  %tmp_41 = zext i30 %tmp_36 to i64
  %HP2_addr = getelementptr float* %HP2, i64 %tmp_41
  %p_rd_req10 = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %HP2_addr, i32 1728)
  br label %burst.rd.header21

burst.rd.body10:                                  ; preds = %burst.rd.header9
  %burstread_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str41)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @memcpy_OC_OC_W0_str)
  %tmp_287 = zext i8 %indvar1 to i64
  %HP1_addr_read = call float @_ssdm_op_Read.m_axi.floatP(float* %HP1_addr)
  %local_W0_addr = getelementptr [150 x float]* %local_W0, i64 0, i64 %tmp_287
  store float %HP1_addr_read, float* %local_W0_addr, align 4
  %burstread_rend18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin1) nounwind
  br label %burst.rd.header9

burst.rd.header21:                                ; preds = %burst.rd.header21.preheader, %burst.rd.body22
  %indvar2 = phi i11 [ %indvar_next2, %burst.rd.body22 ], [ 0, %burst.rd.header21.preheader ]
  %exitcond5 = icmp eq i11 %indvar2, -320
  %empty_26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1728, i64 1728, i64 1728) nounwind
  %indvar_next2 = add i11 %indvar2, 1
  br i1 %exitcond5, label %burst.rd.end20, label %burst.rd.body22

burst.rd.body22:                                  ; preds = %burst.rd.header21
  %burstread_rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str52)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @memcpy_OC_OC_W1_str)
  %tmp_288 = zext i11 %indvar2 to i64
  %HP2_addr_read = call float @_ssdm_op_Read.m_axi.floatP(float* %HP2_addr)
  %local_W1_addr = getelementptr [1728 x float]* %local_W1, i64 0, i64 %tmp_288
  store float %HP2_addr_read, float* %local_W1_addr, align 4
  %burstread_rend30 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin2) nounwind
  br label %burst.rd.header21

burst.rd.end20:                                   ; preds = %burst.rd.header21, %1
  %i = phi i3 [ %i_1, %1 ], [ 0, %burst.rd.header21 ]
  %exitcond2 = icmp eq i3 %i, -2
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %i_1 = add i3 %i, 1
  br i1 %exitcond2, label %.preheader3, label %1

; <label>:1                                       ; preds = %burst.rd.end20
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str9) nounwind
  call fastcc void @obj_detector_convolve([784 x float]* %local_A, [150 x float]* %local_W0, i3 %i, [3456 x float]* %s0, i3 %i) nounwind
  br label %burst.rd.end20

.preheader3:                                      ; preds = %burst.rd.end20, %2
  %i1 = phi i3 [ %i_2, %2 ], [ 0, %burst.rd.end20 ]
  %exitcond1 = icmp eq i3 %i1, -2
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %i_2 = add i3 %i1, 1
  br i1 %exitcond1, label %.preheader, label %2

; <label>:2                                       ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str10) nounwind
  call fastcc void @obj_detector_ReLU([3456 x float]* nocapture %s0, i3 %i1, [3456 x float]* nocapture %s1, i3 %i1) nounwind
  br label %.preheader3

.preheader:                                       ; preds = %.preheader3, %3
  %i2 = phi i3 [ %i_3, %3 ], [ 0, %.preheader3 ]
  %exitcond = icmp eq i3 %i2, -2
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %i_3 = add i3 %i2, 1
  br i1 %exitcond, label %4, label %3

; <label>:3                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @p_str11) nounwind
  call fastcc void @obj_detector_maxpool([3456 x float]* %s1, i3 %i2, [72 x float]* nocapture %s2_0, [72 x float]* nocapture %s2_1, [72 x float]* nocapture %s2_2, [72 x float]* nocapture %s2_3, [72 x float]* nocapture %s2_4, [72 x float]* nocapture %s2_5, [72 x float]* nocapture %s2_6, [72 x float]* nocapture %s2_7, [72 x float]* nocapture %s2_8, [72 x float]* nocapture %s2_9, [72 x float]* nocapture %s2_10, [72 x float]* nocapture %s2_11, i3 %i2) nounwind
  br label %.preheader

; <label>:4                                       ; preds = %.preheader
  call fastcc void @obj_detector_flatten([72 x float]* nocapture %s2_0, [72 x float]* nocapture %s2_1, [72 x float]* nocapture %s2_2, [72 x float]* nocapture %s2_3, [72 x float]* nocapture %s2_4, [72 x float]* nocapture %s2_5, [72 x float]* nocapture %s2_6, [72 x float]* nocapture %s2_7, [72 x float]* nocapture %s2_8, [72 x float]* nocapture %s2_9, [72 x float]* nocapture %s2_10, [72 x float]* nocapture %s2_11, [864 x float]* %s3) nounwind
  br label %5

; <label>:5                                       ; preds = %6, %4
  %cost_0 = phi float [ 0.000000e+00, %4 ], [ %out, %6 ]
  %i_i = phi i10 [ 0, %4 ], [ %i_4, %6 ]
  %exitcond_i = icmp eq i10 %i_i, -160
  %i_4 = add i10 %i_i, 1
  br i1 %exitcond_i, label %FCL.exit, label %6

; <label>:6                                       ; preds = %5
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 864, i64 864, i64 864) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str18) nounwind
  %tmp_28_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str18) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_i = zext i10 %i_i to i64
  %s3_addr = getelementptr [864 x float]* %s3, i64 0, i64 %tmp_i
  %s3_load = load float* %s3_addr, align 4
  %local_W1_addr_1 = getelementptr [1728 x float]* %local_W1, i64 0, i64 %tmp_i
  %local_W1_load = load float* %local_W1_addr_1, align 4
  %tmp_i_31 = fmul float %s3_load, %local_W1_load
  %out = fadd float %cost_0, %tmp_i_31
  %empty_32 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str18, i32 %tmp_28_i) nounwind
  br label %5

FCL.exit:                                         ; preds = %5, %7
  %cost_1 = phi float [ %out_1, %7 ], [ 0.000000e+00, %5 ]
  %i_i1 = phi i10 [ %i_5, %7 ], [ 0, %5 ]
  %exitcond_i1 = icmp eq i10 %i_i1, -160
  %i_5 = add i10 %i_i1, 1
  br i1 %exitcond_i1, label %FCL.exit34, label %7

; <label>:7                                       ; preds = %FCL.exit
  %empty_33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 864, i64 864, i64 864) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str18) nounwind
  %tmp_28_i1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str18) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_i1 = zext i10 %i_i1 to i64
  %s3_addr_1 = getelementptr [864 x float]* %s3, i64 0, i64 %tmp_i1
  %s3_load_1 = load float* %s3_addr_1, align 4
  %tmp_i1_trn_cast = zext i10 %i_i1 to i11
  %p_addr7 = add i11 %tmp_i1_trn_cast, 864
  %tmp_289 = zext i11 %p_addr7 to i64
  %local_W1_addr_2 = getelementptr [1728 x float]* %local_W1, i64 0, i64 %tmp_289
  %local_W1_load_1 = load float* %local_W1_addr_2, align 4
  %tmp_i1_34 = fmul float %s3_load_1, %local_W1_load_1
  %out_1 = fadd float %cost_1, %tmp_i1_34
  %empty_35 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str18, i32 %tmp_28_i1) nounwind
  br label %FCL.exit

FCL.exit34:                                       ; preds = %FCL.exit
  %call_ret = call fastcc { float, float } @obj_detector_softmax(float %cost_0, float %cost_1) nounwind
  %local_res_0 = extractvalue { float, float } %call_ret, 0
  %local_res_1 = extractvalue { float, float } %call_ret, 1
  %tmp_42 = zext i30 %tmp to i64
  %HP3_addr = getelementptr float* %HP3, i64 %tmp_42
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %HP3_addr, i32 2)
  br label %burst.wr.header

burst.wr.header:                                  ; preds = %burst.wr.body, %FCL.exit34
  %indvar3 = phi i2 [ 0, %FCL.exit34 ], [ %indvar_next3, %burst.wr.body ]
  %exitcond6 = icmp eq i2 %indvar3, -2
  %empty_36 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %indvar_next3 = add i2 %indvar3, 1
  br i1 %exitcond6, label %burst.wr.end, label %burst.wr.body

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str180)
  call void (...)* @_ssdm_op_SpecLoopName([25 x i8]* @memcpy_OC_res_OC_local_res_OC_s)
  %tmp_43 = trunc i2 %indvar3 to i1
  %local_res_load_phi = select i1 %tmp_43, float %local_res_1, float %local_res_0
  call void @_ssdm_op_Write.m_axi.floatP(float* %HP3_addr, float %local_res_load_phi)
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin) nounwind
  br label %burst.wr.header

burst.wr.end:                                     ; preds = %burst.wr.header
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %HP3_addr)
  ret void
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i3.i4(i3, i4) nounwind readnone {
entry:
  %empty = zext i3 %0 to i7
  %empty_37 = zext i4 %1 to i7
  %empty_38 = shl i7 %empty, 4
  %empty_39 = or i7 %empty_38, %empty_37
  ret i7 %empty_39
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_40 = trunc i32 %empty to i30
  ret i30 %empty_40
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i3.i3.i4(i3, i3, i4) nounwind readnone {
entry:
  %empty = zext i3 %1 to i7
  %empty_41 = zext i4 %2 to i7
  %empty_42 = shl i7 %empty, 4
  %empty_43 = or i7 %empty_42, %empty_41
  %empty_44 = zext i3 %0 to i10
  %empty_45 = zext i7 %empty_43 to i10
  %empty_46 = shl i10 %empty_44, 7
  %empty_47 = or i10 %empty_46, %empty_45
  ret i10 %empty_47
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5
  %empty_48 = zext i2 %1 to i5
  %empty_49 = shl i5 %empty, 2
  %empty_50 = or i5 %empty_49, %empty_48
  ret i5 %empty_50
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_51 = zext i3 %1 to i6
  %empty_52 = shl i6 %empty, 3
  %empty_53 = or i6 %empty_52, %empty_51
  ret i6 %empty_53
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3, i5) nounwind readnone {
entry:
  %empty = zext i3 %0 to i8
  %empty_54 = zext i5 %1 to i8
  %empty_55 = shl i8 %empty, 5
  %empty_56 = or i8 %empty_55, %empty_54
  ret i8 %empty_56
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5
  %empty_57 = zext i1 %1 to i5
  %empty_58 = shl i5 %empty, 1
  %empty_59 = or i5 %empty_58, %empty_57
  ret i5 %empty_59
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5, i2) nounwind readnone {
entry:
  %empty = zext i5 %0 to i7
  %empty_60 = zext i2 %1 to i7
  %empty_61 = shl i7 %empty, 2
  %empty_62 = or i7 %empty_61, %empty_60
  ret i7 %empty_62
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5, i5) nounwind readnone {
entry:
  %empty = zext i5 %0 to i10
  %empty_63 = zext i5 %1 to i10
  %empty_64 = shl i10 %empty, 5
  %empty_65 = or i10 %empty_64, %empty_63
  ret i10 %empty_65
}

define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i3 @_ssdm_op_Read.ap_auto.i3(i3) {
entry:
  ret i3 %0
}

define weak double @_ssdm_op_Read.ap_auto.double(double) {
entry:
  ret double %0
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10, i3) nounwind readnone {
entry:
  %empty = zext i10 %0 to i13
  %empty_66 = zext i3 %1 to i13
  %empty_67 = shl i13 %empty, 3
  %empty_68 = or i13 %empty_67, %empty_66
  ret i13 %empty_68
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i10.i5(i10, i5) nounwind readnone {
entry:
  %empty = zext i10 %0 to i15
  %empty_69 = zext i5 %1 to i15
  %empty_70 = shl i15 %empty, 5
  %empty_71 = or i15 %empty_70, %empty_69
  ret i15 %empty_71
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_72 = shl i64 1, %empty
  %empty_73 = and i64 %0, %empty_72
  %empty_74 = icmp ne i64 %empty_73, 0
  ret i1 %empty_74
}

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}
!axi4.master.portmap = !{!7, !8, !9, !10}

!0 = metadata !{metadata !1, [3 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 2, i32 1}
!7 = metadata !{metadata !"HP0", metadata !"A", metadata !"READONLY"}
!8 = metadata !{metadata !"HP1", metadata !"W0", metadata !"READONLY"}
!9 = metadata !{metadata !"HP2", metadata !"W1", metadata !"READONLY"}
!10 = metadata !{metadata !"HP3", metadata !"res", metadata !"WRITEONLY"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 31, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"res", metadata !15, metadata !"float", i32 0, i32 31}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 1, i32 1}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 31, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"W1", metadata !21, metadata !"float", i32 0, i32 31}
!21 = metadata !{metadata !16, metadata !22}
!22 = metadata !{i32 0, i32 863, i32 1}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"W0", metadata !27, metadata !"float", i32 0, i32 31}
!27 = metadata !{metadata !28, metadata !29, metadata !29}
!28 = metadata !{i32 0, i32 5, i32 1}
!29 = metadata !{i32 0, i32 4, i32 1}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 31, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"A", metadata !34, metadata !"float", i32 0, i32 31}
!34 = metadata !{metadata !35, metadata !35}
!35 = metadata !{i32 0, i32 27, i32 1}
