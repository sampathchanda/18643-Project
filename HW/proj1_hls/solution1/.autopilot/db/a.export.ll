; ModuleID = 'C:/Users/sunny/Google_Drive/CMU/Courses/CMU/18643/vivado_projects/proj1_hls/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"bram\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str4 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@p_str5 = private unnamed_addr constant [5 x i8] c"CONV\00", align 1
@p_str6 = private unnamed_addr constant [5 x i8] c"ReLU\00", align 1
@p_str7 = private unnamed_addr constant [8 x i8] c"Maxpool\00", align 1
@p_str8 = private unnamed_addr constant [16 x i8] c"convolve_label5\00", align 1
@p_str11 = private unnamed_addr constant [12 x i8] c"ReLU_label0\00", align 1
@p_str12 = private unnamed_addr constant [15 x i8] c"maxpool_label6\00", align 1
@p_str13 = private unnamed_addr constant [15 x i8] c"flatten_label7\00", align 1
@p_str14 = private unnamed_addr constant [11 x i8] c"FCL_label8\00", align 1
@p_str15 = private unnamed_addr constant [15 x i8] c"softmax_label9\00", align 1
@p_str16 = private unnamed_addr constant [16 x i8] c"softmax_label10\00", align 1
@p_str17 = private unnamed_addr constant [16 x i8] c"softmax_label11\00", align 1
@p_str18 = private unnamed_addr constant [16 x i8] c"softmax_label12\00", align 1
@obj_detector_str = internal unnamed_addr constant [13 x i8] c"obj_detector\00"

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

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare double @llvm.exp.f64(double) nounwind readonly

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

define void @obj_detector([784 x float]* %A, [150 x float]* %W0, [1728 x float]* %W1, [2 x float]* %res) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([784 x float]* %A) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([150 x float]* %W0) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap([1728 x float]* %W1) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([2 x float]* %res) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @obj_detector_str) nounwind
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
  call void (...)* @_ssdm_op_SpecMemCore([150 x float]* %W0, [1 x i8]* @p_str, [12 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([784 x float]* %A, [1 x i8]* @p_str, [12 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([2 x float]* %res, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1728 x float]* %W1, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([150 x float]* %W0, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([784 x float]* %A, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @p_str4, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i3 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond2 = icmp eq i3 %i, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %i_1 = add i3 %i, 1
  br i1 %exitcond2, label %.preheader3, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str5) nounwind
  call fastcc void @obj_detector_convolve([784 x float]* %A, [150 x float]* %W0, i3 %i, [3456 x float]* %s0, i3 %i) nounwind
  br label %1

.preheader3:                                      ; preds = %1, %3
  %i1 = phi i3 [ %i_2, %3 ], [ 0, %1 ]
  %exitcond1 = icmp eq i3 %i1, -2
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %i_2 = add i3 %i1, 1
  br i1 %exitcond1, label %.preheader, label %3

; <label>:3                                       ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str6) nounwind
  call fastcc void @obj_detector_ReLU([3456 x float]* nocapture %s0, i3 %i1, [3456 x float]* nocapture %s1, i3 %i1) nounwind
  br label %.preheader3

.preheader:                                       ; preds = %.preheader3, %4
  %i2 = phi i3 [ %i_3, %4 ], [ 0, %.preheader3 ]
  %exitcond = icmp eq i3 %i2, -2
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %i_3 = add i3 %i2, 1
  br i1 %exitcond, label %5, label %4

; <label>:4                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @p_str7) nounwind
  call fastcc void @obj_detector_maxpool([3456 x float]* %s1, i3 %i2, [72 x float]* nocapture %s2_0, [72 x float]* nocapture %s2_1, [72 x float]* nocapture %s2_2, [72 x float]* nocapture %s2_3, [72 x float]* nocapture %s2_4, [72 x float]* nocapture %s2_5, [72 x float]* nocapture %s2_6, [72 x float]* nocapture %s2_7, [72 x float]* nocapture %s2_8, [72 x float]* nocapture %s2_9, [72 x float]* nocapture %s2_10, [72 x float]* nocapture %s2_11, i3 %i2) nounwind
  br label %.preheader

; <label>:5                                       ; preds = %.preheader
  call fastcc void @obj_detector_flatten([72 x float]* nocapture %s2_0, [72 x float]* nocapture %s2_1, [72 x float]* nocapture %s2_2, [72 x float]* nocapture %s2_3, [72 x float]* nocapture %s2_4, [72 x float]* nocapture %s2_5, [72 x float]* nocapture %s2_6, [72 x float]* nocapture %s2_7, [72 x float]* nocapture %s2_8, [72 x float]* nocapture %s2_9, [72 x float]* nocapture %s2_10, [72 x float]* nocapture %s2_11, [864 x float]* %s3) nounwind
  %cost_0 = call fastcc float @obj_detector_FCL([864 x float]* nocapture %s3, [1728 x float]* %W1, i1 false) nounwind readonly
  %cost_1 = call fastcc float @obj_detector_FCL([864 x float]* nocapture %s3, [1728 x float]* %W1, i1 true) nounwind readonly
  call fastcc void @obj_detector_softmax(float %cost_0, float %cost_1, [2 x float]* %res) nounwind
  ret void
}

define internal fastcc void @obj_detector_flatten([72 x float]* nocapture %inp_0, [72 x float]* nocapture %inp_1, [72 x float]* nocapture %inp_2, [72 x float]* nocapture %inp_3, [72 x float]* nocapture %inp_4, [72 x float]* nocapture %inp_5, [72 x float]* nocapture %inp_6, [72 x float]* nocapture %inp_7, [72 x float]* nocapture %inp_8, [72 x float]* nocapture %inp_9, [72 x float]* nocapture %inp_10, [72 x float]* nocapture %inp_11, [864 x float]* %out_r) {
  br label %1

; <label>:1                                       ; preds = %.preheader.preheader.0, %0
  %i = phi i3 [ 0, %0 ], [ %i_4, %.preheader.preheader.0 ]
  %exitcond2 = icmp eq i3 %i, -2
  %i_4 = add i3 %i, 1
  br i1 %exitcond2, label %2, label %.preheader.preheader.0

.preheader.preheader.0:                           ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str13) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str13)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
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
  %tmp_1 = zext i10 %tmp_s to i64
  %out_addr = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_1
  store float %inp_0_load, float* %out_addr, align 4
  %inp_1_addr = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_3
  %inp_1_load = load float* %inp_1_addr, align 4
  %tmp_26_0_1 = or i10 %tmp_s, 1
  %tmp_27_0_1 = zext i10 %tmp_26_0_1 to i64
  %out_addr_1 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_0_1
  store float %inp_1_load, float* %out_addr_1, align 4
  %inp_2_addr = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_3
  %inp_2_load = load float* %inp_2_addr, align 4
  %tmp_26_0_2 = or i10 %tmp_s, 2
  %tmp_27_0_2 = zext i10 %tmp_26_0_2 to i64
  %out_addr_2 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_0_2
  store float %inp_2_load, float* %out_addr_2, align 4
  %inp_3_addr = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_3
  %inp_3_load = load float* %inp_3_addr, align 4
  %tmp_26_0_3 = or i10 %tmp_s, 3
  %tmp_27_0_3 = zext i10 %tmp_26_0_3 to i64
  %out_addr_3 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_0_3
  store float %inp_3_load, float* %out_addr_3, align 4
  %inp_4_addr = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_3
  %inp_4_load = load float* %inp_4_addr, align 4
  %tmp_26_0_4 = or i10 %tmp_s, 4
  %tmp_27_0_4 = zext i10 %tmp_26_0_4 to i64
  %out_addr_4 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_0_4
  store float %inp_4_load, float* %out_addr_4, align 4
  %inp_5_addr = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_3
  %inp_5_load = load float* %inp_5_addr, align 4
  %tmp_26_0_5 = or i10 %tmp_s, 5
  %tmp_27_0_5 = zext i10 %tmp_26_0_5 to i64
  %out_addr_5 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_0_5
  store float %inp_5_load, float* %out_addr_5, align 4
  %inp_6_addr = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_3
  %inp_6_load = load float* %inp_6_addr, align 4
  %tmp_26_0_6 = or i10 %tmp_s, 6
  %tmp_27_0_6 = zext i10 %tmp_26_0_6 to i64
  %out_addr_6 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_0_6
  store float %inp_6_load, float* %out_addr_6, align 4
  %inp_7_addr = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_3
  %inp_7_load = load float* %inp_7_addr, align 4
  %tmp_26_0_7 = or i10 %tmp_s, 7
  %tmp_27_0_7 = zext i10 %tmp_26_0_7 to i64
  %out_addr_7 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_0_7
  store float %inp_7_load, float* %out_addr_7, align 4
  %inp_8_addr = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_3
  %inp_8_load = load float* %inp_8_addr, align 4
  %tmp_26_0_8 = or i10 %tmp_s, 8
  %tmp_27_0_8 = zext i10 %tmp_26_0_8 to i64
  %out_addr_8 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_0_8
  store float %inp_8_load, float* %out_addr_8, align 4
  %inp_9_addr = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_3
  %inp_9_load = load float* %inp_9_addr, align 4
  %tmp_26_0_9 = or i10 %tmp_s, 9
  %tmp_27_0_9 = zext i10 %tmp_26_0_9 to i64
  %out_addr_9 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_0_9
  store float %inp_9_load, float* %out_addr_9, align 4
  %inp_10_addr = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_3
  %inp_10_load = load float* %inp_10_addr, align 4
  %tmp_26_0_s = or i10 %tmp_s, 10
  %tmp_27_0_s = zext i10 %tmp_26_0_s to i64
  %out_addr_10 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_0_s
  store float %inp_10_load, float* %out_addr_10, align 4
  %inp_11_addr = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_3
  %inp_11_load = load float* %inp_11_addr, align 4
  %tmp_26_0_10 = or i10 %tmp_s, 11
  %tmp_27_0_10 = zext i10 %tmp_26_0_10 to i64
  %out_addr_11 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_0_10
  store float %inp_11_load, float* %out_addr_11, align 4
  %p_addr2 = or i32 %p_addr_cast, 1
  %tmp_4 = zext i32 %p_addr2 to i64
  %inp_0_addr_1 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_4
  %inp_0_load_1 = load float* %inp_0_addr_1, align 4
  %tmp_25_1_s = or i10 %tmp_s, 12
  %tmp_25_1_cast1 = zext i10 %tmp_25_1_s to i11
  %tmp_27_1 = zext i10 %tmp_25_1_s to i64
  %out_addr_12 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_1
  store float %inp_0_load_1, float* %out_addr_12, align 4
  %inp_1_addr_1 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_4
  %inp_1_load_1 = load float* %inp_1_addr_1, align 4
  %tmp_26_1_s = or i10 %tmp_s, 13
  %tmp_27_1_1 = zext i10 %tmp_26_1_s to i64
  %out_addr_13 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_1_1
  store float %inp_1_load_1, float* %out_addr_13, align 4
  %inp_2_addr_1 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_4
  %inp_2_load_1 = load float* %inp_2_addr_1, align 4
  %tmp_26_1_1 = or i10 %tmp_s, 14
  %tmp_27_1_2 = zext i10 %tmp_26_1_1 to i64
  %out_addr_14 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_1_2
  store float %inp_2_load_1, float* %out_addr_14, align 4
  %inp_3_addr_1 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_4
  %inp_3_load_1 = load float* %inp_3_addr_1, align 4
  %tmp_26_1_2 = or i10 %tmp_s, 15
  %tmp_27_1_3 = zext i10 %tmp_26_1_2 to i64
  %out_addr_15 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_1_3
  store float %inp_3_load_1, float* %out_addr_15, align 4
  %inp_4_addr_1 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_4
  %inp_4_load_1 = load float* %inp_4_addr_1, align 4
  %tmp_26_1_4 = add i11 %tmp_25_1_cast1, 4
  %tmp_27_1_4 = zext i11 %tmp_26_1_4 to i64
  %out_addr_16 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_1_4
  store float %inp_4_load_1, float* %out_addr_16, align 4
  %inp_5_addr_1 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_4
  %inp_5_load_1 = load float* %inp_5_addr_1, align 4
  %tmp_26_1_5 = add i11 %tmp_25_1_cast1, 5
  %tmp_27_1_5 = zext i11 %tmp_26_1_5 to i64
  %out_addr_17 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_1_5
  store float %inp_5_load_1, float* %out_addr_17, align 4
  %inp_6_addr_1 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_4
  %inp_6_load_1 = load float* %inp_6_addr_1, align 4
  %tmp_26_1_6 = add i11 %tmp_25_1_cast1, 6
  %tmp_27_1_6 = zext i11 %tmp_26_1_6 to i64
  %out_addr_18 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_1_6
  store float %inp_6_load_1, float* %out_addr_18, align 4
  %inp_7_addr_1 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_4
  %inp_7_load_1 = load float* %inp_7_addr_1, align 4
  %tmp_26_1_7 = add i11 %tmp_25_1_cast1, 7
  %tmp_27_1_7 = zext i11 %tmp_26_1_7 to i64
  %out_addr_19 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_1_7
  store float %inp_7_load_1, float* %out_addr_19, align 4
  %inp_8_addr_1 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_4
  %inp_8_load_1 = load float* %inp_8_addr_1, align 4
  %tmp_26_1_8 = add i11 %tmp_25_1_cast1, 8
  %tmp_27_1_8 = zext i11 %tmp_26_1_8 to i64
  %out_addr_20 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_1_8
  store float %inp_8_load_1, float* %out_addr_20, align 4
  %inp_9_addr_1 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_4
  %inp_9_load_1 = load float* %inp_9_addr_1, align 4
  %tmp_26_1_9 = add i11 %tmp_25_1_cast1, 9
  %tmp_27_1_9 = zext i11 %tmp_26_1_9 to i64
  %out_addr_21 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_1_9
  store float %inp_9_load_1, float* %out_addr_21, align 4
  %inp_10_addr_1 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_4
  %inp_10_load_1 = load float* %inp_10_addr_1, align 4
  %tmp_26_1_3 = add i11 %tmp_25_1_cast1, 10
  %tmp_27_1_s = zext i11 %tmp_26_1_3 to i64
  %out_addr_22 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_1_s
  store float %inp_10_load_1, float* %out_addr_22, align 4
  %inp_11_addr_1 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_4
  %inp_11_load_1 = load float* %inp_11_addr_1, align 4
  %tmp_26_1_10 = add i11 %tmp_25_1_cast1, 11
  %tmp_27_1_10 = zext i11 %tmp_26_1_10 to i64
  %out_addr_23 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_1_10
  store float %inp_11_load_1, float* %out_addr_23, align 4
  %p_addr3 = or i8 %p_addr, 2
  %p_addr3_cast = sext i8 %p_addr3 to i32
  %tmp_6 = zext i32 %p_addr3_cast to i64
  %inp_0_addr_2 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_6
  %inp_0_load_2 = load float* %inp_0_addr_2, align 4
  %tmp_26_2 = add i10 %tmp_s, 24
  %tmp_27_2 = zext i10 %tmp_26_2 to i64
  %out_addr_24 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_2
  store float %inp_0_load_2, float* %out_addr_24, align 4
  %inp_1_addr_2 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_6
  %inp_1_load_2 = load float* %inp_1_addr_2, align 4
  %tmp_26_2_1 = add i10 %tmp_s, 25
  %tmp_27_2_1 = zext i10 %tmp_26_2_1 to i64
  %out_addr_25 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_2_1
  store float %inp_1_load_2, float* %out_addr_25, align 4
  %inp_2_addr_2 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_6
  %inp_2_load_2 = load float* %inp_2_addr_2, align 4
  %tmp_26_2_2 = add i10 %tmp_s, 26
  %tmp_27_2_2 = zext i10 %tmp_26_2_2 to i64
  %out_addr_26 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_2_2
  store float %inp_2_load_2, float* %out_addr_26, align 4
  %inp_3_addr_2 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_6
  %inp_3_load_2 = load float* %inp_3_addr_2, align 4
  %tmp_26_2_3 = add i10 %tmp_s, 27
  %tmp_27_2_3 = zext i10 %tmp_26_2_3 to i64
  %out_addr_27 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_2_3
  store float %inp_3_load_2, float* %out_addr_27, align 4
  %inp_4_addr_2 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_6
  %inp_4_load_2 = load float* %inp_4_addr_2, align 4
  %tmp_26_2_4 = add i10 %tmp_s, 28
  %tmp_27_2_4 = zext i10 %tmp_26_2_4 to i64
  %out_addr_28 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_2_4
  store float %inp_4_load_2, float* %out_addr_28, align 4
  %inp_5_addr_2 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_6
  %inp_5_load_2 = load float* %inp_5_addr_2, align 4
  %tmp_26_2_5 = add i10 %tmp_s, 29
  %tmp_27_2_5 = zext i10 %tmp_26_2_5 to i64
  %out_addr_29 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_2_5
  store float %inp_5_load_2, float* %out_addr_29, align 4
  %inp_6_addr_2 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_6
  %inp_6_load_2 = load float* %inp_6_addr_2, align 4
  %tmp_26_2_6 = add i10 %tmp_s, 30
  %tmp_27_2_6 = zext i10 %tmp_26_2_6 to i64
  %out_addr_30 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_2_6
  store float %inp_6_load_2, float* %out_addr_30, align 4
  %inp_7_addr_2 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_6
  %inp_7_load_2 = load float* %inp_7_addr_2, align 4
  %tmp_26_2_7 = add i10 %tmp_s, 31
  %tmp_27_2_7 = zext i10 %tmp_26_2_7 to i64
  %out_addr_31 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_2_7
  store float %inp_7_load_2, float* %out_addr_31, align 4
  %inp_8_addr_2 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_6
  %inp_8_load_2 = load float* %inp_8_addr_2, align 4
  %tmp_26_2_8 = add i10 %tmp_s, 32
  %tmp_27_2_8 = zext i10 %tmp_26_2_8 to i64
  %out_addr_32 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_2_8
  store float %inp_8_load_2, float* %out_addr_32, align 4
  %inp_9_addr_2 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_6
  %inp_9_load_2 = load float* %inp_9_addr_2, align 4
  %tmp_26_2_9 = add i10 %tmp_s, 33
  %tmp_27_2_9 = zext i10 %tmp_26_2_9 to i64
  %out_addr_33 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_2_9
  store float %inp_9_load_2, float* %out_addr_33, align 4
  %inp_10_addr_2 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_6
  %inp_10_load_2 = load float* %inp_10_addr_2, align 4
  %tmp_26_2_s = add i10 %tmp_s, 34
  %tmp_27_2_s = zext i10 %tmp_26_2_s to i64
  %out_addr_34 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_2_s
  store float %inp_10_load_2, float* %out_addr_34, align 4
  %inp_11_addr_2 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_6
  %inp_11_load_2 = load float* %inp_11_addr_2, align 4
  %tmp_26_2_10 = add i10 %tmp_s, 35
  %tmp_27_2_10 = zext i10 %tmp_26_2_10 to i64
  %out_addr_35 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_2_10
  store float %inp_11_load_2, float* %out_addr_35, align 4
  %p_addr5 = or i8 %p_addr, 3
  %p_addr5_cast = sext i8 %p_addr5 to i32
  %tmp_7 = zext i32 %p_addr5_cast to i64
  %inp_0_addr_3 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_7
  %inp_0_load_3 = load float* %inp_0_addr_3, align 4
  %tmp_26_3 = add i10 %tmp_s, 36
  %tmp_27_3 = zext i10 %tmp_26_3 to i64
  %out_addr_36 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_3
  store float %inp_0_load_3, float* %out_addr_36, align 4
  %inp_1_addr_3 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_7
  %inp_1_load_3 = load float* %inp_1_addr_3, align 4
  %tmp_26_3_1 = add i10 %tmp_s, 37
  %tmp_27_3_1 = zext i10 %tmp_26_3_1 to i64
  %out_addr_37 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_3_1
  store float %inp_1_load_3, float* %out_addr_37, align 4
  %inp_2_addr_3 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_7
  %inp_2_load_3 = load float* %inp_2_addr_3, align 4
  %tmp_26_3_2 = add i10 %tmp_s, 38
  %tmp_27_3_2 = zext i10 %tmp_26_3_2 to i64
  %out_addr_38 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_3_2
  store float %inp_2_load_3, float* %out_addr_38, align 4
  %inp_3_addr_3 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_7
  %inp_3_load_3 = load float* %inp_3_addr_3, align 4
  %tmp_26_3_3 = add i10 %tmp_s, 39
  %tmp_27_3_3 = zext i10 %tmp_26_3_3 to i64
  %out_addr_39 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_3_3
  store float %inp_3_load_3, float* %out_addr_39, align 4
  %inp_4_addr_3 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_7
  %inp_4_load_3 = load float* %inp_4_addr_3, align 4
  %tmp_26_3_4 = add i10 %tmp_s, 40
  %tmp_27_3_4 = zext i10 %tmp_26_3_4 to i64
  %out_addr_40 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_3_4
  store float %inp_4_load_3, float* %out_addr_40, align 4
  %inp_5_addr_3 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_7
  %inp_5_load_3 = load float* %inp_5_addr_3, align 4
  %tmp_26_3_5 = add i10 %tmp_s, 41
  %tmp_27_3_5 = zext i10 %tmp_26_3_5 to i64
  %out_addr_41 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_3_5
  store float %inp_5_load_3, float* %out_addr_41, align 4
  %inp_6_addr_3 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_7
  %inp_6_load_3 = load float* %inp_6_addr_3, align 4
  %tmp_26_3_6 = add i10 %tmp_s, 42
  %tmp_27_3_6 = zext i10 %tmp_26_3_6 to i64
  %out_addr_42 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_3_6
  store float %inp_6_load_3, float* %out_addr_42, align 4
  %inp_7_addr_3 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_7
  %inp_7_load_3 = load float* %inp_7_addr_3, align 4
  %tmp_26_3_7 = add i10 %tmp_s, 43
  %tmp_27_3_7 = zext i10 %tmp_26_3_7 to i64
  %out_addr_43 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_3_7
  store float %inp_7_load_3, float* %out_addr_43, align 4
  %inp_8_addr_3 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_7
  %inp_8_load_3 = load float* %inp_8_addr_3, align 4
  %tmp_26_3_8 = add i10 %tmp_s, 44
  %tmp_27_3_8 = zext i10 %tmp_26_3_8 to i64
  %out_addr_44 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_3_8
  store float %inp_8_load_3, float* %out_addr_44, align 4
  %inp_9_addr_3 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_7
  %inp_9_load_3 = load float* %inp_9_addr_3, align 4
  %tmp_26_3_9 = add i10 %tmp_s, 45
  %tmp_27_3_9 = zext i10 %tmp_26_3_9 to i64
  %out_addr_45 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_3_9
  store float %inp_9_load_3, float* %out_addr_45, align 4
  %inp_10_addr_3 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_7
  %inp_10_load_3 = load float* %inp_10_addr_3, align 4
  %tmp_26_3_s = add i10 %tmp_s, 46
  %tmp_27_3_s = zext i10 %tmp_26_3_s to i64
  %out_addr_46 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_3_s
  store float %inp_10_load_3, float* %out_addr_46, align 4
  %inp_11_addr_3 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_7
  %inp_11_load_3 = load float* %inp_11_addr_3, align 4
  %tmp_26_3_10 = add i10 %tmp_s, 47
  %tmp_27_3_10 = zext i10 %tmp_26_3_10 to i64
  %out_addr_47 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_3_10
  store float %inp_11_load_3, float* %out_addr_47, align 4
  %p_addr6 = add i9 %p_addr_cast1, 4
  %p_addr6_cast = sext i9 %p_addr6 to i32
  %tmp_8 = zext i32 %p_addr6_cast to i64
  %inp_0_addr_4 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_8
  %inp_0_load_4 = load float* %inp_0_addr_4, align 4
  %tmp_26_4 = add i10 %tmp_s, 48
  %tmp_27_4 = zext i10 %tmp_26_4 to i64
  %out_addr_48 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_4
  store float %inp_0_load_4, float* %out_addr_48, align 4
  %inp_1_addr_4 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_8
  %inp_1_load_4 = load float* %inp_1_addr_4, align 4
  %tmp_26_4_1 = add i10 %tmp_s, 49
  %tmp_27_4_1 = zext i10 %tmp_26_4_1 to i64
  %out_addr_49 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_4_1
  store float %inp_1_load_4, float* %out_addr_49, align 4
  %inp_2_addr_4 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_8
  %inp_2_load_4 = load float* %inp_2_addr_4, align 4
  %tmp_26_4_2 = add i10 %tmp_s, 50
  %tmp_27_4_2 = zext i10 %tmp_26_4_2 to i64
  %out_addr_50 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_4_2
  store float %inp_2_load_4, float* %out_addr_50, align 4
  %inp_3_addr_4 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_8
  %inp_3_load_4 = load float* %inp_3_addr_4, align 4
  %tmp_26_4_3 = add i10 %tmp_s, 51
  %tmp_27_4_3 = zext i10 %tmp_26_4_3 to i64
  %out_addr_51 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_4_3
  store float %inp_3_load_4, float* %out_addr_51, align 4
  %inp_4_addr_4 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_8
  %inp_4_load_4 = load float* %inp_4_addr_4, align 4
  %tmp_26_4_4 = add i10 %tmp_s, 52
  %tmp_27_4_4 = zext i10 %tmp_26_4_4 to i64
  %out_addr_52 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_4_4
  store float %inp_4_load_4, float* %out_addr_52, align 4
  %inp_5_addr_4 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_8
  %inp_5_load_4 = load float* %inp_5_addr_4, align 4
  %tmp_26_4_5 = add i10 %tmp_s, 53
  %tmp_27_4_5 = zext i10 %tmp_26_4_5 to i64
  %out_addr_53 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_4_5
  store float %inp_5_load_4, float* %out_addr_53, align 4
  %inp_6_addr_4 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_8
  %inp_6_load_4 = load float* %inp_6_addr_4, align 4
  %tmp_26_4_6 = add i10 %tmp_s, 54
  %tmp_27_4_6 = zext i10 %tmp_26_4_6 to i64
  %out_addr_54 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_4_6
  store float %inp_6_load_4, float* %out_addr_54, align 4
  %inp_7_addr_4 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_8
  %inp_7_load_4 = load float* %inp_7_addr_4, align 4
  %tmp_26_4_7 = add i10 %tmp_s, 55
  %tmp_27_4_7 = zext i10 %tmp_26_4_7 to i64
  %out_addr_55 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_4_7
  store float %inp_7_load_4, float* %out_addr_55, align 4
  %inp_8_addr_4 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_8
  %inp_8_load_4 = load float* %inp_8_addr_4, align 4
  %tmp_26_4_8 = add i10 %tmp_s, 56
  %tmp_27_4_8 = zext i10 %tmp_26_4_8 to i64
  %out_addr_56 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_4_8
  store float %inp_8_load_4, float* %out_addr_56, align 4
  %inp_9_addr_4 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_8
  %inp_9_load_4 = load float* %inp_9_addr_4, align 4
  %tmp_26_4_9 = add i10 %tmp_s, 57
  %tmp_27_4_9 = zext i10 %tmp_26_4_9 to i64
  %out_addr_57 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_4_9
  store float %inp_9_load_4, float* %out_addr_57, align 4
  %inp_10_addr_4 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_8
  %inp_10_load_4 = load float* %inp_10_addr_4, align 4
  %tmp_26_4_s = add i10 %tmp_s, 58
  %tmp_27_4_s = zext i10 %tmp_26_4_s to i64
  %out_addr_58 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_4_s
  store float %inp_10_load_4, float* %out_addr_58, align 4
  %inp_11_addr_4 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_8
  %inp_11_load_4 = load float* %inp_11_addr_4, align 4
  %tmp_26_4_10 = add i10 %tmp_s, 59
  %tmp_27_4_10 = zext i10 %tmp_26_4_10 to i64
  %out_addr_59 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_4_10
  store float %inp_11_load_4, float* %out_addr_59, align 4
  %p_addr8 = add i9 %p_addr_cast1, 5
  %p_addr8_cast = sext i9 %p_addr8 to i32
  %tmp_9 = zext i32 %p_addr8_cast to i64
  %inp_0_addr_5 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_9
  %inp_0_load_5 = load float* %inp_0_addr_5, align 4
  %tmp_26_5 = add i10 %tmp_s, 60
  %tmp_27_5 = zext i10 %tmp_26_5 to i64
  %out_addr_60 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_5
  store float %inp_0_load_5, float* %out_addr_60, align 4
  %inp_1_addr_5 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_9
  %inp_1_load_5 = load float* %inp_1_addr_5, align 4
  %tmp_26_5_1 = add i10 %tmp_s, 61
  %tmp_27_5_1 = zext i10 %tmp_26_5_1 to i64
  %out_addr_61 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_5_1
  store float %inp_1_load_5, float* %out_addr_61, align 4
  %inp_2_addr_5 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_9
  %inp_2_load_5 = load float* %inp_2_addr_5, align 4
  %tmp_26_5_2 = add i10 %tmp_s, 62
  %tmp_27_5_2 = zext i10 %tmp_26_5_2 to i64
  %out_addr_62 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_5_2
  store float %inp_2_load_5, float* %out_addr_62, align 4
  %inp_3_addr_5 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_9
  %inp_3_load_5 = load float* %inp_3_addr_5, align 4
  %tmp_26_5_3 = add i10 %tmp_s, 63
  %tmp_27_5_3 = zext i10 %tmp_26_5_3 to i64
  %out_addr_63 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_5_3
  store float %inp_3_load_5, float* %out_addr_63, align 4
  %inp_4_addr_5 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_9
  %inp_4_load_5 = load float* %inp_4_addr_5, align 4
  %tmp_26_5_4 = add i10 %tmp_s, 64
  %tmp_27_5_4 = zext i10 %tmp_26_5_4 to i64
  %out_addr_64 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_5_4
  store float %inp_4_load_5, float* %out_addr_64, align 4
  %inp_5_addr_5 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_9
  %inp_5_load_5 = load float* %inp_5_addr_5, align 4
  %tmp_26_5_5 = add i10 %tmp_s, 65
  %tmp_27_5_5 = zext i10 %tmp_26_5_5 to i64
  %out_addr_65 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_5_5
  store float %inp_5_load_5, float* %out_addr_65, align 4
  %inp_6_addr_5 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_9
  %inp_6_load_5 = load float* %inp_6_addr_5, align 4
  %tmp_26_5_6 = add i10 %tmp_s, 66
  %tmp_27_5_6 = zext i10 %tmp_26_5_6 to i64
  %out_addr_66 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_5_6
  store float %inp_6_load_5, float* %out_addr_66, align 4
  %inp_7_addr_5 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_9
  %inp_7_load_5 = load float* %inp_7_addr_5, align 4
  %tmp_26_5_7 = add i10 %tmp_s, 67
  %tmp_27_5_7 = zext i10 %tmp_26_5_7 to i64
  %out_addr_67 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_5_7
  store float %inp_7_load_5, float* %out_addr_67, align 4
  %inp_8_addr_5 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_9
  %inp_8_load_5 = load float* %inp_8_addr_5, align 4
  %tmp_26_5_8 = add i10 %tmp_s, 68
  %tmp_27_5_8 = zext i10 %tmp_26_5_8 to i64
  %out_addr_68 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_5_8
  store float %inp_8_load_5, float* %out_addr_68, align 4
  %inp_9_addr_5 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_9
  %inp_9_load_5 = load float* %inp_9_addr_5, align 4
  %tmp_26_5_9 = add i10 %tmp_s, 69
  %tmp_27_5_9 = zext i10 %tmp_26_5_9 to i64
  %out_addr_69 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_5_9
  store float %inp_9_load_5, float* %out_addr_69, align 4
  %inp_10_addr_5 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_9
  %inp_10_load_5 = load float* %inp_10_addr_5, align 4
  %tmp_26_5_s = add i10 %tmp_s, 70
  %tmp_27_5_s = zext i10 %tmp_26_5_s to i64
  %out_addr_70 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_5_s
  store float %inp_10_load_5, float* %out_addr_70, align 4
  %inp_11_addr_5 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_9
  %inp_11_load_5 = load float* %inp_11_addr_5, align 4
  %tmp_26_5_10 = add i10 %tmp_s, 71
  %tmp_27_5_10 = zext i10 %tmp_26_5_10 to i64
  %out_addr_71 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_5_10
  store float %inp_11_load_5, float* %out_addr_71, align 4
  %p_addr9 = add i9 %p_addr_cast1, 6
  %p_addr9_cast = sext i9 %p_addr9 to i32
  %tmp_10 = zext i32 %p_addr9_cast to i64
  %inp_0_addr_6 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_10
  %inp_0_load_6 = load float* %inp_0_addr_6, align 4
  %tmp_26_6 = add i10 %tmp_s, 72
  %tmp_27_6 = zext i10 %tmp_26_6 to i64
  %out_addr_72 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_6
  store float %inp_0_load_6, float* %out_addr_72, align 4
  %inp_1_addr_6 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_10
  %inp_1_load_6 = load float* %inp_1_addr_6, align 4
  %tmp_26_6_1 = add i10 %tmp_s, 73
  %tmp_27_6_1 = zext i10 %tmp_26_6_1 to i64
  %out_addr_73 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_6_1
  store float %inp_1_load_6, float* %out_addr_73, align 4
  %inp_2_addr_6 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_10
  %inp_2_load_6 = load float* %inp_2_addr_6, align 4
  %tmp_26_6_2 = add i10 %tmp_s, 74
  %tmp_27_6_2 = zext i10 %tmp_26_6_2 to i64
  %out_addr_74 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_6_2
  store float %inp_2_load_6, float* %out_addr_74, align 4
  %inp_3_addr_6 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_10
  %inp_3_load_6 = load float* %inp_3_addr_6, align 4
  %tmp_26_6_3 = add i10 %tmp_s, 75
  %tmp_27_6_3 = zext i10 %tmp_26_6_3 to i64
  %out_addr_75 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_6_3
  store float %inp_3_load_6, float* %out_addr_75, align 4
  %inp_4_addr_6 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_10
  %inp_4_load_6 = load float* %inp_4_addr_6, align 4
  %tmp_26_6_4 = add i10 %tmp_s, 76
  %tmp_27_6_4 = zext i10 %tmp_26_6_4 to i64
  %out_addr_76 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_6_4
  store float %inp_4_load_6, float* %out_addr_76, align 4
  %inp_5_addr_6 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_10
  %inp_5_load_6 = load float* %inp_5_addr_6, align 4
  %tmp_26_6_5 = add i10 %tmp_s, 77
  %tmp_27_6_5 = zext i10 %tmp_26_6_5 to i64
  %out_addr_77 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_6_5
  store float %inp_5_load_6, float* %out_addr_77, align 4
  %inp_6_addr_6 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_10
  %inp_6_load_6 = load float* %inp_6_addr_6, align 4
  %tmp_26_6_6 = add i10 %tmp_s, 78
  %tmp_27_6_6 = zext i10 %tmp_26_6_6 to i64
  %out_addr_78 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_6_6
  store float %inp_6_load_6, float* %out_addr_78, align 4
  %inp_7_addr_6 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_10
  %inp_7_load_6 = load float* %inp_7_addr_6, align 4
  %tmp_26_6_7 = add i10 %tmp_s, 79
  %tmp_27_6_7 = zext i10 %tmp_26_6_7 to i64
  %out_addr_79 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_6_7
  store float %inp_7_load_6, float* %out_addr_79, align 4
  %inp_8_addr_6 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_10
  %inp_8_load_6 = load float* %inp_8_addr_6, align 4
  %tmp_26_6_8 = add i10 %tmp_s, 80
  %tmp_27_6_8 = zext i10 %tmp_26_6_8 to i64
  %out_addr_80 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_6_8
  store float %inp_8_load_6, float* %out_addr_80, align 4
  %inp_9_addr_6 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_10
  %inp_9_load_6 = load float* %inp_9_addr_6, align 4
  %tmp_26_6_9 = add i10 %tmp_s, 81
  %tmp_27_6_9 = zext i10 %tmp_26_6_9 to i64
  %out_addr_81 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_6_9
  store float %inp_9_load_6, float* %out_addr_81, align 4
  %inp_10_addr_6 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_10
  %inp_10_load_6 = load float* %inp_10_addr_6, align 4
  %tmp_26_6_s = add i10 %tmp_s, 82
  %tmp_27_6_s = zext i10 %tmp_26_6_s to i64
  %out_addr_82 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_6_s
  store float %inp_10_load_6, float* %out_addr_82, align 4
  %inp_11_addr_6 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_10
  %inp_11_load_6 = load float* %inp_11_addr_6, align 4
  %tmp_26_6_10 = add i10 %tmp_s, 83
  %tmp_27_6_10 = zext i10 %tmp_26_6_10 to i64
  %out_addr_83 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_6_10
  store float %inp_11_load_6, float* %out_addr_83, align 4
  %p_addr11 = add i9 %p_addr_cast1, 7
  %p_addr11_cast = sext i9 %p_addr11 to i32
  %tmp_11 = zext i32 %p_addr11_cast to i64
  %inp_0_addr_7 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_11
  %inp_0_load_7 = load float* %inp_0_addr_7, align 4
  %tmp_26_7 = add i10 %tmp_s, 84
  %tmp_27_7 = zext i10 %tmp_26_7 to i64
  %out_addr_84 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_7
  store float %inp_0_load_7, float* %out_addr_84, align 4
  %inp_1_addr_7 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_11
  %inp_1_load_7 = load float* %inp_1_addr_7, align 4
  %tmp_26_7_1 = add i10 %tmp_s, 85
  %tmp_27_7_1 = zext i10 %tmp_26_7_1 to i64
  %out_addr_85 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_7_1
  store float %inp_1_load_7, float* %out_addr_85, align 4
  %inp_2_addr_7 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_11
  %inp_2_load_7 = load float* %inp_2_addr_7, align 4
  %tmp_26_7_2 = add i10 %tmp_s, 86
  %tmp_27_7_2 = zext i10 %tmp_26_7_2 to i64
  %out_addr_86 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_7_2
  store float %inp_2_load_7, float* %out_addr_86, align 4
  %inp_3_addr_7 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_11
  %inp_3_load_7 = load float* %inp_3_addr_7, align 4
  %tmp_26_7_3 = add i10 %tmp_s, 87
  %tmp_27_7_3 = zext i10 %tmp_26_7_3 to i64
  %out_addr_87 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_7_3
  store float %inp_3_load_7, float* %out_addr_87, align 4
  %inp_4_addr_7 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_11
  %inp_4_load_7 = load float* %inp_4_addr_7, align 4
  %tmp_26_7_4 = add i10 %tmp_s, 88
  %tmp_27_7_4 = zext i10 %tmp_26_7_4 to i64
  %out_addr_88 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_7_4
  store float %inp_4_load_7, float* %out_addr_88, align 4
  %inp_5_addr_7 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_11
  %inp_5_load_7 = load float* %inp_5_addr_7, align 4
  %tmp_26_7_5 = add i10 %tmp_s, 89
  %tmp_27_7_5 = zext i10 %tmp_26_7_5 to i64
  %out_addr_89 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_7_5
  store float %inp_5_load_7, float* %out_addr_89, align 4
  %inp_6_addr_7 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_11
  %inp_6_load_7 = load float* %inp_6_addr_7, align 4
  %tmp_26_7_6 = add i10 %tmp_s, 90
  %tmp_27_7_6 = zext i10 %tmp_26_7_6 to i64
  %out_addr_90 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_7_6
  store float %inp_6_load_7, float* %out_addr_90, align 4
  %inp_7_addr_7 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_11
  %inp_7_load_7 = load float* %inp_7_addr_7, align 4
  %tmp_26_7_7 = add i10 %tmp_s, 91
  %tmp_27_7_7 = zext i10 %tmp_26_7_7 to i64
  %out_addr_91 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_7_7
  store float %inp_7_load_7, float* %out_addr_91, align 4
  %inp_8_addr_7 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_11
  %inp_8_load_7 = load float* %inp_8_addr_7, align 4
  %tmp_26_7_8 = add i10 %tmp_s, 92
  %tmp_27_7_8 = zext i10 %tmp_26_7_8 to i64
  %out_addr_92 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_7_8
  store float %inp_8_load_7, float* %out_addr_92, align 4
  %inp_9_addr_7 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_11
  %inp_9_load_7 = load float* %inp_9_addr_7, align 4
  %tmp_26_7_9 = add i10 %tmp_s, 93
  %tmp_27_7_9 = zext i10 %tmp_26_7_9 to i64
  %out_addr_93 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_7_9
  store float %inp_9_load_7, float* %out_addr_93, align 4
  %inp_10_addr_7 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_11
  %inp_10_load_7 = load float* %inp_10_addr_7, align 4
  %tmp_26_7_s = add i10 %tmp_s, 94
  %tmp_27_7_s = zext i10 %tmp_26_7_s to i64
  %out_addr_94 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_7_s
  store float %inp_10_load_7, float* %out_addr_94, align 4
  %inp_11_addr_7 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_11
  %inp_11_load_7 = load float* %inp_11_addr_7, align 4
  %tmp_26_7_10 = add i10 %tmp_s, 95
  %tmp_27_7_10 = zext i10 %tmp_26_7_10 to i64
  %out_addr_95 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_7_10
  store float %inp_11_load_7, float* %out_addr_95, align 4
  %p_addr10 = add i9 %p_addr_cast1, 8
  %p_addr10_cast = sext i9 %p_addr10 to i32
  %tmp_12 = zext i32 %p_addr10_cast to i64
  %inp_0_addr_8 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_12
  %inp_0_load_8 = load float* %inp_0_addr_8, align 4
  %tmp_26_8 = add i10 %tmp_s, 96
  %tmp_27_8 = zext i10 %tmp_26_8 to i64
  %out_addr_96 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_8
  store float %inp_0_load_8, float* %out_addr_96, align 4
  %inp_1_addr_8 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_12
  %inp_1_load_8 = load float* %inp_1_addr_8, align 4
  %tmp_26_8_1 = add i10 %tmp_s, 97
  %tmp_27_8_1 = zext i10 %tmp_26_8_1 to i64
  %out_addr_97 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_8_1
  store float %inp_1_load_8, float* %out_addr_97, align 4
  %inp_2_addr_8 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_12
  %inp_2_load_8 = load float* %inp_2_addr_8, align 4
  %tmp_26_8_2 = add i10 %tmp_s, 98
  %tmp_27_8_2 = zext i10 %tmp_26_8_2 to i64
  %out_addr_98 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_8_2
  store float %inp_2_load_8, float* %out_addr_98, align 4
  %inp_3_addr_8 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_12
  %inp_3_load_8 = load float* %inp_3_addr_8, align 4
  %tmp_26_8_3 = add i10 %tmp_s, 99
  %tmp_27_8_3 = zext i10 %tmp_26_8_3 to i64
  %out_addr_99 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_8_3
  store float %inp_3_load_8, float* %out_addr_99, align 4
  %inp_4_addr_8 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_12
  %inp_4_load_8 = load float* %inp_4_addr_8, align 4
  %tmp_26_8_4 = add i10 %tmp_s, 100
  %tmp_27_8_4 = zext i10 %tmp_26_8_4 to i64
  %out_addr_100 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_8_4
  store float %inp_4_load_8, float* %out_addr_100, align 4
  %inp_5_addr_8 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_12
  %inp_5_load_8 = load float* %inp_5_addr_8, align 4
  %tmp_26_8_5 = add i10 %tmp_s, 101
  %tmp_27_8_5 = zext i10 %tmp_26_8_5 to i64
  %out_addr_101 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_8_5
  store float %inp_5_load_8, float* %out_addr_101, align 4
  %inp_6_addr_8 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_12
  %inp_6_load_8 = load float* %inp_6_addr_8, align 4
  %tmp_26_8_6 = add i10 %tmp_s, 102
  %tmp_27_8_6 = zext i10 %tmp_26_8_6 to i64
  %out_addr_102 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_8_6
  store float %inp_6_load_8, float* %out_addr_102, align 4
  %inp_7_addr_8 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_12
  %inp_7_load_8 = load float* %inp_7_addr_8, align 4
  %tmp_26_8_7 = add i10 %tmp_s, 103
  %tmp_27_8_7 = zext i10 %tmp_26_8_7 to i64
  %out_addr_103 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_8_7
  store float %inp_7_load_8, float* %out_addr_103, align 4
  %inp_8_addr_8 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_12
  %inp_8_load_8 = load float* %inp_8_addr_8, align 4
  %tmp_26_8_8 = add i10 %tmp_s, 104
  %tmp_27_8_8 = zext i10 %tmp_26_8_8 to i64
  %out_addr_104 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_8_8
  store float %inp_8_load_8, float* %out_addr_104, align 4
  %inp_9_addr_8 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_12
  %inp_9_load_8 = load float* %inp_9_addr_8, align 4
  %tmp_26_8_9 = add i10 %tmp_s, 105
  %tmp_27_8_9 = zext i10 %tmp_26_8_9 to i64
  %out_addr_105 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_8_9
  store float %inp_9_load_8, float* %out_addr_105, align 4
  %inp_10_addr_8 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_12
  %inp_10_load_8 = load float* %inp_10_addr_8, align 4
  %tmp_26_8_s = add i10 %tmp_s, 106
  %tmp_27_8_s = zext i10 %tmp_26_8_s to i64
  %out_addr_106 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_8_s
  store float %inp_10_load_8, float* %out_addr_106, align 4
  %inp_11_addr_8 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_12
  %inp_11_load_8 = load float* %inp_11_addr_8, align 4
  %tmp_26_8_10 = add i10 %tmp_s, 107
  %tmp_27_8_10 = zext i10 %tmp_26_8_10 to i64
  %out_addr_107 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_8_10
  store float %inp_11_load_8, float* %out_addr_107, align 4
  %p_addr7 = add i9 %p_addr_cast1, 9
  %p_addr7_cast = sext i9 %p_addr7 to i32
  %tmp_13 = zext i32 %p_addr7_cast to i64
  %inp_0_addr_9 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_13
  %inp_0_load_9 = load float* %inp_0_addr_9, align 4
  %tmp_26_9 = add i10 %tmp_s, 108
  %tmp_27_9 = zext i10 %tmp_26_9 to i64
  %out_addr_108 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_9
  store float %inp_0_load_9, float* %out_addr_108, align 4
  %inp_1_addr_9 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_13
  %inp_1_load_9 = load float* %inp_1_addr_9, align 4
  %tmp_26_9_1 = add i10 %tmp_s, 109
  %tmp_27_9_1 = zext i10 %tmp_26_9_1 to i64
  %out_addr_109 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_9_1
  store float %inp_1_load_9, float* %out_addr_109, align 4
  %inp_2_addr_9 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_13
  %inp_2_load_9 = load float* %inp_2_addr_9, align 4
  %tmp_26_9_2 = add i10 %tmp_s, 110
  %tmp_27_9_2 = zext i10 %tmp_26_9_2 to i64
  %out_addr_110 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_9_2
  store float %inp_2_load_9, float* %out_addr_110, align 4
  %inp_3_addr_9 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_13
  %inp_3_load_9 = load float* %inp_3_addr_9, align 4
  %tmp_26_9_3 = add i10 %tmp_s, 111
  %tmp_27_9_3 = zext i10 %tmp_26_9_3 to i64
  %out_addr_111 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_9_3
  store float %inp_3_load_9, float* %out_addr_111, align 4
  %inp_4_addr_9 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_13
  %inp_4_load_9 = load float* %inp_4_addr_9, align 4
  %tmp_26_9_4 = add i10 %tmp_s, 112
  %tmp_27_9_4 = zext i10 %tmp_26_9_4 to i64
  %out_addr_112 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_9_4
  store float %inp_4_load_9, float* %out_addr_112, align 4
  %inp_5_addr_9 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_13
  %inp_5_load_9 = load float* %inp_5_addr_9, align 4
  %tmp_26_9_5 = add i10 %tmp_s, 113
  %tmp_27_9_5 = zext i10 %tmp_26_9_5 to i64
  %out_addr_113 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_9_5
  store float %inp_5_load_9, float* %out_addr_113, align 4
  %inp_6_addr_9 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_13
  %inp_6_load_9 = load float* %inp_6_addr_9, align 4
  %tmp_26_9_6 = add i10 %tmp_s, 114
  %tmp_27_9_6 = zext i10 %tmp_26_9_6 to i64
  %out_addr_114 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_9_6
  store float %inp_6_load_9, float* %out_addr_114, align 4
  %inp_7_addr_9 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_13
  %inp_7_load_9 = load float* %inp_7_addr_9, align 4
  %tmp_26_9_7 = add i10 %tmp_s, 115
  %tmp_27_9_7 = zext i10 %tmp_26_9_7 to i64
  %out_addr_115 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_9_7
  store float %inp_7_load_9, float* %out_addr_115, align 4
  %inp_8_addr_9 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_13
  %inp_8_load_9 = load float* %inp_8_addr_9, align 4
  %tmp_26_9_8 = add i10 %tmp_s, 116
  %tmp_27_9_8 = zext i10 %tmp_26_9_8 to i64
  %out_addr_116 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_9_8
  store float %inp_8_load_9, float* %out_addr_116, align 4
  %inp_9_addr_9 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_13
  %inp_9_load_9 = load float* %inp_9_addr_9, align 4
  %tmp_26_9_9 = add i10 %tmp_s, 117
  %tmp_27_9_9 = zext i10 %tmp_26_9_9 to i64
  %out_addr_117 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_9_9
  store float %inp_9_load_9, float* %out_addr_117, align 4
  %inp_10_addr_9 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_13
  %inp_10_load_9 = load float* %inp_10_addr_9, align 4
  %tmp_26_9_s = add i10 %tmp_s, 118
  %tmp_27_9_s = zext i10 %tmp_26_9_s to i64
  %out_addr_118 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_9_s
  store float %inp_10_load_9, float* %out_addr_118, align 4
  %inp_11_addr_9 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_13
  %inp_11_load_9 = load float* %inp_11_addr_9, align 4
  %tmp_26_9_10 = add i10 %tmp_s, 119
  %tmp_27_9_10 = zext i10 %tmp_26_9_10 to i64
  %out_addr_119 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_9_10
  store float %inp_11_load_9, float* %out_addr_119, align 4
  %p_addr4 = add i9 %p_addr_cast1, 10
  %p_addr4_cast = sext i9 %p_addr4 to i32
  %tmp_14 = zext i32 %p_addr4_cast to i64
  %inp_0_addr_10 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_14
  %inp_0_load_10 = load float* %inp_0_addr_10, align 4
  %tmp_26_s = add i10 %tmp_s, 120
  %tmp_27_s = zext i10 %tmp_26_s to i64
  %out_addr_120 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_s
  store float %inp_0_load_10, float* %out_addr_120, align 4
  %inp_1_addr_10 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_14
  %inp_1_load_10 = load float* %inp_1_addr_10, align 4
  %tmp_26_10_1 = add i10 %tmp_s, 121
  %tmp_27_10_1 = zext i10 %tmp_26_10_1 to i64
  %out_addr_121 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_10_1
  store float %inp_1_load_10, float* %out_addr_121, align 4
  %inp_2_addr_10 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_14
  %inp_2_load_10 = load float* %inp_2_addr_10, align 4
  %tmp_26_10_2 = add i10 %tmp_s, 122
  %tmp_27_10_2 = zext i10 %tmp_26_10_2 to i64
  %out_addr_122 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_10_2
  store float %inp_2_load_10, float* %out_addr_122, align 4
  %inp_3_addr_10 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_14
  %inp_3_load_10 = load float* %inp_3_addr_10, align 4
  %tmp_26_10_3 = add i10 %tmp_s, 123
  %tmp_27_10_3 = zext i10 %tmp_26_10_3 to i64
  %out_addr_123 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_10_3
  store float %inp_3_load_10, float* %out_addr_123, align 4
  %inp_4_addr_10 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_14
  %inp_4_load_10 = load float* %inp_4_addr_10, align 4
  %tmp_26_10_4 = add i10 %tmp_s, 124
  %tmp_27_10_4 = zext i10 %tmp_26_10_4 to i64
  %out_addr_124 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_10_4
  store float %inp_4_load_10, float* %out_addr_124, align 4
  %inp_5_addr_10 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_14
  %inp_5_load_10 = load float* %inp_5_addr_10, align 4
  %tmp_26_10_5 = add i10 %tmp_s, 125
  %tmp_27_10_5 = zext i10 %tmp_26_10_5 to i64
  %out_addr_125 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_10_5
  store float %inp_5_load_10, float* %out_addr_125, align 4
  %inp_6_addr_10 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_14
  %inp_6_load_10 = load float* %inp_6_addr_10, align 4
  %tmp_26_10_6 = add i10 %tmp_s, 126
  %tmp_27_10_6 = zext i10 %tmp_26_10_6 to i64
  %out_addr_126 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_10_6
  store float %inp_6_load_10, float* %out_addr_126, align 4
  %inp_7_addr_10 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_14
  %inp_7_load_10 = load float* %inp_7_addr_10, align 4
  %tmp_26_10_7 = add i10 %tmp_s, 127
  %tmp_27_10_7 = zext i10 %tmp_26_10_7 to i64
  %out_addr_127 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_10_7
  store float %inp_7_load_10, float* %out_addr_127, align 4
  %inp_8_addr_10 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_14
  %inp_8_load_10 = load float* %inp_8_addr_10, align 4
  %tmp_26_10_8 = add i10 %tmp_s, 128
  %tmp_27_10_8 = zext i10 %tmp_26_10_8 to i64
  %out_addr_128 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_10_8
  store float %inp_8_load_10, float* %out_addr_128, align 4
  %inp_9_addr_10 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_14
  %inp_9_load_10 = load float* %inp_9_addr_10, align 4
  %tmp_26_10_9 = add i10 %tmp_s, 129
  %tmp_27_10_9 = zext i10 %tmp_26_10_9 to i64
  %out_addr_129 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_10_9
  store float %inp_9_load_10, float* %out_addr_129, align 4
  %inp_10_addr_10 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_14
  %inp_10_load_10 = load float* %inp_10_addr_10, align 4
  %tmp_26_10_s = add i10 %tmp_s, 130
  %tmp_27_10_s = zext i10 %tmp_26_10_s to i64
  %out_addr_130 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_10_s
  store float %inp_10_load_10, float* %out_addr_130, align 4
  %inp_11_addr_10 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_14
  %inp_11_load_10 = load float* %inp_11_addr_10, align 4
  %tmp_26_10_10 = add i10 %tmp_s, 131
  %tmp_27_10_10 = zext i10 %tmp_26_10_10 to i64
  %out_addr_131 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_10_10
  store float %inp_11_load_10, float* %out_addr_131, align 4
  %p_addr1 = add i9 %p_addr_cast1, 11
  %p_addr1_cast = sext i9 %p_addr1 to i32
  %tmp_15 = zext i32 %p_addr1_cast to i64
  %inp_0_addr_11 = getelementptr [72 x float]* %inp_0, i64 0, i64 %tmp_15
  %inp_0_load_11 = load float* %inp_0_addr_11, align 4
  %tmp_26_1 = add i10 %tmp_s, 132
  %tmp_27_10 = zext i10 %tmp_26_1 to i64
  %out_addr_132 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_10
  store float %inp_0_load_11, float* %out_addr_132, align 4
  %inp_1_addr_11 = getelementptr [72 x float]* %inp_1, i64 0, i64 %tmp_15
  %inp_1_load_11 = load float* %inp_1_addr_11, align 4
  %tmp_26_11_1 = add i10 %tmp_s, 133
  %tmp_27_11_1 = zext i10 %tmp_26_11_1 to i64
  %out_addr_133 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_11_1
  store float %inp_1_load_11, float* %out_addr_133, align 4
  %inp_2_addr_11 = getelementptr [72 x float]* %inp_2, i64 0, i64 %tmp_15
  %inp_2_load_11 = load float* %inp_2_addr_11, align 4
  %tmp_26_11_2 = add i10 %tmp_s, 134
  %tmp_27_11_2 = zext i10 %tmp_26_11_2 to i64
  %out_addr_134 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_11_2
  store float %inp_2_load_11, float* %out_addr_134, align 4
  %inp_3_addr_11 = getelementptr [72 x float]* %inp_3, i64 0, i64 %tmp_15
  %inp_3_load_11 = load float* %inp_3_addr_11, align 4
  %tmp_26_11_3 = add i10 %tmp_s, 135
  %tmp_27_11_3 = zext i10 %tmp_26_11_3 to i64
  %out_addr_135 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_11_3
  store float %inp_3_load_11, float* %out_addr_135, align 4
  %inp_4_addr_11 = getelementptr [72 x float]* %inp_4, i64 0, i64 %tmp_15
  %inp_4_load_11 = load float* %inp_4_addr_11, align 4
  %tmp_26_11_4 = add i10 %tmp_s, 136
  %tmp_27_11_4 = zext i10 %tmp_26_11_4 to i64
  %out_addr_136 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_11_4
  store float %inp_4_load_11, float* %out_addr_136, align 4
  %inp_5_addr_11 = getelementptr [72 x float]* %inp_5, i64 0, i64 %tmp_15
  %inp_5_load_11 = load float* %inp_5_addr_11, align 4
  %tmp_26_11_5 = add i10 %tmp_s, 137
  %tmp_27_11_5 = zext i10 %tmp_26_11_5 to i64
  %out_addr_137 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_11_5
  store float %inp_5_load_11, float* %out_addr_137, align 4
  %inp_6_addr_11 = getelementptr [72 x float]* %inp_6, i64 0, i64 %tmp_15
  %inp_6_load_11 = load float* %inp_6_addr_11, align 4
  %tmp_26_11_6 = add i10 %tmp_s, 138
  %tmp_27_11_6 = zext i10 %tmp_26_11_6 to i64
  %out_addr_138 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_11_6
  store float %inp_6_load_11, float* %out_addr_138, align 4
  %inp_7_addr_11 = getelementptr [72 x float]* %inp_7, i64 0, i64 %tmp_15
  %inp_7_load_11 = load float* %inp_7_addr_11, align 4
  %tmp_26_11_7 = add i10 %tmp_s, 139
  %tmp_27_11_7 = zext i10 %tmp_26_11_7 to i64
  %out_addr_139 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_11_7
  store float %inp_7_load_11, float* %out_addr_139, align 4
  %inp_8_addr_11 = getelementptr [72 x float]* %inp_8, i64 0, i64 %tmp_15
  %inp_8_load_11 = load float* %inp_8_addr_11, align 4
  %tmp_26_11_8 = add i10 %tmp_s, 140
  %tmp_27_11_8 = zext i10 %tmp_26_11_8 to i64
  %out_addr_140 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_11_8
  store float %inp_8_load_11, float* %out_addr_140, align 4
  %inp_9_addr_11 = getelementptr [72 x float]* %inp_9, i64 0, i64 %tmp_15
  %inp_9_load_11 = load float* %inp_9_addr_11, align 4
  %tmp_26_11_9 = add i10 %tmp_s, 141
  %tmp_27_11_9 = zext i10 %tmp_26_11_9 to i64
  %out_addr_141 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_11_9
  store float %inp_9_load_11, float* %out_addr_141, align 4
  %inp_10_addr_11 = getelementptr [72 x float]* %inp_10, i64 0, i64 %tmp_15
  %inp_10_load_11 = load float* %inp_10_addr_11, align 4
  %tmp_26_11_s = add i10 %tmp_s, 142
  %tmp_27_11_s = zext i10 %tmp_26_11_s to i64
  %out_addr_142 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_11_s
  store float %inp_10_load_11, float* %out_addr_142, align 4
  %inp_11_addr_11 = getelementptr [72 x float]* %inp_11, i64 0, i64 %tmp_15
  %inp_11_load_11 = load float* %inp_11_addr_11, align 4
  %tmp_26_11_10 = add i10 %tmp_s, 143
  %tmp_27_11_10 = zext i10 %tmp_26_11_10 to i64
  %out_addr_143 = getelementptr [864 x float]* %out_r, i64 0, i64 %tmp_27_11_10
  store float %inp_11_load_11, float* %out_addr_143, align 4
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str13, i32 %tmp_5)
  br label %1

