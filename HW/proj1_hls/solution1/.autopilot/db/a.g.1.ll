; ModuleID = '/home/littlefoot/18643_project/Hardware-Accel/HW/proj1_hls/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str4 = private unnamed_addr constant [8 x i8] c"control\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str5 = private unnamed_addr constant [5 x i8] c"CONV\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str6 = private unnamed_addr constant [5 x i8] c"ReLU\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str7 = private unnamed_addr constant [8 x i8] c"Maxpool\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str8 = private unnamed_addr constant [16 x i8] c"convolve_label5\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str9 = private unnamed_addr constant [16 x i8] c"convolve_label4\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str10 = private unnamed_addr constant [16 x i8] c"convolve_label3\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str11 = private unnamed_addr constant [12 x i8] c"ReLU_label0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str12 = private unnamed_addr constant [15 x i8] c"maxpool_label6\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str13 = private unnamed_addr constant [15 x i8] c"flatten_label7\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str14 = private unnamed_addr constant [11 x i8] c"FCL_label8\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str15 = private unnamed_addr constant [15 x i8] c"softmax_label9\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str16 = private unnamed_addr constant [16 x i8] c"softmax_label10\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str17 = private unnamed_addr constant [16 x i8] c"softmax_label11\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str18 = private unnamed_addr constant [16 x i8] c"softmax_label12\00", align 1 ; [#uses=1 type=[16 x i8]*]
@obj_detector.str = internal unnamed_addr constant [13 x i8] c"obj_detector\00" ; [#uses=1 type=[13 x i8]*]

; [#uses=0]
define void @obj_detector([28 x float]* %A, [5 x [5 x float]]* %W0, [864 x float]* %W1, float* %res) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @obj_detector.str) nounwind
  %s0 = alloca [6 x [24 x [24 x float]]], align 16 ; [#uses=2 type=[6 x [24 x [24 x float]]]*]
  %s1 = alloca [6 x [24 x [24 x float]]], align 16 ; [#uses=2 type=[6 x [24 x [24 x float]]]*]
  %s2 = alloca [6 x [12 x [12 x float]]], align 16 ; [#uses=2 type=[6 x [12 x [12 x float]]]*]
  %s3 = alloca [864 x float], align 16            ; [#uses=1 type=[864 x float]*]
  %cost = alloca [2 x float], align 4             ; [#uses=2 type=[2 x float]*]
  call void @llvm.dbg.value(metadata !{[28 x float]* %A}, i64 0, metadata !62), !dbg !63 ; [debug line = 12:25] [debug variable = A]
  call void @llvm.dbg.value(metadata !{[5 x [5 x float]]* %W0}, i64 0, metadata !64), !dbg !65 ; [debug line = 12:42] [debug variable = W0]
  call void @llvm.dbg.value(metadata !{[864 x float]* %W1}, i64 0, metadata !66), !dbg !67 ; [debug line = 12:61] [debug variable = W1]
  call void @llvm.dbg.value(metadata !{float* %res}, i64 0, metadata !68), !dbg !69 ; [debug line = 12:107] [debug variable = res]
  call void (...)* @_ssdm_SpecArrayDimSize([28 x float]* %A, i32 28) nounwind, !dbg !70 ; [debug line = 12:116]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %res, i32 2) nounwind, !dbg !72 ; [debug line = 12:145]
  call void (...)* @_ssdm_SpecArrayDimSize([5 x [5 x float]]* %W0, i32 6) nounwind, !dbg !73 ; [debug line = 12:175]
  call void (...)* @_ssdm_SpecArrayDimSize([864 x float]* %W1, i32 2) nounwind, !dbg !74 ; [debug line = 12:204]
  call void (...)* @_ssdm_op_SpecResource([5 x [5 x float]]* %W0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !75 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecResource([28 x float]* %A, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !75 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %res, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !75 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface([864 x float]* %W1, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !75 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface([5 x [5 x float]]* %W0, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !75 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface([28 x float]* %A, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !75 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !75 ; [debug line = 13:1]
  call void @llvm.dbg.declare(metadata !{[6 x [24 x [24 x float]]]* %s0}, metadata !76), !dbg !80 ; [debug line = 14:8] [debug variable = s0]
  call void @llvm.dbg.declare(metadata !{[6 x [24 x [24 x float]]]* %s1}, metadata !81), !dbg !82 ; [debug line = 15:8] [debug variable = s1]
  call void @llvm.dbg.declare(metadata !{[6 x [12 x [12 x float]]]* %s2}, metadata !83), !dbg !86 ; [debug line = 16:8] [debug variable = s2]
  call void @llvm.dbg.declare(metadata !{[864 x float]* %s3}, metadata !87), !dbg !88 ; [debug line = 17:8] [debug variable = s3]
  call void @llvm.dbg.declare(metadata !{[2 x float]* %cost}, metadata !89), !dbg !93 ; [debug line = 18:8] [debug variable = cost]
  br label %1, !dbg !94                           ; [debug line = 21:19]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %i, 6, !dbg !94        ; [#uses=1 type=i1] [debug line = 21:19]
  br i1 %exitcond2, label %.preheader3.preheader, label %2, !dbg !94 ; [debug line = 21:19]

.preheader3.preheader:                            ; preds = %1
  br label %.preheader3, !dbg !96                 ; [debug line = 26:20]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !98 ; [debug line = 21:32]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !98 ; [#uses=1 type=i32] [debug line = 21:32]
  %tmp = sext i32 %i to i64, !dbg !100            ; [#uses=2 type=i64] [debug line = 22:3]
  %W0.addr = getelementptr inbounds [5 x [5 x float]]* %W0, i64 %tmp, i64 0, !dbg !100 ; [#uses=1 type=[5 x float]*] [debug line = 22:3]
  %s0.addr = getelementptr inbounds [6 x [24 x [24 x float]]]* %s0, i64 0, i64 %tmp, i64 0, !dbg !100 ; [#uses=1 type=[24 x float]*] [debug line = 22:3]
  call fastcc void @convolve([28 x float]* %A, [5 x float]* %W0.addr, [24 x float]* %s0.addr), !dbg !100 ; [debug line = 22:3]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !101 ; [#uses=0 type=i32] [debug line = 23:2]
  %i.1 = add nsw i32 %i, 1, !dbg !102             ; [#uses=1 type=i32] [debug line = 21:26]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !103), !dbg !102 ; [debug line = 21:26] [debug variable = i]
  br label %1, !dbg !102                          ; [debug line = 21:26]

.preheader3:                                      ; preds = %3, %.preheader3.preheader
  %i1 = phi i32 [ %i.2, %3 ], [ 0, %.preheader3.preheader ] ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i1, 6, !dbg !96       ; [#uses=1 type=i1] [debug line = 26:20]
  br i1 %exitcond1, label %.preheader.preheader, label %3, !dbg !96 ; [debug line = 26:20]

.preheader.preheader:                             ; preds = %.preheader3
  br label %.preheader, !dbg !104                 ; [debug line = 31:23]

; <label>:3                                       ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !106 ; [debug line = 26:33]
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !106 ; [#uses=1 type=i32] [debug line = 26:33]
  %tmp.2 = sext i32 %i1 to i64, !dbg !108         ; [#uses=2 type=i64] [debug line = 27:3]
  %s0.addr.1 = getelementptr inbounds [6 x [24 x [24 x float]]]* %s0, i64 0, i64 %tmp.2, i64 0, !dbg !108 ; [#uses=1 type=[24 x float]*] [debug line = 27:3]
  %s1.addr = getelementptr inbounds [6 x [24 x [24 x float]]]* %s1, i64 0, i64 %tmp.2, i64 0, !dbg !108 ; [#uses=1 type=[24 x float]*] [debug line = 27:3]
  call fastcc void @ReLU([24 x float]* %s0.addr.1, [24 x float]* %s1.addr), !dbg !108 ; [debug line = 27:3]
  %rend7 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i32 %rbegin6) nounwind, !dbg !109 ; [#uses=0 type=i32] [debug line = 28:2]
  %i.2 = add nsw i32 %i1, 1, !dbg !110            ; [#uses=1 type=i32] [debug line = 26:27]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !111), !dbg !110 ; [debug line = 26:27] [debug variable = i]
  br label %.preheader3, !dbg !110                ; [debug line = 26:27]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %i2 = phi i32 [ %i.3, %4 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i2, 6, !dbg !104       ; [#uses=1 type=i1] [debug line = 31:23]
  br i1 %exitcond, label %5, label %4, !dbg !104  ; [debug line = 31:23]

; <label>:4                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !112 ; [debug line = 31:36]
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !112 ; [#uses=1 type=i32] [debug line = 31:36]
  %tmp.6 = sext i32 %i2 to i64, !dbg !114         ; [#uses=2 type=i64] [debug line = 32:3]
  %s1.addr.1 = getelementptr inbounds [6 x [24 x [24 x float]]]* %s1, i64 0, i64 %tmp.6, i64 0, !dbg !114 ; [#uses=1 type=[24 x float]*] [debug line = 32:3]
  %s2.addr.1 = getelementptr inbounds [6 x [12 x [12 x float]]]* %s2, i64 0, i64 %tmp.6, i64 0, !dbg !114 ; [#uses=1 type=[12 x float]*] [debug line = 32:3]
  call fastcc void @maxpool([24 x float]* %s1.addr.1, [12 x float]* %s2.addr.1), !dbg !114 ; [debug line = 32:3]
  %rend5 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0), i32 %rbegin4) nounwind, !dbg !115 ; [#uses=0 type=i32] [debug line = 33:2]
  %i.3 = add nsw i32 %i2, 1, !dbg !116            ; [#uses=1 type=i32] [debug line = 31:30]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !117), !dbg !116 ; [debug line = 31:30] [debug variable = i]
  br label %.preheader, !dbg !116                 ; [debug line = 31:30]

; <label>:5                                       ; preds = %.preheader
  %s2.addr = getelementptr inbounds [6 x [12 x [12 x float]]]* %s2, i64 0, i64 0, !dbg !118 ; [#uses=1 type=[12 x [12 x float]]*] [debug line = 36:11]
  %s3.addr = getelementptr inbounds [864 x float]* %s3, i64 0, i64 0, !dbg !118 ; [#uses=3 type=float*] [debug line = 36:11]
  call fastcc void @flatten([12 x [12 x float]]* %s2.addr, float* %s3.addr), !dbg !118 ; [debug line = 36:11]
  %W1.addr = getelementptr inbounds [864 x float]* %W1, i64 0, i64 0, !dbg !119 ; [#uses=1 type=float*] [debug line = 39:12]
  %tmp.4 = call fastcc float @FCL(float* %s3.addr, float* %W1.addr), !dbg !119 ; [#uses=1 type=float] [debug line = 39:12]
  %cost.addr = getelementptr inbounds [2 x float]* %cost, i64 0, i64 0, !dbg !119 ; [#uses=2 type=float*] [debug line = 39:12]
  store float %tmp.4, float* %cost.addr, align 4, !dbg !119 ; [debug line = 39:12]
  %W1.addr.1 = getelementptr inbounds [864 x float]* %W1, i64 1, i64 0, !dbg !120 ; [#uses=1 type=float*] [debug line = 40:12]
  %tmp.5 = call fastcc float @FCL(float* %s3.addr, float* %W1.addr.1), !dbg !120 ; [#uses=1 type=float] [debug line = 40:12]
  %cost.addr.1 = getelementptr inbounds [2 x float]* %cost, i64 0, i64 1, !dbg !120 ; [#uses=1 type=float*] [debug line = 40:12]
  store float %tmp.5, float* %cost.addr.1, align 4, !dbg !120 ; [debug line = 40:12]
  call fastcc void @softmax(float* %cost.addr, float* %res), !dbg !121 ; [debug line = 43:2]
  ret void, !dbg !122                             ; [debug line = 44:1]
}

; [#uses=6]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=17]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecResource(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=14]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
define internal fastcc void @convolve([28 x float]* %A, [5 x float]* %B, [24 x float]* %conv) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{[28 x float]* %A}, i64 0, metadata !123), !dbg !124 ; [debug line = 54:22] [debug variable = A]
  call void @llvm.dbg.value(metadata !{[5 x float]* %B}, i64 0, metadata !125), !dbg !126 ; [debug line = 54:39] [debug variable = B]
  call void @llvm.dbg.value(metadata !{[24 x float]* %conv}, i64 0, metadata !127), !dbg !128 ; [debug line = 54:54] [debug variable = conv]
  call void (...)* @_ssdm_SpecArrayDimSize([28 x float]* %A, i32 28) nounwind, !dbg !129 ; [debug line = 54:81]
  call void (...)* @_ssdm_SpecArrayDimSize([5 x float]* %B, i32 5) nounwind, !dbg !131 ; [debug line = 54:110]
  call void (...)* @_ssdm_SpecArrayDimSize([24 x float]* %conv, i32 24) nounwind, !dbg !132 ; [debug line = 54:138]
  br label %1, !dbg !133                          ; [debug line = 59:24]

; <label>:1                                       ; preds = %11, %0
  %i = phi i32 [ 2, %0 ], [ %i.4, %11 ]           ; [#uses=3 type=i32]
  %exitcond3 = icmp eq i32 %i, 26, !dbg !133      ; [#uses=1 type=i1] [debug line = 59:24]
  br i1 %exitcond3, label %12, label %2, !dbg !133 ; [debug line = 59:24]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !135 ; [debug line = 59:50]
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !135 ; [#uses=1 type=i32] [debug line = 59:50]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !137 ; [debug line = 60:1]
  %tmp = add nsw i32 %i, -2, !dbg !138            ; [#uses=2 type=i32] [debug line = 61:5]
  %tmp.8 = sext i32 %tmp to i64, !dbg !138        ; [#uses=1 type=i64] [debug line = 61:5]
  br label %3, !dbg !141                          ; [debug line = 60:26]

; <label>:3                                       ; preds = %10, %2
  %j = phi i32 [ 2, %2 ], [ %j.1, %10 ]           ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %j, 26, !dbg !141      ; [#uses=1 type=i1] [debug line = 60:26]
  br i1 %exitcond2, label %11, label %4, !dbg !141 ; [debug line = 60:26]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !142 ; [debug line = 60:52]
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !142 ; [#uses=1 type=i32] [debug line = 60:52]
  %y = add nsw i32 %j, -2, !dbg !138              ; [#uses=2 type=i32] [debug line = 61:5]
  %tmp.11 = sext i32 %y to i64, !dbg !138         ; [#uses=2 type=i64] [debug line = 61:5]
  %conv.addr = getelementptr inbounds [24 x float]* %conv, i64 %tmp.8, i64 %tmp.11, !dbg !138 ; [#uses=3 type=float*] [debug line = 61:5]
  store float 0.000000e+00, float* %conv.addr, align 4, !dbg !138 ; [debug line = 61:5]
  br label %5, !dbg !143                          ; [debug line = 62:12]

; <label>:5                                       ; preds = %9, %4
  %tmp.12 = phi float [ 0.000000e+00, %4 ], [ %tmp.19, %9 ] ; [#uses=1 type=float]
  %k = phi i32 [ 0, %4 ], [ %k.1, %9 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %k, 5, !dbg !143       ; [#uses=1 type=i1] [debug line = 62:12]
  br i1 %exitcond1, label %10, label %6, !dbg !143 ; [debug line = 62:12]

; <label>:6                                       ; preds = %5
  %x = add i32 %k, %tmp, !dbg !145                ; [#uses=1 type=i32] [debug line = 63:11]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !147), !dbg !145 ; [debug line = 63:11] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !148), !dbg !149 ; [debug line = 64:11] [debug variable = y]
  %tmp.15 = sext i32 %x to i64, !dbg !150         ; [#uses=2 type=i64] [debug line = 65:11]
  %A.addr = getelementptr inbounds [28 x float]* %A, i64 %tmp.15, i64 %tmp.11, !dbg !150 ; [#uses=1 type=float*] [debug line = 65:11]
  %A.load = load float* %A.addr, align 4, !dbg !150 ; [#uses=2 type=float] [debug line = 65:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %A.load) nounwind
  %tmp.16 = sext i32 %k to i64, !dbg !150         ; [#uses=2 type=i64] [debug line = 65:11]
  %B.addr = getelementptr inbounds [5 x float]* %B, i64 %tmp.16, i64 0, !dbg !150 ; [#uses=1 type=float*] [debug line = 65:11]
  %B.load = load float* %B.addr, align 4, !dbg !150 ; [#uses=2 type=float] [debug line = 65:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %B.load) nounwind
  %temp = fmul float %A.load, %B.load, !dbg !150  ; [#uses=1 type=float] [debug line = 65:11]
  call void @llvm.dbg.value(metadata !{float %temp}, i64 0, metadata !151), !dbg !150 ; [debug line = 65:11] [debug variable = temp]
  br label %7, !dbg !152                          ; [debug line = 66:30]

; <label>:7                                       ; preds = %8, %6
  %tmp.18 = phi float [ %tmp.12, %6 ], [ %tmp.22, %8 ] ; [#uses=3 type=float]
  %l = phi i32 [ 1, %6 ], [ %l.1, %8 ]            ; [#uses=4 type=i32]
  %temp1 = phi float [ %temp, %6 ], [ %temp.2, %8 ] ; [#uses=2 type=float]
  %exitcond = icmp eq i32 %l, 5, !dbg !152        ; [#uses=1 type=i1] [debug line = 66:30]
  br i1 %exitcond, label %9, label %8, !dbg !152  ; [debug line = 66:30]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !154 ; [debug line = 66:46]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !154 ; [#uses=1 type=i32] [debug line = 66:46]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !156 ; [debug line = 67:1]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !147), !dbg !157 ; [debug line = 67:11] [debug variable = x]
  %y.1 = add i32 %l, %y, !dbg !158                ; [#uses=1 type=i32] [debug line = 68:11]
  call void @llvm.dbg.value(metadata !{i32 %y.1}, i64 0, metadata !148), !dbg !158 ; [debug line = 68:11] [debug variable = y]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %tmp.18) nounwind
  %tmp.22 = fadd float %tmp.18, %temp1, !dbg !159 ; [#uses=2 type=float] [debug line = 69:11]
  store float %tmp.22, float* %conv.addr, align 4, !dbg !159 ; [debug line = 69:11]
  %tmp.23 = sext i32 %y.1 to i64, !dbg !160       ; [#uses=1 type=i64] [debug line = 70:11]
  %A.addr.1 = getelementptr inbounds [28 x float]* %A, i64 %tmp.15, i64 %tmp.23, !dbg !160 ; [#uses=1 type=float*] [debug line = 70:11]
  %A.load.1 = load float* %A.addr.1, align 4, !dbg !160 ; [#uses=2 type=float] [debug line = 70:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %A.load.1) nounwind
  %tmp.24 = sext i32 %l to i64, !dbg !160         ; [#uses=1 type=i64] [debug line = 70:11]
  %B.addr.1 = getelementptr inbounds [5 x float]* %B, i64 %tmp.16, i64 %tmp.24, !dbg !160 ; [#uses=1 type=float*] [debug line = 70:11]
  %B.load.1 = load float* %B.addr.1, align 4, !dbg !160 ; [#uses=2 type=float] [debug line = 70:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %B.load.1) nounwind
  %temp.2 = fmul float %A.load.1, %B.load.1, !dbg !160 ; [#uses=1 type=float] [debug line = 70:11]
  call void @llvm.dbg.value(metadata !{float %temp.2}, i64 0, metadata !151), !dbg !160 ; [debug line = 70:11] [debug variable = temp]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str10, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !161 ; [#uses=0 type=i32] [debug line = 71:9]
  %l.1 = add nsw i32 %l, 1, !dbg !162             ; [#uses=1 type=i32] [debug line = 66:40]
  call void @llvm.dbg.value(metadata !{i32 %l.1}, i64 0, metadata !163), !dbg !162 ; [debug line = 66:40] [debug variable = l]
  br label %7, !dbg !162                          ; [debug line = 66:40]

; <label>:9                                       ; preds = %7
  %temp.0.lcssa = phi float [ %temp1, %7 ]        ; [#uses=1 type=float]
  %.lcssa = phi float [ %tmp.18, %7 ]             ; [#uses=2 type=float]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %.lcssa) nounwind
  %tmp.19 = fadd float %.lcssa, %temp.0.lcssa, !dbg !164 ; [#uses=2 type=float] [debug line = 72:9]
  store float %tmp.19, float* %conv.addr, align 4, !dbg !164 ; [debug line = 72:9]
  %k.1 = add nsw i32 %k, 1, !dbg !165             ; [#uses=1 type=i32] [debug line = 62:22]
  call void @llvm.dbg.value(metadata !{i32 %k.1}, i64 0, metadata !166), !dbg !165 ; [debug line = 62:22] [debug variable = k]
  br label %5, !dbg !165                          ; [debug line = 62:22]

; <label>:10                                      ; preds = %5
  %rend5 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), i32 %rbegin4) nounwind, !dbg !167 ; [#uses=0 type=i32] [debug line = 74:5]
  %j.1 = add nsw i32 %j, 1, !dbg !168             ; [#uses=1 type=i32] [debug line = 60:46]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !169), !dbg !168 ; [debug line = 60:46] [debug variable = j]
  br label %3, !dbg !168                          ; [debug line = 60:46]

; <label>:11                                      ; preds = %3
  %rend7 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i32 %rbegin6) nounwind, !dbg !170 ; [#uses=0 type=i32] [debug line = 75:3]
  %i.4 = add nsw i32 %i, 1, !dbg !171             ; [#uses=1 type=i32] [debug line = 59:44]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !172), !dbg !171 ; [debug line = 59:44] [debug variable = i]
  br label %1, !dbg !171                          ; [debug line = 59:44]

; <label>:12                                      ; preds = %1
  ret void, !dbg !173                             ; [debug line = 76:1]
}

; [#uses=1]
define internal fastcc void @ReLU([24 x float]* %inp, [24 x float]* %out) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{[24 x float]* %inp}, i64 0, metadata !174), !dbg !175 ; [debug line = 78:17] [debug variable = inp]
  call void @llvm.dbg.value(metadata !{[24 x float]* %out}, i64 0, metadata !176), !dbg !177 ; [debug line = 78:48] [debug variable = out]
  call void (...)* @_ssdm_SpecArrayDimSize([24 x float]* %inp, i32 24) nounwind, !dbg !178 ; [debug line = 78:74]
  call void (...)* @_ssdm_SpecArrayDimSize([24 x float]* %out, i32 24) nounwind, !dbg !180 ; [debug line = 78:111]
  br label %1, !dbg !181                          ; [debug line = 80:26]

; <label>:1                                       ; preds = %8, %0
  %i = phi i32 [ 0, %0 ], [ %i.5, %8 ]            ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i, 24, !dbg !181      ; [#uses=1 type=i1] [debug line = 80:26]
  br i1 %exitcond1, label %9, label %2, !dbg !181 ; [debug line = 80:26]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !183 ; [debug line = 80:46]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !183 ; [#uses=1 type=i32] [debug line = 80:46]
  %tmp = sext i32 %i to i64, !dbg !185            ; [#uses=3 type=i64] [debug line = 83:4]
  br label %3, !dbg !188                          ; [debug line = 81:15]

; <label>:3                                       ; preds = %7, %2
  %j = phi i32 [ 0, %2 ], [ %j.2, %7 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j, 24, !dbg !188       ; [#uses=1 type=i1] [debug line = 81:15]
  br i1 %exitcond, label %8, label %4, !dbg !188  ; [debug line = 81:15]

; <label>:4                                       ; preds = %3
  %tmp.28 = sext i32 %j to i64, !dbg !185         ; [#uses=3 type=i64] [debug line = 83:4]
  %inp.addr = getelementptr inbounds [24 x float]* %inp, i64 %tmp, i64 %tmp.28, !dbg !185 ; [#uses=1 type=float*] [debug line = 83:4]
  %inp.load = load float* %inp.addr, align 4, !dbg !185 ; [#uses=4 type=float] [debug line = 83:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %inp.load) nounwind
  %tmp.29 = fcmp ogt float %inp.load, 0.000000e+00, !dbg !185 ; [#uses=1 type=i1] [debug line = 83:4]
  br i1 %tmp.29, label %5, label %6, !dbg !185    ; [debug line = 83:4]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %inp.load) nounwind
  %out.addr = getelementptr inbounds [24 x float]* %out, i64 %tmp, i64 %tmp.28, !dbg !189 ; [#uses=1 type=float*] [debug line = 84:5]
  store float %inp.load, float* %out.addr, align 4, !dbg !189 ; [debug line = 84:5]
  br label %7, !dbg !191                          ; [debug line = 85:4]

; <label>:6                                       ; preds = %4
  %out.addr.1 = getelementptr inbounds [24 x float]* %out, i64 %tmp, i64 %tmp.28, !dbg !192 ; [#uses=1 type=float*] [debug line = 87:5]
  store float 0.000000e+00, float* %out.addr.1, align 4, !dbg !192 ; [debug line = 87:5]
  br label %7

; <label>:7                                       ; preds = %6, %5
  %j.2 = add nsw i32 %j, 1, !dbg !194             ; [#uses=1 type=i32] [debug line = 81:29]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !195), !dbg !194 ; [debug line = 81:29] [debug variable = j]
  br label %3, !dbg !194                          ; [debug line = 81:29]

; <label>:8                                       ; preds = %3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !196 ; [#uses=0 type=i32] [debug line = 90:2]
  %i.5 = add nsw i32 %i, 1, !dbg !197             ; [#uses=1 type=i32] [debug line = 80:40]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !198), !dbg !197 ; [debug line = 80:40] [debug variable = i]
  br label %1, !dbg !197                          ; [debug line = 80:40]

; <label>:9                                       ; preds = %1
  ret void, !dbg !199                             ; [debug line = 91:1]
}

; [#uses=1]
define internal fastcc void @maxpool([24 x float]* %inp, [12 x float]* %out) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{[24 x float]* %inp}, i64 0, metadata !200), !dbg !201 ; [debug line = 93:20] [debug variable = inp]
  call void @llvm.dbg.value(metadata !{[12 x float]* %out}, i64 0, metadata !202), !dbg !203 ; [debug line = 93:51] [debug variable = out]
  call void (...)* @_ssdm_SpecArrayDimSize([24 x float]* %inp, i32 24) nounwind, !dbg !204 ; [debug line = 93:85]
  call void (...)* @_ssdm_SpecArrayDimSize([12 x float]* %out, i32 12) nounwind, !dbg !206 ; [debug line = 93:122]
  br label %1, !dbg !207                          ; [debug line = 95:29]

; <label>:1                                       ; preds = %10, %0
  %i = phi i32 [ 0, %0 ], [ %i.6, %10 ]           ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %i, 12, !dbg !207      ; [#uses=1 type=i1] [debug line = 95:29]
  br i1 %exitcond1, label %11, label %2, !dbg !207 ; [debug line = 95:29]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !209 ; [debug line = 95:53]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !209 ; [#uses=1 type=i32] [debug line = 95:53]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !211 ; [debug line = 96:1]
  %tmp = shl nsw i32 %i, 1, !dbg !212             ; [#uses=2 type=i32] [debug line = 97:4]
  %tmp.31 = sext i32 %tmp to i64, !dbg !212       ; [#uses=2 type=i64] [debug line = 97:4]
  %tmp.32 = or i32 %tmp, 1, !dbg !215             ; [#uses=1 type=i32] [debug line = 102:4]
  %tmp.33 = sext i32 %tmp.32 to i64, !dbg !215    ; [#uses=2 type=i64] [debug line = 102:4]
  %tmp.34 = sext i32 %i to i64, !dbg !216         ; [#uses=1 type=i64] [debug line = 108:4]
  br label %3, !dbg !217                          ; [debug line = 96:15]

; <label>:3                                       ; preds = %._crit_edge2, %2
  %j = phi i32 [ 0, %2 ], [ %j.3, %._crit_edge2 ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %j, 12, !dbg !217       ; [#uses=1 type=i1] [debug line = 96:15]
  br i1 %exitcond, label %10, label %4, !dbg !217 ; [debug line = 96:15]

; <label>:4                                       ; preds = %3
  %tmp.36 = shl nsw i32 %j, 1, !dbg !212          ; [#uses=2 type=i32] [debug line = 97:4]
  %tmp.37 = sext i32 %tmp.36 to i64, !dbg !212    ; [#uses=2 type=i64] [debug line = 97:4]
  %inp.addr = getelementptr inbounds [24 x float]* %inp, i64 %tmp.31, i64 %tmp.37, !dbg !212 ; [#uses=1 type=float*] [debug line = 97:4]
  %max = load float* %inp.addr, align 4, !dbg !212 ; [#uses=4 type=float] [debug line = 97:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %max) nounwind
  %tmp.38 = or i32 %tmp.36, 1, !dbg !212          ; [#uses=1 type=i32] [debug line = 97:4]
  %tmp.39 = sext i32 %tmp.38 to i64, !dbg !212    ; [#uses=2 type=i64] [debug line = 97:4]
  %inp.addr.1 = getelementptr inbounds [24 x float]* %inp, i64 %tmp.31, i64 %tmp.39, !dbg !212 ; [#uses=1 type=float*] [debug line = 97:4]
  %max.3 = load float* %inp.addr.1, align 4, !dbg !212 ; [#uses=4 type=float] [debug line = 97:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %max.3) nounwind
  %tmp.40 = fcmp ogt float %max, %max.3, !dbg !212 ; [#uses=1 type=i1] [debug line = 97:4]
  br i1 %tmp.40, label %5, label %6, !dbg !212    ; [debug line = 97:4]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %max) nounwind
  call void @llvm.dbg.value(metadata !{float %max}, i64 0, metadata !218), !dbg !219 ; [debug line = 98:5] [debug variable = max]
  br label %7, !dbg !221                          ; [debug line = 99:4]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %max.3) nounwind
  call void @llvm.dbg.value(metadata !{float %max.3}, i64 0, metadata !218), !dbg !222 ; [debug line = 100:5] [debug variable = max]
  br label %7

; <label>:7                                       ; preds = %6, %5
  %max4 = phi float [ %max, %5 ], [ %max.3, %6 ]  ; [#uses=2 type=float]
  %inp.addr.2 = getelementptr inbounds [24 x float]* %inp, i64 %tmp.33, i64 %tmp.37, !dbg !215 ; [#uses=1 type=float*] [debug line = 102:4]
  %max.5 = load float* %inp.addr.2, align 4, !dbg !215 ; [#uses=4 type=float] [debug line = 102:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %max.5) nounwind
  %tmp.41 = fcmp ogt float %max.5, %max4, !dbg !215 ; [#uses=1 type=i1] [debug line = 102:4]
  br i1 %tmp.41, label %8, label %._crit_edge, !dbg !215 ; [debug line = 102:4]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %max.5) nounwind
  call void @llvm.dbg.value(metadata !{float %max.5}, i64 0, metadata !218), !dbg !224 ; [debug line = 103:5] [debug variable = max]
  br label %._crit_edge, !dbg !226                ; [debug line = 104:4]

._crit_edge:                                      ; preds = %8, %7
  %max.1 = phi float [ %max.5, %8 ], [ %max4, %7 ] ; [#uses=2 type=float]
  %inp.addr.3 = getelementptr inbounds [24 x float]* %inp, i64 %tmp.33, i64 %tmp.39, !dbg !227 ; [#uses=1 type=float*] [debug line = 105:4]
  %max.6 = load float* %inp.addr.3, align 4, !dbg !227 ; [#uses=4 type=float] [debug line = 105:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %max.6) nounwind
  %tmp.42 = fcmp ogt float %max.6, %max.1, !dbg !227 ; [#uses=1 type=i1] [debug line = 105:4]
  br i1 %tmp.42, label %9, label %._crit_edge2, !dbg !227 ; [debug line = 105:4]

; <label>:9                                       ; preds = %._crit_edge
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %max.6) nounwind
  call void @llvm.dbg.value(metadata !{float %max.6}, i64 0, metadata !218), !dbg !228 ; [debug line = 106:5] [debug variable = max]
  br label %._crit_edge2, !dbg !230               ; [debug line = 107:4]

._crit_edge2:                                     ; preds = %9, %._crit_edge
  %max.2 = phi float [ %max.6, %9 ], [ %max.1, %._crit_edge ] ; [#uses=1 type=float]
  %tmp.43 = sext i32 %j to i64, !dbg !216         ; [#uses=1 type=i64] [debug line = 108:4]
  %out.addr = getelementptr inbounds [12 x float]* %out, i64 %tmp.34, i64 %tmp.43, !dbg !216 ; [#uses=1 type=float*] [debug line = 108:4]
  store float %max.2, float* %out.addr, align 4, !dbg !216 ; [debug line = 108:4]
  %j.3 = add nsw i32 %j, 1, !dbg !231             ; [#uses=1 type=i32] [debug line = 96:33]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !232), !dbg !231 ; [debug line = 96:33] [debug variable = j]
  br label %3, !dbg !231                          ; [debug line = 96:33]

; <label>:10                                      ; preds = %3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !233 ; [#uses=0 type=i32] [debug line = 120:2]
  %i.6 = add nsw i32 %i, 1, !dbg !234             ; [#uses=1 type=i32] [debug line = 95:47]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !235), !dbg !234 ; [debug line = 95:47] [debug variable = i]
  br label %1, !dbg !234                          ; [debug line = 95:47]

; <label>:11                                      ; preds = %1
  ret void, !dbg !236                             ; [debug line = 121:1]
}

; [#uses=1]
define internal fastcc void @flatten([12 x [12 x float]]* %inp, float* %out) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{[12 x [12 x float]]* %inp}, i64 0, metadata !237), !dbg !238 ; [debug line = 123:20] [debug variable = inp]
  call void @llvm.dbg.value(metadata !{float* %out}, i64 0, metadata !239), !dbg !240 ; [debug line = 123:62] [debug variable = out]
  call void (...)* @_ssdm_SpecArrayDimSize([12 x [12 x float]]* %inp, i32 6) nounwind, !dbg !241 ; [debug line = 123:101]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %out, i32 864) nounwind, !dbg !243 ; [debug line = 123:131]
  br label %1, !dbg !244                          ; [debug line = 124:29]

; <label>:1                                       ; preds = %6, %0
  %i = phi i32 [ 0, %0 ], [ %i.7, %6 ]            ; [#uses=4 type=i32]
  %exitcond2 = icmp eq i32 %i, 6, !dbg !244       ; [#uses=1 type=i1] [debug line = 124:29]
  br i1 %exitcond2, label %7, label %2, !dbg !244 ; [debug line = 124:29]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !246 ; [debug line = 124:42]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !246 ; [#uses=1 type=i32] [debug line = 124:42]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !248 ; [debug line = 125:1]
  %tmp = sext i32 %i to i64, !dbg !249            ; [#uses=1 type=i64] [debug line = 127:5]
  %tmp.45 = mul i32 %i, 144, !dbg !249            ; [#uses=1 type=i32] [debug line = 127:5]
  br label %3, !dbg !254                          ; [debug line = 125:15]

; <label>:3                                       ; preds = %5, %2
  %j = phi i32 [ 0, %2 ], [ %j.4, %5 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %j, 12, !dbg !254      ; [#uses=1 type=i1] [debug line = 125:15]
  br i1 %exitcond1, label %6, label %.preheader.preheader, !dbg !254 ; [debug line = 125:15]

.preheader.preheader:                             ; preds = %3
  %tmp.47 = sext i32 %j to i64, !dbg !249         ; [#uses=1 type=i64] [debug line = 127:5]
  %tmp.48 = mul nsw i32 %j, 12, !dbg !249         ; [#uses=1 type=i32] [debug line = 127:5]
  br label %.preheader, !dbg !255                 ; [debug line = 126:16]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %k = phi i32 [ %k.2, %4 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %k, 12, !dbg !255       ; [#uses=1 type=i1] [debug line = 126:16]
  br i1 %exitcond, label %5, label %4, !dbg !255  ; [debug line = 126:16]

; <label>:4                                       ; preds = %.preheader
  %tmp.50 = sext i32 %k to i64, !dbg !249         ; [#uses=1 type=i64] [debug line = 127:5]
  %inp.addr = getelementptr inbounds [12 x [12 x float]]* %inp, i64 %tmp, i64 %tmp.47, i64 %tmp.50, !dbg !249 ; [#uses=1 type=float*] [debug line = 127:5]
  %inp.load = load float* %inp.addr, align 4, !dbg !249 ; [#uses=2 type=float] [debug line = 127:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %inp.load) nounwind
  %tmp.51 = add i32 %tmp.48, %tmp.45, !dbg !249   ; [#uses=1 type=i32] [debug line = 127:5]
  %tmp.52 = add i32 %tmp.51, %k, !dbg !249        ; [#uses=1 type=i32] [debug line = 127:5]
  %tmp.53 = sext i32 %tmp.52 to i64, !dbg !249    ; [#uses=1 type=i64] [debug line = 127:5]
  %out.addr = getelementptr inbounds float* %out, i64 %tmp.53, !dbg !249 ; [#uses=1 type=float*] [debug line = 127:5]
  store float %inp.load, float* %out.addr, align 4, !dbg !249 ; [debug line = 127:5]
  %k.2 = add nsw i32 %k, 1, !dbg !256             ; [#uses=1 type=i32] [debug line = 126:36]
  call void @llvm.dbg.value(metadata !{i32 %k.2}, i64 0, metadata !257), !dbg !256 ; [debug line = 126:36] [debug variable = k]
  br label %.preheader, !dbg !256                 ; [debug line = 126:36]

; <label>:5                                       ; preds = %.preheader
  %j.4 = add nsw i32 %j, 1, !dbg !258             ; [#uses=1 type=i32] [debug line = 125:35]
  call void @llvm.dbg.value(metadata !{i32 %j.4}, i64 0, metadata !259), !dbg !258 ; [debug line = 125:35] [debug variable = j]
  br label %3, !dbg !258                          ; [debug line = 125:35]

; <label>:6                                       ; preds = %3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str13, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !260 ; [#uses=0 type=i32] [debug line = 130:2]
  %i.7 = add nsw i32 %i, 1, !dbg !261             ; [#uses=1 type=i32] [debug line = 124:36]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !262), !dbg !261 ; [debug line = 124:36] [debug variable = i]
  br label %1, !dbg !261                          ; [debug line = 124:36]

; <label>:7                                       ; preds = %1
  ret void, !dbg !263                             ; [debug line = 131:1]
}

; [#uses=2]
define internal fastcc float @FCL(float* %inp, float* %W) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{float* %inp}, i64 0, metadata !264), !dbg !265 ; [debug line = 133:17] [debug variable = inp]
  call void @llvm.dbg.value(metadata !{float* %W}, i64 0, metadata !266), !dbg !267 ; [debug line = 133:61] [debug variable = W]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %W, i32 864) nounwind, !dbg !268 ; [debug line = 133:98]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %inp, i32 864) nounwind, !dbg !270 ; [debug line = 133:156]
  br label %1, !dbg !271                          ; [debug line = 135:25]

; <label>:1                                       ; preds = %2, %0
  %out = phi float [ 0.000000e+00, %0 ], [ %out.1, %2 ] ; [#uses=2 type=float]
  %i = phi i32 [ 0, %0 ], [ %i.8, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 864, !dbg !271      ; [#uses=1 type=i1] [debug line = 135:25]
  br i1 %exitcond, label %3, label %2, !dbg !271  ; [debug line = 135:25]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0)) nounwind, !dbg !273 ; [debug line = 135:70]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0)) nounwind, !dbg !273 ; [#uses=1 type=i32] [debug line = 135:70]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !275 ; [debug line = 136:1]
  %tmp = sext i32 %i to i64, !dbg !276            ; [#uses=2 type=i64] [debug line = 136:3]
  %inp.addr = getelementptr inbounds float* %inp, i64 %tmp, !dbg !276 ; [#uses=1 type=float*] [debug line = 136:3]
  %inp.load = load float* %inp.addr, align 4, !dbg !276 ; [#uses=2 type=float] [debug line = 136:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %inp.load) nounwind
  %W.addr = getelementptr inbounds float* %W, i64 %tmp, !dbg !276 ; [#uses=1 type=float*] [debug line = 136:3]
  %W.load = load float* %W.addr, align 4, !dbg !276 ; [#uses=2 type=float] [debug line = 136:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %W.load) nounwind
  %tmp.55 = fmul float %inp.load, %W.load, !dbg !276 ; [#uses=1 type=float] [debug line = 136:3]
  %out.1 = fadd float %out, %tmp.55, !dbg !276    ; [#uses=1 type=float] [debug line = 136:3]
  call void @llvm.dbg.value(metadata !{float %out.1}, i64 0, metadata !277), !dbg !276 ; [debug line = 136:3] [debug variable = out]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !278 ; [#uses=0 type=i32] [debug line = 137:2]
  %i.8 = add nsw i32 %i, 1, !dbg !279             ; [#uses=1 type=i32] [debug line = 135:64]
  call void @llvm.dbg.value(metadata !{i32 %i.8}, i64 0, metadata !280), !dbg !279 ; [debug line = 135:64] [debug variable = i]
  br label %1, !dbg !279                          ; [debug line = 135:64]

; <label>:3                                       ; preds = %1
  %out.0.lcssa = phi float [ %out, %1 ]           ; [#uses=1 type=float]
  ret float %out.0.lcssa, !dbg !281               ; [debug line = 138:2]
}

; [#uses=1]
define internal fastcc void @softmax(float* %inp, float* %out) nounwind uwtable {
  %temp = alloca [2 x float], align 4             ; [#uses=3 type=[2 x float]*]
  call void @llvm.dbg.value(metadata !{float* %inp}, i64 0, metadata !282), !dbg !283 ; [debug line = 141:20] [debug variable = inp]
  call void @llvm.dbg.value(metadata !{float* %out}, i64 0, metadata !284), !dbg !285 ; [debug line = 141:34] [debug variable = out]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %inp, i32 2) nounwind, !dbg !286 ; [debug line = 141:43]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %out, i32 2) nounwind, !dbg !288 ; [debug line = 141:73]
  call void @llvm.dbg.declare(metadata !{[2 x float]* %temp}, metadata !289), !dbg !290 ; [debug line = 143:9] [debug variable = temp]
  br label %1, !dbg !291                          ; [debug line = 144:30]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.9, %2 ]            ; [#uses=3 type=i32]
  %sum = phi float [ 0.000000e+00, %0 ], [ %sum.2, %2 ] ; [#uses=2 type=float]
  %exitcond3 = icmp eq i32 %i, 2, !dbg !291       ; [#uses=1 type=i1] [debug line = 144:30]
  br i1 %exitcond3, label %.preheader5.preheader, label %2, !dbg !291 ; [debug line = 144:30]

.preheader5.preheader:                            ; preds = %1
  %sum.0.lcssa = phi float [ %sum, %1 ]           ; [#uses=1 type=float]
  br label %.preheader5, !dbg !293                ; [debug line = 147:31]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str15, i64 0, i64 0)) nounwind, !dbg !295 ; [debug line = 144:43]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str15, i64 0, i64 0)) nounwind, !dbg !295 ; [#uses=1 type=i32] [debug line = 144:43]
  %tmp = sext i32 %i to i64, !dbg !297            ; [#uses=1 type=i64] [debug line = 145:4]
  %inp.addr = getelementptr inbounds float* %inp, i64 %tmp, !dbg !297 ; [#uses=1 type=float*] [debug line = 145:4]
  %inp.load = load float* %inp.addr, align 4, !dbg !297 ; [#uses=2 type=float] [debug line = 145:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %inp.load) nounwind
  %sum.2 = fadd float %sum, %inp.load, !dbg !297  ; [#uses=1 type=float] [debug line = 145:4]
  call void @llvm.dbg.value(metadata !{float %sum.2}, i64 0, metadata !298), !dbg !297 ; [debug line = 145:4] [debug variable = sum]
  %rend11 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str15, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !299 ; [#uses=0 type=i32] [debug line = 146:3]
  %i.9 = add nsw i32 %i, 1, !dbg !300             ; [#uses=1 type=i32] [debug line = 144:37]
  call void @llvm.dbg.value(metadata !{i32 %i.9}, i64 0, metadata !301), !dbg !300 ; [debug line = 144:37] [debug variable = i]
  br label %1, !dbg !300                          ; [debug line = 144:37]

.preheader5:                                      ; preds = %3, %.preheader5.preheader
  %i1 = phi i32 [ %i.10, %3 ], [ 0, %.preheader5.preheader ] ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %i1, 2, !dbg !293      ; [#uses=1 type=i1] [debug line = 147:31]
  br i1 %exitcond2, label %.preheader4.preheader, label %3, !dbg !293 ; [debug line = 147:31]

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4, !dbg !302                ; [debug line = 151:30]

; <label>:3                                       ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) nounwind, !dbg !304 ; [debug line = 147:44]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) nounwind, !dbg !304 ; [#uses=1 type=i32] [debug line = 147:44]
  %tmp.60 = sext i32 %i1 to i64, !dbg !306        ; [#uses=2 type=i64] [debug line = 148:4]
  %inp.addr.4 = getelementptr inbounds float* %inp, i64 %tmp.60, !dbg !306 ; [#uses=1 type=float*] [debug line = 148:4]
  %inp.load.2 = load float* %inp.addr.4, align 4, !dbg !306 ; [#uses=2 type=float] [debug line = 148:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %inp.load.2) nounwind
  %tmp.61 = fdiv float %inp.load.2, %sum.0.lcssa, !dbg !306 ; [#uses=1 type=float] [debug line = 148:4]
  %temp.addr = getelementptr inbounds [2 x float]* %temp, i64 0, i64 %tmp.60, !dbg !306 ; [#uses=1 type=float*] [debug line = 148:4]
  store float %tmp.61, float* %temp.addr, align 4, !dbg !306 ; [debug line = 148:4]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !307 ; [#uses=0 type=i32] [debug line = 149:3]
  %i.10 = add nsw i32 %i1, 1, !dbg !308           ; [#uses=1 type=i32] [debug line = 147:38]
  call void @llvm.dbg.value(metadata !{i32 %i.10}, i64 0, metadata !309), !dbg !308 ; [debug line = 147:38] [debug variable = i]
  br label %.preheader5, !dbg !308                ; [debug line = 147:38]

.preheader4:                                      ; preds = %4, %.preheader4.preheader
  %sum.1 = phi float [ %sum.3, %4 ], [ 0.000000e+00, %.preheader4.preheader ] ; [#uses=2 type=float]
  %i2 = phi i32 [ %i.11, %4 ], [ 0, %.preheader4.preheader ] ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i2, 2, !dbg !302      ; [#uses=1 type=i1] [debug line = 151:30]
  br i1 %exitcond1, label %.preheader.preheader, label %4, !dbg !302 ; [debug line = 151:30]

.preheader.preheader:                             ; preds = %.preheader4
  %sum.1.lcssa = phi float [ %sum.1, %.preheader4 ] ; [#uses=1 type=float]
  %tmp.63 = fpext float %sum.1.lcssa to double, !dbg !310 ; [#uses=1 type=double] [debug line = 155:13]
  br label %.preheader, !dbg !313                 ; [debug line = 154:31]

; <label>:4                                       ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) nounwind, !dbg !314 ; [debug line = 151:43]
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) nounwind, !dbg !314 ; [#uses=1 type=i32] [debug line = 151:43]
  %tmp.64 = sext i32 %i2 to i64, !dbg !316        ; [#uses=1 type=i64] [debug line = 152:11]
  %temp.addr.1 = getelementptr inbounds [2 x float]* %temp, i64 0, i64 %tmp.64, !dbg !316 ; [#uses=1 type=float*] [debug line = 152:11]
  %temp.load = load float* %temp.addr.1, align 4, !dbg !316 ; [#uses=2 type=float] [debug line = 152:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %temp.load) nounwind
  %tmp.65 = fpext float %temp.load to double, !dbg !316 ; [#uses=1 type=double] [debug line = 152:11]
  %tmp.66 = call double @llvm.exp.f64(double %tmp.65), !dbg !316 ; [#uses=1 type=double] [debug line = 152:11]
  %tmp.67 = fpext float %sum.1 to double, !dbg !316 ; [#uses=1 type=double] [debug line = 152:11]
  %tmp.68 = fadd double %tmp.67, %tmp.66, !dbg !316 ; [#uses=1 type=double] [debug line = 152:11]
  %sum.3 = fptrunc double %tmp.68 to float, !dbg !316 ; [#uses=1 type=float] [debug line = 152:11]
  call void @llvm.dbg.value(metadata !{float %sum.3}, i64 0, metadata !298), !dbg !316 ; [debug line = 152:11] [debug variable = sum]
  %rend7 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0), i32 %rbegin6) nounwind, !dbg !317 ; [#uses=0 type=i32] [debug line = 153:3]
  %i.11 = add nsw i32 %i2, 1, !dbg !318           ; [#uses=1 type=i32] [debug line = 151:37]
  call void @llvm.dbg.value(metadata !{i32 %i.11}, i64 0, metadata !319), !dbg !318 ; [debug line = 151:37] [debug variable = i]
  br label %.preheader4, !dbg !318                ; [debug line = 151:37]

.preheader:                                       ; preds = %5, %.preheader.preheader
  %i3 = phi i32 [ %i.12, %5 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i3, 2, !dbg !313       ; [#uses=1 type=i1] [debug line = 154:31]
  br i1 %exitcond, label %6, label %5, !dbg !313  ; [debug line = 154:31]

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) nounwind, !dbg !320 ; [debug line = 154:44]
  %rbegin8 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) nounwind, !dbg !320 ; [#uses=1 type=i32] [debug line = 154:44]
  %tmp.71 = sext i32 %i3 to i64, !dbg !310        ; [#uses=2 type=i64] [debug line = 155:13]
  %temp.addr.2 = getelementptr inbounds [2 x float]* %temp, i64 0, i64 %tmp.71, !dbg !310 ; [#uses=1 type=float*] [debug line = 155:13]
  %temp.load.1 = load float* %temp.addr.2, align 4, !dbg !310 ; [#uses=2 type=float] [debug line = 155:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %temp.load.1) nounwind
  %tmp.72 = fpext float %temp.load.1 to double, !dbg !310 ; [#uses=1 type=double] [debug line = 155:13]
  %tmp.73 = call double @llvm.exp.f64(double %tmp.72), !dbg !310 ; [#uses=1 type=double] [debug line = 155:13]
  %tmp.74 = fdiv double %tmp.73, %tmp.63, !dbg !310 ; [#uses=1 type=double] [debug line = 155:13]
  %tmp.75 = fptrunc double %tmp.74 to float, !dbg !310 ; [#uses=1 type=float] [debug line = 155:13]
  %out.addr = getelementptr inbounds float* %out, i64 %tmp.71, !dbg !310 ; [#uses=1 type=float*] [debug line = 155:13]
  store float %tmp.75, float* %out.addr, align 4, !dbg !310 ; [debug line = 155:13]
  %rend9 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0), i32 %rbegin8) nounwind, !dbg !321 ; [#uses=0 type=i32] [debug line = 156:3]
  %i.12 = add nsw i32 %i3, 1, !dbg !322           ; [#uses=1 type=i32] [debug line = 154:38]
  call void @llvm.dbg.value(metadata !{i32 %i.12}, i64 0, metadata !323), !dbg !322 ; [debug line = 154:38] [debug variable = i]
  br label %.preheader, !dbg !322                 ; [debug line = 154:38]

; <label>:6                                       ; preds = %.preheader
  ret void, !dbg !324                             ; [debug line = 157:1]
}

; [#uses=4]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=49]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=23]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=14]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=14]
declare i32 @_ssdm_op_SpecRegionEnd(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/littlefoot/18643_project/Hardware-Accel/HW/proj1_hls/solution1/.autopilot/db/obj_detector.pragma.2.cpp", metadata !"/home/littlefoot/18643_project/Hardware-Accel/HW", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !57} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !25, metadata !35, metadata !38, metadata !45, metadata !51, metadata !54}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"obj_detector", metadata !"obj_detector", metadata !"_Z12obj_detectorPA28_fPA5_A5_fPA864_fPf", metadata !6, i32 12, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([28 x float]*, [5 x [5 x float]]*, [864 x float]*, float*)* @obj_detector, null, null, metadata !23, i32 12} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"proj1_hls/obj_detector.cpp", metadata !"/home/littlefoot/18643_project/Hardware-Accel/HW", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !14, metadata !18, metadata !22}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 896, i64 32, i32 0, i32 0, metadata !11, metadata !12, i32 0, i32 0} ; [ DW_TAG_array_type ]
!11 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786465, i64 0, i64 27}       ; [ DW_TAG_subrange_type ]
!14 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ]
!15 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 800, i64 32, i32 0, i32 0, metadata !11, metadata !16, i32 0, i32 0} ; [ DW_TAG_array_type ]
!16 = metadata !{metadata !17, metadata !17}
!17 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ]
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 27648, i64 32, i32 0, i32 0, metadata !11, metadata !20, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 863}      ; [ DW_TAG_subrange_type ]
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!25 = metadata !{i32 786478, i32 0, metadata !6, metadata !"convolve", metadata !"convolve", metadata !"_Z8convolvePA28_fPA5_fPA24_f", metadata !6, i32 54, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([28 x float]*, [5 x float]*, [24 x float]*)* @convolve, null, null, metadata !23, i32 54} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !9, metadata !28, metadata !31}
!28 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!29 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 160, i64 32, i32 0, i32 0, metadata !11, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!30 = metadata !{metadata !17}
!31 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ]
!32 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 768, i64 32, i32 0, i32 0, metadata !11, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 786465, i64 0, i64 23}       ; [ DW_TAG_subrange_type ]
!35 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ReLU", metadata !"ReLU", metadata !"_Z4ReLUPA24_fS0_", metadata !6, i32 78, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([24 x float]*, [24 x float]*)* @ReLU, null, null, metadata !23, i32 78} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !31, metadata !31}
!38 = metadata !{i32 786478, i32 0, metadata !6, metadata !"maxpool", metadata !"maxpool", metadata !"_Z7maxpoolPA24_fPA12_f", metadata !6, i32 93, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([24 x float]*, [12 x float]*)* @maxpool, null, null, metadata !23, i32 93} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{null, metadata !31, metadata !41}
!41 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ]
!42 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 384, i64 32, i32 0, i32 0, metadata !11, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786465, i64 0, i64 11}       ; [ DW_TAG_subrange_type ]
!45 = metadata !{i32 786478, i32 0, metadata !6, metadata !"flatten", metadata !"flatten", metadata !"_Z7flattenPA12_A12_fPf", metadata !6, i32 123, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([12 x [12 x float]]*, float*)* @flatten, null, null, metadata !23, i32 123} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{null, metadata !48, metadata !22}
!48 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ]
!49 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4608, i64 32, i32 0, i32 0, metadata !11, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ]
!50 = metadata !{metadata !44, metadata !44}
!51 = metadata !{i32 786478, i32 0, metadata !6, metadata !"FCL", metadata !"FCL", metadata !"_Z3FCLPfS_", metadata !6, i32 133, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (float*, float*)* @FCL, null, null, metadata !23, i32 133} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{metadata !11, metadata !22, metadata !22}
!54 = metadata !{i32 786478, i32 0, metadata !6, metadata !"softmax", metadata !"softmax", metadata !"_Z7softmaxPfS_", metadata !6, i32 141, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*)* @softmax, null, null, metadata !23, i32 141} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!56 = metadata !{null, metadata !22, metadata !22}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !60, i32 168, metadata !61, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!60 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/littlefoot/18643_project/Hardware-Accel/HW", null} ; [ DW_TAG_file_type ]
!61 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!62 = metadata !{i32 786689, metadata !5, metadata !"A", metadata !6, i32 16777228, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 12, i32 25, metadata !5, null}
!64 = metadata !{i32 786689, metadata !5, metadata !"W0", metadata !6, i32 33554444, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!65 = metadata !{i32 12, i32 42, metadata !5, null}
!66 = metadata !{i32 786689, metadata !5, metadata !"W1", metadata !6, i32 50331660, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 12, i32 61, metadata !5, null}
!68 = metadata !{i32 786689, metadata !5, metadata !"res", metadata !6, i32 67108876, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!69 = metadata !{i32 12, i32 107, metadata !5, null}
!70 = metadata !{i32 12, i32 116, metadata !71, null}
!71 = metadata !{i32 786443, metadata !5, i32 12, i32 115, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 12, i32 145, metadata !71, null}
!73 = metadata !{i32 12, i32 175, metadata !71, null}
!74 = metadata !{i32 12, i32 204, metadata !71, null}
!75 = metadata !{i32 13, i32 1, metadata !71, null}
!76 = metadata !{i32 786688, metadata !71, metadata !"s0", metadata !6, i32 14, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 110592, i64 32, i32 0, i32 0, metadata !11, metadata !78, i32 0, i32 0} ; [ DW_TAG_array_type ]
!78 = metadata !{metadata !79, metadata !34, metadata !34}
!79 = metadata !{i32 786465, i64 0, i64 5}        ; [ DW_TAG_subrange_type ]
!80 = metadata !{i32 14, i32 8, metadata !71, null}
!81 = metadata !{i32 786688, metadata !71, metadata !"s1", metadata !6, i32 15, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 15, i32 8, metadata !71, null}
!83 = metadata !{i32 786688, metadata !71, metadata !"s2", metadata !6, i32 16, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 27648, i64 32, i32 0, i32 0, metadata !11, metadata !85, i32 0, i32 0} ; [ DW_TAG_array_type ]
!85 = metadata !{metadata !79, metadata !44, metadata !44}
!86 = metadata !{i32 16, i32 8, metadata !71, null}
!87 = metadata !{i32 786688, metadata !71, metadata !"s3", metadata !6, i32 17, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 17, i32 8, metadata !71, null}
!89 = metadata !{i32 786688, metadata !71, metadata !"cost", metadata !6, i32 18, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 32, i32 0, i32 0, metadata !11, metadata !91, i32 0, i32 0} ; [ DW_TAG_array_type ]
!91 = metadata !{metadata !92}
!92 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!93 = metadata !{i32 18, i32 8, metadata !71, null}
!94 = metadata !{i32 21, i32 19, metadata !95, null}
!95 = metadata !{i32 786443, metadata !71, i32 21, i32 8, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 26, i32 20, metadata !97, null}
!97 = metadata !{i32 786443, metadata !71, i32 26, i32 8, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 21, i32 32, metadata !99, null}
!99 = metadata !{i32 786443, metadata !95, i32 21, i32 31, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 22, i32 3, metadata !99, null}
!101 = metadata !{i32 23, i32 2, metadata !99, null}
!102 = metadata !{i32 21, i32 26, metadata !95, null}
!103 = metadata !{i32 786688, metadata !95, metadata !"i", metadata !6, i32 21, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 31, i32 23, metadata !105, null}
!105 = metadata !{i32 786443, metadata !71, i32 31, i32 11, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 26, i32 33, metadata !107, null}
!107 = metadata !{i32 786443, metadata !97, i32 26, i32 32, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 27, i32 3, metadata !107, null}
!109 = metadata !{i32 28, i32 2, metadata !107, null}
!110 = metadata !{i32 26, i32 27, metadata !97, null}
!111 = metadata !{i32 786688, metadata !97, metadata !"i", metadata !6, i32 26, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 31, i32 36, metadata !113, null}
!113 = metadata !{i32 786443, metadata !105, i32 31, i32 35, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 32, i32 3, metadata !113, null}
!115 = metadata !{i32 33, i32 2, metadata !113, null}
!116 = metadata !{i32 31, i32 30, metadata !105, null}
!117 = metadata !{i32 786688, metadata !105, metadata !"i", metadata !6, i32 31, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 36, i32 11, metadata !71, null}
!119 = metadata !{i32 39, i32 12, metadata !71, null}
!120 = metadata !{i32 40, i32 12, metadata !71, null}
!121 = metadata !{i32 43, i32 2, metadata !71, null}
!122 = metadata !{i32 44, i32 1, metadata !71, null}
!123 = metadata !{i32 786689, metadata !25, metadata !"A", metadata !6, i32 16777270, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!124 = metadata !{i32 54, i32 22, metadata !25, null}
!125 = metadata !{i32 786689, metadata !25, metadata !"B", metadata !6, i32 33554486, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 54, i32 39, metadata !25, null}
!127 = metadata !{i32 786689, metadata !25, metadata !"conv", metadata !6, i32 50331702, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!128 = metadata !{i32 54, i32 54, metadata !25, null}
!129 = metadata !{i32 54, i32 81, metadata !130, null}
!130 = metadata !{i32 786443, metadata !25, i32 54, i32 80, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 54, i32 110, metadata !130, null}
!132 = metadata !{i32 54, i32 138, metadata !130, null}
!133 = metadata !{i32 59, i32 24, metadata !134, null}
!134 = metadata !{i32 786443, metadata !130, i32 59, i32 19, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 59, i32 50, metadata !136, null}
!136 = metadata !{i32 786443, metadata !134, i32 59, i32 49, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 60, i32 1, metadata !136, null}
!138 = metadata !{i32 61, i32 5, metadata !139, null}
!139 = metadata !{i32 786443, metadata !140, i32 60, i32 51, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 786443, metadata !136, i32 60, i32 21, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 60, i32 26, metadata !140, null}
!142 = metadata !{i32 60, i32 52, metadata !139, null}
!143 = metadata !{i32 62, i32 12, metadata !144, null}
!144 = metadata !{i32 786443, metadata !139, i32 62, i32 7, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 63, i32 11, metadata !146, null}
!146 = metadata !{i32 786443, metadata !144, i32 62, i32 27, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 786688, metadata !130, metadata !"x", metadata !6, i32 55, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 786688, metadata !130, metadata !"y", metadata !6, i32 55, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 64, i32 11, metadata !146, null}
!150 = metadata !{i32 65, i32 11, metadata !146, null}
!151 = metadata !{i32 786688, metadata !130, metadata !"temp", metadata !6, i32 57, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 66, i32 30, metadata !153, null}
!153 = metadata !{i32 786443, metadata !146, i32 66, i32 25, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 66, i32 46, metadata !155, null}
!155 = metadata !{i32 786443, metadata !153, i32 66, i32 45, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 67, i32 1, metadata !155, null}
!157 = metadata !{i32 67, i32 11, metadata !155, null}
!158 = metadata !{i32 68, i32 11, metadata !155, null}
!159 = metadata !{i32 69, i32 11, metadata !155, null}
!160 = metadata !{i32 70, i32 11, metadata !155, null}
!161 = metadata !{i32 71, i32 9, metadata !155, null}
!162 = metadata !{i32 66, i32 40, metadata !153, null}
!163 = metadata !{i32 786688, metadata !130, metadata !"l", metadata !6, i32 56, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!164 = metadata !{i32 72, i32 9, metadata !146, null}
!165 = metadata !{i32 62, i32 22, metadata !144, null}
!166 = metadata !{i32 786688, metadata !130, metadata !"k", metadata !6, i32 56, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 74, i32 5, metadata !139, null}
!168 = metadata !{i32 60, i32 46, metadata !140, null}
!169 = metadata !{i32 786688, metadata !130, metadata !"j", metadata !6, i32 56, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 75, i32 3, metadata !136, null}
!171 = metadata !{i32 59, i32 44, metadata !134, null}
!172 = metadata !{i32 786688, metadata !130, metadata !"i", metadata !6, i32 56, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 76, i32 1, metadata !130, null}
!174 = metadata !{i32 786689, metadata !35, metadata !"inp", metadata !6, i32 16777294, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!175 = metadata !{i32 78, i32 17, metadata !35, null}
!176 = metadata !{i32 786689, metadata !35, metadata !"out", metadata !6, i32 33554510, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!177 = metadata !{i32 78, i32 48, metadata !35, null}
!178 = metadata !{i32 78, i32 74, metadata !179, null}
!179 = metadata !{i32 786443, metadata !35, i32 78, i32 73, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 78, i32 111, metadata !179, null}
!181 = metadata !{i32 80, i32 26, metadata !182, null}
!182 = metadata !{i32 786443, metadata !179, i32 80, i32 14, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 80, i32 46, metadata !184, null}
!184 = metadata !{i32 786443, metadata !182, i32 80, i32 45, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 83, i32 4, metadata !186, null}
!186 = metadata !{i32 786443, metadata !187, i32 81, i32 34, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 786443, metadata !184, i32 81, i32 3, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 81, i32 15, metadata !187, null}
!189 = metadata !{i32 84, i32 5, metadata !190, null}
!190 = metadata !{i32 786443, metadata !186, i32 83, i32 23, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 85, i32 4, metadata !190, null}
!192 = metadata !{i32 87, i32 5, metadata !193, null}
!193 = metadata !{i32 786443, metadata !186, i32 86, i32 9, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 81, i32 29, metadata !187, null}
!195 = metadata !{i32 786688, metadata !187, metadata !"j", metadata !6, i32 81, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!196 = metadata !{i32 90, i32 2, metadata !184, null}
!197 = metadata !{i32 80, i32 40, metadata !182, null}
!198 = metadata !{i32 786688, metadata !182, metadata !"i", metadata !6, i32 80, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!199 = metadata !{i32 91, i32 1, metadata !179, null}
!200 = metadata !{i32 786689, metadata !38, metadata !"inp", metadata !6, i32 16777309, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!201 = metadata !{i32 93, i32 20, metadata !38, null}
!202 = metadata !{i32 786689, metadata !38, metadata !"out", metadata !6, i32 33554525, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!203 = metadata !{i32 93, i32 51, metadata !38, null}
!204 = metadata !{i32 93, i32 85, metadata !205, null}
!205 = metadata !{i32 786443, metadata !38, i32 93, i32 84, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!206 = metadata !{i32 93, i32 122, metadata !205, null}
!207 = metadata !{i32 95, i32 29, metadata !208, null}
!208 = metadata !{i32 786443, metadata !205, i32 95, i32 17, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 95, i32 53, metadata !210, null}
!210 = metadata !{i32 786443, metadata !208, i32 95, i32 52, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 96, i32 1, metadata !210, null}
!212 = metadata !{i32 97, i32 4, metadata !213, null}
!213 = metadata !{i32 786443, metadata !214, i32 96, i32 38, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 786443, metadata !210, i32 96, i32 3, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!215 = metadata !{i32 102, i32 4, metadata !213, null}
!216 = metadata !{i32 108, i32 4, metadata !213, null}
!217 = metadata !{i32 96, i32 15, metadata !214, null}
!218 = metadata !{i32 786688, metadata !205, metadata !"max", metadata !6, i32 94, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!219 = metadata !{i32 98, i32 5, metadata !220, null}
!220 = metadata !{i32 786443, metadata !213, i32 97, i32 43, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!221 = metadata !{i32 99, i32 4, metadata !220, null}
!222 = metadata !{i32 100, i32 5, metadata !223, null}
!223 = metadata !{i32 786443, metadata !213, i32 99, i32 11, metadata !6, i32 29} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 103, i32 5, metadata !225, null}
!225 = metadata !{i32 786443, metadata !213, i32 102, i32 33, metadata !6, i32 30} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 104, i32 4, metadata !225, null}
!227 = metadata !{i32 105, i32 4, metadata !213, null}
!228 = metadata !{i32 106, i32 5, metadata !229, null}
!229 = metadata !{i32 786443, metadata !213, i32 105, i32 37, metadata !6, i32 31} ; [ DW_TAG_lexical_block ]
!230 = metadata !{i32 107, i32 4, metadata !229, null}
!231 = metadata !{i32 96, i32 33, metadata !214, null}
!232 = metadata !{i32 786688, metadata !214, metadata !"j", metadata !6, i32 96, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!233 = metadata !{i32 120, i32 2, metadata !210, null}
!234 = metadata !{i32 95, i32 47, metadata !208, null}
!235 = metadata !{i32 786688, metadata !208, metadata !"i", metadata !6, i32 95, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!236 = metadata !{i32 121, i32 1, metadata !205, null}
!237 = metadata !{i32 786689, metadata !45, metadata !"inp", metadata !6, i32 16777339, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!238 = metadata !{i32 123, i32 20, metadata !45, null}
!239 = metadata !{i32 786689, metadata !45, metadata !"out", metadata !6, i32 33554555, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!240 = metadata !{i32 123, i32 62, metadata !45, null}
!241 = metadata !{i32 123, i32 101, metadata !242, null}
!242 = metadata !{i32 786443, metadata !45, i32 123, i32 100, metadata !6, i32 32} ; [ DW_TAG_lexical_block ]
!243 = metadata !{i32 123, i32 131, metadata !242, null}
!244 = metadata !{i32 124, i32 29, metadata !245, null}
!245 = metadata !{i32 786443, metadata !242, i32 124, i32 17, metadata !6, i32 33} ; [ DW_TAG_lexical_block ]
!246 = metadata !{i32 124, i32 42, metadata !247, null}
!247 = metadata !{i32 786443, metadata !245, i32 124, i32 41, metadata !6, i32 34} ; [ DW_TAG_lexical_block ]
!248 = metadata !{i32 125, i32 1, metadata !247, null}
!249 = metadata !{i32 127, i32 5, metadata !250, null}
!250 = metadata !{i32 786443, metadata !251, i32 126, i32 41, metadata !6, i32 38} ; [ DW_TAG_lexical_block ]
!251 = metadata !{i32 786443, metadata !252, i32 126, i32 4, metadata !6, i32 37} ; [ DW_TAG_lexical_block ]
!252 = metadata !{i32 786443, metadata !253, i32 125, i32 39, metadata !6, i32 36} ; [ DW_TAG_lexical_block ]
!253 = metadata !{i32 786443, metadata !247, i32 125, i32 3, metadata !6, i32 35} ; [ DW_TAG_lexical_block ]
!254 = metadata !{i32 125, i32 15, metadata !253, null}
!255 = metadata !{i32 126, i32 16, metadata !251, null}
!256 = metadata !{i32 126, i32 36, metadata !251, null}
!257 = metadata !{i32 786688, metadata !251, metadata !"k", metadata !6, i32 126, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!258 = metadata !{i32 125, i32 35, metadata !253, null}
!259 = metadata !{i32 786688, metadata !253, metadata !"j", metadata !6, i32 125, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!260 = metadata !{i32 130, i32 2, metadata !247, null}
!261 = metadata !{i32 124, i32 36, metadata !245, null}
!262 = metadata !{i32 786688, metadata !245, metadata !"i", metadata !6, i32 124, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!263 = metadata !{i32 131, i32 1, metadata !242, null}
!264 = metadata !{i32 786689, metadata !51, metadata !"inp", metadata !6, i32 16777349, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!265 = metadata !{i32 133, i32 17, metadata !51, null}
!266 = metadata !{i32 786689, metadata !51, metadata !"W", metadata !6, i32 33554565, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!267 = metadata !{i32 133, i32 61, metadata !51, null}
!268 = metadata !{i32 133, i32 98, metadata !269, null}
!269 = metadata !{i32 786443, metadata !51, i32 133, i32 97, metadata !6, i32 39} ; [ DW_TAG_lexical_block ]
!270 = metadata !{i32 133, i32 156, metadata !269, null}
!271 = metadata !{i32 135, i32 25, metadata !272, null}
!272 = metadata !{i32 786443, metadata !269, i32 135, i32 13, metadata !6, i32 40} ; [ DW_TAG_lexical_block ]
!273 = metadata !{i32 135, i32 70, metadata !274, null}
!274 = metadata !{i32 786443, metadata !272, i32 135, i32 69, metadata !6, i32 41} ; [ DW_TAG_lexical_block ]
!275 = metadata !{i32 136, i32 1, metadata !274, null}
!276 = metadata !{i32 136, i32 3, metadata !274, null}
!277 = metadata !{i32 786688, metadata !269, metadata !"out", metadata !6, i32 134, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!278 = metadata !{i32 137, i32 2, metadata !274, null}
!279 = metadata !{i32 135, i32 64, metadata !272, null}
!280 = metadata !{i32 786688, metadata !272, metadata !"i", metadata !6, i32 135, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!281 = metadata !{i32 138, i32 2, metadata !269, null}
!282 = metadata !{i32 786689, metadata !54, metadata !"inp", metadata !6, i32 16777357, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!283 = metadata !{i32 141, i32 20, metadata !54, null}
!284 = metadata !{i32 786689, metadata !54, metadata !"out", metadata !6, i32 33554573, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!285 = metadata !{i32 141, i32 34, metadata !54, null}
!286 = metadata !{i32 141, i32 43, metadata !287, null}
!287 = metadata !{i32 786443, metadata !54, i32 141, i32 42, metadata !6, i32 42} ; [ DW_TAG_lexical_block ]
!288 = metadata !{i32 141, i32 73, metadata !287, null}
!289 = metadata !{i32 786688, metadata !287, metadata !"temp", metadata !6, i32 143, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!290 = metadata !{i32 143, i32 9, metadata !287, null}
!291 = metadata !{i32 144, i32 30, metadata !292, null}
!292 = metadata !{i32 786443, metadata !287, i32 144, i32 18, metadata !6, i32 43} ; [ DW_TAG_lexical_block ]
!293 = metadata !{i32 147, i32 31, metadata !294, null}
!294 = metadata !{i32 786443, metadata !287, i32 147, i32 19, metadata !6, i32 45} ; [ DW_TAG_lexical_block ]
!295 = metadata !{i32 144, i32 43, metadata !296, null}
!296 = metadata !{i32 786443, metadata !292, i32 144, i32 42, metadata !6, i32 44} ; [ DW_TAG_lexical_block ]
!297 = metadata !{i32 145, i32 4, metadata !296, null}
!298 = metadata !{i32 786688, metadata !287, metadata !"sum", metadata !6, i32 142, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!299 = metadata !{i32 146, i32 3, metadata !296, null}
!300 = metadata !{i32 144, i32 37, metadata !292, null}
!301 = metadata !{i32 786688, metadata !292, metadata !"i", metadata !6, i32 144, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!302 = metadata !{i32 151, i32 30, metadata !303, null}
!303 = metadata !{i32 786443, metadata !287, i32 151, i32 19, metadata !6, i32 47} ; [ DW_TAG_lexical_block ]
!304 = metadata !{i32 147, i32 44, metadata !305, null}
!305 = metadata !{i32 786443, metadata !294, i32 147, i32 43, metadata !6, i32 46} ; [ DW_TAG_lexical_block ]
!306 = metadata !{i32 148, i32 4, metadata !305, null}
!307 = metadata !{i32 149, i32 3, metadata !305, null}
!308 = metadata !{i32 147, i32 38, metadata !294, null}
!309 = metadata !{i32 786688, metadata !294, metadata !"i", metadata !6, i32 147, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!310 = metadata !{i32 155, i32 13, metadata !311, null}
!311 = metadata !{i32 786443, metadata !312, i32 154, i32 43, metadata !6, i32 50} ; [ DW_TAG_lexical_block ]
!312 = metadata !{i32 786443, metadata !287, i32 154, i32 19, metadata !6, i32 49} ; [ DW_TAG_lexical_block ]
!313 = metadata !{i32 154, i32 31, metadata !312, null}
!314 = metadata !{i32 151, i32 43, metadata !315, null}
!315 = metadata !{i32 786443, metadata !303, i32 151, i32 42, metadata !6, i32 48} ; [ DW_TAG_lexical_block ]
!316 = metadata !{i32 152, i32 11, metadata !315, null}
!317 = metadata !{i32 153, i32 3, metadata !315, null}
!318 = metadata !{i32 151, i32 37, metadata !303, null}
!319 = metadata !{i32 786688, metadata !303, metadata !"i", metadata !6, i32 151, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!320 = metadata !{i32 154, i32 44, metadata !311, null}
!321 = metadata !{i32 156, i32 3, metadata !311, null}
!322 = metadata !{i32 154, i32 38, metadata !312, null}
!323 = metadata !{i32 786688, metadata !312, metadata !"i", metadata !6, i32 154, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!324 = metadata !{i32 157, i32 1, metadata !287, null}