; <label>:2                                       ; preds = %1
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

define internal fastcc void @obj_detector_softmax(float %inp_0_read, float %inp_1_read, [2 x float]* %out_r) {
  call void (...)* @_ssdm_op_SpecInterface([2 x float]* %out_r, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %inp_1_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %inp_1_read)
  %inp_0_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %inp_0_read)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i2 [ 0, %0 ], [ %i_5, %2 ]
  %sum = phi float [ 0.000000e+00, %0 ], [ %sum_2, %2 ]
  %exitcond3 = icmp eq i2 %i, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_5 = add i2 %i, 1
  br i1 %exitcond3, label %.preheader5, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str15) nounwind
  %tmp = trunc i2 %i to i1
  %inp_1_read_assign = select i1 %tmp, float %inp_1_read_1, float %inp_0_read_1
  %sum_2 = fadd float %sum, %inp_1_read_assign
  br label %1

.preheader5:                                      ; preds = %1, %3
  %temp_1_s = phi float [ %temp_1_1, %3 ], [ undef, %1 ]
  %temp_0_s = phi float [ %temp_1_2, %3 ], [ undef, %1 ]
  %i1 = phi i2 [ %i_6, %3 ], [ 0, %1 ]
  %exitcond2 = icmp eq i2 %i1, -2
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_6 = add i2 %i1, 1
  br i1 %exitcond2, label %.preheader4, label %3

; <label>:3                                       ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str16) nounwind
  %tmp_10 = trunc i2 %i1 to i1
  %inp_1_read_assign_1 = select i1 %tmp_10, float %inp_1_read_1, float %inp_0_read_1
  %temp_0 = fdiv float %inp_1_read_assign_1, %sum
  %temp_1_1 = select i1 %tmp_10, float %temp_0, float %temp_1_s
  %temp_1_2 = select i1 %tmp_10, float %temp_0_s, float %temp_0
  br label %.preheader5

.preheader4:                                      ; preds = %.preheader5, %4
  %sum_1 = phi float [ %sum_3, %4 ], [ 0.000000e+00, %.preheader5 ]
  %i2 = phi i2 [ %i_7, %4 ], [ 0, %.preheader5 ]
  %exitcond1 = icmp eq i2 %i2, -2
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_7 = add i2 %i2, 1
  br i1 %exitcond1, label %.preheader.preheader, label %4

.preheader.preheader:                             ; preds = %.preheader4
  %tmp_s = fpext float %sum_1 to double
  br label %.preheader

; <label>:4                                       ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str17) nounwind
  %tmp_11 = trunc i2 %i2 to i1
  %temp_load_phi = select i1 %tmp_11, float %temp_1_s, float %temp_0_s
  %tmp_5 = fpext float %temp_load_phi to double
  %tmp_6 = call double @llvm.exp.f64(double %tmp_5)
  %tmp_7 = fpext float %sum_1 to double
  %tmp_8 = fadd double %tmp_7, %tmp_6
  %sum_3 = fptrunc double %tmp_8 to float
  br label %.preheader4

.preheader:                                       ; preds = %5, %.preheader.preheader
  %i3 = phi i2 [ %i_8, %5 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i2 %i3, -2
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_8 = add i2 %i3, 1
  br i1 %exitcond, label %6, label %5

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str18) nounwind
  %tmp_9 = zext i2 %i3 to i64
  %tmp_12 = trunc i2 %i3 to i1
  %temp_load_1_phi = select i1 %tmp_12, float %temp_1_s, float %temp_0_s
  %tmp_2 = fpext float %temp_load_1_phi to double
  %tmp_3 = call double @llvm.exp.f64(double %tmp_2)
  %tmp_4 = fdiv double %tmp_3, %tmp_s
  %tmp_1 = fptrunc double %tmp_4 to float
  %out_addr = getelementptr [2 x float]* %out_r, i64 0, i64 %tmp_9
  store float %tmp_1, float* %out_addr, align 4
  br label %.preheader

; <label>:6                                       ; preds = %.preheader
  ret void
}

define internal fastcc float @obj_detector_FCL([864 x float]* nocapture %inp, [1728 x float]* %W, i1 %W_offset) readonly {
  call void (...)* @_ssdm_op_SpecInterface([1728 x float]* %W, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %W_offset_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %W_offset)
  %tmp_16_cast = select i1 %W_offset_read, i11 864, i11 0
  br label %1

; <label>:1                                       ; preds = %2, %0
  %out = phi float [ 0.000000e+00, %0 ], [ %out_1, %2 ]
  %i = phi i10 [ 0, %0 ], [ %i_5, %2 ]
  %exitcond = icmp eq i10 %i, -160
  %i_5 = add i10 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 864, i64 864, i64 864)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str14) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str14)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp = zext i10 %i to i64
  %inp_addr = getelementptr [864 x float]* %inp, i64 0, i64 %tmp
  %inp_load = load float* %inp_addr, align 4
  %tmp_trn_cast = zext i10 %i to i11
  %p_addr1 = add i11 %tmp_trn_cast, %tmp_16_cast
  %tmp_16 = zext i11 %p_addr1 to i64
  %W_addr = getelementptr [1728 x float]* %W, i64 0, i64 %tmp_16
  %W_load = load float* %W_addr, align 4
  %tmp_s = fmul float %inp_load, %W_load
  %out_1 = fadd float %out, %tmp_s
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str14, i32 %tmp_6)
  br label %1

; <label>:3                                       ; preds = %1
  ret float %out
}

define internal fastcc void @obj_detector_maxpool([3456 x float]* %inp, i3 %tmp_6, [72 x float]* nocapture %out_0, [72 x float]* nocapture %out_1, [72 x float]* nocapture %out_2, [72 x float]* nocapture %out_3, [72 x float]* nocapture %out_4, [72 x float]* nocapture %out_5, [72 x float]* nocapture %out_6, [72 x float]* nocapture %out_7, [72 x float]* nocapture %out_8, [72 x float]* nocapture %out_9, [72 x float]* nocapture %out_10, [72 x float]* nocapture %out_11, i3 %tmp_61) {
  %tmp_61_read = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %tmp_61)
  %tmp_6_read = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %tmp_6)
  %tmp_22 = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp_6_read, i5 0)
  %p_shl2_cast = zext i8 %tmp_22 to i9
  %tmp_24 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_6_read, i3 0)
  %p_shl3_cast = zext i6 %tmp_24 to i9
  %p_addr = sub i9 %p_shl2_cast, %p_shl3_cast
  %p_addr_cast = sext i9 %p_addr to i10
  %tmp_31 = call i7 @_ssdm_op_BitConcatenate.i7.i3.i4(i3 %tmp_61_read, i4 0)
  %p_shl_cast = zext i7 %tmp_31 to i8
  %tmp_33 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %tmp_61_read, i2 0)
  %p_shl4_cast = zext i5 %tmp_33 to i8
  %p_addr12 = sub i8 %p_shl_cast, %p_shl4_cast
  %p_addr12_cast = sext i8 %p_addr12 to i9
  br label %1

; <label>:1                                       ; preds = %._crit_edge.0, %0
  %i = phi i4 [ 0, %0 ], [ %i_6, %._crit_edge.0 ]
  %exitcond1 = icmp eq i4 %i, -4
  %i_6 = add i4 %i, 1
  br i1 %exitcond1, label %2, label %._crit_edge.0

._crit_edge.0:                                    ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 12, i64 12, i64 12)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str12) nounwind
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str12) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %i, i1 false)
  %tmp_1 = or i5 %tmp, 1
  %tmp_trn_cast = zext i5 %tmp to i10
  %p_addr13 = add i10 %p_addr_cast, %tmp_trn_cast
  %tmp_13 = call i15 @_ssdm_op_BitConcatenate.i15.i10.i5(i10 %p_addr13, i5 0)
  %p_shl5 = sext i15 %tmp_13 to i32
  %tmp_15 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %p_addr13, i3 0)
  %p_shl6 = sext i13 %tmp_15 to i32
  %p_addr15 = sub i32 %p_shl5, %p_shl6
  %tmp_40 = zext i32 %p_addr15 to i64
  %inp_addr = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_40
  %inp_load = load float* %inp_addr, align 4
  %p_addr16 = or i32 %p_addr15, 1
  %tmp_42 = zext i32 %p_addr16 to i64
  %inp_addr_1 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_42
  %inp_load_1 = load float* %inp_addr_1, align 4
  %inp_load_to_int = bitcast float %inp_load to i32
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_to_int, i32 23, i32 30)
  %tmp_49 = trunc i32 %inp_load_to_int to i23
  %inp_load_1_to_int = bitcast float %inp_load_1 to i32
  %tmp_8 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_1_to_int, i32 23, i32 30)
  %tmp_51 = trunc i32 %inp_load_1_to_int to i23
  %notlhs = icmp ne i8 %tmp_4, -1
  %notrhs = icmp eq i23 %tmp_49, 0
  %tmp_s = or i1 %notrhs, %notlhs
  %notlhs1 = icmp ne i8 %tmp_8, -1
  %notrhs2 = icmp eq i23 %tmp_51, 0
  %tmp_2 = or i1 %notrhs2, %notlhs1
  %tmp_3 = and i1 %tmp_s, %tmp_2
  %tmp_10 = fcmp ogt float %inp_load, %inp_load_1
  %tmp_11 = and i1 %tmp_3, %tmp_10
  %max4 = select i1 %tmp_11, float %inp_load, float %inp_load_1
  %tmp_2_trn_cast = zext i5 %tmp_1 to i10
  %p_addr17 = add i10 %p_addr_cast, %tmp_2_trn_cast
  %tmp_58 = call i15 @_ssdm_op_BitConcatenate.i15.i10.i5(i10 %p_addr17, i5 0)
  %p_shl7 = sext i15 %tmp_58 to i32
  %tmp_60 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %p_addr17, i3 0)
  %p_shl8 = sext i13 %tmp_60 to i32
  %p_addr18 = sub i32 %p_shl7, %p_shl8
  %tmp_68 = zext i32 %p_addr18 to i64
  %inp_addr_2 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_68
  %inp_load_2 = load float* %inp_addr_2, align 4
  %inp_load_2_to_int = bitcast float %inp_load_2 to i32
  %tmp_12 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_2_to_int, i32 23, i32 30)
  %tmp_70 = trunc i32 %inp_load_2_to_int to i23
  %max4_to_int = bitcast float %max4 to i32
  %tmp_14 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max4_to_int, i32 23, i32 30)
  %tmp_77 = trunc i32 %max4_to_int to i23
  %notlhs3 = icmp ne i8 %tmp_12, -1
  %notrhs4 = icmp eq i23 %tmp_70, 0
  %tmp_16 = or i1 %notrhs4, %notlhs3
  %notlhs5 = icmp ne i8 %tmp_14, -1
  %notrhs6 = icmp eq i23 %tmp_77, 0
  %tmp_17 = or i1 %notrhs6, %notlhs5
  %tmp_18 = and i1 %tmp_16, %tmp_17
  %tmp_19 = fcmp ogt float %inp_load_2, %max4
  %tmp_20 = and i1 %tmp_18, %tmp_19
  %max_1 = select i1 %tmp_20, float %inp_load_2, float %max4
  %p_addr19 = or i32 %p_addr18, 1
  %tmp_79 = zext i32 %p_addr19 to i64
  %inp_addr_3 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_79
  %inp_load_3 = load float* %inp_addr_3, align 4
  %inp_load_3_to_int = bitcast float %inp_load_3 to i32
  %tmp_21 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_3_to_int, i32 23, i32 30)
  %tmp_86 = trunc i32 %inp_load_3_to_int to i23
  %max_1_to_int = bitcast float %max_1 to i32
  %tmp_23 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_1_to_int, i32 23, i32 30)
  %tmp_88 = trunc i32 %max_1_to_int to i23
  %notlhs7 = icmp ne i8 %tmp_21, -1
  %notrhs8 = icmp eq i23 %tmp_86, 0
  %tmp_25 = or i1 %notrhs8, %notlhs7
  %notlhs9 = icmp ne i8 %tmp_23, -1
  %notrhs1 = icmp eq i23 %tmp_88, 0
  %tmp_26 = or i1 %notrhs1, %notlhs9
  %tmp_27 = and i1 %tmp_25, %tmp_26
  %tmp_28 = fcmp ogt float %inp_load_3, %max_1
  %tmp_29 = and i1 %tmp_27, %tmp_28
  %max_2 = select i1 %tmp_29, float %inp_load_3, float %max_1
  %tmp_3_trn_cast = zext i4 %i to i9
  %p_addr21 = add i9 %p_addr12_cast, %tmp_3_trn_cast
  %p_addr21_cast = sext i9 %p_addr21 to i32
  %tmp_95 = zext i32 %p_addr21_cast to i64
  %out_0_addr = getelementptr [72 x float]* %out_0, i64 0, i64 %tmp_95
  store float %max_2, float* %out_0_addr, align 4
  %p_addr22 = or i32 %p_addr15, 2
  %tmp_97 = zext i32 %p_addr22 to i64
  %inp_addr_4 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_97
  %inp_load_4 = load float* %inp_addr_4, align 4
  %p_addr23 = or i32 %p_addr15, 3
  %tmp_104 = zext i32 %p_addr23 to i64
  %inp_addr_5 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_104
  %inp_load_5 = load float* %inp_addr_5, align 4
  %inp_load_4_to_int = bitcast float %inp_load_4 to i32
  %tmp_30 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_4_to_int, i32 23, i32 30)
  %tmp_106 = trunc i32 %inp_load_4_to_int to i23
  %inp_load_5_to_int = bitcast float %inp_load_5 to i32
  %tmp_32 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_5_to_int, i32 23, i32 30)
  %tmp_113 = trunc i32 %inp_load_5_to_int to i23
  %notlhs2 = icmp ne i8 %tmp_30, -1
  %notrhs3 = icmp eq i23 %tmp_106, 0
  %tmp_34 = or i1 %notrhs3, %notlhs2
  %notlhs4 = icmp ne i8 %tmp_32, -1
  %notrhs5 = icmp eq i23 %tmp_113, 0
  %tmp_35 = or i1 %notrhs5, %notlhs4
  %tmp_36 = and i1 %tmp_34, %tmp_35
  %tmp_37 = fcmp ogt float %inp_load_4, %inp_load_5
  %tmp_38 = and i1 %tmp_36, %tmp_37
  %max4_1 = select i1 %tmp_38, float %inp_load_4, float %inp_load_5
  %p_addr24 = or i32 %p_addr18, 2
  %tmp_115 = zext i32 %p_addr24 to i64
  %inp_addr_6 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_115
  %inp_load_6 = load float* %inp_addr_6, align 4
  %inp_load_6_to_int = bitcast float %inp_load_6 to i32
  %tmp_39 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_6_to_int, i32 23, i32 30)
  %tmp_122 = trunc i32 %inp_load_6_to_int to i23
  %max4_1_to_int = bitcast float %max4_1 to i32
  %tmp_41 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max4_1_to_int, i32 23, i32 30)
  %tmp_124 = trunc i32 %max4_1_to_int to i23
  %notlhs6 = icmp ne i8 %tmp_39, -1
  %notrhs7 = icmp eq i23 %tmp_122, 0
  %tmp_43 = or i1 %notrhs7, %notlhs6
  %notlhs8 = icmp ne i8 %tmp_41, -1
  %notrhs9 = icmp eq i23 %tmp_124, 0
  %tmp_44 = or i1 %notrhs9, %notlhs8
  %tmp_45 = and i1 %tmp_43, %tmp_44
  %tmp_46 = fcmp ogt float %inp_load_6, %max4_1
  %tmp_47 = and i1 %tmp_45, %tmp_46
  %max_1_1 = select i1 %tmp_47, float %inp_load_6, float %max4_1
  %p_addr25 = or i32 %p_addr18, 3
  %tmp_131 = zext i32 %p_addr25 to i64
  %inp_addr_7 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_131
  %inp_load_7 = load float* %inp_addr_7, align 4
  %inp_load_7_to_int = bitcast float %inp_load_7 to i32
  %tmp_48 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_7_to_int, i32 23, i32 30)
  %tmp_133 = trunc i32 %inp_load_7_to_int to i23
  %max_1_1_to_int = bitcast float %max_1_1 to i32
  %tmp_50 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_1_1_to_int, i32 23, i32 30)
  %tmp_140 = trunc i32 %max_1_1_to_int to i23
  %notlhs10 = icmp ne i8 %tmp_48, -1
  %notrhs10 = icmp eq i23 %tmp_133, 0
  %tmp_52 = or i1 %notrhs10, %notlhs10
  %notlhs11 = icmp ne i8 %tmp_50, -1
  %notrhs11 = icmp eq i23 %tmp_140, 0
  %tmp_53 = or i1 %notrhs11, %notlhs11
  %tmp_54 = and i1 %tmp_52, %tmp_53
  %tmp_55 = fcmp ogt float %inp_load_7, %max_1_1
  %tmp_56 = and i1 %tmp_54, %tmp_55
  %max_2_1 = select i1 %tmp_56, float %inp_load_7, float %max_1_1
  %out_1_addr = getelementptr [72 x float]* %out_1, i64 0, i64 %tmp_95
  store float %max_2_1, float* %out_1_addr, align 4
  %p_addr27 = or i32 %p_addr15, 4
  %tmp_142 = zext i32 %p_addr27 to i64
  %inp_addr_8 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_142
  %inp_load_8 = load float* %inp_addr_8, align 4
  %p_addr28 = or i32 %p_addr15, 5
  %tmp_149 = zext i32 %p_addr28 to i64
  %inp_addr_9 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_149
  %inp_load_9 = load float* %inp_addr_9, align 4
  %inp_load_8_to_int = bitcast float %inp_load_8 to i32
  %tmp_57 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_8_to_int, i32 23, i32 30)
  %tmp_151 = trunc i32 %inp_load_8_to_int to i23
  %inp_load_9_to_int = bitcast float %inp_load_9 to i32
  %tmp_59 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_9_to_int, i32 23, i32 30)
  %tmp_158 = trunc i32 %inp_load_9_to_int to i23
  %notlhs12 = icmp ne i8 %tmp_57, -1
  %notrhs12 = icmp eq i23 %tmp_151, 0
  %tmp_62 = or i1 %notrhs12, %notlhs12
  %notlhs13 = icmp ne i8 %tmp_59, -1
  %notrhs13 = icmp eq i23 %tmp_158, 0
  %tmp_63 = or i1 %notrhs13, %notlhs13
  %tmp_64 = and i1 %tmp_62, %tmp_63
  %tmp_65 = fcmp ogt float %inp_load_8, %inp_load_9
  %tmp_66 = and i1 %tmp_64, %tmp_65
  %max4_2 = select i1 %tmp_66, float %inp_load_8, float %inp_load_9
  %p_addr29 = or i32 %p_addr18, 4
  %tmp_160 = zext i32 %p_addr29 to i64
  %inp_addr_10 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_160
  %inp_load_10 = load float* %inp_addr_10, align 4
  %inp_load_10_to_int = bitcast float %inp_load_10 to i32
  %tmp_67 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_10_to_int, i32 23, i32 30)
  %tmp_167 = trunc i32 %inp_load_10_to_int to i23
  %max4_2_to_int = bitcast float %max4_2 to i32
  %tmp_69 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max4_2_to_int, i32 23, i32 30)
  %tmp_169 = trunc i32 %max4_2_to_int to i23
  %notlhs14 = icmp ne i8 %tmp_67, -1
  %notrhs14 = icmp eq i23 %tmp_167, 0
  %tmp_71 = or i1 %notrhs14, %notlhs14
  %notlhs15 = icmp ne i8 %tmp_69, -1
  %notrhs15 = icmp eq i23 %tmp_169, 0
  %tmp_72 = or i1 %notrhs15, %notlhs15
  %tmp_73 = and i1 %tmp_71, %tmp_72
  %tmp_74 = fcmp ogt float %inp_load_10, %max4_2
  %tmp_75 = and i1 %tmp_73, %tmp_74
  %max_1_2 = select i1 %tmp_75, float %inp_load_10, float %max4_2
  %p_addr30 = or i32 %p_addr18, 5
  %tmp_176 = zext i32 %p_addr30 to i64
  %inp_addr_11 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_176
  %inp_load_11 = load float* %inp_addr_11, align 4
  %inp_load_11_to_int = bitcast float %inp_load_11 to i32
  %tmp_76 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_11_to_int, i32 23, i32 30)
  %tmp_178 = trunc i32 %inp_load_11_to_int to i23
  %max_1_2_to_int = bitcast float %max_1_2 to i32
  %tmp_78 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_1_2_to_int, i32 23, i32 30)
  %tmp_185 = trunc i32 %max_1_2_to_int to i23
  %notlhs16 = icmp ne i8 %tmp_76, -1
  %notrhs16 = icmp eq i23 %tmp_178, 0
  %tmp_80 = or i1 %notrhs16, %notlhs16
  %notlhs17 = icmp ne i8 %tmp_78, -1
  %notrhs17 = icmp eq i23 %tmp_185, 0
  %tmp_81 = or i1 %notrhs17, %notlhs17
  %tmp_82 = and i1 %tmp_80, %tmp_81
  %tmp_83 = fcmp ogt float %inp_load_11, %max_1_2
  %tmp_84 = and i1 %tmp_82, %tmp_83
  %max_2_2 = select i1 %tmp_84, float %inp_load_11, float %max_1_2
  %out_2_addr = getelementptr [72 x float]* %out_2, i64 0, i64 %tmp_95
  store float %max_2_2, float* %out_2_addr, align 4
  %p_addr31 = or i32 %p_addr15, 6
  %tmp_187 = zext i32 %p_addr31 to i64
  %inp_addr_12 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_187
  %inp_load_12 = load float* %inp_addr_12, align 4
  %p_addr33 = or i32 %p_addr15, 7
  %tmp_194 = zext i32 %p_addr33 to i64
  %inp_addr_13 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_194
  %inp_load_13 = load float* %inp_addr_13, align 4
  %inp_load_12_to_int = bitcast float %inp_load_12 to i32
  %tmp_85 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_12_to_int, i32 23, i32 30)
  %tmp_196 = trunc i32 %inp_load_12_to_int to i23
  %inp_load_13_to_int = bitcast float %inp_load_13 to i32
  %tmp_87 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_13_to_int, i32 23, i32 30)
  %tmp_203 = trunc i32 %inp_load_13_to_int to i23
  %notlhs18 = icmp ne i8 %tmp_85, -1
  %notrhs18 = icmp eq i23 %tmp_196, 0
  %tmp_89 = or i1 %notrhs18, %notlhs18
  %notlhs19 = icmp ne i8 %tmp_87, -1
  %notrhs19 = icmp eq i23 %tmp_203, 0
  %tmp_90 = or i1 %notrhs19, %notlhs19
  %tmp_91 = and i1 %tmp_89, %tmp_90
  %tmp_92 = fcmp ogt float %inp_load_12, %inp_load_13
  %tmp_93 = and i1 %tmp_91, %tmp_92
  %max4_3 = select i1 %tmp_93, float %inp_load_12, float %inp_load_13
  %p_addr34 = or i32 %p_addr18, 6
  %tmp_205 = zext i32 %p_addr34 to i64
  %inp_addr_14 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_205
  %inp_load_14 = load float* %inp_addr_14, align 4
  %inp_load_14_to_int = bitcast float %inp_load_14 to i32
  %tmp_94 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_14_to_int, i32 23, i32 30)
  %tmp_212 = trunc i32 %inp_load_14_to_int to i23
  %max4_3_to_int = bitcast float %max4_3 to i32
  %tmp_96 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max4_3_to_int, i32 23, i32 30)
  %tmp_214 = trunc i32 %max4_3_to_int to i23
  %notlhs20 = icmp ne i8 %tmp_94, -1
  %notrhs20 = icmp eq i23 %tmp_212, 0
  %tmp_98 = or i1 %notrhs20, %notlhs20
  %notlhs21 = icmp ne i8 %tmp_96, -1
  %notrhs21 = icmp eq i23 %tmp_214, 0
  %tmp_99 = or i1 %notrhs21, %notlhs21
  %tmp_100 = and i1 %tmp_98, %tmp_99
  %tmp_101 = fcmp ogt float %inp_load_14, %max4_3
  %tmp_102 = and i1 %tmp_100, %tmp_101
  %max_1_3 = select i1 %tmp_102, float %inp_load_14, float %max4_3
  %p_addr35 = or i32 %p_addr18, 7
  %tmp_221 = zext i32 %p_addr35 to i64
  %inp_addr_15 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_221
  %inp_load_15 = load float* %inp_addr_15, align 4
  %inp_load_15_to_int = bitcast float %inp_load_15 to i32
  %tmp_103 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_15_to_int, i32 23, i32 30)
  %tmp_223 = trunc i32 %inp_load_15_to_int to i23
  %max_1_3_to_int = bitcast float %max_1_3 to i32
  %tmp_105 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_1_3_to_int, i32 23, i32 30)
  %tmp_230 = trunc i32 %max_1_3_to_int to i23
  %notlhs22 = icmp ne i8 %tmp_103, -1
  %notrhs22 = icmp eq i23 %tmp_223, 0
  %tmp_107 = or i1 %notrhs22, %notlhs22
  %notlhs23 = icmp ne i8 %tmp_105, -1
  %notrhs23 = icmp eq i23 %tmp_230, 0
  %tmp_108 = or i1 %notrhs23, %notlhs23
  %tmp_109 = and i1 %tmp_107, %tmp_108
  %tmp_110 = fcmp ogt float %inp_load_15, %max_1_3
  %tmp_111 = and i1 %tmp_109, %tmp_110
  %max_2_3 = select i1 %tmp_111, float %inp_load_15, float %max_1_3
  %out_3_addr = getelementptr [72 x float]* %out_3, i64 0, i64 %tmp_95
  store float %max_2_3, float* %out_3_addr, align 4
  %p_addr36 = or i32 %p_addr15, 8
  %tmp_232 = zext i32 %p_addr36 to i64
  %inp_addr_16 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_232
  %inp_load_16 = load float* %inp_addr_16, align 4
  %p_addr37 = or i32 %p_addr15, 9
  %tmp_239 = zext i32 %p_addr37 to i64
  %inp_addr_17 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_239
  %inp_load_17 = load float* %inp_addr_17, align 4
  %inp_load_16_to_int = bitcast float %inp_load_16 to i32
  %tmp_112 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_16_to_int, i32 23, i32 30)
  %tmp_241 = trunc i32 %inp_load_16_to_int to i23
  %inp_load_17_to_int = bitcast float %inp_load_17 to i32
  %tmp_114 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_17_to_int, i32 23, i32 30)
  %tmp_248 = trunc i32 %inp_load_17_to_int to i23
  %notlhs24 = icmp ne i8 %tmp_112, -1
  %notrhs24 = icmp eq i23 %tmp_241, 0
  %tmp_116 = or i1 %notrhs24, %notlhs24
  %notlhs25 = icmp ne i8 %tmp_114, -1
  %notrhs25 = icmp eq i23 %tmp_248, 0
  %tmp_117 = or i1 %notrhs25, %notlhs25
  %tmp_118 = and i1 %tmp_116, %tmp_117
  %tmp_119 = fcmp ogt float %inp_load_16, %inp_load_17
  %tmp_120 = and i1 %tmp_118, %tmp_119
  %max4_4 = select i1 %tmp_120, float %inp_load_16, float %inp_load_17
  %p_addr39 = add i32 8, %p_addr18
  %tmp_250 = zext i32 %p_addr39 to i64
  %inp_addr_18 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_250
  %inp_load_18 = load float* %inp_addr_18, align 4
  %inp_load_18_to_int = bitcast float %inp_load_18 to i32
  %tmp_121 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_18_to_int, i32 23, i32 30)
  %tmp_257 = trunc i32 %inp_load_18_to_int to i23
  %max4_4_to_int = bitcast float %max4_4 to i32
  %tmp_123 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max4_4_to_int, i32 23, i32 30)
  %tmp_259 = trunc i32 %max4_4_to_int to i23
  %notlhs26 = icmp ne i8 %tmp_121, -1
  %notrhs26 = icmp eq i23 %tmp_257, 0
  %tmp_125 = or i1 %notrhs26, %notlhs26
  %notlhs27 = icmp ne i8 %tmp_123, -1
  %notrhs27 = icmp eq i23 %tmp_259, 0
  %tmp_126 = or i1 %notrhs27, %notlhs27
  %tmp_127 = and i1 %tmp_125, %tmp_126
  %tmp_128 = fcmp ogt float %inp_load_18, %max4_4
  %tmp_129 = and i1 %tmp_127, %tmp_128
  %max_1_4 = select i1 %tmp_129, float %inp_load_18, float %max4_4
  %p_addr40 = add i32 9, %p_addr18
  %tmp_266 = zext i32 %p_addr40 to i64
  %inp_addr_19 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_266
  %inp_load_19 = load float* %inp_addr_19, align 4
  %inp_load_19_to_int = bitcast float %inp_load_19 to i32
  %tmp_130 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_19_to_int, i32 23, i32 30)
  %tmp_268 = trunc i32 %inp_load_19_to_int to i23
  %max_1_4_to_int = bitcast float %max_1_4 to i32
  %tmp_132 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_1_4_to_int, i32 23, i32 30)
  %tmp_275 = trunc i32 %max_1_4_to_int to i23
  %notlhs28 = icmp ne i8 %tmp_130, -1
  %notrhs28 = icmp eq i23 %tmp_268, 0
  %tmp_134 = or i1 %notrhs28, %notlhs28
  %notlhs29 = icmp ne i8 %tmp_132, -1
  %notrhs29 = icmp eq i23 %tmp_275, 0
  %tmp_135 = or i1 %notrhs29, %notlhs29
  %tmp_136 = and i1 %tmp_134, %tmp_135
  %tmp_137 = fcmp ogt float %inp_load_19, %max_1_4
  %tmp_138 = and i1 %tmp_136, %tmp_137
  %max_2_4 = select i1 %tmp_138, float %inp_load_19, float %max_1_4
  %out_4_addr = getelementptr [72 x float]* %out_4, i64 0, i64 %tmp_95
  store float %max_2_4, float* %out_4_addr, align 4
  %p_addr41 = or i32 %p_addr15, 10
  %tmp_277 = zext i32 %p_addr41 to i64
  %inp_addr_20 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_277
  %inp_load_20 = load float* %inp_addr_20, align 4
  %p_addr42 = or i32 %p_addr15, 11
  %tmp_284 = zext i32 %p_addr42 to i64
  %inp_addr_21 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_284
  %inp_load_21 = load float* %inp_addr_21, align 4
  %inp_load_20_to_int = bitcast float %inp_load_20 to i32
  %tmp_139 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_20_to_int, i32 23, i32 30)
  %tmp_286 = trunc i32 %inp_load_20_to_int to i23
  %inp_load_21_to_int = bitcast float %inp_load_21 to i32
  %tmp_141 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_21_to_int, i32 23, i32 30)
  %tmp_293 = trunc i32 %inp_load_21_to_int to i23
  %notlhs30 = icmp ne i8 %tmp_139, -1
  %notrhs30 = icmp eq i23 %tmp_286, 0
  %tmp_143 = or i1 %notrhs30, %notlhs30
  %notlhs31 = icmp ne i8 %tmp_141, -1
  %notrhs31 = icmp eq i23 %tmp_293, 0
  %tmp_144 = or i1 %notrhs31, %notlhs31
  %tmp_145 = and i1 %tmp_143, %tmp_144
  %tmp_146 = fcmp ogt float %inp_load_20, %inp_load_21
  %tmp_147 = and i1 %tmp_145, %tmp_146
  %max4_5 = select i1 %tmp_147, float %inp_load_20, float %inp_load_21
  %p_addr43 = add i32 10, %p_addr18
  %tmp_295 = zext i32 %p_addr43 to i64
  %inp_addr_22 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_295
  %inp_load_22 = load float* %inp_addr_22, align 4
  %inp_load_22_to_int = bitcast float %inp_load_22 to i32
  %tmp_148 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_22_to_int, i32 23, i32 30)
  %tmp_302 = trunc i32 %inp_load_22_to_int to i23
  %max4_5_to_int = bitcast float %max4_5 to i32
  %tmp_150 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max4_5_to_int, i32 23, i32 30)
  %tmp_304 = trunc i32 %max4_5_to_int to i23
  %notlhs32 = icmp ne i8 %tmp_148, -1
  %notrhs32 = icmp eq i23 %tmp_302, 0
  %tmp_152 = or i1 %notrhs32, %notlhs32
  %notlhs33 = icmp ne i8 %tmp_150, -1
  %notrhs33 = icmp eq i23 %tmp_304, 0
  %tmp_153 = or i1 %notrhs33, %notlhs33
  %tmp_154 = and i1 %tmp_152, %tmp_153
  %tmp_155 = fcmp ogt float %inp_load_22, %max4_5
  %tmp_156 = and i1 %tmp_154, %tmp_155
  %max_1_5 = select i1 %tmp_156, float %inp_load_22, float %max4_5
  %p_addr45 = add i32 11, %p_addr18
  %tmp_311 = zext i32 %p_addr45 to i64
  %inp_addr_23 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_311
  %inp_load_23 = load float* %inp_addr_23, align 4
  %inp_load_23_to_int = bitcast float %inp_load_23 to i32
  %tmp_157 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_23_to_int, i32 23, i32 30)
  %tmp_313 = trunc i32 %inp_load_23_to_int to i23
  %max_1_5_to_int = bitcast float %max_1_5 to i32
  %tmp_159 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_1_5_to_int, i32 23, i32 30)
  %tmp_320 = trunc i32 %max_1_5_to_int to i23
  %notlhs34 = icmp ne i8 %tmp_157, -1
  %notrhs34 = icmp eq i23 %tmp_313, 0
  %tmp_161 = or i1 %notrhs34, %notlhs34
  %notlhs35 = icmp ne i8 %tmp_159, -1
  %notrhs35 = icmp eq i23 %tmp_320, 0
  %tmp_162 = or i1 %notrhs35, %notlhs35
  %tmp_163 = and i1 %tmp_161, %tmp_162
  %tmp_164 = fcmp ogt float %inp_load_23, %max_1_5
  %tmp_165 = and i1 %tmp_163, %tmp_164
  %max_2_5 = select i1 %tmp_165, float %inp_load_23, float %max_1_5
  %out_5_addr = getelementptr [72 x float]* %out_5, i64 0, i64 %tmp_95
  store float %max_2_5, float* %out_5_addr, align 4
  %p_addr46 = or i32 %p_addr15, 12
  %tmp_322 = zext i32 %p_addr46 to i64
  %inp_addr_24 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_322
  %inp_load_24 = load float* %inp_addr_24, align 4
  %p_addr47 = or i32 %p_addr15, 13
  %tmp_328 = zext i32 %p_addr47 to i64
  %inp_addr_25 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_328
  %inp_load_25 = load float* %inp_addr_25, align 4
  %inp_load_24_to_int = bitcast float %inp_load_24 to i32
  %tmp_166 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_24_to_int, i32 23, i32 30)
  %tmp_329 = trunc i32 %inp_load_24_to_int to i23
  %inp_load_25_to_int = bitcast float %inp_load_25 to i32
  %tmp_168 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_25_to_int, i32 23, i32 30)
  %tmp_330 = trunc i32 %inp_load_25_to_int to i23
  %notlhs36 = icmp ne i8 %tmp_166, -1
  %notrhs36 = icmp eq i23 %tmp_329, 0
  %tmp_170 = or i1 %notrhs36, %notlhs36
  %notlhs37 = icmp ne i8 %tmp_168, -1
  %notrhs37 = icmp eq i23 %tmp_330, 0
  %tmp_171 = or i1 %notrhs37, %notlhs37
  %tmp_172 = and i1 %tmp_170, %tmp_171
  %tmp_173 = fcmp ogt float %inp_load_24, %inp_load_25
  %tmp_174 = and i1 %tmp_172, %tmp_173
  %max4_6 = select i1 %tmp_174, float %inp_load_24, float %inp_load_25
  %p_addr48 = add i32 12, %p_addr18
  %tmp_331 = zext i32 %p_addr48 to i64
  %inp_addr_26 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_331
  %inp_load_26 = load float* %inp_addr_26, align 4
  %inp_load_26_to_int = bitcast float %inp_load_26 to i32
  %tmp_175 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_26_to_int, i32 23, i32 30)
  %tmp_332 = trunc i32 %inp_load_26_to_int to i23
  %max4_6_to_int = bitcast float %max4_6 to i32
  %tmp_177 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max4_6_to_int, i32 23, i32 30)
  %tmp_333 = trunc i32 %max4_6_to_int to i23
  %notlhs38 = icmp ne i8 %tmp_175, -1
  %notrhs38 = icmp eq i23 %tmp_332, 0
  %tmp_179 = or i1 %notrhs38, %notlhs38
  %notlhs39 = icmp ne i8 %tmp_177, -1
  %notrhs39 = icmp eq i23 %tmp_333, 0
  %tmp_180 = or i1 %notrhs39, %notlhs39
  %tmp_181 = and i1 %tmp_179, %tmp_180
  %tmp_182 = fcmp ogt float %inp_load_26, %max4_6
  %tmp_183 = and i1 %tmp_181, %tmp_182
  %max_1_6 = select i1 %tmp_183, float %inp_load_26, float %max4_6
  %p_addr49 = add i32 13, %p_addr18
  %tmp_334 = zext i32 %p_addr49 to i64
  %inp_addr_27 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_334
  %inp_load_27 = load float* %inp_addr_27, align 4
  %inp_load_27_to_int = bitcast float %inp_load_27 to i32
  %tmp_184 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_27_to_int, i32 23, i32 30)
  %tmp_335 = trunc i32 %inp_load_27_to_int to i23
  %max_1_6_to_int = bitcast float %max_1_6 to i32
  %tmp_186 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_1_6_to_int, i32 23, i32 30)
  %tmp_336 = trunc i32 %max_1_6_to_int to i23
  %notlhs40 = icmp ne i8 %tmp_184, -1
  %notrhs40 = icmp eq i23 %tmp_335, 0
  %tmp_188 = or i1 %notrhs40, %notlhs40
  %notlhs41 = icmp ne i8 %tmp_186, -1
  %notrhs41 = icmp eq i23 %tmp_336, 0
  %tmp_189 = or i1 %notrhs41, %notlhs41
  %tmp_190 = and i1 %tmp_188, %tmp_189
  %tmp_191 = fcmp ogt float %inp_load_27, %max_1_6
  %tmp_192 = and i1 %tmp_190, %tmp_191
  %max_2_6 = select i1 %tmp_192, float %inp_load_27, float %max_1_6
  %out_6_addr = getelementptr [72 x float]* %out_6, i64 0, i64 %tmp_95
  store float %max_2_6, float* %out_6_addr, align 4
  %p_addr51 = or i32 %p_addr15, 14
  %tmp_337 = zext i32 %p_addr51 to i64
  %inp_addr_28 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_337
  %inp_load_28 = load float* %inp_addr_28, align 4
  %p_addr52 = or i32 %p_addr15, 15
  %tmp_338 = zext i32 %p_addr52 to i64
  %inp_addr_29 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_338
  %inp_load_29 = load float* %inp_addr_29, align 4
  %inp_load_28_to_int = bitcast float %inp_load_28 to i32
  %tmp_193 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_28_to_int, i32 23, i32 30)
  %tmp_339 = trunc i32 %inp_load_28_to_int to i23
  %inp_load_29_to_int = bitcast float %inp_load_29 to i32
  %tmp_195 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_29_to_int, i32 23, i32 30)
  %tmp_340 = trunc i32 %inp_load_29_to_int to i23
  %notlhs42 = icmp ne i8 %tmp_193, -1
  %notrhs42 = icmp eq i23 %tmp_339, 0
  %tmp_197 = or i1 %notrhs42, %notlhs42
  %notlhs43 = icmp ne i8 %tmp_195, -1
  %notrhs43 = icmp eq i23 %tmp_340, 0
  %tmp_198 = or i1 %notrhs43, %notlhs43
  %tmp_199 = and i1 %tmp_197, %tmp_198
  %tmp_200 = fcmp ogt float %inp_load_28, %inp_load_29
  %tmp_201 = and i1 %tmp_199, %tmp_200
  %max4_7 = select i1 %tmp_201, float %inp_load_28, float %inp_load_29
  %p_addr53 = add i32 14, %p_addr18
  %tmp_341 = zext i32 %p_addr53 to i64
  %inp_addr_30 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_341
  %inp_load_30 = load float* %inp_addr_30, align 4
  %inp_load_30_to_int = bitcast float %inp_load_30 to i32
  %tmp_202 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_30_to_int, i32 23, i32 30)
  %tmp_342 = trunc i32 %inp_load_30_to_int to i23
  %max4_7_to_int = bitcast float %max4_7 to i32
  %tmp_204 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max4_7_to_int, i32 23, i32 30)
  %tmp_343 = trunc i32 %max4_7_to_int to i23
  %notlhs44 = icmp ne i8 %tmp_202, -1
  %notrhs44 = icmp eq i23 %tmp_342, 0
  %tmp_206 = or i1 %notrhs44, %notlhs44
  %notlhs45 = icmp ne i8 %tmp_204, -1
  %notrhs45 = icmp eq i23 %tmp_343, 0
  %tmp_207 = or i1 %notrhs45, %notlhs45
  %tmp_208 = and i1 %tmp_206, %tmp_207
  %tmp_209 = fcmp ogt float %inp_load_30, %max4_7
  %tmp_210 = and i1 %tmp_208, %tmp_209
  %max_1_7 = select i1 %tmp_210, float %inp_load_30, float %max4_7
  %p_addr54 = add i32 15, %p_addr18
  %tmp_344 = zext i32 %p_addr54 to i64
  %inp_addr_31 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_344
  %inp_load_31 = load float* %inp_addr_31, align 4
  %inp_load_31_to_int = bitcast float %inp_load_31 to i32
  %tmp_211 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_31_to_int, i32 23, i32 30)
  %tmp_345 = trunc i32 %inp_load_31_to_int to i23
  %max_1_7_to_int = bitcast float %max_1_7 to i32
  %tmp_213 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_1_7_to_int, i32 23, i32 30)
  %tmp_346 = trunc i32 %max_1_7_to_int to i23
  %notlhs46 = icmp ne i8 %tmp_211, -1
  %notrhs46 = icmp eq i23 %tmp_345, 0
  %tmp_215 = or i1 %notrhs46, %notlhs46
  %notlhs47 = icmp ne i8 %tmp_213, -1
  %notrhs47 = icmp eq i23 %tmp_346, 0
  %tmp_216 = or i1 %notrhs47, %notlhs47
  %tmp_217 = and i1 %tmp_215, %tmp_216
  %tmp_218 = fcmp ogt float %inp_load_31, %max_1_7
  %tmp_219 = and i1 %tmp_217, %tmp_218
  %max_2_7 = select i1 %tmp_219, float %inp_load_31, float %max_1_7
  %out_7_addr = getelementptr [72 x float]* %out_7, i64 0, i64 %tmp_95
  store float %max_2_7, float* %out_7_addr, align 4
  %p_addr55 = add i32 16, %p_addr15
  %tmp_347 = zext i32 %p_addr55 to i64
  %inp_addr_32 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_347
  %inp_load_32 = load float* %inp_addr_32, align 4
  %p_addr57 = add i32 17, %p_addr15
  %tmp_348 = zext i32 %p_addr57 to i64
  %inp_addr_33 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_348
  %inp_load_33 = load float* %inp_addr_33, align 4
  %inp_load_32_to_int = bitcast float %inp_load_32 to i32
  %tmp_220 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_32_to_int, i32 23, i32 30)
  %tmp_349 = trunc i32 %inp_load_32_to_int to i23
  %inp_load_33_to_int = bitcast float %inp_load_33 to i32
  %tmp_222 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_33_to_int, i32 23, i32 30)
  %tmp_350 = trunc i32 %inp_load_33_to_int to i23
  %notlhs48 = icmp ne i8 %tmp_220, -1
  %notrhs48 = icmp eq i23 %tmp_349, 0
  %tmp_224 = or i1 %notrhs48, %notlhs48
  %notlhs49 = icmp ne i8 %tmp_222, -1
  %notrhs49 = icmp eq i23 %tmp_350, 0
  %tmp_225 = or i1 %notrhs49, %notlhs49
  %tmp_226 = and i1 %tmp_224, %tmp_225
  %tmp_227 = fcmp ogt float %inp_load_32, %inp_load_33
  %tmp_228 = and i1 %tmp_226, %tmp_227
  %max4_8 = select i1 %tmp_228, float %inp_load_32, float %inp_load_33
  %p_addr58 = add i32 16, %p_addr18
  %tmp_351 = zext i32 %p_addr58 to i64
  %inp_addr_34 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_351
  %inp_load_34 = load float* %inp_addr_34, align 4
  %inp_load_34_to_int = bitcast float %inp_load_34 to i32
  %tmp_229 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_34_to_int, i32 23, i32 30)
  %tmp_352 = trunc i32 %inp_load_34_to_int to i23
  %max4_8_to_int = bitcast float %max4_8 to i32
  %tmp_231 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max4_8_to_int, i32 23, i32 30)
  %tmp_353 = trunc i32 %max4_8_to_int to i23
  %notlhs50 = icmp ne i8 %tmp_229, -1
  %notrhs50 = icmp eq i23 %tmp_352, 0
  %tmp_233 = or i1 %notrhs50, %notlhs50
  %notlhs51 = icmp ne i8 %tmp_231, -1
  %notrhs51 = icmp eq i23 %tmp_353, 0
  %tmp_234 = or i1 %notrhs51, %notlhs51
  %tmp_235 = and i1 %tmp_233, %tmp_234
  %tmp_236 = fcmp ogt float %inp_load_34, %max4_8
  %tmp_237 = and i1 %tmp_235, %tmp_236
  %max_1_8 = select i1 %tmp_237, float %inp_load_34, float %max4_8
  %p_addr59 = add i32 17, %p_addr18
  %tmp_354 = zext i32 %p_addr59 to i64
  %inp_addr_35 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_354
  %inp_load_35 = load float* %inp_addr_35, align 4
  %inp_load_35_to_int = bitcast float %inp_load_35 to i32
  %tmp_238 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_35_to_int, i32 23, i32 30)
  %tmp_355 = trunc i32 %inp_load_35_to_int to i23
  %max_1_8_to_int = bitcast float %max_1_8 to i32
  %tmp_240 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_1_8_to_int, i32 23, i32 30)
  %tmp_356 = trunc i32 %max_1_8_to_int to i23
  %notlhs52 = icmp ne i8 %tmp_238, -1
  %notrhs52 = icmp eq i23 %tmp_355, 0
  %tmp_242 = or i1 %notrhs52, %notlhs52
  %notlhs53 = icmp ne i8 %tmp_240, -1
  %notrhs53 = icmp eq i23 %tmp_356, 0
  %tmp_243 = or i1 %notrhs53, %notlhs53
  %tmp_244 = and i1 %tmp_242, %tmp_243
  %tmp_245 = fcmp ogt float %inp_load_35, %max_1_8
  %tmp_246 = and i1 %tmp_244, %tmp_245
  %max_2_8 = select i1 %tmp_246, float %inp_load_35, float %max_1_8
  %out_8_addr = getelementptr [72 x float]* %out_8, i64 0, i64 %tmp_95
  store float %max_2_8, float* %out_8_addr, align 4
  %p_addr60 = add i32 18, %p_addr15
  %tmp_357 = zext i32 %p_addr60 to i64
  %inp_addr_36 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_357
  %inp_load_36 = load float* %inp_addr_36, align 4
  %p_addr61 = add i32 19, %p_addr15
  %tmp_358 = zext i32 %p_addr61 to i64
  %inp_addr_37 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_358
  %inp_load_37 = load float* %inp_addr_37, align 4
  %inp_load_36_to_int = bitcast float %inp_load_36 to i32
  %tmp_247 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_36_to_int, i32 23, i32 30)
  %tmp_359 = trunc i32 %inp_load_36_to_int to i23
  %inp_load_37_to_int = bitcast float %inp_load_37 to i32
  %tmp_249 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_37_to_int, i32 23, i32 30)
  %tmp_360 = trunc i32 %inp_load_37_to_int to i23
  %notlhs54 = icmp ne i8 %tmp_247, -1
  %notrhs54 = icmp eq i23 %tmp_359, 0
  %tmp_251 = or i1 %notrhs54, %notlhs54
  %notlhs55 = icmp ne i8 %tmp_249, -1
  %notrhs55 = icmp eq i23 %tmp_360, 0
  %tmp_252 = or i1 %notrhs55, %notlhs55
  %tmp_253 = and i1 %tmp_251, %tmp_252
  %tmp_254 = fcmp ogt float %inp_load_36, %inp_load_37
  %tmp_255 = and i1 %tmp_253, %tmp_254
  %max4_9 = select i1 %tmp_255, float %inp_load_36, float %inp_load_37
  %p_addr56 = add i32 18, %p_addr18
  %tmp_361 = zext i32 %p_addr56 to i64
  %inp_addr_38 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_361
  %inp_load_38 = load float* %inp_addr_38, align 4
  %inp_load_38_to_int = bitcast float %inp_load_38 to i32
  %tmp_256 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_38_to_int, i32 23, i32 30)
  %tmp_362 = trunc i32 %inp_load_38_to_int to i23
  %max4_9_to_int = bitcast float %max4_9 to i32
  %tmp_258 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max4_9_to_int, i32 23, i32 30)
  %tmp_363 = trunc i32 %max4_9_to_int to i23
  %notlhs56 = icmp ne i8 %tmp_256, -1
  %notrhs56 = icmp eq i23 %tmp_362, 0
  %tmp_260 = or i1 %notrhs56, %notlhs56
  %notlhs57 = icmp ne i8 %tmp_258, -1
  %notrhs57 = icmp eq i23 %tmp_363, 0
  %tmp_261 = or i1 %notrhs57, %notlhs57
  %tmp_262 = and i1 %tmp_260, %tmp_261
  %tmp_263 = fcmp ogt float %inp_load_38, %max4_9
  %tmp_264 = and i1 %tmp_262, %tmp_263
  %max_1_9 = select i1 %tmp_264, float %inp_load_38, float %max4_9
  %p_addr50 = add i32 19, %p_addr18
  %tmp_364 = zext i32 %p_addr50 to i64
  %inp_addr_39 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_364
  %inp_load_39 = load float* %inp_addr_39, align 4
  %inp_load_39_to_int = bitcast float %inp_load_39 to i32
  %tmp_265 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_39_to_int, i32 23, i32 30)
  %tmp_365 = trunc i32 %inp_load_39_to_int to i23
  %max_1_9_to_int = bitcast float %max_1_9 to i32
  %tmp_267 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_1_9_to_int, i32 23, i32 30)
  %tmp_366 = trunc i32 %max_1_9_to_int to i23
  %notlhs58 = icmp ne i8 %tmp_265, -1
  %notrhs58 = icmp eq i23 %tmp_365, 0
  %tmp_269 = or i1 %notrhs58, %notlhs58
  %notlhs59 = icmp ne i8 %tmp_267, -1
  %notrhs59 = icmp eq i23 %tmp_366, 0
  %tmp_270 = or i1 %notrhs59, %notlhs59
  %tmp_271 = and i1 %tmp_269, %tmp_270
  %tmp_272 = fcmp ogt float %inp_load_39, %max_1_9
  %tmp_273 = and i1 %tmp_271, %tmp_272
  %max_2_9 = select i1 %tmp_273, float %inp_load_39, float %max_1_9
  %out_9_addr = getelementptr [72 x float]* %out_9, i64 0, i64 %tmp_95
  store float %max_2_9, float* %out_9_addr, align 4
  %p_addr44 = add i32 20, %p_addr15
  %tmp_367 = zext i32 %p_addr44 to i64
  %inp_addr_40 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_367
  %inp_load_40 = load float* %inp_addr_40, align 4
  %p_addr38 = add i32 21, %p_addr15
  %tmp_368 = zext i32 %p_addr38 to i64
  %inp_addr_41 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_368
  %inp_load_41 = load float* %inp_addr_41, align 4
  %inp_load_40_to_int = bitcast float %inp_load_40 to i32
  %tmp_274 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_40_to_int, i32 23, i32 30)
  %tmp_369 = trunc i32 %inp_load_40_to_int to i23
  %inp_load_41_to_int = bitcast float %inp_load_41 to i32
  %tmp_276 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_41_to_int, i32 23, i32 30)
  %tmp_370 = trunc i32 %inp_load_41_to_int to i23
  %notlhs60 = icmp ne i8 %tmp_274, -1
  %notrhs60 = icmp eq i23 %tmp_369, 0
  %tmp_278 = or i1 %notrhs60, %notlhs60
  %notlhs61 = icmp ne i8 %tmp_276, -1
  %notrhs61 = icmp eq i23 %tmp_370, 0
  %tmp_279 = or i1 %notrhs61, %notlhs61
  %tmp_280 = and i1 %tmp_278, %tmp_279
  %tmp_281 = fcmp ogt float %inp_load_40, %inp_load_41
  %tmp_282 = and i1 %tmp_280, %tmp_281
  %max4_s = select i1 %tmp_282, float %inp_load_40, float %inp_load_41
  %p_addr32 = add i32 20, %p_addr18
  %tmp_371 = zext i32 %p_addr32 to i64
  %inp_addr_42 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_371
  %inp_load_42 = load float* %inp_addr_42, align 4
  %inp_load_42_to_int = bitcast float %inp_load_42 to i32
  %tmp_283 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_42_to_int, i32 23, i32 30)
  %tmp_372 = trunc i32 %inp_load_42_to_int to i23
  %max4_to_int_12 = bitcast float %max4_s to i32
  %tmp_285 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max4_to_int_12, i32 23, i32 30)
  %tmp_373 = trunc i32 %max4_to_int_12 to i23
  %notlhs62 = icmp ne i8 %tmp_283, -1
  %notrhs62 = icmp eq i23 %tmp_372, 0
  %tmp_287 = or i1 %notrhs62, %notlhs62
  %notlhs63 = icmp ne i8 %tmp_285, -1
  %notrhs63 = icmp eq i23 %tmp_373, 0
  %tmp_288 = or i1 %notrhs63, %notlhs63
  %tmp_289 = and i1 %tmp_287, %tmp_288
  %tmp_290 = fcmp ogt float %inp_load_42, %max4_s
  %tmp_291 = and i1 %tmp_289, %tmp_290
  %max_1_s = select i1 %tmp_291, float %inp_load_42, float %max4_s
  %p_addr26 = add i32 21, %p_addr18
  %tmp_374 = zext i32 %p_addr26 to i64
  %inp_addr_43 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_374
  %inp_load_43 = load float* %inp_addr_43, align 4
  %inp_load_43_to_int = bitcast float %inp_load_43 to i32
  %tmp_292 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_43_to_int, i32 23, i32 30)
  %tmp_375 = trunc i32 %inp_load_43_to_int to i23
  %max_1_to_int_13 = bitcast float %max_1_s to i32
  %tmp_294 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_1_to_int_13, i32 23, i32 30)
  %tmp_376 = trunc i32 %max_1_to_int_13 to i23
  %notlhs64 = icmp ne i8 %tmp_292, -1
  %notrhs64 = icmp eq i23 %tmp_375, 0
  %tmp_296 = or i1 %notrhs64, %notlhs64
  %notlhs65 = icmp ne i8 %tmp_294, -1
  %notrhs65 = icmp eq i23 %tmp_376, 0
  %tmp_297 = or i1 %notrhs65, %notlhs65
  %tmp_298 = and i1 %tmp_296, %tmp_297
  %tmp_299 = fcmp ogt float %inp_load_43, %max_1_s
  %tmp_300 = and i1 %tmp_298, %tmp_299
  %max_2_s = select i1 %tmp_300, float %inp_load_43, float %max_1_s
  %out_10_addr = getelementptr [72 x float]* %out_10, i64 0, i64 %tmp_95
  store float %max_2_s, float* %out_10_addr, align 4
  %p_addr20 = add i32 22, %p_addr15
  %tmp_377 = zext i32 %p_addr20 to i64
  %inp_addr_44 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_377
  %inp_load_44 = load float* %inp_addr_44, align 4
  %p_addr14 = add i32 23, %p_addr15
  %tmp_378 = zext i32 %p_addr14 to i64
  %inp_addr_45 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_378
  %inp_load_45 = load float* %inp_addr_45, align 4
  %inp_load_44_to_int = bitcast float %inp_load_44 to i32
  %tmp_301 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_44_to_int, i32 23, i32 30)
  %tmp_379 = trunc i32 %inp_load_44_to_int to i23
  %inp_load_45_to_int = bitcast float %inp_load_45 to i32
  %tmp_303 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_45_to_int, i32 23, i32 30)
  %tmp_380 = trunc i32 %inp_load_45_to_int to i23
  %notlhs66 = icmp ne i8 %tmp_301, -1
  %notrhs66 = icmp eq i23 %tmp_379, 0
  %tmp_305 = or i1 %notrhs66, %notlhs66
  %notlhs67 = icmp ne i8 %tmp_303, -1
  %notrhs67 = icmp eq i23 %tmp_380, 0
  %tmp_306 = or i1 %notrhs67, %notlhs67
  %tmp_307 = and i1 %tmp_305, %tmp_306
  %tmp_308 = fcmp ogt float %inp_load_44, %inp_load_45
  %tmp_309 = and i1 %tmp_307, %tmp_308
  %max4_10 = select i1 %tmp_309, float %inp_load_44, float %inp_load_45
  %p_addr9 = add i32 22, %p_addr18
  %tmp_381 = zext i32 %p_addr9 to i64
  %inp_addr_46 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_381
  %inp_load_46 = load float* %inp_addr_46, align 4
  %inp_load_46_to_int = bitcast float %inp_load_46 to i32
  %tmp_310 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_46_to_int, i32 23, i32 30)
  %tmp_382 = trunc i32 %inp_load_46_to_int to i23
  %max4_10_to_int = bitcast float %max4_10 to i32
  %tmp_312 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max4_10_to_int, i32 23, i32 30)
  %tmp_383 = trunc i32 %max4_10_to_int to i23
  %notlhs68 = icmp ne i8 %tmp_310, -1
  %notrhs68 = icmp eq i23 %tmp_382, 0
  %tmp_314 = or i1 %notrhs68, %notlhs68
  %notlhs69 = icmp ne i8 %tmp_312, -1
  %notrhs69 = icmp eq i23 %tmp_383, 0
  %tmp_315 = or i1 %notrhs69, %notlhs69
  %tmp_316 = and i1 %tmp_314, %tmp_315
  %tmp_317 = fcmp ogt float %inp_load_46, %max4_10
  %tmp_318 = and i1 %tmp_316, %tmp_317
  %max_1_10 = select i1 %tmp_318, float %inp_load_46, float %max4_10
  %p_addr3 = add i32 23, %p_addr18
  %tmp_384 = zext i32 %p_addr3 to i64
  %inp_addr_47 = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_384
  %inp_load_47 = load float* %inp_addr_47, align 4
  %inp_load_47_to_int = bitcast float %inp_load_47 to i32
  %tmp_319 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_47_to_int, i32 23, i32 30)
  %tmp_385 = trunc i32 %inp_load_47_to_int to i23
  %max_1_10_to_int = bitcast float %max_1_10 to i32
  %tmp_321 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_1_10_to_int, i32 23, i32 30)
  %tmp_386 = trunc i32 %max_1_10_to_int to i23
  %notlhs70 = icmp ne i8 %tmp_319, -1
  %notrhs70 = icmp eq i23 %tmp_385, 0
  %tmp_323 = or i1 %notrhs70, %notlhs70
  %notlhs71 = icmp ne i8 %tmp_321, -1
  %notrhs71 = icmp eq i23 %tmp_386, 0
  %tmp_324 = or i1 %notrhs71, %notlhs71
  %tmp_325 = and i1 %tmp_323, %tmp_324
  %tmp_326 = fcmp ogt float %inp_load_47, %max_1_10
  %tmp_327 = and i1 %tmp_325, %tmp_326
  %max_2_10 = select i1 %tmp_327, float %inp_load_47, float %max_1_10
  %out_11_addr = getelementptr [72 x float]* %out_11, i64 0, i64 %tmp_95
  store float %max_2_10, float* %out_11_addr, align 4
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str12, i32 %tmp_7) nounwind
  br label %1

; <label>:2                                       ; preds = %1
  ret void
}

define internal fastcc void @obj_detector_ReLU([3456 x float]* nocapture %inp, i3 %tmp_2, [3456 x float]* nocapture %out_r, i3 %tmp_21) {
  %tmp_21_read = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %tmp_21)
  %tmp_2_read = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %tmp_2)
  %tmp = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp_2_read, i5 0)
  %p_shl9_cast = zext i8 %tmp to i9
  %tmp_385 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_2_read, i3 0)
  %p_shl10_cast = zext i6 %tmp_385 to i9
  %p_addr = sub i9 %p_shl9_cast, %p_shl10_cast
  %p_addr_cast = sext i9 %p_addr to i10
  %tmp_386 = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp_21_read, i5 0)
  %p_shl_cast = zext i8 %tmp_386 to i9
  %tmp_387 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_21_read, i3 0)
  %p_shl11_cast = zext i6 %tmp_387 to i9
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
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str11) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str11) nounwind
  %tmp_trn_cast = zext i5 %i to i10
  %p_addr1 = add i10 %p_addr_cast, %tmp_trn_cast
  %tmp_388 = call i15 @_ssdm_op_BitConcatenate.i15.i10.i5(i10 %p_addr1, i5 0)
  %p_shl = sext i15 %tmp_388 to i32
  %tmp_389 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %p_addr1, i3 0)
  %p_shl1 = sext i13 %tmp_389 to i32
  %p_addr2 = sub i32 %p_shl, %p_shl1
  %p_addr13 = add i10 %p_addr12_cast, %tmp_trn_cast
  %tmp_390 = call i15 @_ssdm_op_BitConcatenate.i15.i10.i5(i10 %p_addr13, i5 0)
  %p_shl2 = sext i15 %tmp_390 to i32
  %tmp_391 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %p_addr13, i3 0)
  %p_shl3 = sext i13 %tmp_391 to i32
  %p_addr15 = sub i32 %p_shl2, %p_shl3
  br label %3

; <label>:3                                       ; preds = %4, %2
  %j = phi i5 [ 0, %2 ], [ %j_1, %4 ]
  %exitcond = icmp eq i5 %j, -8
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24)
  %j_1 = add i5 %j, 1
  br i1 %exitcond, label %5, label %4

; <label>:4                                       ; preds = %3
  %tmp_trn = zext i5 %j to i32
  %p_addr3 = add i32 %tmp_trn, %p_addr2
  %tmp_392 = zext i32 %p_addr3 to i64
  %inp_addr = getelementptr [3456 x float]* %inp, i64 0, i64 %tmp_392
  %inp_load = load float* %inp_addr, align 4
  %inp_load_to_int = bitcast float %inp_load to i32
  %tmp_s = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %inp_load_to_int, i32 23, i32 30)
  %tmp_393 = trunc i32 %inp_load_to_int to i23
  %notlhs = icmp ne i8 %tmp_s, -1
  %notrhs = icmp eq i23 %tmp_393, 0
  %tmp_329 = or i1 %notrhs, %notlhs
  %tmp_330 = fcmp ogt float %inp_load, 0.000000e+00
  %tmp_331 = and i1 %tmp_329, %tmp_330
  %p_addr16 = add i32 %tmp_trn, %p_addr15
  %tmp_394 = zext i32 %p_addr16 to i64
  %out_addr = getelementptr [3456 x float]* %out_r, i64 0, i64 %tmp_394
  %inp_load_s = select i1 %tmp_331, float %inp_load, float 0.000000e+00
  store float %inp_load_s, float* %out_addr, align 4
  br label %3

; <label>:5                                       ; preds = %3
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str11, i32 %tmp_8) nounwind
  br label %1

; <label>:6                                       ; preds = %1
  ret void
}

define internal fastcc void @obj_detector_convolve([784 x float]* %A, [150 x float]* %B, i3 %tmp, [3456 x float]* %conv, i3 %tmp1) {
  call void (...)* @_ssdm_op_SpecMemCore([150 x float]* %B, [1 x i8]* @p_str, [12 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore([784 x float]* %A, [1 x i8]* @p_str, [12 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface([784 x float]* %A, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([150 x float]* %B, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %tmp1_read = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %tmp1)
  %tmp_read = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %tmp)
  %tmp_cast_trn_cast = zext i3 %tmp_read to i9
  %p_addr = mul i9 25, %tmp_cast_trn_cast
  %tmp_394 = trunc i9 %p_addr to i8
  %tmp_s = zext i9 %p_addr to i64
  %B_addr = getelementptr [150 x float]* %B, i64 0, i64 %tmp_s
  %p_addr62 = add i8 1, %tmp_394
  %tmp_395 = zext i8 %p_addr62 to i64
  %B_addr_1 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_395
  %p_addr64 = add i8 2, %tmp_394
  %tmp_396 = zext i8 %p_addr64 to i64
  %B_addr_2 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_396
  %p_addr65 = add i8 3, %tmp_394
  %tmp_397 = zext i8 %p_addr65 to i64
  %B_addr_3 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_397
  %p_addr67 = add i8 4, %tmp_394
  %tmp_398 = zext i8 %p_addr67 to i64
  %B_addr_4 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_398
  %p_addr68 = add i8 5, %tmp_394
  %tmp_399 = zext i8 %p_addr68 to i64
  %B_addr_5 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_399
  %p_addr70 = add i8 6, %tmp_394
  %tmp_400 = zext i8 %p_addr70 to i64
  %B_addr_6 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_400
  %p_addr71 = add i8 7, %tmp_394
  %tmp_401 = zext i8 %p_addr71 to i64
  %B_addr_7 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_401
  %p_addr73 = add i8 8, %tmp_394
  %tmp_402 = zext i8 %p_addr73 to i64
  %B_addr_8 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_402
  %p_addr74 = add i8 9, %tmp_394
  %tmp_403 = zext i8 %p_addr74 to i64
  %B_addr_9 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_403
  %p_addr76 = add i8 10, %tmp_394
  %tmp_404 = zext i8 %p_addr76 to i64
  %B_addr_10 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_404
  %p_addr77 = add i8 11, %tmp_394
  %tmp_405 = zext i8 %p_addr77 to i64
  %B_addr_11 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_405
  %p_addr79 = add i8 12, %tmp_394
  %tmp_406 = zext i8 %p_addr79 to i64
  %B_addr_12 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_406
  %p_addr80 = add i8 13, %tmp_394
  %tmp_407 = zext i8 %p_addr80 to i64
  %B_addr_13 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_407
  %p_addr82 = add i8 14, %tmp_394
  %tmp_408 = zext i8 %p_addr82 to i64
  %B_addr_14 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_408
  %p_addr83 = add i8 15, %tmp_394
  %tmp_409 = zext i8 %p_addr83 to i64
  %B_addr_15 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_409
  %p_addr85 = add i8 16, %tmp_394
  %tmp_410 = zext i8 %p_addr85 to i64
  %B_addr_16 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_410
  %p_addr86 = add i8 17, %tmp_394
  %tmp_411 = zext i8 %p_addr86 to i64
  %B_addr_17 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_411
  %p_addr88 = add i8 18, %tmp_394
  %tmp_412 = zext i8 %p_addr88 to i64
  %B_addr_18 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_412
  %p_addr89 = add i8 19, %tmp_394
  %tmp_413 = zext i8 %p_addr89 to i64
  %B_addr_19 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_413
  %p_addr91 = add i8 20, %tmp_394
  %tmp_414 = zext i8 %p_addr91 to i64
  %B_addr_20 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_414
  %p_addr92 = add i8 21, %tmp_394
  %tmp_415 = zext i8 %p_addr92 to i64
  %B_addr_21 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_415
  %p_addr94 = add i8 22, %tmp_394
  %tmp_416 = zext i8 %p_addr94 to i64
  %B_addr_22 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_416
  %p_addr95 = add i8 23, %tmp_394
  %tmp_417 = zext i8 %p_addr95 to i64
  %B_addr_23 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_417
  %p_addr97 = add i8 24, %tmp_394
  %tmp_418 = zext i8 %p_addr97 to i64
  %B_addr_24 = getelementptr [150 x float]* %B, i64 0, i64 %tmp_418
  %tmp_419 = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %tmp1_read, i5 0)
  %p_shl_cast = zext i8 %tmp_419 to i9
  %tmp_420 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp1_read, i3 0)
  %p_shl16_cast = zext i6 %tmp_420 to i9
  %p_addr98 = sub i9 %p_shl_cast, %p_shl16_cast
  %p_addr98_cast = sext i9 %p_addr98 to i10
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 2, %0 ], [ %i_7, %2 ]
  %exitcond3 = icmp eq i5 %i, -6
  br i1 %exitcond3, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24)
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str8) nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp2 = add i5 %i, -2
  %tmp_8_trn_cast = zext i5 %tmp2 to i10
  %p_addr100 = add i10 %p_addr98_cast, %tmp_8_trn_cast
  %tmp_421 = call i15 @_ssdm_op_BitConcatenate.i15.i10.i5(i10 %p_addr100, i5 0)
  %p_shl = sext i15 %tmp_421 to i32
  %tmp_422 = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %p_addr100, i3 0)
  %p_shl4 = sext i13 %tmp_422 to i32
  %p_addr101 = sub i32 %p_shl, %p_shl4
  %tmp_423 = zext i32 %p_addr101 to i64
  %conv_addr = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_423
  %tmp_424 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %tmp2, i5 0)
  %p_shl19_cast = zext i10 %tmp_424 to i11
  %tmp_425 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %tmp2, i2 0)
  %p_shl20_cast = zext i7 %tmp_425 to i11
  %p_addr103 = sub i11 %p_shl19_cast, %p_shl20_cast
  %p_addr103_cast1 = sext i11 %p_addr103 to i12
  %p_addr103_cast = sext i11 %p_addr103 to i32
  %tmp_426 = zext i32 %p_addr103_cast to i64
  %A_addr = getelementptr [784 x float]* %A, i64 0, i64 %tmp_426
  %A_load = load float* %A_addr, align 4
  %B_load = load float* %B_addr, align 4
  %temp = fmul float %A_load, %B_load
  %tmp_6 = fadd float %temp, 0.000000e+00
  %p_addr104 = or i32 %p_addr103_cast, 1
  %tmp_427 = zext i32 %p_addr104 to i64
  %A_addr_1 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_427
  %A_load_1 = load float* %A_addr_1, align 4
  %B_load_1 = load float* %B_addr_1, align 4
  %temp_23 = fmul float %A_load_1, %B_load_1
  %tmp_6_0_0_1 = fadd float %tmp_6, %temp_23
  %p_addr106 = or i11 %p_addr103, 2
  %p_addr106_cast = sext i11 %p_addr106 to i32
  %tmp_428 = zext i32 %p_addr106_cast to i64
  %A_addr_2 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_428
  %A_load_2 = load float* %A_addr_2, align 4
  %B_load_2 = load float* %B_addr_2, align 4
  %temp_1_0_0_1 = fmul float %A_load_2, %B_load_2
  %tmp_6_0_0_2 = fadd float %tmp_6_0_0_1, %temp_1_0_0_1
  %p_addr107 = or i11 %p_addr103, 3
  %p_addr107_cast = sext i11 %p_addr107 to i32
  %tmp_429 = zext i32 %p_addr107_cast to i64
  %A_addr_3 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_429
  %A_load_3 = load float* %A_addr_3, align 4
  %B_load_3 = load float* %B_addr_3, align 4
  %temp_1_0_0_2 = fmul float %A_load_3, %B_load_3
  %tmp_6_0_0_3 = fadd float %tmp_6_0_0_2, %temp_1_0_0_2
  %p_addr109 = add i12 %p_addr103_cast1, 4
  %p_addr109_cast = sext i12 %p_addr109 to i32
  %tmp_430 = zext i32 %p_addr109_cast to i64
  %A_addr_4 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_430
  %A_load_4 = load float* %A_addr_4, align 4
  %B_load_4 = load float* %B_addr_4, align 4
  %temp_1_0_0_3 = fmul float %A_load_4, %B_load_4
  %tmp_5 = fadd float %tmp_6_0_0_3, %temp_1_0_0_3
  %x_0_1 = add i5 %i, -1
  %tmp_431 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %x_0_1, i5 0)
  %p_shl21_cast = zext i10 %tmp_431 to i11
  %tmp_432 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %x_0_1, i2 0)
  %p_shl22_cast = zext i7 %tmp_432 to i11
  %p_addr110 = sub i11 %p_shl21_cast, %p_shl22_cast
  %p_addr110_cast1 = sext i11 %p_addr110 to i12
  %p_addr110_cast = sext i11 %p_addr110 to i32
  %tmp_433 = zext i32 %p_addr110_cast to i64
  %A_addr_5 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_433
  %A_load_5 = load float* %A_addr_5, align 4
  %B_load_5 = load float* %B_addr_5, align 4
  %temp_0_1 = fmul float %A_load_5, %B_load_5
  %tmp_6_0_1 = fadd float %tmp_5, %temp_0_1
  %p_addr112 = or i32 %p_addr110_cast, 1
  %tmp_434 = zext i32 %p_addr112 to i64
  %A_addr_6 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_434
  %A_load_6 = load float* %A_addr_6, align 4
  %B_load_6 = load float* %B_addr_6, align 4
  %temp_1_0_1 = fmul float %A_load_6, %B_load_6
  %tmp_6_0_1_1 = fadd float %tmp_6_0_1, %temp_1_0_1
  %p_addr113 = or i11 %p_addr110, 2
  %p_addr113_cast = sext i11 %p_addr113 to i32
  %tmp_435 = zext i32 %p_addr113_cast to i64
  %A_addr_7 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_435
  %A_load_7 = load float* %A_addr_7, align 4
  %B_load_7 = load float* %B_addr_7, align 4
  %temp_1_0_1_1 = fmul float %A_load_7, %B_load_7
  %tmp_6_0_1_2 = fadd float %tmp_6_0_1_1, %temp_1_0_1_1
  %p_addr115 = or i11 %p_addr110, 3
  %p_addr115_cast = sext i11 %p_addr115 to i32
  %tmp_436 = zext i32 %p_addr115_cast to i64
  %A_addr_8 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_436
  %A_load_8 = load float* %A_addr_8, align 4
  %B_load_8 = load float* %B_addr_8, align 4
  %temp_1_0_1_2 = fmul float %A_load_8, %B_load_8
  %tmp_6_0_1_3 = fadd float %tmp_6_0_1_2, %temp_1_0_1_2
  %p_addr116 = add i12 %p_addr110_cast1, 4
  %p_addr116_cast = sext i12 %p_addr116 to i32
  %tmp_437 = zext i32 %p_addr116_cast to i64
  %A_addr_9 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_437
  %A_load_9 = load float* %A_addr_9, align 4
  %B_load_9 = load float* %B_addr_9, align 4
  %temp_1_0_1_3 = fmul float %A_load_9, %B_load_9
  %tmp_5_0_1 = fadd float %tmp_6_0_1_3, %temp_1_0_1_3
  %tmp_438 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %i, i5 0)
  %p_shl23_cast = zext i10 %tmp_438 to i11
  %tmp_439 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %i, i2 0)
  %p_shl24_cast = zext i7 %tmp_439 to i11
  %p_addr118 = sub i11 %p_shl23_cast, %p_shl24_cast
  %p_addr118_cast1 = sext i11 %p_addr118 to i12
  %p_addr118_cast = sext i11 %p_addr118 to i32
  %tmp_440 = zext i32 %p_addr118_cast to i64
  %A_addr_10 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_440
  %A_load_10 = load float* %A_addr_10, align 4
  %B_load_10 = load float* %B_addr_10, align 4
  %temp_0_2 = fmul float %A_load_10, %B_load_10
  %tmp_6_0_2 = fadd float %tmp_5_0_1, %temp_0_2
  %p_addr119 = or i32 %p_addr118_cast, 1
  %tmp_441 = zext i32 %p_addr119 to i64
  %A_addr_11 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_441
  %A_load_11 = load float* %A_addr_11, align 4
  %B_load_11 = load float* %B_addr_11, align 4
  %temp_1_0_2 = fmul float %A_load_11, %B_load_11
  %tmp_6_0_2_1 = fadd float %tmp_6_0_2, %temp_1_0_2
  %p_addr121 = or i11 %p_addr118, 2
  %p_addr121_cast = sext i11 %p_addr121 to i32
  %tmp_442 = zext i32 %p_addr121_cast to i64
  %A_addr_12 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_442
  %A_load_12 = load float* %A_addr_12, align 4
  %B_load_12 = load float* %B_addr_12, align 4
  %temp_1_0_2_1 = fmul float %A_load_12, %B_load_12
  %tmp_6_0_2_2 = fadd float %tmp_6_0_2_1, %temp_1_0_2_1
  %p_addr122 = or i11 %p_addr118, 3
  %p_addr122_cast = sext i11 %p_addr122 to i32
  %tmp_443 = zext i32 %p_addr122_cast to i64
  %A_addr_13 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_443
  %A_load_13 = load float* %A_addr_13, align 4
  %B_load_13 = load float* %B_addr_13, align 4
  %temp_1_0_2_2 = fmul float %A_load_13, %B_load_13
  %tmp_6_0_2_3 = fadd float %tmp_6_0_2_2, %temp_1_0_2_2
  %p_addr124 = add i12 %p_addr118_cast1, 4
  %p_addr124_cast = sext i12 %p_addr124 to i32
  %tmp_444 = zext i32 %p_addr124_cast to i64
  %A_addr_14 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_444
  %A_load_14 = load float* %A_addr_14, align 4
  %B_load_14 = load float* %B_addr_14, align 4
  %temp_1_0_2_3 = fmul float %A_load_14, %B_load_14
  %tmp_5_0_2 = fadd float %tmp_6_0_2_3, %temp_1_0_2_3
  %i_7 = add i5 %i, 1
  %tmp_445 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %i_7, i5 0)
  %p_shl25_cast = zext i10 %tmp_445 to i11
  %tmp_446 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %i_7, i2 0)
  %p_shl26_cast = zext i7 %tmp_446 to i11
  %p_addr125 = sub i11 %p_shl25_cast, %p_shl26_cast
  %p_addr125_cast1 = sext i11 %p_addr125 to i12
  %p_addr125_cast = sext i11 %p_addr125 to i32
  %tmp_447 = zext i32 %p_addr125_cast to i64
  %A_addr_15 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_447
  %A_load_15 = load float* %A_addr_15, align 4
  %B_load_15 = load float* %B_addr_15, align 4
  %temp_0_3 = fmul float %A_load_15, %B_load_15
  %tmp_6_0_3 = fadd float %tmp_5_0_2, %temp_0_3
  %p_addr127 = or i32 %p_addr125_cast, 1
  %tmp_448 = zext i32 %p_addr127 to i64
  %A_addr_16 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_448
  %A_load_16 = load float* %A_addr_16, align 4
  %B_load_16 = load float* %B_addr_16, align 4
  %temp_1_0_3 = fmul float %A_load_16, %B_load_16
  %tmp_6_0_3_1 = fadd float %tmp_6_0_3, %temp_1_0_3
  %p_addr128 = or i11 %p_addr125, 2
  %p_addr128_cast = sext i11 %p_addr128 to i32
  %tmp_449 = zext i32 %p_addr128_cast to i64
  %A_addr_17 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_449
  %A_load_17 = load float* %A_addr_17, align 4
  %B_load_17 = load float* %B_addr_17, align 4
  %temp_1_0_3_1 = fmul float %A_load_17, %B_load_17
  %tmp_6_0_3_2 = fadd float %tmp_6_0_3_1, %temp_1_0_3_1
  %p_addr130 = or i11 %p_addr125, 3
  %p_addr130_cast = sext i11 %p_addr130 to i32
  %tmp_450 = zext i32 %p_addr130_cast to i64
  %A_addr_18 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_450
  %A_load_18 = load float* %A_addr_18, align 4
  %B_load_18 = load float* %B_addr_18, align 4
  %temp_1_0_3_2 = fmul float %A_load_18, %B_load_18
  %tmp_6_0_3_3 = fadd float %tmp_6_0_3_2, %temp_1_0_3_2
  %p_addr131 = add i12 %p_addr125_cast1, 4
  %p_addr131_cast = sext i12 %p_addr131 to i32
  %tmp_451 = zext i32 %p_addr131_cast to i64
  %A_addr_19 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_451
  %A_load_19 = load float* %A_addr_19, align 4
  %B_load_19 = load float* %B_addr_19, align 4
  %temp_1_0_3_3 = fmul float %A_load_19, %B_load_19
  %tmp_5_0_3 = fadd float %tmp_6_0_3_3, %temp_1_0_3_3
  %x_0_4 = add i5 %i, 2
  %tmp_452 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %x_0_4, i5 0)
  %p_shl27_cast = zext i10 %tmp_452 to i11
  %tmp_453 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %x_0_4, i2 0)
  %p_shl28_cast = zext i7 %tmp_453 to i11
  %p_addr133 = sub i11 %p_shl27_cast, %p_shl28_cast
  %p_addr133_cast1 = sext i11 %p_addr133 to i12
  %p_addr133_cast = sext i11 %p_addr133 to i32
  %tmp_454 = zext i32 %p_addr133_cast to i64
  %A_addr_20 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_454
  %A_load_20 = load float* %A_addr_20, align 4
  %B_load_20 = load float* %B_addr_20, align 4
  %temp_0_4 = fmul float %A_load_20, %B_load_20
  %tmp_6_0_4 = fadd float %tmp_5_0_3, %temp_0_4
  %p_addr134 = or i32 %p_addr133_cast, 1
  %tmp_455 = zext i32 %p_addr134 to i64
  %A_addr_21 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_455
  %A_load_21 = load float* %A_addr_21, align 4
  %B_load_21 = load float* %B_addr_21, align 4
  %temp_1_0_4 = fmul float %A_load_21, %B_load_21
  %tmp_6_0_4_1 = fadd float %tmp_6_0_4, %temp_1_0_4
  %p_addr136 = or i11 %p_addr133, 2
  %p_addr136_cast = sext i11 %p_addr136 to i32
  %tmp_456 = zext i32 %p_addr136_cast to i64
  %A_addr_22 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_456
  %A_load_22 = load float* %A_addr_22, align 4
  %B_load_22 = load float* %B_addr_22, align 4
  %temp_1_0_4_1 = fmul float %A_load_22, %B_load_22
  %tmp_6_0_4_2 = fadd float %tmp_6_0_4_1, %temp_1_0_4_1
  %p_addr137 = or i11 %p_addr133, 3
  %p_addr137_cast = sext i11 %p_addr137 to i32
  %tmp_457 = zext i32 %p_addr137_cast to i64
  %A_addr_23 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_457
  %A_load_23 = load float* %A_addr_23, align 4
  %B_load_23 = load float* %B_addr_23, align 4
  %temp_1_0_4_2 = fmul float %A_load_23, %B_load_23
  %tmp_6_0_4_3 = fadd float %tmp_6_0_4_2, %temp_1_0_4_2
  %p_addr139 = add i12 %p_addr133_cast1, 4
  %p_addr139_cast = sext i12 %p_addr139 to i32
  %tmp_458 = zext i32 %p_addr139_cast to i64
  %A_addr_24 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_458
  %A_load_24 = load float* %A_addr_24, align 4
  %B_load_24 = load float* %B_addr_24, align 4
  %temp_1_0_4_3 = fmul float %A_load_24, %B_load_24
  %tmp_5_0_4 = fadd float %tmp_6_0_4_3, %temp_1_0_4_3
  store float %tmp_5_0_4, float* %conv_addr, align 4
  %p_addr140 = or i32 %p_addr101, 1
  %tmp_459 = zext i32 %p_addr140 to i64
  %conv_addr_1 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_459
  %temp_s = fmul float %A_load_1, %B_load
  %tmp_6_1 = fadd float %temp_s, 0.000000e+00
  %temp_1_1 = fmul float %A_load_2, %B_load_1
  %tmp_6_1_0_1 = fadd float %tmp_6_1, %temp_1_1
  %temp_1_1_0_1 = fmul float %A_load_3, %B_load_2
  %tmp_6_1_0_2 = fadd float %tmp_6_1_0_1, %temp_1_1_0_1
  %temp_1_1_0_2 = fmul float %A_load_4, %B_load_3
  %tmp_6_1_0_3 = fadd float %tmp_6_1_0_2, %temp_1_1_0_2
  %p_addr142 = add i12 %p_addr103_cast1, 5
  %p_addr142_cast = sext i12 %p_addr142 to i32
  %tmp_460 = zext i32 %p_addr142_cast to i64
  %A_addr_25 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_460
  %A_load_25 = load float* %A_addr_25, align 4
  %temp_1_1_0_3 = fmul float %A_load_25, %B_load_4
  %tmp_5_1 = fadd float %tmp_6_1_0_3, %temp_1_1_0_3
  %temp_115_1 = fmul float %A_load_6, %B_load_5
  %tmp_6_1_1 = fadd float %tmp_5_1, %temp_115_1
  %temp_1_1_1 = fmul float %A_load_7, %B_load_6
  %tmp_6_1_1_1 = fadd float %tmp_6_1_1, %temp_1_1_1
  %temp_1_1_1_1 = fmul float %A_load_8, %B_load_7
  %tmp_6_1_1_2 = fadd float %tmp_6_1_1_1, %temp_1_1_1_1
  %temp_1_1_1_2 = fmul float %A_load_9, %B_load_8
  %tmp_6_1_1_3 = fadd float %tmp_6_1_1_2, %temp_1_1_1_2
  %p_addr143 = add i12 %p_addr110_cast1, 5
  %p_addr143_cast = sext i12 %p_addr143 to i32
  %tmp_461 = zext i32 %p_addr143_cast to i64
  %A_addr_26 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_461
  %A_load_26 = load float* %A_addr_26, align 4
  %temp_1_1_1_3 = fmul float %A_load_26, %B_load_9
  %tmp_5_1_1 = fadd float %tmp_6_1_1_3, %temp_1_1_1_3
  %temp_115_2 = fmul float %A_load_11, %B_load_10
  %tmp_6_1_2 = fadd float %tmp_5_1_1, %temp_115_2
  %temp_1_1_2 = fmul float %A_load_12, %B_load_11
  %tmp_6_1_2_1 = fadd float %tmp_6_1_2, %temp_1_1_2
  %temp_1_1_2_1 = fmul float %A_load_13, %B_load_12
  %tmp_6_1_2_2 = fadd float %tmp_6_1_2_1, %temp_1_1_2_1
  %temp_1_1_2_2 = fmul float %A_load_14, %B_load_13
  %tmp_6_1_2_3 = fadd float %tmp_6_1_2_2, %temp_1_1_2_2
  %p_addr145 = add i12 %p_addr118_cast1, 5
  %p_addr145_cast = sext i12 %p_addr145 to i32
  %tmp_462 = zext i32 %p_addr145_cast to i64
  %A_addr_27 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_462
  %A_load_27 = load float* %A_addr_27, align 4
  %temp_1_1_2_3 = fmul float %A_load_27, %B_load_14
  %tmp_5_1_2 = fadd float %tmp_6_1_2_3, %temp_1_1_2_3
  %temp_115_3 = fmul float %A_load_16, %B_load_15
  %tmp_6_1_3 = fadd float %tmp_5_1_2, %temp_115_3
  %temp_1_1_3 = fmul float %A_load_17, %B_load_16
  %tmp_6_1_3_1 = fadd float %tmp_6_1_3, %temp_1_1_3
  %temp_1_1_3_1 = fmul float %A_load_18, %B_load_17
  %tmp_6_1_3_2 = fadd float %tmp_6_1_3_1, %temp_1_1_3_1
  %temp_1_1_3_2 = fmul float %A_load_19, %B_load_18
  %tmp_6_1_3_3 = fadd float %tmp_6_1_3_2, %temp_1_1_3_2
  %p_addr146 = add i12 %p_addr125_cast1, 5
  %p_addr146_cast = sext i12 %p_addr146 to i32
  %tmp_463 = zext i32 %p_addr146_cast to i64
  %A_addr_28 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_463
  %A_load_28 = load float* %A_addr_28, align 4
  %temp_1_1_3_3 = fmul float %A_load_28, %B_load_19
  %tmp_5_1_3 = fadd float %tmp_6_1_3_3, %temp_1_1_3_3
  %temp_115_4 = fmul float %A_load_21, %B_load_20
  %tmp_6_1_4 = fadd float %tmp_5_1_3, %temp_115_4
  %temp_1_1_4 = fmul float %A_load_22, %B_load_21
  %tmp_6_1_4_1 = fadd float %tmp_6_1_4, %temp_1_1_4
  %temp_1_1_4_1 = fmul float %A_load_23, %B_load_22
  %tmp_6_1_4_2 = fadd float %tmp_6_1_4_1, %temp_1_1_4_1
  %temp_1_1_4_2 = fmul float %A_load_24, %B_load_23
  %tmp_6_1_4_3 = fadd float %tmp_6_1_4_2, %temp_1_1_4_2
  %p_addr148 = add i12 %p_addr133_cast1, 5
  %p_addr148_cast = sext i12 %p_addr148 to i32
  %tmp_464 = zext i32 %p_addr148_cast to i64
  %A_addr_29 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_464
  %A_load_29 = load float* %A_addr_29, align 4
  %temp_1_1_4_3 = fmul float %A_load_29, %B_load_24
  %tmp_5_1_4 = fadd float %tmp_6_1_4_3, %temp_1_1_4_3
  store float %tmp_5_1_4, float* %conv_addr_1, align 4
  %p_addr149 = or i32 %p_addr101, 2
  %tmp_465 = zext i32 %p_addr149 to i64
  %conv_addr_2 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_465
  %temp_2 = fmul float %A_load_2, %B_load
  %tmp_6_2 = fadd float %temp_2, 0.000000e+00
  %temp_1_2 = fmul float %A_load_3, %B_load_1
  %tmp_6_2_0_1 = fadd float %tmp_6_2, %temp_1_2
  %temp_1_2_0_1 = fmul float %A_load_4, %B_load_2
  %tmp_6_2_0_2 = fadd float %tmp_6_2_0_1, %temp_1_2_0_1
  %temp_1_2_0_2 = fmul float %A_load_25, %B_load_3
  %tmp_6_2_0_3 = fadd float %tmp_6_2_0_2, %temp_1_2_0_2
  %p_addr151 = add i12 %p_addr103_cast1, 6
  %p_addr151_cast = sext i12 %p_addr151 to i32
  %tmp_466 = zext i32 %p_addr151_cast to i64
  %A_addr_30 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_466
  %A_load_30 = load float* %A_addr_30, align 4
  %temp_1_2_0_3 = fmul float %A_load_30, %B_load_4
  %tmp_5_2 = fadd float %tmp_6_2_0_3, %temp_1_2_0_3
  %temp_2_1 = fmul float %A_load_7, %B_load_5
  %tmp_6_2_1 = fadd float %tmp_5_2, %temp_2_1
  %temp_1_2_1 = fmul float %A_load_8, %B_load_6
  %tmp_6_2_1_1 = fadd float %tmp_6_2_1, %temp_1_2_1
  %temp_1_2_1_1 = fmul float %A_load_9, %B_load_7
  %tmp_6_2_1_2 = fadd float %tmp_6_2_1_1, %temp_1_2_1_1
  %temp_1_2_1_2 = fmul float %A_load_26, %B_load_8
  %tmp_6_2_1_3 = fadd float %tmp_6_2_1_2, %temp_1_2_1_2
  %p_addr152 = add i12 %p_addr110_cast1, 6
  %p_addr152_cast = sext i12 %p_addr152 to i32
  %tmp_467 = zext i32 %p_addr152_cast to i64
  %A_addr_31 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_467
  %A_load_31 = load float* %A_addr_31, align 4
  %temp_1_2_1_3 = fmul float %A_load_31, %B_load_9
  %tmp_5_2_1 = fadd float %tmp_6_2_1_3, %temp_1_2_1_3
  %temp_2_2 = fmul float %A_load_12, %B_load_10
  %tmp_6_2_2 = fadd float %tmp_5_2_1, %temp_2_2
  %temp_1_2_2 = fmul float %A_load_13, %B_load_11
  %tmp_6_2_2_1 = fadd float %tmp_6_2_2, %temp_1_2_2
  %temp_1_2_2_1 = fmul float %A_load_14, %B_load_12
  %tmp_6_2_2_2 = fadd float %tmp_6_2_2_1, %temp_1_2_2_1
  %temp_1_2_2_2 = fmul float %A_load_27, %B_load_13
  %tmp_6_2_2_3 = fadd float %tmp_6_2_2_2, %temp_1_2_2_2
  %p_addr154 = add i12 %p_addr118_cast1, 6
  %p_addr154_cast = sext i12 %p_addr154 to i32
  %tmp_468 = zext i32 %p_addr154_cast to i64
  %A_addr_32 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_468
  %A_load_32 = load float* %A_addr_32, align 4
  %temp_1_2_2_3 = fmul float %A_load_32, %B_load_14
  %tmp_5_2_2 = fadd float %tmp_6_2_2_3, %temp_1_2_2_3
  %temp_2_3 = fmul float %A_load_17, %B_load_15
  %tmp_6_2_3 = fadd float %tmp_5_2_2, %temp_2_3
  %temp_1_2_3 = fmul float %A_load_18, %B_load_16
  %tmp_6_2_3_1 = fadd float %tmp_6_2_3, %temp_1_2_3
  %temp_1_2_3_1 = fmul float %A_load_19, %B_load_17
  %tmp_6_2_3_2 = fadd float %tmp_6_2_3_1, %temp_1_2_3_1
  %temp_1_2_3_2 = fmul float %A_load_28, %B_load_18
  %tmp_6_2_3_3 = fadd float %tmp_6_2_3_2, %temp_1_2_3_2
  %p_addr155 = add i12 %p_addr125_cast1, 6
  %p_addr155_cast = sext i12 %p_addr155 to i32
  %tmp_469 = zext i32 %p_addr155_cast to i64
  %A_addr_33 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_469
  %A_load_33 = load float* %A_addr_33, align 4
  %temp_1_2_3_3 = fmul float %A_load_33, %B_load_19
  %tmp_5_2_3 = fadd float %tmp_6_2_3_3, %temp_1_2_3_3
  %temp_2_4 = fmul float %A_load_22, %B_load_20
  %tmp_6_2_4 = fadd float %tmp_5_2_3, %temp_2_4
  %temp_1_2_4 = fmul float %A_load_23, %B_load_21
  %tmp_6_2_4_1 = fadd float %tmp_6_2_4, %temp_1_2_4
  %temp_1_2_4_1 = fmul float %A_load_24, %B_load_22
  %tmp_6_2_4_2 = fadd float %tmp_6_2_4_1, %temp_1_2_4_1
  %temp_1_2_4_2 = fmul float %A_load_29, %B_load_23
  %tmp_6_2_4_3 = fadd float %tmp_6_2_4_2, %temp_1_2_4_2
  %p_addr157 = add i12 %p_addr133_cast1, 6
  %p_addr157_cast = sext i12 %p_addr157 to i32
  %tmp_470 = zext i32 %p_addr157_cast to i64
  %A_addr_34 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_470
  %A_load_34 = load float* %A_addr_34, align 4
  %temp_1_2_4_3 = fmul float %A_load_34, %B_load_24
  %tmp_5_2_4 = fadd float %tmp_6_2_4_3, %temp_1_2_4_3
  store float %tmp_5_2_4, float* %conv_addr_2, align 4
  %p_addr158 = or i32 %p_addr101, 3
  %tmp_471 = zext i32 %p_addr158 to i64
  %conv_addr_3 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_471
  %temp_3 = fmul float %A_load_3, %B_load
  %tmp_6_3 = fadd float %temp_3, 0.000000e+00
  %temp_1_3 = fmul float %A_load_4, %B_load_1
  %tmp_6_3_0_1 = fadd float %tmp_6_3, %temp_1_3
  %temp_1_3_0_1 = fmul float %A_load_25, %B_load_2
  %tmp_6_3_0_2 = fadd float %tmp_6_3_0_1, %temp_1_3_0_1
  %temp_1_3_0_2 = fmul float %A_load_30, %B_load_3
  %tmp_6_3_0_3 = fadd float %tmp_6_3_0_2, %temp_1_3_0_2
  %p_addr160 = add i12 %p_addr103_cast1, 7
  %p_addr160_cast = sext i12 %p_addr160 to i32
  %tmp_472 = zext i32 %p_addr160_cast to i64
  %A_addr_35 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_472
  %A_load_35 = load float* %A_addr_35, align 4
  %temp_1_3_0_3 = fmul float %A_load_35, %B_load_4
  %tmp_5_3 = fadd float %tmp_6_3_0_3, %temp_1_3_0_3
  %temp_3_1 = fmul float %A_load_8, %B_load_5
  %tmp_6_3_1 = fadd float %tmp_5_3, %temp_3_1
  %temp_1_3_1 = fmul float %A_load_9, %B_load_6
  %tmp_6_3_1_1 = fadd float %tmp_6_3_1, %temp_1_3_1
  %temp_1_3_1_1 = fmul float %A_load_26, %B_load_7
  %tmp_6_3_1_2 = fadd float %tmp_6_3_1_1, %temp_1_3_1_1
  %temp_1_3_1_2 = fmul float %A_load_31, %B_load_8
  %tmp_6_3_1_3 = fadd float %tmp_6_3_1_2, %temp_1_3_1_2
  %p_addr161 = add i12 %p_addr110_cast1, 7
  %p_addr161_cast = sext i12 %p_addr161 to i32
  %tmp_473 = zext i32 %p_addr161_cast to i64
  %A_addr_36 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_473
  %A_load_36 = load float* %A_addr_36, align 4
  %temp_1_3_1_3 = fmul float %A_load_36, %B_load_9
  %tmp_5_3_1 = fadd float %tmp_6_3_1_3, %temp_1_3_1_3
  %temp_3_2 = fmul float %A_load_13, %B_load_10
  %tmp_6_3_2 = fadd float %tmp_5_3_1, %temp_3_2
  %temp_1_3_2 = fmul float %A_load_14, %B_load_11
  %tmp_6_3_2_1 = fadd float %tmp_6_3_2, %temp_1_3_2
  %temp_1_3_2_1 = fmul float %A_load_27, %B_load_12
  %tmp_6_3_2_2 = fadd float %tmp_6_3_2_1, %temp_1_3_2_1
  %temp_1_3_2_2 = fmul float %A_load_32, %B_load_13
  %tmp_6_3_2_3 = fadd float %tmp_6_3_2_2, %temp_1_3_2_2
  %p_addr163 = add i12 %p_addr118_cast1, 7
  %p_addr163_cast = sext i12 %p_addr163 to i32
  %tmp_474 = zext i32 %p_addr163_cast to i64
  %A_addr_37 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_474
  %A_load_37 = load float* %A_addr_37, align 4
  %temp_1_3_2_3 = fmul float %A_load_37, %B_load_14
  %tmp_5_3_2 = fadd float %tmp_6_3_2_3, %temp_1_3_2_3
  %temp_3_3 = fmul float %A_load_18, %B_load_15
  %tmp_6_3_3 = fadd float %tmp_5_3_2, %temp_3_3
  %temp_1_3_3 = fmul float %A_load_19, %B_load_16
  %tmp_6_3_3_1 = fadd float %tmp_6_3_3, %temp_1_3_3
  %temp_1_3_3_1 = fmul float %A_load_28, %B_load_17
  %tmp_6_3_3_2 = fadd float %tmp_6_3_3_1, %temp_1_3_3_1
  %temp_1_3_3_2 = fmul float %A_load_33, %B_load_18
  %tmp_6_3_3_3 = fadd float %tmp_6_3_3_2, %temp_1_3_3_2
  %p_addr164 = add i12 %p_addr125_cast1, 7
  %p_addr164_cast = sext i12 %p_addr164 to i32
  %tmp_475 = zext i32 %p_addr164_cast to i64
  %A_addr_38 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_475
  %A_load_38 = load float* %A_addr_38, align 4
  %temp_1_3_3_3 = fmul float %A_load_38, %B_load_19
  %tmp_5_3_3 = fadd float %tmp_6_3_3_3, %temp_1_3_3_3
  %temp_3_4 = fmul float %A_load_23, %B_load_20
  %tmp_6_3_4 = fadd float %tmp_5_3_3, %temp_3_4
  %temp_1_3_4 = fmul float %A_load_24, %B_load_21
  %tmp_6_3_4_1 = fadd float %tmp_6_3_4, %temp_1_3_4
  %temp_1_3_4_1 = fmul float %A_load_29, %B_load_22
  %tmp_6_3_4_2 = fadd float %tmp_6_3_4_1, %temp_1_3_4_1
  %temp_1_3_4_2 = fmul float %A_load_34, %B_load_23
  %tmp_6_3_4_3 = fadd float %tmp_6_3_4_2, %temp_1_3_4_2
  %p_addr166 = add i12 %p_addr133_cast1, 7
  %p_addr166_cast = sext i12 %p_addr166 to i32
  %tmp_476 = zext i32 %p_addr166_cast to i64
  %A_addr_39 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_476
  %A_load_39 = load float* %A_addr_39, align 4
  %temp_1_3_4_3 = fmul float %A_load_39, %B_load_24
  %tmp_5_3_4 = fadd float %tmp_6_3_4_3, %temp_1_3_4_3
  store float %tmp_5_3_4, float* %conv_addr_3, align 4
  %p_addr167 = or i32 %p_addr101, 4
  %tmp_477 = zext i32 %p_addr167 to i64
  %conv_addr_4 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_477
  %temp_4 = fmul float %A_load_4, %B_load
  %tmp_6_4 = fadd float %temp_4, 0.000000e+00
  %temp_1_4 = fmul float %A_load_25, %B_load_1
  %tmp_6_4_0_1 = fadd float %tmp_6_4, %temp_1_4
  %temp_1_4_0_1 = fmul float %A_load_30, %B_load_2
  %tmp_6_4_0_2 = fadd float %tmp_6_4_0_1, %temp_1_4_0_1
  %temp_1_4_0_2 = fmul float %A_load_35, %B_load_3
  %tmp_6_4_0_3 = fadd float %tmp_6_4_0_2, %temp_1_4_0_2
  %p_addr169 = add i12 %p_addr103_cast1, 8
  %p_addr169_cast = sext i12 %p_addr169 to i32
  %tmp_478 = zext i32 %p_addr169_cast to i64
  %A_addr_40 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_478
  %A_load_40 = load float* %A_addr_40, align 4
  %temp_1_4_0_3 = fmul float %A_load_40, %B_load_4
  %tmp_5_4 = fadd float %tmp_6_4_0_3, %temp_1_4_0_3
  %temp_4_1 = fmul float %A_load_9, %B_load_5
  %tmp_6_4_1 = fadd float %tmp_5_4, %temp_4_1
  %temp_1_4_1 = fmul float %A_load_26, %B_load_6
  %tmp_6_4_1_1 = fadd float %tmp_6_4_1, %temp_1_4_1
  %temp_1_4_1_1 = fmul float %A_load_31, %B_load_7
  %tmp_6_4_1_2 = fadd float %tmp_6_4_1_1, %temp_1_4_1_1
  %temp_1_4_1_2 = fmul float %A_load_36, %B_load_8
  %tmp_6_4_1_3 = fadd float %tmp_6_4_1_2, %temp_1_4_1_2
  %p_addr170 = add i12 %p_addr110_cast1, 8
  %p_addr170_cast = sext i12 %p_addr170 to i32
  %tmp_479 = zext i32 %p_addr170_cast to i64
  %A_addr_41 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_479
  %A_load_41 = load float* %A_addr_41, align 4
  %temp_1_4_1_3 = fmul float %A_load_41, %B_load_9
  %tmp_5_4_1 = fadd float %tmp_6_4_1_3, %temp_1_4_1_3
  %temp_4_2 = fmul float %A_load_14, %B_load_10
  %tmp_6_4_2 = fadd float %tmp_5_4_1, %temp_4_2
  %temp_1_4_2 = fmul float %A_load_27, %B_load_11
  %tmp_6_4_2_1 = fadd float %tmp_6_4_2, %temp_1_4_2
  %temp_1_4_2_1 = fmul float %A_load_32, %B_load_12
  %tmp_6_4_2_2 = fadd float %tmp_6_4_2_1, %temp_1_4_2_1
  %temp_1_4_2_2 = fmul float %A_load_37, %B_load_13
  %tmp_6_4_2_3 = fadd float %tmp_6_4_2_2, %temp_1_4_2_2
  %p_addr172 = add i12 %p_addr118_cast1, 8
  %p_addr172_cast = sext i12 %p_addr172 to i32
  %tmp_480 = zext i32 %p_addr172_cast to i64
  %A_addr_42 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_480
  %A_load_42 = load float* %A_addr_42, align 4
  %temp_1_4_2_3 = fmul float %A_load_42, %B_load_14
  %tmp_5_4_2 = fadd float %tmp_6_4_2_3, %temp_1_4_2_3
  %temp_4_3 = fmul float %A_load_19, %B_load_15
  %tmp_6_4_3 = fadd float %tmp_5_4_2, %temp_4_3
  %temp_1_4_3 = fmul float %A_load_28, %B_load_16
  %tmp_6_4_3_1 = fadd float %tmp_6_4_3, %temp_1_4_3
  %temp_1_4_3_1 = fmul float %A_load_33, %B_load_17
  %tmp_6_4_3_2 = fadd float %tmp_6_4_3_1, %temp_1_4_3_1
  %temp_1_4_3_2 = fmul float %A_load_38, %B_load_18
  %tmp_6_4_3_3 = fadd float %tmp_6_4_3_2, %temp_1_4_3_2
  %p_addr173 = add i12 %p_addr125_cast1, 8
  %p_addr173_cast = sext i12 %p_addr173 to i32
  %tmp_481 = zext i32 %p_addr173_cast to i64
  %A_addr_43 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_481
  %A_load_43 = load float* %A_addr_43, align 4
  %temp_1_4_3_3 = fmul float %A_load_43, %B_load_19
  %tmp_5_4_3 = fadd float %tmp_6_4_3_3, %temp_1_4_3_3
  %temp_4_4 = fmul float %A_load_24, %B_load_20
  %tmp_6_4_4 = fadd float %tmp_5_4_3, %temp_4_4
  %temp_1_4_4 = fmul float %A_load_29, %B_load_21
  %tmp_6_4_4_1 = fadd float %tmp_6_4_4, %temp_1_4_4
  %temp_1_4_4_1 = fmul float %A_load_34, %B_load_22
  %tmp_6_4_4_2 = fadd float %tmp_6_4_4_1, %temp_1_4_4_1
  %temp_1_4_4_2 = fmul float %A_load_39, %B_load_23
  %tmp_6_4_4_3 = fadd float %tmp_6_4_4_2, %temp_1_4_4_2
  %p_addr175 = add i12 %p_addr133_cast1, 8
  %p_addr175_cast = sext i12 %p_addr175 to i32
  %tmp_482 = zext i32 %p_addr175_cast to i64
  %A_addr_44 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_482
  %A_load_44 = load float* %A_addr_44, align 4
  %temp_1_4_4_3 = fmul float %A_load_44, %B_load_24
  %tmp_5_4_4 = fadd float %tmp_6_4_4_3, %temp_1_4_4_3
  store float %tmp_5_4_4, float* %conv_addr_4, align 4
  %p_addr176 = or i32 %p_addr101, 5
  %tmp_483 = zext i32 %p_addr176 to i64
  %conv_addr_5 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_483
  %temp_5 = fmul float %A_load_25, %B_load
  %tmp_6_5 = fadd float %temp_5, 0.000000e+00
  %temp_1_5 = fmul float %A_load_30, %B_load_1
  %tmp_6_5_0_1 = fadd float %tmp_6_5, %temp_1_5
  %temp_1_5_0_1 = fmul float %A_load_35, %B_load_2
  %tmp_6_5_0_2 = fadd float %tmp_6_5_0_1, %temp_1_5_0_1
  %temp_1_5_0_2 = fmul float %A_load_40, %B_load_3
  %tmp_6_5_0_3 = fadd float %tmp_6_5_0_2, %temp_1_5_0_2
  %p_addr178 = add i12 %p_addr103_cast1, 9
  %p_addr178_cast = sext i12 %p_addr178 to i32
  %tmp_484 = zext i32 %p_addr178_cast to i64
  %A_addr_45 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_484
  %A_load_45 = load float* %A_addr_45, align 4
  %temp_1_5_0_3 = fmul float %A_load_45, %B_load_4
  %tmp_5_5 = fadd float %tmp_6_5_0_3, %temp_1_5_0_3
  %temp_5_1 = fmul float %A_load_26, %B_load_5
  %tmp_6_5_1 = fadd float %tmp_5_5, %temp_5_1
  %temp_1_5_1 = fmul float %A_load_31, %B_load_6
  %tmp_6_5_1_1 = fadd float %tmp_6_5_1, %temp_1_5_1
  %temp_1_5_1_1 = fmul float %A_load_36, %B_load_7
  %tmp_6_5_1_2 = fadd float %tmp_6_5_1_1, %temp_1_5_1_1
  %temp_1_5_1_2 = fmul float %A_load_41, %B_load_8
  %tmp_6_5_1_3 = fadd float %tmp_6_5_1_2, %temp_1_5_1_2
  %p_addr179 = add i12 %p_addr110_cast1, 9
  %p_addr179_cast = sext i12 %p_addr179 to i32
  %tmp_485 = zext i32 %p_addr179_cast to i64
  %A_addr_46 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_485
  %A_load_46 = load float* %A_addr_46, align 4
  %temp_1_5_1_3 = fmul float %A_load_46, %B_load_9
  %tmp_5_5_1 = fadd float %tmp_6_5_1_3, %temp_1_5_1_3
  %temp_5_2 = fmul float %A_load_27, %B_load_10
  %tmp_6_5_2 = fadd float %tmp_5_5_1, %temp_5_2
  %temp_1_5_2 = fmul float %A_load_32, %B_load_11
  %tmp_6_5_2_1 = fadd float %tmp_6_5_2, %temp_1_5_2
  %temp_1_5_2_1 = fmul float %A_load_37, %B_load_12
  %tmp_6_5_2_2 = fadd float %tmp_6_5_2_1, %temp_1_5_2_1
  %temp_1_5_2_2 = fmul float %A_load_42, %B_load_13
  %tmp_6_5_2_3 = fadd float %tmp_6_5_2_2, %temp_1_5_2_2
  %p_addr181 = add i12 %p_addr118_cast1, 9
  %p_addr181_cast = sext i12 %p_addr181 to i32
  %tmp_486 = zext i32 %p_addr181_cast to i64
  %A_addr_47 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_486
  %A_load_47 = load float* %A_addr_47, align 4
  %temp_1_5_2_3 = fmul float %A_load_47, %B_load_14
  %tmp_5_5_2 = fadd float %tmp_6_5_2_3, %temp_1_5_2_3
  %temp_5_3 = fmul float %A_load_28, %B_load_15
  %tmp_6_5_3 = fadd float %tmp_5_5_2, %temp_5_3
  %temp_1_5_3 = fmul float %A_load_33, %B_load_16
  %tmp_6_5_3_1 = fadd float %tmp_6_5_3, %temp_1_5_3
  %temp_1_5_3_1 = fmul float %A_load_38, %B_load_17
  %tmp_6_5_3_2 = fadd float %tmp_6_5_3_1, %temp_1_5_3_1
  %temp_1_5_3_2 = fmul float %A_load_43, %B_load_18
  %tmp_6_5_3_3 = fadd float %tmp_6_5_3_2, %temp_1_5_3_2
  %p_addr182 = add i12 %p_addr125_cast1, 9
  %p_addr182_cast = sext i12 %p_addr182 to i32
  %tmp_487 = zext i32 %p_addr182_cast to i64
  %A_addr_48 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_487
  %A_load_48 = load float* %A_addr_48, align 4
  %temp_1_5_3_3 = fmul float %A_load_48, %B_load_19
  %tmp_5_5_3 = fadd float %tmp_6_5_3_3, %temp_1_5_3_3
  %temp_5_4 = fmul float %A_load_29, %B_load_20
  %tmp_6_5_4 = fadd float %tmp_5_5_3, %temp_5_4
  %temp_1_5_4 = fmul float %A_load_34, %B_load_21
  %tmp_6_5_4_1 = fadd float %tmp_6_5_4, %temp_1_5_4
  %temp_1_5_4_1 = fmul float %A_load_39, %B_load_22
  %tmp_6_5_4_2 = fadd float %tmp_6_5_4_1, %temp_1_5_4_1
  %temp_1_5_4_2 = fmul float %A_load_44, %B_load_23
  %tmp_6_5_4_3 = fadd float %tmp_6_5_4_2, %temp_1_5_4_2
  %p_addr184 = add i12 %p_addr133_cast1, 9
  %p_addr184_cast = sext i12 %p_addr184 to i32
  %tmp_488 = zext i32 %p_addr184_cast to i64
  %A_addr_49 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_488
  %A_load_49 = load float* %A_addr_49, align 4
  %temp_1_5_4_3 = fmul float %A_load_49, %B_load_24
  %tmp_5_5_4 = fadd float %tmp_6_5_4_3, %temp_1_5_4_3
  store float %tmp_5_5_4, float* %conv_addr_5, align 4
  %p_addr185 = or i32 %p_addr101, 6
  %tmp_489 = zext i32 %p_addr185 to i64
  %conv_addr_6 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_489
  %temp_6 = fmul float %A_load_30, %B_load
  %tmp_6_6 = fadd float %temp_6, 0.000000e+00
  %temp_1_6 = fmul float %A_load_35, %B_load_1
  %tmp_6_6_0_1 = fadd float %tmp_6_6, %temp_1_6
  %temp_1_6_0_1 = fmul float %A_load_40, %B_load_2
  %tmp_6_6_0_2 = fadd float %tmp_6_6_0_1, %temp_1_6_0_1
  %temp_1_6_0_2 = fmul float %A_load_45, %B_load_3
  %tmp_6_6_0_3 = fadd float %tmp_6_6_0_2, %temp_1_6_0_2
  %p_addr187 = add i12 %p_addr103_cast1, 10
  %p_addr187_cast = sext i12 %p_addr187 to i32
  %tmp_490 = zext i32 %p_addr187_cast to i64
  %A_addr_50 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_490
  %A_load_50 = load float* %A_addr_50, align 4
  %temp_1_6_0_3 = fmul float %A_load_50, %B_load_4
  %tmp_5_6 = fadd float %tmp_6_6_0_3, %temp_1_6_0_3
  %temp_6_1 = fmul float %A_load_31, %B_load_5
  %tmp_6_6_1 = fadd float %tmp_5_6, %temp_6_1
  %temp_1_6_1 = fmul float %A_load_36, %B_load_6
  %tmp_6_6_1_1 = fadd float %tmp_6_6_1, %temp_1_6_1
  %temp_1_6_1_1 = fmul float %A_load_41, %B_load_7
  %tmp_6_6_1_2 = fadd float %tmp_6_6_1_1, %temp_1_6_1_1
  %temp_1_6_1_2 = fmul float %A_load_46, %B_load_8
  %tmp_6_6_1_3 = fadd float %tmp_6_6_1_2, %temp_1_6_1_2
  %p_addr188 = add i12 %p_addr110_cast1, 10
  %p_addr188_cast = sext i12 %p_addr188 to i32
  %tmp_491 = zext i32 %p_addr188_cast to i64
  %A_addr_51 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_491
  %A_load_51 = load float* %A_addr_51, align 4
  %temp_1_6_1_3 = fmul float %A_load_51, %B_load_9
  %tmp_5_6_1 = fadd float %tmp_6_6_1_3, %temp_1_6_1_3
  %temp_6_2 = fmul float %A_load_32, %B_load_10
  %tmp_6_6_2 = fadd float %tmp_5_6_1, %temp_6_2
  %temp_1_6_2 = fmul float %A_load_37, %B_load_11
  %tmp_6_6_2_1 = fadd float %tmp_6_6_2, %temp_1_6_2
  %temp_1_6_2_1 = fmul float %A_load_42, %B_load_12
  %tmp_6_6_2_2 = fadd float %tmp_6_6_2_1, %temp_1_6_2_1
  %temp_1_6_2_2 = fmul float %A_load_47, %B_load_13
  %tmp_6_6_2_3 = fadd float %tmp_6_6_2_2, %temp_1_6_2_2
  %p_addr190 = add i12 %p_addr118_cast1, 10
  %p_addr190_cast = sext i12 %p_addr190 to i32
  %tmp_492 = zext i32 %p_addr190_cast to i64
  %A_addr_52 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_492
  %A_load_52 = load float* %A_addr_52, align 4
  %temp_1_6_2_3 = fmul float %A_load_52, %B_load_14
  %tmp_5_6_2 = fadd float %tmp_6_6_2_3, %temp_1_6_2_3
  %temp_6_3 = fmul float %A_load_33, %B_load_15
  %tmp_6_6_3 = fadd float %tmp_5_6_2, %temp_6_3
  %temp_1_6_3 = fmul float %A_load_38, %B_load_16
  %tmp_6_6_3_1 = fadd float %tmp_6_6_3, %temp_1_6_3
  %temp_1_6_3_1 = fmul float %A_load_43, %B_load_17
  %tmp_6_6_3_2 = fadd float %tmp_6_6_3_1, %temp_1_6_3_1
  %temp_1_6_3_2 = fmul float %A_load_48, %B_load_18
  %tmp_6_6_3_3 = fadd float %tmp_6_6_3_2, %temp_1_6_3_2
  %p_addr191 = add i12 %p_addr125_cast1, 10
  %p_addr191_cast = sext i12 %p_addr191 to i32
  %tmp_493 = zext i32 %p_addr191_cast to i64
  %A_addr_53 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_493
  %A_load_53 = load float* %A_addr_53, align 4
  %temp_1_6_3_3 = fmul float %A_load_53, %B_load_19
  %tmp_5_6_3 = fadd float %tmp_6_6_3_3, %temp_1_6_3_3
  %temp_6_4 = fmul float %A_load_34, %B_load_20
  %tmp_6_6_4 = fadd float %tmp_5_6_3, %temp_6_4
  %temp_1_6_4 = fmul float %A_load_39, %B_load_21
  %tmp_6_6_4_1 = fadd float %tmp_6_6_4, %temp_1_6_4
  %temp_1_6_4_1 = fmul float %A_load_44, %B_load_22
  %tmp_6_6_4_2 = fadd float %tmp_6_6_4_1, %temp_1_6_4_1
  %temp_1_6_4_2 = fmul float %A_load_49, %B_load_23
  %tmp_6_6_4_3 = fadd float %tmp_6_6_4_2, %temp_1_6_4_2
  %p_addr193 = add i12 %p_addr133_cast1, 10
  %p_addr193_cast = sext i12 %p_addr193 to i32
  %tmp_494 = zext i32 %p_addr193_cast to i64
  %A_addr_54 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_494
  %A_load_54 = load float* %A_addr_54, align 4
  %temp_1_6_4_3 = fmul float %A_load_54, %B_load_24
  %tmp_5_6_4 = fadd float %tmp_6_6_4_3, %temp_1_6_4_3
  store float %tmp_5_6_4, float* %conv_addr_6, align 4
  %p_addr194 = or i32 %p_addr101, 7
  %tmp_495 = zext i32 %p_addr194 to i64
  %conv_addr_7 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_495
  %temp_7 = fmul float %A_load_35, %B_load
  %tmp_6_7 = fadd float %temp_7, 0.000000e+00
  %temp_1_7 = fmul float %A_load_40, %B_load_1
  %tmp_6_7_0_1 = fadd float %tmp_6_7, %temp_1_7
  %temp_1_7_0_1 = fmul float %A_load_45, %B_load_2
  %tmp_6_7_0_2 = fadd float %tmp_6_7_0_1, %temp_1_7_0_1
  %temp_1_7_0_2 = fmul float %A_load_50, %B_load_3
  %tmp_6_7_0_3 = fadd float %tmp_6_7_0_2, %temp_1_7_0_2
  %p_addr196 = add i12 %p_addr103_cast1, 11
  %p_addr196_cast = sext i12 %p_addr196 to i32
  %tmp_496 = zext i32 %p_addr196_cast to i64
  %A_addr_55 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_496
  %A_load_55 = load float* %A_addr_55, align 4
  %temp_1_7_0_3 = fmul float %A_load_55, %B_load_4
  %tmp_5_7 = fadd float %tmp_6_7_0_3, %temp_1_7_0_3
  %temp_7_1 = fmul float %A_load_36, %B_load_5
  %tmp_6_7_1 = fadd float %tmp_5_7, %temp_7_1
  %temp_1_7_1 = fmul float %A_load_41, %B_load_6
  %tmp_6_7_1_1 = fadd float %tmp_6_7_1, %temp_1_7_1
  %temp_1_7_1_1 = fmul float %A_load_46, %B_load_7
  %tmp_6_7_1_2 = fadd float %tmp_6_7_1_1, %temp_1_7_1_1
  %temp_1_7_1_2 = fmul float %A_load_51, %B_load_8
  %tmp_6_7_1_3 = fadd float %tmp_6_7_1_2, %temp_1_7_1_2
  %p_addr197 = add i12 %p_addr110_cast1, 11
  %p_addr197_cast = sext i12 %p_addr197 to i32
  %tmp_497 = zext i32 %p_addr197_cast to i64
  %A_addr_56 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_497
  %A_load_56 = load float* %A_addr_56, align 4
  %temp_1_7_1_3 = fmul float %A_load_56, %B_load_9
  %tmp_5_7_1 = fadd float %tmp_6_7_1_3, %temp_1_7_1_3
  %temp_7_2 = fmul float %A_load_37, %B_load_10
  %tmp_6_7_2 = fadd float %tmp_5_7_1, %temp_7_2
  %temp_1_7_2 = fmul float %A_load_42, %B_load_11
  %tmp_6_7_2_1 = fadd float %tmp_6_7_2, %temp_1_7_2
  %temp_1_7_2_1 = fmul float %A_load_47, %B_load_12
  %tmp_6_7_2_2 = fadd float %tmp_6_7_2_1, %temp_1_7_2_1
  %temp_1_7_2_2 = fmul float %A_load_52, %B_load_13
  %tmp_6_7_2_3 = fadd float %tmp_6_7_2_2, %temp_1_7_2_2
  %p_addr199 = add i12 %p_addr118_cast1, 11
  %p_addr199_cast = sext i12 %p_addr199 to i32
  %tmp_498 = zext i32 %p_addr199_cast to i64
  %A_addr_57 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_498
  %A_load_57 = load float* %A_addr_57, align 4
  %temp_1_7_2_3 = fmul float %A_load_57, %B_load_14
  %tmp_5_7_2 = fadd float %tmp_6_7_2_3, %temp_1_7_2_3
  %temp_7_3 = fmul float %A_load_38, %B_load_15
  %tmp_6_7_3 = fadd float %tmp_5_7_2, %temp_7_3
  %temp_1_7_3 = fmul float %A_load_43, %B_load_16
  %tmp_6_7_3_1 = fadd float %tmp_6_7_3, %temp_1_7_3
  %temp_1_7_3_1 = fmul float %A_load_48, %B_load_17
  %tmp_6_7_3_2 = fadd float %tmp_6_7_3_1, %temp_1_7_3_1
  %temp_1_7_3_2 = fmul float %A_load_53, %B_load_18
  %tmp_6_7_3_3 = fadd float %tmp_6_7_3_2, %temp_1_7_3_2
  %p_addr200 = add i12 %p_addr125_cast1, 11
  %p_addr200_cast = sext i12 %p_addr200 to i32
  %tmp_499 = zext i32 %p_addr200_cast to i64
  %A_addr_58 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_499
  %A_load_58 = load float* %A_addr_58, align 4
  %temp_1_7_3_3 = fmul float %A_load_58, %B_load_19
  %tmp_5_7_3 = fadd float %tmp_6_7_3_3, %temp_1_7_3_3
  %temp_7_4 = fmul float %A_load_39, %B_load_20
  %tmp_6_7_4 = fadd float %tmp_5_7_3, %temp_7_4
  %temp_1_7_4 = fmul float %A_load_44, %B_load_21
  %tmp_6_7_4_1 = fadd float %tmp_6_7_4, %temp_1_7_4
  %temp_1_7_4_1 = fmul float %A_load_49, %B_load_22
  %tmp_6_7_4_2 = fadd float %tmp_6_7_4_1, %temp_1_7_4_1
  %temp_1_7_4_2 = fmul float %A_load_54, %B_load_23
  %tmp_6_7_4_3 = fadd float %tmp_6_7_4_2, %temp_1_7_4_2
  %p_addr202 = add i12 %p_addr133_cast1, 11
  %p_addr202_cast = sext i12 %p_addr202 to i32
  %tmp_500 = zext i32 %p_addr202_cast to i64
  %A_addr_59 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_500
  %A_load_59 = load float* %A_addr_59, align 4
  %temp_1_7_4_3 = fmul float %A_load_59, %B_load_24
  %tmp_5_7_4 = fadd float %tmp_6_7_4_3, %temp_1_7_4_3
  store float %tmp_5_7_4, float* %conv_addr_7, align 4
  %p_addr203 = add i32 %p_addr101, 8
  %tmp_501 = zext i32 %p_addr203 to i64
  %conv_addr_8 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_501
  %temp_8 = fmul float %A_load_40, %B_load
  %tmp_6_8 = fadd float %temp_8, 0.000000e+00
  %temp_1_8 = fmul float %A_load_45, %B_load_1
  %tmp_6_8_0_1 = fadd float %tmp_6_8, %temp_1_8
  %temp_1_8_0_1 = fmul float %A_load_50, %B_load_2
  %tmp_6_8_0_2 = fadd float %tmp_6_8_0_1, %temp_1_8_0_1
  %temp_1_8_0_2 = fmul float %A_load_55, %B_load_3
  %tmp_6_8_0_3 = fadd float %tmp_6_8_0_2, %temp_1_8_0_2
  %p_addr205 = add i12 %p_addr103_cast1, 12
  %p_addr205_cast = sext i12 %p_addr205 to i32
  %tmp_502 = zext i32 %p_addr205_cast to i64
  %A_addr_60 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_502
  %A_load_60 = load float* %A_addr_60, align 4
  %temp_1_8_0_3 = fmul float %A_load_60, %B_load_4
  %tmp_5_8 = fadd float %tmp_6_8_0_3, %temp_1_8_0_3
  %temp_8_1 = fmul float %A_load_41, %B_load_5
  %tmp_6_8_1 = fadd float %tmp_5_8, %temp_8_1
  %temp_1_8_1 = fmul float %A_load_46, %B_load_6
  %tmp_6_8_1_1 = fadd float %tmp_6_8_1, %temp_1_8_1
  %temp_1_8_1_1 = fmul float %A_load_51, %B_load_7
  %tmp_6_8_1_2 = fadd float %tmp_6_8_1_1, %temp_1_8_1_1
  %temp_1_8_1_2 = fmul float %A_load_56, %B_load_8
  %tmp_6_8_1_3 = fadd float %tmp_6_8_1_2, %temp_1_8_1_2
  %p_addr206 = add i12 %p_addr110_cast1, 12
  %p_addr206_cast = sext i12 %p_addr206 to i32
  %tmp_503 = zext i32 %p_addr206_cast to i64
  %A_addr_61 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_503
  %A_load_61 = load float* %A_addr_61, align 4
  %temp_1_8_1_3 = fmul float %A_load_61, %B_load_9
  %tmp_5_8_1 = fadd float %tmp_6_8_1_3, %temp_1_8_1_3
  %temp_8_2 = fmul float %A_load_42, %B_load_10
  %tmp_6_8_2 = fadd float %tmp_5_8_1, %temp_8_2
  %temp_1_8_2 = fmul float %A_load_47, %B_load_11
  %tmp_6_8_2_1 = fadd float %tmp_6_8_2, %temp_1_8_2
  %temp_1_8_2_1 = fmul float %A_load_52, %B_load_12
  %tmp_6_8_2_2 = fadd float %tmp_6_8_2_1, %temp_1_8_2_1
  %temp_1_8_2_2 = fmul float %A_load_57, %B_load_13
  %tmp_6_8_2_3 = fadd float %tmp_6_8_2_2, %temp_1_8_2_2
  %p_addr208 = add i12 %p_addr118_cast1, 12
  %p_addr208_cast = sext i12 %p_addr208 to i32
  %tmp_504 = zext i32 %p_addr208_cast to i64
  %A_addr_62 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_504
  %A_load_62 = load float* %A_addr_62, align 4
  %temp_1_8_2_3 = fmul float %A_load_62, %B_load_14
  %tmp_5_8_2 = fadd float %tmp_6_8_2_3, %temp_1_8_2_3
  %temp_8_3 = fmul float %A_load_43, %B_load_15
  %tmp_6_8_3 = fadd float %tmp_5_8_2, %temp_8_3
  %temp_1_8_3 = fmul float %A_load_48, %B_load_16
  %tmp_6_8_3_1 = fadd float %tmp_6_8_3, %temp_1_8_3
  %temp_1_8_3_1 = fmul float %A_load_53, %B_load_17
  %tmp_6_8_3_2 = fadd float %tmp_6_8_3_1, %temp_1_8_3_1
  %temp_1_8_3_2 = fmul float %A_load_58, %B_load_18
  %tmp_6_8_3_3 = fadd float %tmp_6_8_3_2, %temp_1_8_3_2
  %p_addr209 = add i12 %p_addr125_cast1, 12
  %p_addr209_cast = sext i12 %p_addr209 to i32
  %tmp_505 = zext i32 %p_addr209_cast to i64
  %A_addr_63 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_505
  %A_load_63 = load float* %A_addr_63, align 4
  %temp_1_8_3_3 = fmul float %A_load_63, %B_load_19
  %tmp_5_8_3 = fadd float %tmp_6_8_3_3, %temp_1_8_3_3
  %temp_8_4 = fmul float %A_load_44, %B_load_20
  %tmp_6_8_4 = fadd float %tmp_5_8_3, %temp_8_4
  %temp_1_8_4 = fmul float %A_load_49, %B_load_21
  %tmp_6_8_4_1 = fadd float %tmp_6_8_4, %temp_1_8_4
  %temp_1_8_4_1 = fmul float %A_load_54, %B_load_22
  %tmp_6_8_4_2 = fadd float %tmp_6_8_4_1, %temp_1_8_4_1
  %temp_1_8_4_2 = fmul float %A_load_59, %B_load_23
  %tmp_6_8_4_3 = fadd float %tmp_6_8_4_2, %temp_1_8_4_2
  %p_addr211 = add i12 %p_addr133_cast1, 12
  %p_addr211_cast = sext i12 %p_addr211 to i32
  %tmp_506 = zext i32 %p_addr211_cast to i64
  %A_addr_64 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_506
  %A_load_64 = load float* %A_addr_64, align 4
  %temp_1_8_4_3 = fmul float %A_load_64, %B_load_24
  %tmp_5_8_4 = fadd float %tmp_6_8_4_3, %temp_1_8_4_3
  store float %tmp_5_8_4, float* %conv_addr_8, align 4
  %p_addr212 = add i32 %p_addr101, 9
  %tmp_507 = zext i32 %p_addr212 to i64
  %conv_addr_9 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_507
  %temp_9 = fmul float %A_load_45, %B_load
  %tmp_6_9 = fadd float %temp_9, 0.000000e+00
  %temp_1_9 = fmul float %A_load_50, %B_load_1
  %tmp_6_9_0_1 = fadd float %tmp_6_9, %temp_1_9
  %temp_1_9_0_1 = fmul float %A_load_55, %B_load_2
  %tmp_6_9_0_2 = fadd float %tmp_6_9_0_1, %temp_1_9_0_1
  %temp_1_9_0_2 = fmul float %A_load_60, %B_load_3
  %tmp_6_9_0_3 = fadd float %tmp_6_9_0_2, %temp_1_9_0_2
  %p_addr214 = add i12 %p_addr103_cast1, 13
  %p_addr214_cast = sext i12 %p_addr214 to i32
  %tmp_508 = zext i32 %p_addr214_cast to i64
  %A_addr_65 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_508
  %A_load_65 = load float* %A_addr_65, align 4
  %temp_1_9_0_3 = fmul float %A_load_65, %B_load_4
  %tmp_5_9 = fadd float %tmp_6_9_0_3, %temp_1_9_0_3
  %temp_9_1 = fmul float %A_load_46, %B_load_5
  %tmp_6_9_1 = fadd float %tmp_5_9, %temp_9_1
  %temp_1_9_1 = fmul float %A_load_51, %B_load_6
  %tmp_6_9_1_1 = fadd float %tmp_6_9_1, %temp_1_9_1
  %temp_1_9_1_1 = fmul float %A_load_56, %B_load_7
  %tmp_6_9_1_2 = fadd float %tmp_6_9_1_1, %temp_1_9_1_1
  %temp_1_9_1_2 = fmul float %A_load_61, %B_load_8
  %tmp_6_9_1_3 = fadd float %tmp_6_9_1_2, %temp_1_9_1_2
  %p_addr215 = add i12 %p_addr110_cast1, 13
  %p_addr215_cast = sext i12 %p_addr215 to i32
  %tmp_509 = zext i32 %p_addr215_cast to i64
  %A_addr_66 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_509
  %A_load_66 = load float* %A_addr_66, align 4
  %temp_1_9_1_3 = fmul float %A_load_66, %B_load_9
  %tmp_5_9_1 = fadd float %tmp_6_9_1_3, %temp_1_9_1_3
  %temp_9_2 = fmul float %A_load_47, %B_load_10
  %tmp_6_9_2 = fadd float %tmp_5_9_1, %temp_9_2
  %temp_1_9_2 = fmul float %A_load_52, %B_load_11
  %tmp_6_9_2_1 = fadd float %tmp_6_9_2, %temp_1_9_2
  %temp_1_9_2_1 = fmul float %A_load_57, %B_load_12
  %tmp_6_9_2_2 = fadd float %tmp_6_9_2_1, %temp_1_9_2_1
  %temp_1_9_2_2 = fmul float %A_load_62, %B_load_13
  %tmp_6_9_2_3 = fadd float %tmp_6_9_2_2, %temp_1_9_2_2
  %p_addr213 = add i12 %p_addr118_cast1, 13
  %p_addr213_cast = sext i12 %p_addr213 to i32
  %tmp_510 = zext i32 %p_addr213_cast to i64
  %A_addr_67 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_510
  %A_load_67 = load float* %A_addr_67, align 4
  %temp_1_9_2_3 = fmul float %A_load_67, %B_load_14
  %tmp_5_9_2 = fadd float %tmp_6_9_2_3, %temp_1_9_2_3
  %temp_9_3 = fmul float %A_load_48, %B_load_15
  %tmp_6_9_3 = fadd float %tmp_5_9_2, %temp_9_3
  %temp_1_9_3 = fmul float %A_load_53, %B_load_16
  %tmp_6_9_3_1 = fadd float %tmp_6_9_3, %temp_1_9_3
  %temp_1_9_3_1 = fmul float %A_load_58, %B_load_17
  %tmp_6_9_3_2 = fadd float %tmp_6_9_3_1, %temp_1_9_3_1
  %temp_1_9_3_2 = fmul float %A_load_63, %B_load_18
  %tmp_6_9_3_3 = fadd float %tmp_6_9_3_2, %temp_1_9_3_2
  %p_addr210 = add i12 %p_addr125_cast1, 13
  %p_addr210_cast = sext i12 %p_addr210 to i32
  %tmp_511 = zext i32 %p_addr210_cast to i64
  %A_addr_68 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_511
  %A_load_68 = load float* %A_addr_68, align 4
  %temp_1_9_3_3 = fmul float %A_load_68, %B_load_19
  %tmp_5_9_3 = fadd float %tmp_6_9_3_3, %temp_1_9_3_3
  %temp_9_4 = fmul float %A_load_49, %B_load_20
  %tmp_6_9_4 = fadd float %tmp_5_9_3, %temp_9_4
  %temp_1_9_4 = fmul float %A_load_54, %B_load_21
  %tmp_6_9_4_1 = fadd float %tmp_6_9_4, %temp_1_9_4
  %temp_1_9_4_1 = fmul float %A_load_59, %B_load_22
  %tmp_6_9_4_2 = fadd float %tmp_6_9_4_1, %temp_1_9_4_1
  %temp_1_9_4_2 = fmul float %A_load_64, %B_load_23
  %tmp_6_9_4_3 = fadd float %tmp_6_9_4_2, %temp_1_9_4_2
  %p_addr207 = add i12 %p_addr133_cast1, 13
  %p_addr207_cast = sext i12 %p_addr207 to i32
  %tmp_512 = zext i32 %p_addr207_cast to i64
  %A_addr_69 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_512
  %A_load_69 = load float* %A_addr_69, align 4
  %temp_1_9_4_3 = fmul float %A_load_69, %B_load_24
  %tmp_5_9_4 = fadd float %tmp_6_9_4_3, %temp_1_9_4_3
  store float %tmp_5_9_4, float* %conv_addr_9, align 4
  %p_addr216 = add i32 %p_addr101, 10
  %tmp_513 = zext i32 %p_addr216 to i64
  %conv_addr_10 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_513
  %temp_1 = fmul float %A_load_50, %B_load
  %tmp_6_s = fadd float %temp_1, 0.000000e+00
  %temp_1_s = fmul float %A_load_55, %B_load_1
  %tmp_6_10_0_1 = fadd float %tmp_6_s, %temp_1_s
  %temp_1_10_0_1 = fmul float %A_load_60, %B_load_2
  %tmp_6_10_0_2 = fadd float %tmp_6_10_0_1, %temp_1_10_0_1
  %temp_1_10_0_2 = fmul float %A_load_65, %B_load_3
  %tmp_6_10_0_3 = fadd float %tmp_6_10_0_2, %temp_1_10_0_2
  %p_addr204 = add i12 %p_addr103_cast1, 14
  %p_addr204_cast = sext i12 %p_addr204 to i32
  %tmp_514 = zext i32 %p_addr204_cast to i64
  %A_addr_70 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_514
  %A_load_70 = load float* %A_addr_70, align 4
  %temp_1_10_0_3 = fmul float %A_load_70, %B_load_4
  %tmp_5_s = fadd float %tmp_6_10_0_3, %temp_1_10_0_3
  %temp_10_1 = fmul float %A_load_51, %B_load_5
  %tmp_6_10_1 = fadd float %tmp_5_s, %temp_10_1
  %temp_1_10_1 = fmul float %A_load_56, %B_load_6
  %tmp_6_10_1_1 = fadd float %tmp_6_10_1, %temp_1_10_1
  %temp_1_10_1_1 = fmul float %A_load_61, %B_load_7
  %tmp_6_10_1_2 = fadd float %tmp_6_10_1_1, %temp_1_10_1_1
  %temp_1_10_1_2 = fmul float %A_load_66, %B_load_8
  %tmp_6_10_1_3 = fadd float %tmp_6_10_1_2, %temp_1_10_1_2
  %p_addr201 = add i12 %p_addr110_cast1, 14
  %p_addr201_cast = sext i12 %p_addr201 to i32
  %tmp_515 = zext i32 %p_addr201_cast to i64
  %A_addr_71 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_515
  %A_load_71 = load float* %A_addr_71, align 4
  %temp_1_10_1_3 = fmul float %A_load_71, %B_load_9
  %tmp_5_10_1 = fadd float %tmp_6_10_1_3, %temp_1_10_1_3
  %temp_10_2 = fmul float %A_load_52, %B_load_10
  %tmp_6_10_2 = fadd float %tmp_5_10_1, %temp_10_2
  %temp_1_10_2 = fmul float %A_load_57, %B_load_11
  %tmp_6_10_2_1 = fadd float %tmp_6_10_2, %temp_1_10_2
  %temp_1_10_2_1 = fmul float %A_load_62, %B_load_12
  %tmp_6_10_2_2 = fadd float %tmp_6_10_2_1, %temp_1_10_2_1
  %temp_1_10_2_2 = fmul float %A_load_67, %B_load_13
  %tmp_6_10_2_3 = fadd float %tmp_6_10_2_2, %temp_1_10_2_2
  %p_addr198 = add i12 %p_addr118_cast1, 14
  %p_addr198_cast = sext i12 %p_addr198 to i32
  %tmp_516 = zext i32 %p_addr198_cast to i64
  %A_addr_72 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_516
  %A_load_72 = load float* %A_addr_72, align 4
  %temp_1_10_2_3 = fmul float %A_load_72, %B_load_14
  %tmp_5_10_2 = fadd float %tmp_6_10_2_3, %temp_1_10_2_3
  %temp_10_3 = fmul float %A_load_53, %B_load_15
  %tmp_6_10_3 = fadd float %tmp_5_10_2, %temp_10_3
  %temp_1_10_3 = fmul float %A_load_58, %B_load_16
  %tmp_6_10_3_1 = fadd float %tmp_6_10_3, %temp_1_10_3
  %temp_1_10_3_1 = fmul float %A_load_63, %B_load_17
  %tmp_6_10_3_2 = fadd float %tmp_6_10_3_1, %temp_1_10_3_1
  %temp_1_10_3_2 = fmul float %A_load_68, %B_load_18
  %tmp_6_10_3_3 = fadd float %tmp_6_10_3_2, %temp_1_10_3_2
  %p_addr195 = add i12 %p_addr125_cast1, 14
  %p_addr195_cast = sext i12 %p_addr195 to i32
  %tmp_517 = zext i32 %p_addr195_cast to i64
  %A_addr_73 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_517
  %A_load_73 = load float* %A_addr_73, align 4
  %temp_1_10_3_3 = fmul float %A_load_73, %B_load_19
  %tmp_5_10_3 = fadd float %tmp_6_10_3_3, %temp_1_10_3_3
  %temp_10_4 = fmul float %A_load_54, %B_load_20
  %tmp_6_10_4 = fadd float %tmp_5_10_3, %temp_10_4
  %temp_1_10_4 = fmul float %A_load_59, %B_load_21
  %tmp_6_10_4_1 = fadd float %tmp_6_10_4, %temp_1_10_4
  %temp_1_10_4_1 = fmul float %A_load_64, %B_load_22
  %tmp_6_10_4_2 = fadd float %tmp_6_10_4_1, %temp_1_10_4_1
  %temp_1_10_4_2 = fmul float %A_load_69, %B_load_23
  %tmp_6_10_4_3 = fadd float %tmp_6_10_4_2, %temp_1_10_4_2
  %p_addr192 = add i12 %p_addr133_cast1, 14
  %p_addr192_cast = sext i12 %p_addr192 to i32
  %tmp_518 = zext i32 %p_addr192_cast to i64
  %A_addr_74 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_518
  %A_load_74 = load float* %A_addr_74, align 4
  %temp_1_10_4_3 = fmul float %A_load_74, %B_load_24
  %tmp_5_10_4 = fadd float %tmp_6_10_4_3, %temp_1_10_4_3
  store float %tmp_5_10_4, float* %conv_addr_10, align 4
  %p_addr217 = add i32 %p_addr101, 11
  %tmp_519 = zext i32 %p_addr217 to i64
  %conv_addr_11 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_519
  %temp_10 = fmul float %A_load_55, %B_load
  %tmp_6_10 = fadd float %temp_10, 0.000000e+00
  %temp_1_10 = fmul float %A_load_60, %B_load_1
  %tmp_6_11_0_1 = fadd float %tmp_6_10, %temp_1_10
  %temp_1_11_0_1 = fmul float %A_load_65, %B_load_2
  %tmp_6_11_0_2 = fadd float %tmp_6_11_0_1, %temp_1_11_0_1
  %temp_1_11_0_2 = fmul float %A_load_70, %B_load_3
  %tmp_6_11_0_3 = fadd float %tmp_6_11_0_2, %temp_1_11_0_2
  %p_addr189 = add i12 %p_addr103_cast1, 15
  %p_addr189_cast = sext i12 %p_addr189 to i32
  %tmp_520 = zext i32 %p_addr189_cast to i64
  %A_addr_75 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_520
  %A_load_75 = load float* %A_addr_75, align 4
  %temp_1_11_0_3 = fmul float %A_load_75, %B_load_4
  %tmp_5_10 = fadd float %tmp_6_11_0_3, %temp_1_11_0_3
  %temp_11_1 = fmul float %A_load_56, %B_load_5
  %tmp_6_11_1 = fadd float %tmp_5_10, %temp_11_1
  %temp_1_11_1 = fmul float %A_load_61, %B_load_6
  %tmp_6_11_1_1 = fadd float %tmp_6_11_1, %temp_1_11_1
  %temp_1_11_1_1 = fmul float %A_load_66, %B_load_7
  %tmp_6_11_1_2 = fadd float %tmp_6_11_1_1, %temp_1_11_1_1
  %temp_1_11_1_2 = fmul float %A_load_71, %B_load_8
  %tmp_6_11_1_3 = fadd float %tmp_6_11_1_2, %temp_1_11_1_2
  %p_addr186 = add i12 %p_addr110_cast1, 15
  %p_addr186_cast = sext i12 %p_addr186 to i32
  %tmp_521 = zext i32 %p_addr186_cast to i64
  %A_addr_76 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_521
  %A_load_76 = load float* %A_addr_76, align 4
  %temp_1_11_1_3 = fmul float %A_load_76, %B_load_9
  %tmp_5_11_1 = fadd float %tmp_6_11_1_3, %temp_1_11_1_3
  %temp_11_2 = fmul float %A_load_57, %B_load_10
  %tmp_6_11_2 = fadd float %tmp_5_11_1, %temp_11_2
  %temp_1_11_2 = fmul float %A_load_62, %B_load_11
  %tmp_6_11_2_1 = fadd float %tmp_6_11_2, %temp_1_11_2
  %temp_1_11_2_1 = fmul float %A_load_67, %B_load_12
  %tmp_6_11_2_2 = fadd float %tmp_6_11_2_1, %temp_1_11_2_1
  %temp_1_11_2_2 = fmul float %A_load_72, %B_load_13
  %tmp_6_11_2_3 = fadd float %tmp_6_11_2_2, %temp_1_11_2_2
  %p_addr183 = add i12 %p_addr118_cast1, 15
  %p_addr183_cast = sext i12 %p_addr183 to i32
  %tmp_522 = zext i32 %p_addr183_cast to i64
  %A_addr_77 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_522
  %A_load_77 = load float* %A_addr_77, align 4
  %temp_1_11_2_3 = fmul float %A_load_77, %B_load_14
  %tmp_5_11_2 = fadd float %tmp_6_11_2_3, %temp_1_11_2_3
  %temp_11_3 = fmul float %A_load_58, %B_load_15
  %tmp_6_11_3 = fadd float %tmp_5_11_2, %temp_11_3
  %temp_1_11_3 = fmul float %A_load_63, %B_load_16
  %tmp_6_11_3_1 = fadd float %tmp_6_11_3, %temp_1_11_3
  %temp_1_11_3_1 = fmul float %A_load_68, %B_load_17
  %tmp_6_11_3_2 = fadd float %tmp_6_11_3_1, %temp_1_11_3_1
  %temp_1_11_3_2 = fmul float %A_load_73, %B_load_18
  %tmp_6_11_3_3 = fadd float %tmp_6_11_3_2, %temp_1_11_3_2
  %p_addr180 = add i12 %p_addr125_cast1, 15
  %p_addr180_cast = sext i12 %p_addr180 to i32
  %tmp_523 = zext i32 %p_addr180_cast to i64
  %A_addr_78 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_523
  %A_load_78 = load float* %A_addr_78, align 4
  %temp_1_11_3_3 = fmul float %A_load_78, %B_load_19
  %tmp_5_11_3 = fadd float %tmp_6_11_3_3, %temp_1_11_3_3
  %temp_11_4 = fmul float %A_load_59, %B_load_20
  %tmp_6_11_4 = fadd float %tmp_5_11_3, %temp_11_4
  %temp_1_11_4 = fmul float %A_load_64, %B_load_21
  %tmp_6_11_4_1 = fadd float %tmp_6_11_4, %temp_1_11_4
  %temp_1_11_4_1 = fmul float %A_load_69, %B_load_22
  %tmp_6_11_4_2 = fadd float %tmp_6_11_4_1, %temp_1_11_4_1
  %temp_1_11_4_2 = fmul float %A_load_74, %B_load_23
  %tmp_6_11_4_3 = fadd float %tmp_6_11_4_2, %temp_1_11_4_2
  %p_addr177 = add i12 %p_addr133_cast1, 15
  %p_addr177_cast = sext i12 %p_addr177 to i32
  %tmp_524 = zext i32 %p_addr177_cast to i64
  %A_addr_79 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_524
  %A_load_79 = load float* %A_addr_79, align 4
  %temp_1_11_4_3 = fmul float %A_load_79, %B_load_24
  %tmp_5_11_4 = fadd float %tmp_6_11_4_3, %temp_1_11_4_3
  store float %tmp_5_11_4, float* %conv_addr_11, align 4
  %p_addr218 = add i32 %p_addr101, 12
  %tmp_525 = zext i32 %p_addr218 to i64
  %conv_addr_12 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_525
  %temp_11 = fmul float %A_load_60, %B_load
  %tmp_6_11 = fadd float %temp_11, 0.000000e+00
  %temp_1_11 = fmul float %A_load_65, %B_load_1
  %tmp_6_12_0_1 = fadd float %tmp_6_11, %temp_1_11
  %temp_1_12_0_1 = fmul float %A_load_70, %B_load_2
  %tmp_6_12_0_2 = fadd float %tmp_6_12_0_1, %temp_1_12_0_1
  %temp_1_12_0_2 = fmul float %A_load_75, %B_load_3
  %tmp_6_12_0_3 = fadd float %tmp_6_12_0_2, %temp_1_12_0_2
  %p_addr174 = add i12 %p_addr103_cast1, 16
  %p_addr174_cast = sext i12 %p_addr174 to i32
  %tmp_526 = zext i32 %p_addr174_cast to i64
  %A_addr_80 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_526
  %A_load_80 = load float* %A_addr_80, align 4
  %temp_1_12_0_3 = fmul float %A_load_80, %B_load_4
  %tmp_5_11 = fadd float %tmp_6_12_0_3, %temp_1_12_0_3
  %temp_12_1 = fmul float %A_load_61, %B_load_5
  %tmp_6_12_1 = fadd float %tmp_5_11, %temp_12_1
  %temp_1_12_1 = fmul float %A_load_66, %B_load_6
  %tmp_6_12_1_1 = fadd float %tmp_6_12_1, %temp_1_12_1
  %temp_1_12_1_1 = fmul float %A_load_71, %B_load_7
  %tmp_6_12_1_2 = fadd float %tmp_6_12_1_1, %temp_1_12_1_1
  %temp_1_12_1_2 = fmul float %A_load_76, %B_load_8
  %tmp_6_12_1_3 = fadd float %tmp_6_12_1_2, %temp_1_12_1_2
  %p_addr171 = add i12 %p_addr110_cast1, 16
  %p_addr171_cast = sext i12 %p_addr171 to i32
  %tmp_527 = zext i32 %p_addr171_cast to i64
  %A_addr_81 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_527
  %A_load_81 = load float* %A_addr_81, align 4
  %temp_1_12_1_3 = fmul float %A_load_81, %B_load_9
  %tmp_5_12_1 = fadd float %tmp_6_12_1_3, %temp_1_12_1_3
  %temp_12_2 = fmul float %A_load_62, %B_load_10
  %tmp_6_12_2 = fadd float %tmp_5_12_1, %temp_12_2
  %temp_1_12_2 = fmul float %A_load_67, %B_load_11
  %tmp_6_12_2_1 = fadd float %tmp_6_12_2, %temp_1_12_2
  %temp_1_12_2_1 = fmul float %A_load_72, %B_load_12
  %tmp_6_12_2_2 = fadd float %tmp_6_12_2_1, %temp_1_12_2_1
  %temp_1_12_2_2 = fmul float %A_load_77, %B_load_13
  %tmp_6_12_2_3 = fadd float %tmp_6_12_2_2, %temp_1_12_2_2
  %p_addr168 = add i12 %p_addr118_cast1, 16
  %p_addr168_cast = sext i12 %p_addr168 to i32
  %tmp_528 = zext i32 %p_addr168_cast to i64
  %A_addr_82 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_528
  %A_load_82 = load float* %A_addr_82, align 4
  %temp_1_12_2_3 = fmul float %A_load_82, %B_load_14
  %tmp_5_12_2 = fadd float %tmp_6_12_2_3, %temp_1_12_2_3
  %temp_12_3 = fmul float %A_load_63, %B_load_15
  %tmp_6_12_3 = fadd float %tmp_5_12_2, %temp_12_3
  %temp_1_12_3 = fmul float %A_load_68, %B_load_16
  %tmp_6_12_3_1 = fadd float %tmp_6_12_3, %temp_1_12_3
  %temp_1_12_3_1 = fmul float %A_load_73, %B_load_17
  %tmp_6_12_3_2 = fadd float %tmp_6_12_3_1, %temp_1_12_3_1
  %temp_1_12_3_2 = fmul float %A_load_78, %B_load_18
  %tmp_6_12_3_3 = fadd float %tmp_6_12_3_2, %temp_1_12_3_2
  %p_addr165 = add i12 %p_addr125_cast1, 16
  %p_addr165_cast = sext i12 %p_addr165 to i32
  %tmp_529 = zext i32 %p_addr165_cast to i64
  %A_addr_83 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_529
  %A_load_83 = load float* %A_addr_83, align 4
  %temp_1_12_3_3 = fmul float %A_load_83, %B_load_19
  %tmp_5_12_3 = fadd float %tmp_6_12_3_3, %temp_1_12_3_3
  %temp_12_4 = fmul float %A_load_64, %B_load_20
  %tmp_6_12_4 = fadd float %tmp_5_12_3, %temp_12_4
  %temp_1_12_4 = fmul float %A_load_69, %B_load_21
  %tmp_6_12_4_1 = fadd float %tmp_6_12_4, %temp_1_12_4
  %temp_1_12_4_1 = fmul float %A_load_74, %B_load_22
  %tmp_6_12_4_2 = fadd float %tmp_6_12_4_1, %temp_1_12_4_1
  %temp_1_12_4_2 = fmul float %A_load_79, %B_load_23
  %tmp_6_12_4_3 = fadd float %tmp_6_12_4_2, %temp_1_12_4_2
  %p_addr162 = add i12 %p_addr133_cast1, 16
  %p_addr162_cast = sext i12 %p_addr162 to i32
  %tmp_530 = zext i32 %p_addr162_cast to i64
  %A_addr_84 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_530
  %A_load_84 = load float* %A_addr_84, align 4
  %temp_1_12_4_3 = fmul float %A_load_84, %B_load_24
  %tmp_5_12_4 = fadd float %tmp_6_12_4_3, %temp_1_12_4_3
  store float %tmp_5_12_4, float* %conv_addr_12, align 4
  %p_addr219 = add i32 %p_addr101, 13
  %tmp_531 = zext i32 %p_addr219 to i64
  %conv_addr_13 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_531
  %temp_12 = fmul float %A_load_65, %B_load
  %tmp_6_12 = fadd float %temp_12, 0.000000e+00
  %temp_1_12 = fmul float %A_load_70, %B_load_1
  %tmp_6_13_0_1 = fadd float %tmp_6_12, %temp_1_12
  %temp_1_13_0_1 = fmul float %A_load_75, %B_load_2
  %tmp_6_13_0_2 = fadd float %tmp_6_13_0_1, %temp_1_13_0_1
  %temp_1_13_0_2 = fmul float %A_load_80, %B_load_3
  %tmp_6_13_0_3 = fadd float %tmp_6_13_0_2, %temp_1_13_0_2
  %p_addr159 = add i12 %p_addr103_cast1, 17
  %p_addr159_cast = sext i12 %p_addr159 to i32
  %tmp_532 = zext i32 %p_addr159_cast to i64
  %A_addr_85 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_532
  %A_load_85 = load float* %A_addr_85, align 4
  %temp_1_13_0_3 = fmul float %A_load_85, %B_load_4
  %tmp_5_12 = fadd float %tmp_6_13_0_3, %temp_1_13_0_3
  %temp_13_1 = fmul float %A_load_66, %B_load_5
  %tmp_6_13_1 = fadd float %tmp_5_12, %temp_13_1
  %temp_1_13_1 = fmul float %A_load_71, %B_load_6
  %tmp_6_13_1_1 = fadd float %tmp_6_13_1, %temp_1_13_1
  %temp_1_13_1_1 = fmul float %A_load_76, %B_load_7
  %tmp_6_13_1_2 = fadd float %tmp_6_13_1_1, %temp_1_13_1_1
  %temp_1_13_1_2 = fmul float %A_load_81, %B_load_8
  %tmp_6_13_1_3 = fadd float %tmp_6_13_1_2, %temp_1_13_1_2
  %p_addr156 = add i12 %p_addr110_cast1, 17
  %p_addr156_cast = sext i12 %p_addr156 to i32
  %tmp_533 = zext i32 %p_addr156_cast to i64
  %A_addr_86 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_533
  %A_load_86 = load float* %A_addr_86, align 4
  %temp_1_13_1_3 = fmul float %A_load_86, %B_load_9
  %tmp_5_13_1 = fadd float %tmp_6_13_1_3, %temp_1_13_1_3
  %temp_13_2 = fmul float %A_load_67, %B_load_10
  %tmp_6_13_2 = fadd float %tmp_5_13_1, %temp_13_2
  %temp_1_13_2 = fmul float %A_load_72, %B_load_11
  %tmp_6_13_2_1 = fadd float %tmp_6_13_2, %temp_1_13_2
  %temp_1_13_2_1 = fmul float %A_load_77, %B_load_12
  %tmp_6_13_2_2 = fadd float %tmp_6_13_2_1, %temp_1_13_2_1
  %temp_1_13_2_2 = fmul float %A_load_82, %B_load_13
  %tmp_6_13_2_3 = fadd float %tmp_6_13_2_2, %temp_1_13_2_2
  %p_addr153 = add i12 %p_addr118_cast1, 17
  %p_addr153_cast = sext i12 %p_addr153 to i32
  %tmp_534 = zext i32 %p_addr153_cast to i64
  %A_addr_87 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_534
  %A_load_87 = load float* %A_addr_87, align 4
  %temp_1_13_2_3 = fmul float %A_load_87, %B_load_14
  %tmp_5_13_2 = fadd float %tmp_6_13_2_3, %temp_1_13_2_3
  %temp_13_3 = fmul float %A_load_68, %B_load_15
  %tmp_6_13_3 = fadd float %tmp_5_13_2, %temp_13_3
  %temp_1_13_3 = fmul float %A_load_73, %B_load_16
  %tmp_6_13_3_1 = fadd float %tmp_6_13_3, %temp_1_13_3
  %temp_1_13_3_1 = fmul float %A_load_78, %B_load_17
  %tmp_6_13_3_2 = fadd float %tmp_6_13_3_1, %temp_1_13_3_1
  %temp_1_13_3_2 = fmul float %A_load_83, %B_load_18
  %tmp_6_13_3_3 = fadd float %tmp_6_13_3_2, %temp_1_13_3_2
  %p_addr150 = add i12 %p_addr125_cast1, 17
  %p_addr150_cast = sext i12 %p_addr150 to i32
  %tmp_535 = zext i32 %p_addr150_cast to i64
  %A_addr_88 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_535
  %A_load_88 = load float* %A_addr_88, align 4
  %temp_1_13_3_3 = fmul float %A_load_88, %B_load_19
  %tmp_5_13_3 = fadd float %tmp_6_13_3_3, %temp_1_13_3_3
  %temp_13_4 = fmul float %A_load_69, %B_load_20
  %tmp_6_13_4 = fadd float %tmp_5_13_3, %temp_13_4
  %temp_1_13_4 = fmul float %A_load_74, %B_load_21
  %tmp_6_13_4_1 = fadd float %tmp_6_13_4, %temp_1_13_4
  %temp_1_13_4_1 = fmul float %A_load_79, %B_load_22
  %tmp_6_13_4_2 = fadd float %tmp_6_13_4_1, %temp_1_13_4_1
  %temp_1_13_4_2 = fmul float %A_load_84, %B_load_23
  %tmp_6_13_4_3 = fadd float %tmp_6_13_4_2, %temp_1_13_4_2
  %p_addr147 = add i12 %p_addr133_cast1, 17
  %p_addr147_cast = sext i12 %p_addr147 to i32
  %tmp_536 = zext i32 %p_addr147_cast to i64
  %A_addr_89 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_536
  %A_load_89 = load float* %A_addr_89, align 4
  %temp_1_13_4_3 = fmul float %A_load_89, %B_load_24
  %tmp_5_13_4 = fadd float %tmp_6_13_4_3, %temp_1_13_4_3
  store float %tmp_5_13_4, float* %conv_addr_13, align 4
  %p_addr220 = add i32 %p_addr101, 14
  %tmp_537 = zext i32 %p_addr220 to i64
  %conv_addr_14 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_537
  %temp_13 = fmul float %A_load_70, %B_load
  %tmp_6_13 = fadd float %temp_13, 0.000000e+00
  %temp_1_13 = fmul float %A_load_75, %B_load_1
  %tmp_6_14_0_1 = fadd float %tmp_6_13, %temp_1_13
  %temp_1_14_0_1 = fmul float %A_load_80, %B_load_2
  %tmp_6_14_0_2 = fadd float %tmp_6_14_0_1, %temp_1_14_0_1
  %temp_1_14_0_2 = fmul float %A_load_85, %B_load_3
  %tmp_6_14_0_3 = fadd float %tmp_6_14_0_2, %temp_1_14_0_2
  %p_addr144 = add i12 %p_addr103_cast1, 18
  %p_addr144_cast = sext i12 %p_addr144 to i32
  %tmp_538 = zext i32 %p_addr144_cast to i64
  %A_addr_90 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_538
  %A_load_90 = load float* %A_addr_90, align 4
  %temp_1_14_0_3 = fmul float %A_load_90, %B_load_4
  %tmp_5_13 = fadd float %tmp_6_14_0_3, %temp_1_14_0_3
  %temp_14_1 = fmul float %A_load_71, %B_load_5
  %tmp_6_14_1 = fadd float %tmp_5_13, %temp_14_1
  %temp_1_14_1 = fmul float %A_load_76, %B_load_6
  %tmp_6_14_1_1 = fadd float %tmp_6_14_1, %temp_1_14_1
  %temp_1_14_1_1 = fmul float %A_load_81, %B_load_7
  %tmp_6_14_1_2 = fadd float %tmp_6_14_1_1, %temp_1_14_1_1
  %temp_1_14_1_2 = fmul float %A_load_86, %B_load_8
  %tmp_6_14_1_3 = fadd float %tmp_6_14_1_2, %temp_1_14_1_2
  %p_addr141 = add i12 %p_addr110_cast1, 18
  %p_addr141_cast = sext i12 %p_addr141 to i32
  %tmp_539 = zext i32 %p_addr141_cast to i64
  %A_addr_91 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_539
  %A_load_91 = load float* %A_addr_91, align 4
  %temp_1_14_1_3 = fmul float %A_load_91, %B_load_9
  %tmp_5_14_1 = fadd float %tmp_6_14_1_3, %temp_1_14_1_3
  %temp_14_2 = fmul float %A_load_72, %B_load_10
  %tmp_6_14_2 = fadd float %tmp_5_14_1, %temp_14_2
  %temp_1_14_2 = fmul float %A_load_77, %B_load_11
  %tmp_6_14_2_1 = fadd float %tmp_6_14_2, %temp_1_14_2
  %temp_1_14_2_1 = fmul float %A_load_82, %B_load_12
  %tmp_6_14_2_2 = fadd float %tmp_6_14_2_1, %temp_1_14_2_1
  %temp_1_14_2_2 = fmul float %A_load_87, %B_load_13
  %tmp_6_14_2_3 = fadd float %tmp_6_14_2_2, %temp_1_14_2_2
  %p_addr138 = add i12 %p_addr118_cast1, 18
  %p_addr138_cast = sext i12 %p_addr138 to i32
  %tmp_540 = zext i32 %p_addr138_cast to i64
  %A_addr_92 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_540
  %A_load_92 = load float* %A_addr_92, align 4
  %temp_1_14_2_3 = fmul float %A_load_92, %B_load_14
  %tmp_5_14_2 = fadd float %tmp_6_14_2_3, %temp_1_14_2_3
  %temp_14_3 = fmul float %A_load_73, %B_load_15
  %tmp_6_14_3 = fadd float %tmp_5_14_2, %temp_14_3
  %temp_1_14_3 = fmul float %A_load_78, %B_load_16
  %tmp_6_14_3_1 = fadd float %tmp_6_14_3, %temp_1_14_3
  %temp_1_14_3_1 = fmul float %A_load_83, %B_load_17
  %tmp_6_14_3_2 = fadd float %tmp_6_14_3_1, %temp_1_14_3_1
  %temp_1_14_3_2 = fmul float %A_load_88, %B_load_18
  %tmp_6_14_3_3 = fadd float %tmp_6_14_3_2, %temp_1_14_3_2
  %p_addr135 = add i12 %p_addr125_cast1, 18
  %p_addr135_cast = sext i12 %p_addr135 to i32
  %tmp_541 = zext i32 %p_addr135_cast to i64
  %A_addr_93 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_541
  %A_load_93 = load float* %A_addr_93, align 4
  %temp_1_14_3_3 = fmul float %A_load_93, %B_load_19
  %tmp_5_14_3 = fadd float %tmp_6_14_3_3, %temp_1_14_3_3
  %temp_14_4 = fmul float %A_load_74, %B_load_20
  %tmp_6_14_4 = fadd float %tmp_5_14_3, %temp_14_4
  %temp_1_14_4 = fmul float %A_load_79, %B_load_21
  %tmp_6_14_4_1 = fadd float %tmp_6_14_4, %temp_1_14_4
  %temp_1_14_4_1 = fmul float %A_load_84, %B_load_22
  %tmp_6_14_4_2 = fadd float %tmp_6_14_4_1, %temp_1_14_4_1
  %temp_1_14_4_2 = fmul float %A_load_89, %B_load_23
  %tmp_6_14_4_3 = fadd float %tmp_6_14_4_2, %temp_1_14_4_2
  %p_addr132 = add i12 %p_addr133_cast1, 18
  %p_addr132_cast = sext i12 %p_addr132 to i32
  %tmp_542 = zext i32 %p_addr132_cast to i64
  %A_addr_94 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_542
  %A_load_94 = load float* %A_addr_94, align 4
  %temp_1_14_4_3 = fmul float %A_load_94, %B_load_24
  %tmp_5_14_4 = fadd float %tmp_6_14_4_3, %temp_1_14_4_3
  store float %tmp_5_14_4, float* %conv_addr_14, align 4
  %p_addr221 = add i32 %p_addr101, 15
  %tmp_543 = zext i32 %p_addr221 to i64
  %conv_addr_15 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_543
  %temp_14 = fmul float %A_load_75, %B_load
  %tmp_6_14 = fadd float %temp_14, 0.000000e+00
  %temp_1_14 = fmul float %A_load_80, %B_load_1
  %tmp_6_15_0_1 = fadd float %tmp_6_14, %temp_1_14
  %temp_1_15_0_1 = fmul float %A_load_85, %B_load_2
  %tmp_6_15_0_2 = fadd float %tmp_6_15_0_1, %temp_1_15_0_1
  %temp_1_15_0_2 = fmul float %A_load_90, %B_load_3
  %tmp_6_15_0_3 = fadd float %tmp_6_15_0_2, %temp_1_15_0_2
  %p_addr129 = add i12 %p_addr103_cast1, 19
  %p_addr129_cast = sext i12 %p_addr129 to i32
  %tmp_544 = zext i32 %p_addr129_cast to i64
  %A_addr_95 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_544
  %A_load_95 = load float* %A_addr_95, align 4
  %temp_1_15_0_3 = fmul float %A_load_95, %B_load_4
  %tmp_5_14 = fadd float %tmp_6_15_0_3, %temp_1_15_0_3
  %temp_15_1 = fmul float %A_load_76, %B_load_5
  %tmp_6_15_1 = fadd float %tmp_5_14, %temp_15_1
  %temp_1_15_1 = fmul float %A_load_81, %B_load_6
  %tmp_6_15_1_1 = fadd float %tmp_6_15_1, %temp_1_15_1
  %temp_1_15_1_1 = fmul float %A_load_86, %B_load_7
  %tmp_6_15_1_2 = fadd float %tmp_6_15_1_1, %temp_1_15_1_1
  %temp_1_15_1_2 = fmul float %A_load_91, %B_load_8
  %tmp_6_15_1_3 = fadd float %tmp_6_15_1_2, %temp_1_15_1_2
  %p_addr126 = add i12 %p_addr110_cast1, 19
  %p_addr126_cast = sext i12 %p_addr126 to i32
  %tmp_545 = zext i32 %p_addr126_cast to i64
  %A_addr_96 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_545
  %A_load_96 = load float* %A_addr_96, align 4
  %temp_1_15_1_3 = fmul float %A_load_96, %B_load_9
  %tmp_5_15_1 = fadd float %tmp_6_15_1_3, %temp_1_15_1_3
  %temp_15_2 = fmul float %A_load_77, %B_load_10
  %tmp_6_15_2 = fadd float %tmp_5_15_1, %temp_15_2
  %temp_1_15_2 = fmul float %A_load_82, %B_load_11
  %tmp_6_15_2_1 = fadd float %tmp_6_15_2, %temp_1_15_2
  %temp_1_15_2_1 = fmul float %A_load_87, %B_load_12
  %tmp_6_15_2_2 = fadd float %tmp_6_15_2_1, %temp_1_15_2_1
  %temp_1_15_2_2 = fmul float %A_load_92, %B_load_13
  %tmp_6_15_2_3 = fadd float %tmp_6_15_2_2, %temp_1_15_2_2
  %p_addr123 = add i12 %p_addr118_cast1, 19
  %p_addr123_cast = sext i12 %p_addr123 to i32
  %tmp_546 = zext i32 %p_addr123_cast to i64
  %A_addr_97 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_546
  %A_load_97 = load float* %A_addr_97, align 4
  %temp_1_15_2_3 = fmul float %A_load_97, %B_load_14
  %tmp_5_15_2 = fadd float %tmp_6_15_2_3, %temp_1_15_2_3
  %temp_15_3 = fmul float %A_load_78, %B_load_15
  %tmp_6_15_3 = fadd float %tmp_5_15_2, %temp_15_3
  %temp_1_15_3 = fmul float %A_load_83, %B_load_16
  %tmp_6_15_3_1 = fadd float %tmp_6_15_3, %temp_1_15_3
  %temp_1_15_3_1 = fmul float %A_load_88, %B_load_17
  %tmp_6_15_3_2 = fadd float %tmp_6_15_3_1, %temp_1_15_3_1
  %temp_1_15_3_2 = fmul float %A_load_93, %B_load_18
  %tmp_6_15_3_3 = fadd float %tmp_6_15_3_2, %temp_1_15_3_2
  %p_addr120 = add i12 %p_addr125_cast1, 19
  %p_addr120_cast = sext i12 %p_addr120 to i32
  %tmp_547 = zext i32 %p_addr120_cast to i64
  %A_addr_98 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_547
  %A_load_98 = load float* %A_addr_98, align 4
  %temp_1_15_3_3 = fmul float %A_load_98, %B_load_19
  %tmp_5_15_3 = fadd float %tmp_6_15_3_3, %temp_1_15_3_3
  %temp_15_4 = fmul float %A_load_79, %B_load_20
  %tmp_6_15_4 = fadd float %tmp_5_15_3, %temp_15_4
  %temp_1_15_4 = fmul float %A_load_84, %B_load_21
  %tmp_6_15_4_1 = fadd float %tmp_6_15_4, %temp_1_15_4
  %temp_1_15_4_1 = fmul float %A_load_89, %B_load_22
  %tmp_6_15_4_2 = fadd float %tmp_6_15_4_1, %temp_1_15_4_1
  %temp_1_15_4_2 = fmul float %A_load_94, %B_load_23
  %tmp_6_15_4_3 = fadd float %tmp_6_15_4_2, %temp_1_15_4_2
  %p_addr117 = add i12 %p_addr133_cast1, 19
  %p_addr117_cast = sext i12 %p_addr117 to i32
  %tmp_548 = zext i32 %p_addr117_cast to i64
  %A_addr_99 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_548
  %A_load_99 = load float* %A_addr_99, align 4
  %temp_1_15_4_3 = fmul float %A_load_99, %B_load_24
  %tmp_5_15_4 = fadd float %tmp_6_15_4_3, %temp_1_15_4_3
  store float %tmp_5_15_4, float* %conv_addr_15, align 4
  %p_addr222 = add i32 %p_addr101, 16
  %tmp_549 = zext i32 %p_addr222 to i64
  %conv_addr_16 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_549
  %temp_15 = fmul float %A_load_80, %B_load
  %tmp_6_15 = fadd float %temp_15, 0.000000e+00
  %temp_1_15 = fmul float %A_load_85, %B_load_1
  %tmp_6_16_0_1 = fadd float %tmp_6_15, %temp_1_15
  %temp_1_16_0_1 = fmul float %A_load_90, %B_load_2
  %tmp_6_16_0_2 = fadd float %tmp_6_16_0_1, %temp_1_16_0_1
  %temp_1_16_0_2 = fmul float %A_load_95, %B_load_3
  %tmp_6_16_0_3 = fadd float %tmp_6_16_0_2, %temp_1_16_0_2
  %p_addr114 = add i12 %p_addr103_cast1, 20
  %p_addr114_cast = sext i12 %p_addr114 to i32
  %tmp_550 = zext i32 %p_addr114_cast to i64
  %A_addr_100 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_550
  %A_load_100 = load float* %A_addr_100, align 4
  %temp_1_16_0_3 = fmul float %A_load_100, %B_load_4
  %tmp_5_15 = fadd float %tmp_6_16_0_3, %temp_1_16_0_3
  %temp_16_1 = fmul float %A_load_81, %B_load_5
  %tmp_6_16_1 = fadd float %tmp_5_15, %temp_16_1
  %temp_1_16_1 = fmul float %A_load_86, %B_load_6
  %tmp_6_16_1_1 = fadd float %tmp_6_16_1, %temp_1_16_1
  %temp_1_16_1_1 = fmul float %A_load_91, %B_load_7
  %tmp_6_16_1_2 = fadd float %tmp_6_16_1_1, %temp_1_16_1_1
  %temp_1_16_1_2 = fmul float %A_load_96, %B_load_8
  %tmp_6_16_1_3 = fadd float %tmp_6_16_1_2, %temp_1_16_1_2
  %p_addr111 = add i12 %p_addr110_cast1, 20
  %p_addr111_cast = sext i12 %p_addr111 to i32
  %tmp_551 = zext i32 %p_addr111_cast to i64
  %A_addr_101 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_551
  %A_load_101 = load float* %A_addr_101, align 4
  %temp_1_16_1_3 = fmul float %A_load_101, %B_load_9
  %tmp_5_16_1 = fadd float %tmp_6_16_1_3, %temp_1_16_1_3
  %temp_16_2 = fmul float %A_load_82, %B_load_10
  %tmp_6_16_2 = fadd float %tmp_5_16_1, %temp_16_2
  %temp_1_16_2 = fmul float %A_load_87, %B_load_11
  %tmp_6_16_2_1 = fadd float %tmp_6_16_2, %temp_1_16_2
  %temp_1_16_2_1 = fmul float %A_load_92, %B_load_12
  %tmp_6_16_2_2 = fadd float %tmp_6_16_2_1, %temp_1_16_2_1
  %temp_1_16_2_2 = fmul float %A_load_97, %B_load_13
  %tmp_6_16_2_3 = fadd float %tmp_6_16_2_2, %temp_1_16_2_2
  %p_addr108 = add i12 %p_addr118_cast1, 20
  %p_addr108_cast = sext i12 %p_addr108 to i32
  %tmp_552 = zext i32 %p_addr108_cast to i64
  %A_addr_102 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_552
  %A_load_102 = load float* %A_addr_102, align 4
  %temp_1_16_2_3 = fmul float %A_load_102, %B_load_14
  %tmp_5_16_2 = fadd float %tmp_6_16_2_3, %temp_1_16_2_3
  %temp_16_3 = fmul float %A_load_83, %B_load_15
  %tmp_6_16_3 = fadd float %tmp_5_16_2, %temp_16_3
  %temp_1_16_3 = fmul float %A_load_88, %B_load_16
  %tmp_6_16_3_1 = fadd float %tmp_6_16_3, %temp_1_16_3
  %temp_1_16_3_1 = fmul float %A_load_93, %B_load_17
  %tmp_6_16_3_2 = fadd float %tmp_6_16_3_1, %temp_1_16_3_1
  %temp_1_16_3_2 = fmul float %A_load_98, %B_load_18
  %tmp_6_16_3_3 = fadd float %tmp_6_16_3_2, %temp_1_16_3_2
  %p_addr105 = add i12 %p_addr125_cast1, 20
  %p_addr105_cast = sext i12 %p_addr105 to i32
  %tmp_553 = zext i32 %p_addr105_cast to i64
  %A_addr_103 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_553
  %A_load_103 = load float* %A_addr_103, align 4
  %temp_1_16_3_3 = fmul float %A_load_103, %B_load_19
  %tmp_5_16_3 = fadd float %tmp_6_16_3_3, %temp_1_16_3_3
  %temp_16_4 = fmul float %A_load_84, %B_load_20
  %tmp_6_16_4 = fadd float %tmp_5_16_3, %temp_16_4
  %temp_1_16_4 = fmul float %A_load_89, %B_load_21
  %tmp_6_16_4_1 = fadd float %tmp_6_16_4, %temp_1_16_4
  %temp_1_16_4_1 = fmul float %A_load_94, %B_load_22
  %tmp_6_16_4_2 = fadd float %tmp_6_16_4_1, %temp_1_16_4_1
  %temp_1_16_4_2 = fmul float %A_load_99, %B_load_23
  %tmp_6_16_4_3 = fadd float %tmp_6_16_4_2, %temp_1_16_4_2
  %p_addr102 = add i12 %p_addr133_cast1, 20
  %p_addr102_cast = sext i12 %p_addr102 to i32
  %tmp_554 = zext i32 %p_addr102_cast to i64
  %A_addr_104 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_554
  %A_load_104 = load float* %A_addr_104, align 4
  %temp_1_16_4_3 = fmul float %A_load_104, %B_load_24
  %tmp_5_16_4 = fadd float %tmp_6_16_4_3, %temp_1_16_4_3
  store float %tmp_5_16_4, float* %conv_addr_16, align 4
  %p_addr223 = add i32 %p_addr101, 17
  %tmp_555 = zext i32 %p_addr223 to i64
  %conv_addr_17 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_555
  %temp_16 = fmul float %A_load_85, %B_load
  %tmp_6_16 = fadd float %temp_16, 0.000000e+00
  %temp_1_16 = fmul float %A_load_90, %B_load_1
  %tmp_6_17_0_1 = fadd float %tmp_6_16, %temp_1_16
  %temp_1_17_0_1 = fmul float %A_load_95, %B_load_2
  %tmp_6_17_0_2 = fadd float %tmp_6_17_0_1, %temp_1_17_0_1
  %temp_1_17_0_2 = fmul float %A_load_100, %B_load_3
  %tmp_6_17_0_3 = fadd float %tmp_6_17_0_2, %temp_1_17_0_2
  %p_addr99 = add i12 %p_addr103_cast1, 21
  %p_addr99_cast = sext i12 %p_addr99 to i32
  %tmp_556 = zext i32 %p_addr99_cast to i64
  %A_addr_105 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_556
  %A_load_105 = load float* %A_addr_105, align 4
  %temp_1_17_0_3 = fmul float %A_load_105, %B_load_4
  %tmp_5_16 = fadd float %tmp_6_17_0_3, %temp_1_17_0_3
  %temp_17_1 = fmul float %A_load_86, %B_load_5
  %tmp_6_17_1 = fadd float %tmp_5_16, %temp_17_1
  %temp_1_17_1 = fmul float %A_load_91, %B_load_6
  %tmp_6_17_1_1 = fadd float %tmp_6_17_1, %temp_1_17_1
  %temp_1_17_1_1 = fmul float %A_load_96, %B_load_7
  %tmp_6_17_1_2 = fadd float %tmp_6_17_1_1, %temp_1_17_1_1
  %temp_1_17_1_2 = fmul float %A_load_101, %B_load_8
  %tmp_6_17_1_3 = fadd float %tmp_6_17_1_2, %temp_1_17_1_2
  %p_addr96 = add i12 %p_addr110_cast1, 21
  %p_addr96_cast = sext i12 %p_addr96 to i32
  %tmp_557 = zext i32 %p_addr96_cast to i64
  %A_addr_106 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_557
  %A_load_106 = load float* %A_addr_106, align 4
  %temp_1_17_1_3 = fmul float %A_load_106, %B_load_9
  %tmp_5_17_1 = fadd float %tmp_6_17_1_3, %temp_1_17_1_3
  %temp_17_2 = fmul float %A_load_87, %B_load_10
  %tmp_6_17_2 = fadd float %tmp_5_17_1, %temp_17_2
  %temp_1_17_2 = fmul float %A_load_92, %B_load_11
  %tmp_6_17_2_1 = fadd float %tmp_6_17_2, %temp_1_17_2
  %temp_1_17_2_1 = fmul float %A_load_97, %B_load_12
  %tmp_6_17_2_2 = fadd float %tmp_6_17_2_1, %temp_1_17_2_1
  %temp_1_17_2_2 = fmul float %A_load_102, %B_load_13
  %tmp_6_17_2_3 = fadd float %tmp_6_17_2_2, %temp_1_17_2_2
  %p_addr93 = add i12 %p_addr118_cast1, 21
  %p_addr93_cast = sext i12 %p_addr93 to i32
  %tmp_558 = zext i32 %p_addr93_cast to i64
  %A_addr_107 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_558
  %A_load_107 = load float* %A_addr_107, align 4
  %temp_1_17_2_3 = fmul float %A_load_107, %B_load_14
  %tmp_5_17_2 = fadd float %tmp_6_17_2_3, %temp_1_17_2_3
  %temp_17_3 = fmul float %A_load_88, %B_load_15
  %tmp_6_17_3 = fadd float %tmp_5_17_2, %temp_17_3
  %temp_1_17_3 = fmul float %A_load_93, %B_load_16
  %tmp_6_17_3_1 = fadd float %tmp_6_17_3, %temp_1_17_3
  %temp_1_17_3_1 = fmul float %A_load_98, %B_load_17
  %tmp_6_17_3_2 = fadd float %tmp_6_17_3_1, %temp_1_17_3_1
  %temp_1_17_3_2 = fmul float %A_load_103, %B_load_18
  %tmp_6_17_3_3 = fadd float %tmp_6_17_3_2, %temp_1_17_3_2
  %p_addr90 = add i12 %p_addr125_cast1, 21
  %p_addr90_cast = sext i12 %p_addr90 to i32
  %tmp_559 = zext i32 %p_addr90_cast to i64
  %A_addr_108 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_559
  %A_load_108 = load float* %A_addr_108, align 4
  %temp_1_17_3_3 = fmul float %A_load_108, %B_load_19
  %tmp_5_17_3 = fadd float %tmp_6_17_3_3, %temp_1_17_3_3
  %temp_17_4 = fmul float %A_load_89, %B_load_20
  %tmp_6_17_4 = fadd float %tmp_5_17_3, %temp_17_4
  %temp_1_17_4 = fmul float %A_load_94, %B_load_21
  %tmp_6_17_4_1 = fadd float %tmp_6_17_4, %temp_1_17_4
  %temp_1_17_4_1 = fmul float %A_load_99, %B_load_22
  %tmp_6_17_4_2 = fadd float %tmp_6_17_4_1, %temp_1_17_4_1
  %temp_1_17_4_2 = fmul float %A_load_104, %B_load_23
  %tmp_6_17_4_3 = fadd float %tmp_6_17_4_2, %temp_1_17_4_2
  %p_addr87 = add i12 %p_addr133_cast1, 21
  %p_addr87_cast = sext i12 %p_addr87 to i32
  %tmp_560 = zext i32 %p_addr87_cast to i64
  %A_addr_109 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_560
  %A_load_109 = load float* %A_addr_109, align 4
  %temp_1_17_4_3 = fmul float %A_load_109, %B_load_24
  %tmp_5_17_4 = fadd float %tmp_6_17_4_3, %temp_1_17_4_3
  store float %tmp_5_17_4, float* %conv_addr_17, align 4
  %p_addr224 = add i32 %p_addr101, 18
  %tmp_561 = zext i32 %p_addr224 to i64
  %conv_addr_18 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_561
  %temp_17 = fmul float %A_load_90, %B_load
  %tmp_6_17 = fadd float %temp_17, 0.000000e+00
  %temp_1_17 = fmul float %A_load_95, %B_load_1
  %tmp_6_18_0_1 = fadd float %tmp_6_17, %temp_1_17
  %temp_1_18_0_1 = fmul float %A_load_100, %B_load_2
  %tmp_6_18_0_2 = fadd float %tmp_6_18_0_1, %temp_1_18_0_1
  %temp_1_18_0_2 = fmul float %A_load_105, %B_load_3
  %tmp_6_18_0_3 = fadd float %tmp_6_18_0_2, %temp_1_18_0_2
  %p_addr84 = add i12 %p_addr103_cast1, 22
  %p_addr84_cast = sext i12 %p_addr84 to i32
  %tmp_562 = zext i32 %p_addr84_cast to i64
  %A_addr_110 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_562
  %A_load_110 = load float* %A_addr_110, align 4
  %temp_1_18_0_3 = fmul float %A_load_110, %B_load_4
  %tmp_5_17 = fadd float %tmp_6_18_0_3, %temp_1_18_0_3
  %temp_18_1 = fmul float %A_load_91, %B_load_5
  %tmp_6_18_1 = fadd float %tmp_5_17, %temp_18_1
  %temp_1_18_1 = fmul float %A_load_96, %B_load_6
  %tmp_6_18_1_1 = fadd float %tmp_6_18_1, %temp_1_18_1
  %temp_1_18_1_1 = fmul float %A_load_101, %B_load_7
  %tmp_6_18_1_2 = fadd float %tmp_6_18_1_1, %temp_1_18_1_1
  %temp_1_18_1_2 = fmul float %A_load_106, %B_load_8
  %tmp_6_18_1_3 = fadd float %tmp_6_18_1_2, %temp_1_18_1_2
  %p_addr81 = add i12 %p_addr110_cast1, 22
  %p_addr81_cast = sext i12 %p_addr81 to i32
  %tmp_563 = zext i32 %p_addr81_cast to i64
  %A_addr_111 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_563
  %A_load_111 = load float* %A_addr_111, align 4
  %temp_1_18_1_3 = fmul float %A_load_111, %B_load_9
  %tmp_5_18_1 = fadd float %tmp_6_18_1_3, %temp_1_18_1_3
  %temp_18_2 = fmul float %A_load_92, %B_load_10
  %tmp_6_18_2 = fadd float %tmp_5_18_1, %temp_18_2
  %temp_1_18_2 = fmul float %A_load_97, %B_load_11
  %tmp_6_18_2_1 = fadd float %tmp_6_18_2, %temp_1_18_2
  %temp_1_18_2_1 = fmul float %A_load_102, %B_load_12
  %tmp_6_18_2_2 = fadd float %tmp_6_18_2_1, %temp_1_18_2_1
  %temp_1_18_2_2 = fmul float %A_load_107, %B_load_13
  %tmp_6_18_2_3 = fadd float %tmp_6_18_2_2, %temp_1_18_2_2
  %p_addr78 = add i12 %p_addr118_cast1, 22
  %p_addr78_cast = sext i12 %p_addr78 to i32
  %tmp_564 = zext i32 %p_addr78_cast to i64
  %A_addr_112 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_564
  %A_load_112 = load float* %A_addr_112, align 4
  %temp_1_18_2_3 = fmul float %A_load_112, %B_load_14
  %tmp_5_18_2 = fadd float %tmp_6_18_2_3, %temp_1_18_2_3
  %temp_18_3 = fmul float %A_load_93, %B_load_15
  %tmp_6_18_3 = fadd float %tmp_5_18_2, %temp_18_3
  %temp_1_18_3 = fmul float %A_load_98, %B_load_16
  %tmp_6_18_3_1 = fadd float %tmp_6_18_3, %temp_1_18_3
  %temp_1_18_3_1 = fmul float %A_load_103, %B_load_17
  %tmp_6_18_3_2 = fadd float %tmp_6_18_3_1, %temp_1_18_3_1
  %temp_1_18_3_2 = fmul float %A_load_108, %B_load_18
  %tmp_6_18_3_3 = fadd float %tmp_6_18_3_2, %temp_1_18_3_2
  %p_addr75 = add i12 %p_addr125_cast1, 22
  %p_addr75_cast = sext i12 %p_addr75 to i32
  %tmp_565 = zext i32 %p_addr75_cast to i64
  %A_addr_113 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_565
  %A_load_113 = load float* %A_addr_113, align 4
  %temp_1_18_3_3 = fmul float %A_load_113, %B_load_19
  %tmp_5_18_3 = fadd float %tmp_6_18_3_3, %temp_1_18_3_3
  %temp_18_4 = fmul float %A_load_94, %B_load_20
  %tmp_6_18_4 = fadd float %tmp_5_18_3, %temp_18_4
  %temp_1_18_4 = fmul float %A_load_99, %B_load_21
  %tmp_6_18_4_1 = fadd float %tmp_6_18_4, %temp_1_18_4
  %temp_1_18_4_1 = fmul float %A_load_104, %B_load_22
  %tmp_6_18_4_2 = fadd float %tmp_6_18_4_1, %temp_1_18_4_1
  %temp_1_18_4_2 = fmul float %A_load_109, %B_load_23
  %tmp_6_18_4_3 = fadd float %tmp_6_18_4_2, %temp_1_18_4_2
  %p_addr72 = add i12 %p_addr133_cast1, 22
  %p_addr72_cast = sext i12 %p_addr72 to i32
  %tmp_566 = zext i32 %p_addr72_cast to i64
  %A_addr_114 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_566
  %A_load_114 = load float* %A_addr_114, align 4
  %temp_1_18_4_3 = fmul float %A_load_114, %B_load_24
  %tmp_5_18_4 = fadd float %tmp_6_18_4_3, %temp_1_18_4_3
  store float %tmp_5_18_4, float* %conv_addr_18, align 4
  %p_addr225 = add i32 %p_addr101, 19
  %tmp_567 = zext i32 %p_addr225 to i64
  %conv_addr_19 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_567
  %temp_18 = fmul float %A_load_95, %B_load
  %tmp_6_18 = fadd float %temp_18, 0.000000e+00
  %temp_1_18 = fmul float %A_load_100, %B_load_1
  %tmp_6_19_0_1 = fadd float %tmp_6_18, %temp_1_18
  %temp_1_19_0_1 = fmul float %A_load_105, %B_load_2
  %tmp_6_19_0_2 = fadd float %tmp_6_19_0_1, %temp_1_19_0_1
  %temp_1_19_0_2 = fmul float %A_load_110, %B_load_3
  %tmp_6_19_0_3 = fadd float %tmp_6_19_0_2, %temp_1_19_0_2
  %p_addr69 = add i12 %p_addr103_cast1, 23
  %p_addr69_cast = sext i12 %p_addr69 to i32
  %tmp_568 = zext i32 %p_addr69_cast to i64
  %A_addr_115 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_568
  %A_load_115 = load float* %A_addr_115, align 4
  %temp_1_19_0_3 = fmul float %A_load_115, %B_load_4
  %tmp_5_18 = fadd float %tmp_6_19_0_3, %temp_1_19_0_3
  %temp_19_1 = fmul float %A_load_96, %B_load_5
  %tmp_6_19_1 = fadd float %tmp_5_18, %temp_19_1
  %temp_1_19_1 = fmul float %A_load_101, %B_load_6
  %tmp_6_19_1_1 = fadd float %tmp_6_19_1, %temp_1_19_1
  %temp_1_19_1_1 = fmul float %A_load_106, %B_load_7
  %tmp_6_19_1_2 = fadd float %tmp_6_19_1_1, %temp_1_19_1_1
  %temp_1_19_1_2 = fmul float %A_load_111, %B_load_8
  %tmp_6_19_1_3 = fadd float %tmp_6_19_1_2, %temp_1_19_1_2
  %p_addr66 = add i12 %p_addr110_cast1, 23
  %p_addr66_cast = sext i12 %p_addr66 to i32
  %tmp_569 = zext i32 %p_addr66_cast to i64
  %A_addr_116 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_569
  %A_load_116 = load float* %A_addr_116, align 4
  %temp_1_19_1_3 = fmul float %A_load_116, %B_load_9
  %tmp_5_19_1 = fadd float %tmp_6_19_1_3, %temp_1_19_1_3
  %temp_19_2 = fmul float %A_load_97, %B_load_10
  %tmp_6_19_2 = fadd float %tmp_5_19_1, %temp_19_2
  %temp_1_19_2 = fmul float %A_load_102, %B_load_11
  %tmp_6_19_2_1 = fadd float %tmp_6_19_2, %temp_1_19_2
  %temp_1_19_2_1 = fmul float %A_load_107, %B_load_12
  %tmp_6_19_2_2 = fadd float %tmp_6_19_2_1, %temp_1_19_2_1
  %temp_1_19_2_2 = fmul float %A_load_112, %B_load_13
  %tmp_6_19_2_3 = fadd float %tmp_6_19_2_2, %temp_1_19_2_2
  %p_addr63 = add i12 %p_addr118_cast1, 23
  %p_addr63_cast = sext i12 %p_addr63 to i32
  %tmp_570 = zext i32 %p_addr63_cast to i64
  %A_addr_117 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_570
  %A_load_117 = load float* %A_addr_117, align 4
  %temp_1_19_2_3 = fmul float %A_load_117, %B_load_14
  %tmp_5_19_2 = fadd float %tmp_6_19_2_3, %temp_1_19_2_3
  %temp_19_3 = fmul float %A_load_98, %B_load_15
  %tmp_6_19_3 = fadd float %tmp_5_19_2, %temp_19_3
  %temp_1_19_3 = fmul float %A_load_103, %B_load_16
  %tmp_6_19_3_1 = fadd float %tmp_6_19_3, %temp_1_19_3
  %temp_1_19_3_1 = fmul float %A_load_108, %B_load_17
  %tmp_6_19_3_2 = fadd float %tmp_6_19_3_1, %temp_1_19_3_1
  %temp_1_19_3_2 = fmul float %A_load_113, %B_load_18
  %tmp_6_19_3_3 = fadd float %tmp_6_19_3_2, %temp_1_19_3_2
  %p_addr60 = add i12 %p_addr125_cast1, 23
  %p_addr60_cast = sext i12 %p_addr60 to i32
  %tmp_571 = zext i32 %p_addr60_cast to i64
  %A_addr_118 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_571
  %A_load_118 = load float* %A_addr_118, align 4
  %temp_1_19_3_3 = fmul float %A_load_118, %B_load_19
  %tmp_5_19_3 = fadd float %tmp_6_19_3_3, %temp_1_19_3_3
  %temp_19_4 = fmul float %A_load_99, %B_load_20
  %tmp_6_19_4 = fadd float %tmp_5_19_3, %temp_19_4
  %temp_1_19_4 = fmul float %A_load_104, %B_load_21
  %tmp_6_19_4_1 = fadd float %tmp_6_19_4, %temp_1_19_4
  %temp_1_19_4_1 = fmul float %A_load_109, %B_load_22
  %tmp_6_19_4_2 = fadd float %tmp_6_19_4_1, %temp_1_19_4_1
  %temp_1_19_4_2 = fmul float %A_load_114, %B_load_23
  %tmp_6_19_4_3 = fadd float %tmp_6_19_4_2, %temp_1_19_4_2
  %p_addr57 = add i12 %p_addr133_cast1, 23
  %p_addr57_cast = sext i12 %p_addr57 to i32
  %tmp_572 = zext i32 %p_addr57_cast to i64
  %A_addr_119 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_572
  %A_load_119 = load float* %A_addr_119, align 4
  %temp_1_19_4_3 = fmul float %A_load_119, %B_load_24
  %tmp_5_19_4 = fadd float %tmp_6_19_4_3, %temp_1_19_4_3
  store float %tmp_5_19_4, float* %conv_addr_19, align 4
  %p_addr226 = add i32 %p_addr101, 20
  %tmp_573 = zext i32 %p_addr226 to i64
  %conv_addr_20 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_573
  %temp_19 = fmul float %A_load_100, %B_load
  %tmp_6_19 = fadd float %temp_19, 0.000000e+00
  %temp_1_19 = fmul float %A_load_105, %B_load_1
  %tmp_6_20_0_1 = fadd float %tmp_6_19, %temp_1_19
  %temp_1_20_0_1 = fmul float %A_load_110, %B_load_2
  %tmp_6_20_0_2 = fadd float %tmp_6_20_0_1, %temp_1_20_0_1
  %temp_1_20_0_2 = fmul float %A_load_115, %B_load_3
  %tmp_6_20_0_3 = fadd float %tmp_6_20_0_2, %temp_1_20_0_2
  %p_addr54 = add i12 %p_addr103_cast1, 24
  %p_addr54_cast = sext i12 %p_addr54 to i32
  %tmp_574 = zext i32 %p_addr54_cast to i64
  %A_addr_120 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_574
  %A_load_120 = load float* %A_addr_120, align 4
  %temp_1_20_0_3 = fmul float %A_load_120, %B_load_4
  %tmp_5_19 = fadd float %tmp_6_20_0_3, %temp_1_20_0_3
  %temp_20_1 = fmul float %A_load_101, %B_load_5
  %tmp_6_20_1 = fadd float %tmp_5_19, %temp_20_1
  %temp_1_20_1 = fmul float %A_load_106, %B_load_6
  %tmp_6_20_1_1 = fadd float %tmp_6_20_1, %temp_1_20_1
  %temp_1_20_1_1 = fmul float %A_load_111, %B_load_7
  %tmp_6_20_1_2 = fadd float %tmp_6_20_1_1, %temp_1_20_1_1
  %temp_1_20_1_2 = fmul float %A_load_116, %B_load_8
  %tmp_6_20_1_3 = fadd float %tmp_6_20_1_2, %temp_1_20_1_2
  %p_addr51 = add i12 %p_addr110_cast1, 24
  %p_addr51_cast = sext i12 %p_addr51 to i32
  %tmp_575 = zext i32 %p_addr51_cast to i64
  %A_addr_121 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_575
  %A_load_121 = load float* %A_addr_121, align 4
  %temp_1_20_1_3 = fmul float %A_load_121, %B_load_9
  %tmp_5_20_1 = fadd float %tmp_6_20_1_3, %temp_1_20_1_3
  %temp_20_2 = fmul float %A_load_102, %B_load_10
  %tmp_6_20_2 = fadd float %tmp_5_20_1, %temp_20_2
  %temp_1_20_2 = fmul float %A_load_107, %B_load_11
  %tmp_6_20_2_1 = fadd float %tmp_6_20_2, %temp_1_20_2
  %temp_1_20_2_1 = fmul float %A_load_112, %B_load_12
  %tmp_6_20_2_2 = fadd float %tmp_6_20_2_1, %temp_1_20_2_1
  %temp_1_20_2_2 = fmul float %A_load_117, %B_load_13
  %tmp_6_20_2_3 = fadd float %tmp_6_20_2_2, %temp_1_20_2_2
  %p_addr48 = add i12 %p_addr118_cast1, 24
  %p_addr48_cast = sext i12 %p_addr48 to i32
  %tmp_576 = zext i32 %p_addr48_cast to i64
  %A_addr_122 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_576
  %A_load_122 = load float* %A_addr_122, align 4
  %temp_1_20_2_3 = fmul float %A_load_122, %B_load_14
  %tmp_5_20_2 = fadd float %tmp_6_20_2_3, %temp_1_20_2_3
  %temp_20_3 = fmul float %A_load_103, %B_load_15
  %tmp_6_20_3 = fadd float %tmp_5_20_2, %temp_20_3
  %temp_1_20_3 = fmul float %A_load_108, %B_load_16
  %tmp_6_20_3_1 = fadd float %tmp_6_20_3, %temp_1_20_3
  %temp_1_20_3_1 = fmul float %A_load_113, %B_load_17
  %tmp_6_20_3_2 = fadd float %tmp_6_20_3_1, %temp_1_20_3_1
  %temp_1_20_3_2 = fmul float %A_load_118, %B_load_18
  %tmp_6_20_3_3 = fadd float %tmp_6_20_3_2, %temp_1_20_3_2
  %p_addr45 = add i12 %p_addr125_cast1, 24
  %p_addr45_cast = sext i12 %p_addr45 to i32
  %tmp_577 = zext i32 %p_addr45_cast to i64
  %A_addr_123 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_577
  %A_load_123 = load float* %A_addr_123, align 4
  %temp_1_20_3_3 = fmul float %A_load_123, %B_load_19
  %tmp_5_20_3 = fadd float %tmp_6_20_3_3, %temp_1_20_3_3
  %temp_20_4 = fmul float %A_load_104, %B_load_20
  %tmp_6_20_4 = fadd float %tmp_5_20_3, %temp_20_4
  %temp_1_20_4 = fmul float %A_load_109, %B_load_21
  %tmp_6_20_4_1 = fadd float %tmp_6_20_4, %temp_1_20_4
  %temp_1_20_4_1 = fmul float %A_load_114, %B_load_22
  %tmp_6_20_4_2 = fadd float %tmp_6_20_4_1, %temp_1_20_4_1
  %temp_1_20_4_2 = fmul float %A_load_119, %B_load_23
  %tmp_6_20_4_3 = fadd float %tmp_6_20_4_2, %temp_1_20_4_2
  %p_addr42 = add i12 %p_addr133_cast1, 24
  %p_addr42_cast = sext i12 %p_addr42 to i32
  %tmp_578 = zext i32 %p_addr42_cast to i64
  %A_addr_124 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_578
  %A_load_124 = load float* %A_addr_124, align 4
  %temp_1_20_4_3 = fmul float %A_load_124, %B_load_24
  %tmp_5_20_4 = fadd float %tmp_6_20_4_3, %temp_1_20_4_3
  store float %tmp_5_20_4, float* %conv_addr_20, align 4
  %p_addr227 = add i32 %p_addr101, 21
  %tmp_579 = zext i32 %p_addr227 to i64
  %conv_addr_21 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_579
  %temp_20 = fmul float %A_load_105, %B_load
  %tmp_6_20 = fadd float %temp_20, 0.000000e+00
  %temp_1_20 = fmul float %A_load_110, %B_load_1
  %tmp_6_21_0_1 = fadd float %tmp_6_20, %temp_1_20
  %temp_1_21_0_1 = fmul float %A_load_115, %B_load_2
  %tmp_6_21_0_2 = fadd float %tmp_6_21_0_1, %temp_1_21_0_1
  %temp_1_21_0_2 = fmul float %A_load_120, %B_load_3
  %tmp_6_21_0_3 = fadd float %tmp_6_21_0_2, %temp_1_21_0_2
  %p_addr39 = add i12 %p_addr103_cast1, 25
  %p_addr39_cast = sext i12 %p_addr39 to i32
  %tmp_580 = zext i32 %p_addr39_cast to i64
  %A_addr_125 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_580
  %A_load_125 = load float* %A_addr_125, align 4
  %temp_1_21_0_3 = fmul float %A_load_125, %B_load_4
  %tmp_5_20 = fadd float %tmp_6_21_0_3, %temp_1_21_0_3
  %temp_21_1 = fmul float %A_load_106, %B_load_5
  %tmp_6_21_1 = fadd float %tmp_5_20, %temp_21_1
  %temp_1_21_1 = fmul float %A_load_111, %B_load_6
  %tmp_6_21_1_1 = fadd float %tmp_6_21_1, %temp_1_21_1
  %temp_1_21_1_1 = fmul float %A_load_116, %B_load_7
  %tmp_6_21_1_2 = fadd float %tmp_6_21_1_1, %temp_1_21_1_1
  %temp_1_21_1_2 = fmul float %A_load_121, %B_load_8
  %tmp_6_21_1_3 = fadd float %tmp_6_21_1_2, %temp_1_21_1_2
  %p_addr36 = add i12 %p_addr110_cast1, 25
  %p_addr36_cast = sext i12 %p_addr36 to i32
  %tmp_581 = zext i32 %p_addr36_cast to i64
  %A_addr_126 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_581
  %A_load_126 = load float* %A_addr_126, align 4
  %temp_1_21_1_3 = fmul float %A_load_126, %B_load_9
  %tmp_5_21_1 = fadd float %tmp_6_21_1_3, %temp_1_21_1_3
  %temp_21_2 = fmul float %A_load_107, %B_load_10
  %tmp_6_21_2 = fadd float %tmp_5_21_1, %temp_21_2
  %temp_1_21_2 = fmul float %A_load_112, %B_load_11
  %tmp_6_21_2_1 = fadd float %tmp_6_21_2, %temp_1_21_2
  %temp_1_21_2_1 = fmul float %A_load_117, %B_load_12
  %tmp_6_21_2_2 = fadd float %tmp_6_21_2_1, %temp_1_21_2_1
  %temp_1_21_2_2 = fmul float %A_load_122, %B_load_13
  %tmp_6_21_2_3 = fadd float %tmp_6_21_2_2, %temp_1_21_2_2
  %p_addr33 = add i12 %p_addr118_cast1, 25
  %p_addr33_cast = sext i12 %p_addr33 to i32
  %tmp_582 = zext i32 %p_addr33_cast to i64
  %A_addr_127 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_582
  %A_load_127 = load float* %A_addr_127, align 4
  %temp_1_21_2_3 = fmul float %A_load_127, %B_load_14
  %tmp_5_21_2 = fadd float %tmp_6_21_2_3, %temp_1_21_2_3
  %temp_21_3 = fmul float %A_load_108, %B_load_15
  %tmp_6_21_3 = fadd float %tmp_5_21_2, %temp_21_3
  %temp_1_21_3 = fmul float %A_load_113, %B_load_16
  %tmp_6_21_3_1 = fadd float %tmp_6_21_3, %temp_1_21_3
  %temp_1_21_3_1 = fmul float %A_load_118, %B_load_17
  %tmp_6_21_3_2 = fadd float %tmp_6_21_3_1, %temp_1_21_3_1
  %temp_1_21_3_2 = fmul float %A_load_123, %B_load_18
  %tmp_6_21_3_3 = fadd float %tmp_6_21_3_2, %temp_1_21_3_2
  %p_addr30 = add i12 %p_addr125_cast1, 25
  %p_addr30_cast = sext i12 %p_addr30 to i32
  %tmp_583 = zext i32 %p_addr30_cast to i64
  %A_addr_128 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_583
  %A_load_128 = load float* %A_addr_128, align 4
  %temp_1_21_3_3 = fmul float %A_load_128, %B_load_19
  %tmp_5_21_3 = fadd float %tmp_6_21_3_3, %temp_1_21_3_3
  %temp_21_4 = fmul float %A_load_109, %B_load_20
  %tmp_6_21_4 = fadd float %tmp_5_21_3, %temp_21_4
  %temp_1_21_4 = fmul float %A_load_114, %B_load_21
  %tmp_6_21_4_1 = fadd float %tmp_6_21_4, %temp_1_21_4
  %temp_1_21_4_1 = fmul float %A_load_119, %B_load_22
  %tmp_6_21_4_2 = fadd float %tmp_6_21_4_1, %temp_1_21_4_1
  %temp_1_21_4_2 = fmul float %A_load_124, %B_load_23
  %tmp_6_21_4_3 = fadd float %tmp_6_21_4_2, %temp_1_21_4_2
  %p_addr27 = add i12 %p_addr133_cast1, 25
  %p_addr27_cast = sext i12 %p_addr27 to i32
  %tmp_584 = zext i32 %p_addr27_cast to i64
  %A_addr_129 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_584
  %A_load_129 = load float* %A_addr_129, align 4
  %temp_1_21_4_3 = fmul float %A_load_129, %B_load_24
  %tmp_5_21_4 = fadd float %tmp_6_21_4_3, %temp_1_21_4_3
  store float %tmp_5_21_4, float* %conv_addr_21, align 4
  %p_addr228 = add i32 %p_addr101, 22
  %tmp_585 = zext i32 %p_addr228 to i64
  %conv_addr_22 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_585
  %temp_21 = fmul float %A_load_110, %B_load
  %tmp_6_21 = fadd float %temp_21, 0.000000e+00
  %temp_1_21 = fmul float %A_load_115, %B_load_1
  %tmp_6_22_0_1 = fadd float %tmp_6_21, %temp_1_21
  %temp_1_22_0_1 = fmul float %A_load_120, %B_load_2
  %tmp_6_22_0_2 = fadd float %tmp_6_22_0_1, %temp_1_22_0_1
  %temp_1_22_0_2 = fmul float %A_load_125, %B_load_3
  %tmp_6_22_0_3 = fadd float %tmp_6_22_0_2, %temp_1_22_0_2
  %p_addr24 = add i12 %p_addr103_cast1, 26
  %p_addr24_cast = sext i12 %p_addr24 to i32
  %tmp_586 = zext i32 %p_addr24_cast to i64
  %A_addr_130 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_586
  %A_load_130 = load float* %A_addr_130, align 4
  %temp_1_22_0_3 = fmul float %A_load_130, %B_load_4
  %tmp_5_21 = fadd float %tmp_6_22_0_3, %temp_1_22_0_3
  %temp_22_1 = fmul float %A_load_111, %B_load_5
  %tmp_6_22_1 = fadd float %tmp_5_21, %temp_22_1
  %temp_1_22_1 = fmul float %A_load_116, %B_load_6
  %tmp_6_22_1_1 = fadd float %tmp_6_22_1, %temp_1_22_1
  %temp_1_22_1_1 = fmul float %A_load_121, %B_load_7
  %tmp_6_22_1_2 = fadd float %tmp_6_22_1_1, %temp_1_22_1_1
  %temp_1_22_1_2 = fmul float %A_load_126, %B_load_8
  %tmp_6_22_1_3 = fadd float %tmp_6_22_1_2, %temp_1_22_1_2
  %p_addr21 = add i12 %p_addr110_cast1, 26
  %p_addr21_cast = sext i12 %p_addr21 to i32
  %tmp_587 = zext i32 %p_addr21_cast to i64
  %A_addr_131 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_587
  %A_load_131 = load float* %A_addr_131, align 4
  %temp_1_22_1_3 = fmul float %A_load_131, %B_load_9
  %tmp_5_22_1 = fadd float %tmp_6_22_1_3, %temp_1_22_1_3
  %temp_22_2 = fmul float %A_load_112, %B_load_10
  %tmp_6_22_2 = fadd float %tmp_5_22_1, %temp_22_2
  %temp_1_22_2 = fmul float %A_load_117, %B_load_11
  %tmp_6_22_2_1 = fadd float %tmp_6_22_2, %temp_1_22_2
  %temp_1_22_2_1 = fmul float %A_load_122, %B_load_12
  %tmp_6_22_2_2 = fadd float %tmp_6_22_2_1, %temp_1_22_2_1
  %temp_1_22_2_2 = fmul float %A_load_127, %B_load_13
  %tmp_6_22_2_3 = fadd float %tmp_6_22_2_2, %temp_1_22_2_2
  %p_addr18 = add i12 %p_addr118_cast1, 26
  %p_addr18_cast = sext i12 %p_addr18 to i32
  %tmp_588 = zext i32 %p_addr18_cast to i64
  %A_addr_132 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_588
  %A_load_132 = load float* %A_addr_132, align 4
  %temp_1_22_2_3 = fmul float %A_load_132, %B_load_14
  %tmp_5_22_2 = fadd float %tmp_6_22_2_3, %temp_1_22_2_3
  %temp_22_3 = fmul float %A_load_113, %B_load_15
  %tmp_6_22_3 = fadd float %tmp_5_22_2, %temp_22_3
  %temp_1_22_3 = fmul float %A_load_118, %B_load_16
  %tmp_6_22_3_1 = fadd float %tmp_6_22_3, %temp_1_22_3
  %temp_1_22_3_1 = fmul float %A_load_123, %B_load_17
  %tmp_6_22_3_2 = fadd float %tmp_6_22_3_1, %temp_1_22_3_1
  %temp_1_22_3_2 = fmul float %A_load_128, %B_load_18
  %tmp_6_22_3_3 = fadd float %tmp_6_22_3_2, %temp_1_22_3_2
  %p_addr15 = add i12 %p_addr125_cast1, 26
  %p_addr15_cast = sext i12 %p_addr15 to i32
  %tmp_589 = zext i32 %p_addr15_cast to i64
  %A_addr_133 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_589
  %A_load_133 = load float* %A_addr_133, align 4
  %temp_1_22_3_3 = fmul float %A_load_133, %B_load_19
  %tmp_5_22_3 = fadd float %tmp_6_22_3_3, %temp_1_22_3_3
  %temp_22_4 = fmul float %A_load_114, %B_load_20
  %tmp_6_22_4 = fadd float %tmp_5_22_3, %temp_22_4
  %temp_1_22_4 = fmul float %A_load_119, %B_load_21
  %tmp_6_22_4_1 = fadd float %tmp_6_22_4, %temp_1_22_4
  %temp_1_22_4_1 = fmul float %A_load_124, %B_load_22
  %tmp_6_22_4_2 = fadd float %tmp_6_22_4_1, %temp_1_22_4_1
  %temp_1_22_4_2 = fmul float %A_load_129, %B_load_23
  %tmp_6_22_4_3 = fadd float %tmp_6_22_4_2, %temp_1_22_4_2
  %p_addr12 = add i12 %p_addr133_cast1, 26
  %p_addr12_cast = sext i12 %p_addr12 to i32
  %tmp_590 = zext i32 %p_addr12_cast to i64
  %A_addr_134 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_590
  %A_load_134 = load float* %A_addr_134, align 4
  %temp_1_22_4_3 = fmul float %A_load_134, %B_load_24
  %tmp_5_22_4 = fadd float %tmp_6_22_4_3, %temp_1_22_4_3
  store float %tmp_5_22_4, float* %conv_addr_22, align 4
  %p_addr229 = add i32 %p_addr101, 23
  %tmp_591 = zext i32 %p_addr229 to i64
  %conv_addr_23 = getelementptr [3456 x float]* %conv, i64 0, i64 %tmp_591
  %temp_22 = fmul float %A_load_115, %B_load
  %tmp_6_22 = fadd float %temp_22, 0.000000e+00
  %temp_1_22 = fmul float %A_load_120, %B_load_1
  %tmp_6_23_0_1 = fadd float %tmp_6_22, %temp_1_22
  %temp_1_23_0_1 = fmul float %A_load_125, %B_load_2
  %tmp_6_23_0_2 = fadd float %tmp_6_23_0_1, %temp_1_23_0_1
  %temp_1_23_0_2 = fmul float %A_load_130, %B_load_3
  %tmp_6_23_0_3 = fadd float %tmp_6_23_0_2, %temp_1_23_0_2
  %p_addr9 = add i12 %p_addr103_cast1, 27
  %p_addr9_cast = sext i12 %p_addr9 to i32
  %tmp_592 = zext i32 %p_addr9_cast to i64
  %A_addr_135 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_592
  %A_load_135 = load float* %A_addr_135, align 4
  %temp_1_23_0_3 = fmul float %A_load_135, %B_load_4
  %tmp_5_22 = fadd float %tmp_6_23_0_3, %temp_1_23_0_3
  %temp_23_1 = fmul float %A_load_116, %B_load_5
  %tmp_6_23_1 = fadd float %tmp_5_22, %temp_23_1
  %temp_1_23_1 = fmul float %A_load_121, %B_load_6
  %tmp_6_23_1_1 = fadd float %tmp_6_23_1, %temp_1_23_1
  %temp_1_23_1_1 = fmul float %A_load_126, %B_load_7
  %tmp_6_23_1_2 = fadd float %tmp_6_23_1_1, %temp_1_23_1_1
  %temp_1_23_1_2 = fmul float %A_load_131, %B_load_8
  %tmp_6_23_1_3 = fadd float %tmp_6_23_1_2, %temp_1_23_1_2
  %p_addr7 = add i12 %p_addr110_cast1, 27
  %p_addr7_cast = sext i12 %p_addr7 to i32
  %tmp_593 = zext i32 %p_addr7_cast to i64
  %A_addr_136 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_593
  %A_load_136 = load float* %A_addr_136, align 4
  %temp_1_23_1_3 = fmul float %A_load_136, %B_load_9
  %tmp_5_23_1 = fadd float %tmp_6_23_1_3, %temp_1_23_1_3
  %temp_23_2 = fmul float %A_load_117, %B_load_10
  %tmp_6_23_2 = fadd float %tmp_5_23_1, %temp_23_2
  %temp_1_23_2 = fmul float %A_load_122, %B_load_11
  %tmp_6_23_2_1 = fadd float %tmp_6_23_2, %temp_1_23_2
  %temp_1_23_2_1 = fmul float %A_load_127, %B_load_12
  %tmp_6_23_2_2 = fadd float %tmp_6_23_2_1, %temp_1_23_2_1
  %temp_1_23_2_2 = fmul float %A_load_132, %B_load_13
  %tmp_6_23_2_3 = fadd float %tmp_6_23_2_2, %temp_1_23_2_2
  %p_addr5 = add i12 %p_addr118_cast1, 27
  %p_addr5_cast = sext i12 %p_addr5 to i32
  %tmp_594 = zext i32 %p_addr5_cast to i64
  %A_addr_137 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_594
  %A_load_137 = load float* %A_addr_137, align 4
  %temp_1_23_2_3 = fmul float %A_load_137, %B_load_14
  %tmp_5_23_2 = fadd float %tmp_6_23_2_3, %temp_1_23_2_3
  %temp_23_3 = fmul float %A_load_118, %B_load_15
  %tmp_6_23_3 = fadd float %tmp_5_23_2, %temp_23_3
  %temp_1_23_3 = fmul float %A_load_123, %B_load_16
  %tmp_6_23_3_1 = fadd float %tmp_6_23_3, %temp_1_23_3
  %temp_1_23_3_1 = fmul float %A_load_128, %B_load_17
  %tmp_6_23_3_2 = fadd float %tmp_6_23_3_1, %temp_1_23_3_1
  %temp_1_23_3_2 = fmul float %A_load_133, %B_load_18
  %tmp_6_23_3_3 = fadd float %tmp_6_23_3_2, %temp_1_23_3_2
  %p_addr3 = add i12 %p_addr125_cast1, 27
  %p_addr3_cast = sext i12 %p_addr3 to i32
  %tmp_595 = zext i32 %p_addr3_cast to i64
  %A_addr_138 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_595
  %A_load_138 = load float* %A_addr_138, align 4
  %temp_1_23_3_3 = fmul float %A_load_138, %B_load_19
  %tmp_5_23_3 = fadd float %tmp_6_23_3_3, %temp_1_23_3_3
  %temp_23_4 = fmul float %A_load_119, %B_load_20
  %tmp_6_23_4 = fadd float %tmp_5_23_3, %temp_23_4
  %temp_1_23_4 = fmul float %A_load_124, %B_load_21
  %tmp_6_23_4_1 = fadd float %tmp_6_23_4, %temp_1_23_4
  %temp_1_23_4_1 = fmul float %A_load_129, %B_load_22
  %tmp_6_23_4_2 = fadd float %tmp_6_23_4_1, %temp_1_23_4_1
  %temp_1_23_4_2 = fmul float %A_load_134, %B_load_23
  %tmp_6_23_4_3 = fadd float %tmp_6_23_4_2, %temp_1_23_4_2
  %p_addr1 = add i12 %p_addr133_cast1, 27
  %p_addr1_cast = sext i12 %p_addr1 to i32
  %tmp_596 = zext i32 %p_addr1_cast to i64
  %A_addr_139 = getelementptr [784 x float]* %A, i64 0, i64 %tmp_596
  %A_load_139 = load float* %A_addr_139, align 4
  %temp_1_23_4_3 = fmul float %A_load_139, %B_load_24
  %tmp_5_23_4 = fadd float %tmp_6_23_4_3, %temp_1_23_4_3
  store float %tmp_5_23_4, float* %conv_addr_23, align 4
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str8, i32 %tmp_9)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_18 = trunc i32 %empty to i8
  ret i8 %empty_18
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i3.i4(i3, i4) nounwind readnone {
entry:
  %empty = zext i3 %0 to i7
  %empty_19 = zext i4 %1 to i7
  %empty_20 = shl i7 %empty, 4
  %empty_21 = or i7 %empty_20, %empty_19
  ret i7 %empty_21
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i3.i3.i4(i3, i3, i4) nounwind readnone {
entry:
  %empty = zext i3 %1 to i7
  %empty_22 = zext i4 %2 to i7
  %empty_23 = shl i7 %empty, 4
  %empty_24 = or i7 %empty_23, %empty_22
  %empty_25 = zext i3 %0 to i10
  %empty_26 = zext i7 %empty_24 to i10
  %empty_27 = shl i10 %empty_25, 7
  %empty_28 = or i10 %empty_27, %empty_26
  ret i10 %empty_28
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5
  %empty_29 = zext i2 %1 to i5
  %empty_30 = shl i5 %empty, 2
  %empty_31 = or i5 %empty_30, %empty_29
  ret i5 %empty_31
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

define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5
  %empty_38 = zext i1 %1 to i5
  %empty_39 = shl i5 %empty, 1
  %empty_40 = or i5 %empty_39, %empty_38
  ret i5 %empty_40
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5, i2) nounwind readnone {
entry:
  %empty = zext i5 %0 to i7
  %empty_41 = zext i2 %1 to i7
  %empty_42 = shl i7 %empty, 2
  %empty_43 = or i7 %empty_42, %empty_41
  ret i7 %empty_43
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5, i5) nounwind readnone {
entry:
  %empty = zext i5 %0 to i10
  %empty_44 = zext i5 %1 to i10
  %empty_45 = shl i10 %empty, 5
  %empty_46 = or i10 %empty_45, %empty_44
  ret i10 %empty_46
}

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

define weak i3 @_ssdm_op_Read.ap_auto.i3(i3) {
entry:
  ret i3 %0
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10, i3) nounwind readnone {
entry:
  %empty = zext i10 %0 to i13
  %empty_47 = zext i3 %1 to i13
  %empty_48 = shl i13 %empty, 3
  %empty_49 = or i13 %empty_48, %empty_47
  ret i13 %empty_49
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i10.i5(i10, i5) nounwind readnone {
entry:
  %empty = zext i10 %0 to i15
  %empty_50 = zext i5 %1 to i15
  %empty_51 = shl i15 %empty, 5
  %empty_52 = or i15 %empty_51, %empty_50
  ret i15 %empty_52
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"A", metadata !4, metadata !"float", i32 0, i32 31}
!4 = metadata !{metadata !5, metadata !5}
!5 = metadata !{i32 0, i32 27, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"W0", metadata !10, metadata !"float", i32 0, i32 31}
!10 = metadata !{metadata !11, metadata !12, metadata !12}
!11 = metadata !{i32 0, i32 5, i32 1}
!12 = metadata !{i32 0, i32 4, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"W1", metadata !17, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18, metadata !19}
!18 = metadata !{i32 0, i32 1, i32 1}
!19 = metadata !{i32 0, i32 863, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"res", metadata !24, metadata !"float", i32 0, i32 31}
!24 = metadata !{metadata !18}
