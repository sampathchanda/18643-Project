; ModuleID = 'C:/Users/sunny/Google_Drive/CMU/Courses/CMU/18643/vivado_projects/proj1_hls/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

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
  call void @llvm.dbg.value(metadata !{[28 x float]* %A}, i64 0, metadata !57), !dbg !58 ; [debug line = 12:25] [debug variable = A]
  call void @llvm.dbg.value(metadata !{[5 x [5 x float]]* %W0}, i64 0, metadata !59), !dbg !60 ; [debug line = 12:42] [debug variable = W0]
  call void @llvm.dbg.value(metadata !{[864 x float]* %W1}, i64 0, metadata !61), !dbg !62 ; [debug line = 12:61] [debug variable = W1]
  call void @llvm.dbg.value(metadata !{float* %res}, i64 0, metadata !63), !dbg !64 ; [debug line = 12:107] [debug variable = res]
  call void (...)* @_ssdm_SpecArrayDimSize([28 x float]* %A, i32 28) nounwind, !dbg !65 ; [debug line = 12:116]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %res, i32 2) nounwind, !dbg !67 ; [debug line = 12:145]
  call void (...)* @_ssdm_SpecArrayDimSize([5 x [5 x float]]* %W0, i32 6) nounwind, !dbg !68 ; [debug line = 12:175]
  call void (...)* @_ssdm_SpecArrayDimSize([864 x float]* %W1, i32 2) nounwind, !dbg !69 ; [debug line = 12:204]
  call void (...)* @_ssdm_op_SpecResource([5 x [5 x float]]* %W0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !70 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecResource([28 x float]* %A, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !70 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %res, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !70 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface([864 x float]* %W1, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !70 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface([5 x [5 x float]]* %W0, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !70 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface([28 x float]* %A, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !70 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !70 ; [debug line = 13:1]
  call void @llvm.dbg.declare(metadata !{[6 x [24 x [24 x float]]]* %s0}, metadata !71), !dbg !75 ; [debug line = 14:8] [debug variable = s0]
  call void @llvm.dbg.declare(metadata !{[6 x [24 x [24 x float]]]* %s1}, metadata !76), !dbg !77 ; [debug line = 15:8] [debug variable = s1]
  call void @llvm.dbg.declare(metadata !{[6 x [12 x [12 x float]]]* %s2}, metadata !78), !dbg !81 ; [debug line = 16:8] [debug variable = s2]
  call void @llvm.dbg.declare(metadata !{[864 x float]* %s3}, metadata !82), !dbg !83 ; [debug line = 17:8] [debug variable = s3]
  call void @llvm.dbg.declare(metadata !{[2 x float]* %cost}, metadata !84), !dbg !88 ; [debug line = 18:8] [debug variable = cost]
  br label %1, !dbg !89                           ; [debug line = 21:19]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %i, 6, !dbg !89        ; [#uses=1 type=i1] [debug line = 21:19]
  br i1 %exitcond2, label %.preheader3.preheader, label %2, !dbg !89 ; [debug line = 21:19]

.preheader3.preheader:                            ; preds = %1
  br label %.preheader3, !dbg !91                 ; [debug line = 26:20]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !93 ; [debug line = 21:32]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !93 ; [#uses=1 type=i32] [debug line = 21:32]
  %tmp = sext i32 %i to i64, !dbg !95             ; [#uses=2 type=i64] [debug line = 22:3]
  %W0.addr = getelementptr inbounds [5 x [5 x float]]* %W0, i64 %tmp, i64 0, !dbg !95 ; [#uses=1 type=[5 x float]*] [debug line = 22:3]
  %s0.addr = getelementptr inbounds [6 x [24 x [24 x float]]]* %s0, i64 0, i64 %tmp, i64 0, !dbg !95 ; [#uses=1 type=[24 x float]*] [debug line = 22:3]
  call fastcc void @convolve([28 x float]* %A, [5 x float]* %W0.addr, [24 x float]* %s0.addr), !dbg !95 ; [debug line = 22:3]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !96 ; [#uses=0 type=i32] [debug line = 23:2]
  %i.1 = add nsw i32 %i, 1, !dbg !97              ; [#uses=1 type=i32] [debug line = 21:26]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !98), !dbg !97 ; [debug line = 21:26] [debug variable = i]
  br label %1, !dbg !97                           ; [debug line = 21:26]

.preheader3:                                      ; preds = %3, %.preheader3.preheader
  %i1 = phi i32 [ %i.2, %3 ], [ 0, %.preheader3.preheader ] ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i1, 6, !dbg !91       ; [#uses=1 type=i1] [debug line = 26:20]
  br i1 %exitcond1, label %.preheader.preheader, label %3, !dbg !91 ; [debug line = 26:20]

.preheader.preheader:                             ; preds = %.preheader3
  br label %.preheader, !dbg !100                 ; [debug line = 31:23]

; <label>:3                                       ; preds = %.preheader3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !102 ; [debug line = 26:33]
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !102 ; [#uses=1 type=i32] [debug line = 26:33]
  %tmp.2 = sext i32 %i1 to i64, !dbg !104         ; [#uses=2 type=i64] [debug line = 27:3]
  %s0.addr.1 = getelementptr inbounds [6 x [24 x [24 x float]]]* %s0, i64 0, i64 %tmp.2, i64 0, !dbg !104 ; [#uses=1 type=[24 x float]*] [debug line = 27:3]
  %s1.addr = getelementptr inbounds [6 x [24 x [24 x float]]]* %s1, i64 0, i64 %tmp.2, i64 0, !dbg !104 ; [#uses=1 type=[24 x float]*] [debug line = 27:3]
  call fastcc void @ReLU([24 x float]* %s0.addr.1, [24 x float]* %s1.addr), !dbg !104 ; [debug line = 27:3]
  %rend7 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i32 %rbegin6) nounwind, !dbg !105 ; [#uses=0 type=i32] [debug line = 28:2]
  %i.2 = add nsw i32 %i1, 1, !dbg !106            ; [#uses=1 type=i32] [debug line = 26:27]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !107), !dbg !106 ; [debug line = 26:27] [debug variable = i]
  br label %.preheader3, !dbg !106                ; [debug line = 26:27]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %i2 = phi i32 [ %i.3, %4 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i2, 6, !dbg !100       ; [#uses=1 type=i1] [debug line = 31:23]
  br i1 %exitcond, label %5, label %4, !dbg !100  ; [debug line = 31:23]

; <label>:4                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !108 ; [debug line = 31:36]
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !108 ; [#uses=1 type=i32] [debug line = 31:36]
  %tmp.6 = sext i32 %i2 to i64, !dbg !110         ; [#uses=2 type=i64] [debug line = 32:3]
  %s1.addr.1 = getelementptr inbounds [6 x [24 x [24 x float]]]* %s1, i64 0, i64 %tmp.6, i64 0, !dbg !110 ; [#uses=1 type=[24 x float]*] [debug line = 32:3]
  %s2.addr.1 = getelementptr inbounds [6 x [12 x [12 x float]]]* %s2, i64 0, i64 %tmp.6, i64 0, !dbg !110 ; [#uses=1 type=[12 x float]*] [debug line = 32:3]
  call fastcc void @maxpool([24 x float]* %s1.addr.1, [12 x float]* %s2.addr.1), !dbg !110 ; [debug line = 32:3]
  %rend5 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0), i32 %rbegin4) nounwind, !dbg !111 ; [#uses=0 type=i32] [debug line = 33:2]
  %i.3 = add nsw i32 %i2, 1, !dbg !112            ; [#uses=1 type=i32] [debug line = 31:30]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !113), !dbg !112 ; [debug line = 31:30] [debug variable = i]
  br label %.preheader, !dbg !112                 ; [debug line = 31:30]

; <label>:5                                       ; preds = %.preheader
  %s2.addr = getelementptr inbounds [6 x [12 x [12 x float]]]* %s2, i64 0, i64 0, !dbg !114 ; [#uses=1 type=[12 x [12 x float]]*] [debug line = 36:11]
  %s3.addr = getelementptr inbounds [864 x float]* %s3, i64 0, i64 0, !dbg !114 ; [#uses=3 type=float*] [debug line = 36:11]
  call fastcc void @flatten([12 x [12 x float]]* %s2.addr, float* %s3.addr), !dbg !114 ; [debug line = 36:11]
  %W1.addr = getelementptr inbounds [864 x float]* %W1, i64 0, i64 0, !dbg !115 ; [#uses=1 type=float*] [debug line = 39:12]
  %tmp.4 = call fastcc float @FCL(float* %s3.addr, float* %W1.addr), !dbg !115 ; [#uses=1 type=float] [debug line = 39:12]
  %cost.addr = getelementptr inbounds [2 x float]* %cost, i64 0, i64 0, !dbg !115 ; [#uses=2 type=float*] [debug line = 39:12]
  store float %tmp.4, float* %cost.addr, align 4, !dbg !115 ; [debug line = 39:12]
  %W1.addr.1 = getelementptr inbounds [864 x float]* %W1, i64 1, i64 0, !dbg !116 ; [#uses=1 type=float*] [debug line = 40:12]
  %tmp.5 = call fastcc float @FCL(float* %s3.addr, float* %W1.addr.1), !dbg !116 ; [#uses=1 type=float] [debug line = 40:12]
  %cost.addr.1 = getelementptr inbounds [2 x float]* %cost, i64 0, i64 1, !dbg !116 ; [#uses=1 type=float*] [debug line = 40:12]
  store float %tmp.5, float* %cost.addr.1, align 4, !dbg !116 ; [debug line = 40:12]
  call fastcc void @softmax(float* %cost.addr, float* %res), !dbg !117 ; [debug line = 43:2]
  ret void, !dbg !118                             ; [debug line = 44:1]
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
  call void @llvm.dbg.value(metadata !{[28 x float]* %A}, i64 0, metadata !119), !dbg !120 ; [debug line = 54:22] [debug variable = A]
  call void @llvm.dbg.value(metadata !{[5 x float]* %B}, i64 0, metadata !121), !dbg !122 ; [debug line = 54:39] [debug variable = B]
  call void @llvm.dbg.value(metadata !{[24 x float]* %conv}, i64 0, metadata !123), !dbg !124 ; [debug line = 54:54] [debug variable = conv]
  call void (...)* @_ssdm_SpecArrayDimSize([28 x float]* %A, i32 28) nounwind, !dbg !125 ; [debug line = 54:81]
  call void (...)* @_ssdm_SpecArrayDimSize([5 x float]* %B, i32 5) nounwind, !dbg !127 ; [debug line = 54:110]
  call void (...)* @_ssdm_SpecArrayDimSize([24 x float]* %conv, i32 24) nounwind, !dbg !128 ; [debug line = 54:138]
  br label %1, !dbg !129                          ; [debug line = 59:24]

; <label>:1                                       ; preds = %11, %0
  %i = phi i32 [ 2, %0 ], [ %i.4, %11 ]           ; [#uses=3 type=i32]
  %exitcond3 = icmp eq i32 %i, 26, !dbg !129      ; [#uses=1 type=i1] [debug line = 59:24]
  br i1 %exitcond3, label %12, label %2, !dbg !129 ; [debug line = 59:24]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !131 ; [debug line = 59:50]
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !131 ; [#uses=1 type=i32] [debug line = 59:50]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !133 ; [debug line = 60:1]
  %tmp = add nsw i32 %i, -2, !dbg !134            ; [#uses=2 type=i32] [debug line = 61:5]
  %tmp.8 = sext i32 %tmp to i64, !dbg !134        ; [#uses=1 type=i64] [debug line = 61:5]
  br label %3, !dbg !137                          ; [debug line = 60:26]

; <label>:3                                       ; preds = %10, %2
  %j = phi i32 [ 2, %2 ], [ %j.1, %10 ]           ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %j, 26, !dbg !137      ; [#uses=1 type=i1] [debug line = 60:26]
  br i1 %exitcond2, label %11, label %4, !dbg !137 ; [debug line = 60:26]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !138 ; [debug line = 60:52]
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !138 ; [#uses=1 type=i32] [debug line = 60:52]
  %y = add nsw i32 %j, -2, !dbg !134              ; [#uses=2 type=i32] [debug line = 61:5]
  %tmp.11 = sext i32 %y to i64, !dbg !134         ; [#uses=2 type=i64] [debug line = 61:5]
  %conv.addr = getelementptr inbounds [24 x float]* %conv, i64 %tmp.8, i64 %tmp.11, !dbg !134 ; [#uses=3 type=float*] [debug line = 61:5]
  store float 0.000000e+00, float* %conv.addr, align 4, !dbg !134 ; [debug line = 61:5]
  br label %5, !dbg !139                          ; [debug line = 62:12]

; <label>:5                                       ; preds = %9, %4
  %tmp.12 = phi float [ 0.000000e+00, %4 ], [ %tmp.19, %9 ] ; [#uses=1 type=float]
  %k = phi i32 [ 0, %4 ], [ %k.1, %9 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %k, 5, !dbg !139       ; [#uses=1 type=i1] [debug line = 62:12]
  br i1 %exitcond1, label %10, label %6, !dbg !139 ; [debug line = 62:12]

; <label>:6                                       ; preds = %5
  %x = add i32 %k, %tmp, !dbg !141                ; [#uses=1 type=i32] [debug line = 63:11]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !143), !dbg !141 ; [debug line = 63:11] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !144), !dbg !145 ; [debug line = 64:11] [debug variable = y]
  %tmp.15 = sext i32 %x to i64, !dbg !146         ; [#uses=2 type=i64] [debug line = 65:11]
  %A.addr = getelementptr inbounds [28 x float]* %A, i64 %tmp.15, i64 %tmp.11, !dbg !146 ; [#uses=1 type=float*] [debug line = 65:11]
  %A.load = load float* %A.addr, align 4, !dbg !146 ; [#uses=2 type=float] [debug line = 65:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %A.load) nounwind
  %tmp.16 = sext i32 %k to i64, !dbg !146         ; [#uses=2 type=i64] [debug line = 65:11]
  %B.addr = getelementptr inbounds [5 x float]* %B, i64 %tmp.16, i64 0, !dbg !146 ; [#uses=1 type=float*] [debug line = 65:11]
  %B.load = load float* %B.addr, align 4, !dbg !146 ; [#uses=2 type=float] [debug line = 65:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %B.load) nounwind
  %temp = fmul float %A.load, %B.load, !dbg !146  ; [#uses=1 type=float] [debug line = 65:11]
  call void @llvm.dbg.value(metadata !{float %temp}, i64 0, metadata !147), !dbg !146 ; [debug line = 65:11] [debug variable = temp]
  br label %7, !dbg !148                          ; [debug line = 66:30]

; <label>:7                                       ; preds = %8, %6
  %tmp.18 = phi float [ %tmp.12, %6 ], [ %tmp.22, %8 ] ; [#uses=3 type=float]
  %l = phi i32 [ 1, %6 ], [ %l.1, %8 ]            ; [#uses=4 type=i32]
  %temp1 = phi float [ %temp, %6 ], [ %temp.2, %8 ] ; [#uses=2 type=float]
  %exitcond = icmp eq i32 %l, 5, !dbg !148        ; [#uses=1 type=i1] [debug line = 66:30]
  br i1 %exitcond, label %9, label %8, !dbg !148  ; [debug line = 66:30]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !150 ; [debug line = 66:46]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !150 ; [#uses=1 type=i32] [debug line = 66:46]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !152 ; [debug line = 67:1]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !143), !dbg !153 ; [debug line = 67:11] [debug variable = x]
  %y.1 = add i32 %l, %y, !dbg !154                ; [#uses=1 type=i32] [debug line = 68:11]
  call void @llvm.dbg.value(metadata !{i32 %y.1}, i64 0, metadata !144), !dbg !154 ; [debug line = 68:11] [debug variable = y]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %tmp.18) nounwind
  %tmp.22 = fadd float %tmp.18, %temp1, !dbg !155 ; [#uses=2 type=float] [debug line = 69:11]
  store float %tmp.22, float* %conv.addr, align 4, !dbg !155 ; [debug line = 69:11]
  %tmp.23 = sext i32 %y.1 to i64, !dbg !156       ; [#uses=1 type=i64] [debug line = 70:11]
  %A.addr.1 = getelementptr inbounds [28 x float]* %A, i64 %tmp.15, i64 %tmp.23, !dbg !156 ; [#uses=1 type=float*] [debug line = 70:11]
  %A.load.1 = load float* %A.addr.1, align 4, !dbg !156 ; [#uses=2 type=float] [debug line = 70:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %A.load.1) nounwind
  %tmp.24 = sext i32 %l to i64, !dbg !156         ; [#uses=1 type=i64] [debug line = 70:11]
  %B.addr.1 = getelementptr inbounds [5 x float]* %B, i64 %tmp.16, i64 %tmp.24, !dbg !156 ; [#uses=1 type=float*] [debug line = 70:11]
  %B.load.1 = load float* %B.addr.1, align 4, !dbg !156 ; [#uses=2 type=float] [debug line = 70:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %B.load.1) nounwind
  %temp.2 = fmul float %A.load.1, %B.load.1, !dbg !156 ; [#uses=1 type=float] [debug line = 70:11]
  call void @llvm.dbg.value(metadata !{float %temp.2}, i64 0, metadata !147), !dbg !156 ; [debug line = 70:11] [debug variable = temp]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str10, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !157 ; [#uses=0 type=i32] [debug line = 71:9]
  %l.1 = add nsw i32 %l, 1, !dbg !158             ; [#uses=1 type=i32] [debug line = 66:40]
  call void @llvm.dbg.value(metadata !{i32 %l.1}, i64 0, metadata !159), !dbg !158 ; [debug line = 66:40] [debug variable = l]
  br label %7, !dbg !158                          ; [debug line = 66:40]

; <label>:9                                       ; preds = %7
  %temp.0.lcssa = phi float [ %temp1, %7 ]        ; [#uses=1 type=float]
  %.lcssa = phi float [ %tmp.18, %7 ]             ; [#uses=2 type=float]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %.lcssa) nounwind
  %tmp.19 = fadd float %.lcssa, %temp.0.lcssa, !dbg !160 ; [#uses=2 type=float] [debug line = 72:9]
  store float %tmp.19, float* %conv.addr, align 4, !dbg !160 ; [debug line = 72:9]
  %k.1 = add nsw i32 %k, 1, !dbg !161             ; [#uses=1 type=i32] [debug line = 62:22]
  call void @llvm.dbg.value(metadata !{i32 %k.1}, i64 0, metadata !162), !dbg !161 ; [debug line = 62:22] [debug variable = k]
  br label %5, !dbg !161                          ; [debug line = 62:22]

; <label>:10                                      ; preds = %5
  %rend5 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), i32 %rbegin4) nounwind, !dbg !163 ; [#uses=0 type=i32] [debug line = 74:5]
  %j.1 = add nsw i32 %j, 1, !dbg !164             ; [#uses=1 type=i32] [debug line = 60:46]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !165), !dbg !164 ; [debug line = 60:46] [debug variable = j]
  br label %3, !dbg !164                          ; [debug line = 60:46]

; <label>:11                                      ; preds = %3
  %rend7 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i32 %rbegin6) nounwind, !dbg !166 ; [#uses=0 type=i32] [debug line = 75:3]
  %i.4 = add nsw i32 %i, 1, !dbg !167             ; [#uses=1 type=i32] [debug line = 59:44]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !168), !dbg !167 ; [debug line = 59:44] [debug variable = i]
  br label %1, !dbg !167                          ; [debug line = 59:44]

; <label>:12                                      ; preds = %1
  ret void, !dbg !169                             ; [debug line = 76:1]
}

; [#uses=1]
define internal fastcc void @ReLU([24 x float]* %inp, [24 x float]* %out) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{[24 x float]* %inp}, i64 0, metadata !170), !dbg !171 ; [debug line = 78:17] [debug variable = inp]
  call void @llvm.dbg.value(metadata !{[24 x float]* %out}, i64 0, metadata !172), !dbg !173 ; [debug line = 78:48] [debug variable = out]
  call void (...)* @_ssdm_SpecArrayDimSize([24 x float]* %inp, i32 24) nounwind, !dbg !174 ; [debug line = 78:74]
  call void (...)* @_ssdm_SpecArrayDimSize([24 x float]* %out, i32 24) nounwind, !dbg !176 ; [debug line = 78:111]
  br label %1, !dbg !177                          ; [debug line = 80:26]

; <label>:1                                       ; preds = %8, %0
  %i = phi i32 [ 0, %0 ], [ %i.5, %8 ]            ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i, 24, !dbg !177      ; [#uses=1 type=i1] [debug line = 80:26]
  br i1 %exitcond1, label %9, label %2, !dbg !177 ; [debug line = 80:26]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !179 ; [debug line = 80:46]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !179 ; [#uses=1 type=i32] [debug line = 80:46]
  %tmp = sext i32 %i to i64, !dbg !181            ; [#uses=3 type=i64] [debug line = 83:4]
  br label %3, !dbg !184                          ; [debug line = 81:15]

; <label>:3                                       ; preds = %7, %2
  %j = phi i32 [ 0, %2 ], [ %j.2, %7 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j, 24, !dbg !184       ; [#uses=1 type=i1] [debug line = 81:15]
  br i1 %exitcond, label %8, label %4, !dbg !184  ; [debug line = 81:15]

; <label>:4                                       ; preds = %3
  %tmp.28 = sext i32 %j to i64, !dbg !181         ; [#uses=3 type=i64] [debug line = 83:4]
  %inp.addr = getelementptr inbounds [24 x float]* %inp, i64 %tmp, i64 %tmp.28, !dbg !181 ; [#uses=1 type=float*] [debug line = 83:4]
  %inp.load = load float* %inp.addr, align 4, !dbg !181 ; [#uses=4 type=float] [debug line = 83:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %inp.load) nounwind
  %tmp.29 = fcmp ogt float %inp.load, 0.000000e+00, !dbg !181 ; [#uses=1 type=i1] [debug line = 83:4]
  br i1 %tmp.29, label %5, label %6, !dbg !181    ; [debug line = 83:4]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %inp.load) nounwind
  %out.addr = getelementptr inbounds [24 x float]* %out, i64 %tmp, i64 %tmp.28, !dbg !185 ; [#uses=1 type=float*] [debug line = 84:5]
  store float %inp.load, float* %out.addr, align 4, !dbg !185 ; [debug line = 84:5]
  br label %7, !dbg !187                          ; [debug line = 85:4]

; <label>:6                                       ; preds = %4
  %out.addr.1 = getelementptr inbounds [24 x float]* %out, i64 %tmp, i64 %tmp.28, !dbg !188 ; [#uses=1 type=float*] [debug line = 87:5]
  store float 0.000000e+00, float* %out.addr.1, align 4, !dbg !188 ; [debug line = 87:5]
  br label %7

; <label>:7                                       ; preds = %6, %5
  %j.2 = add nsw i32 %j, 1, !dbg !190             ; [#uses=1 type=i32] [debug line = 81:29]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !191), !dbg !190 ; [debug line = 81:29] [debug variable = j]
  br label %3, !dbg !190                          ; [debug line = 81:29]

; <label>:8                                       ; preds = %3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !192 ; [#uses=0 type=i32] [debug line = 90:2]
  %i.5 = add nsw i32 %i, 1, !dbg !193             ; [#uses=1 type=i32] [debug line = 80:40]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !194), !dbg !193 ; [debug line = 80:40] [debug variable = i]
  br label %1, !dbg !193                          ; [debug line = 80:40]

; <label>:9                                       ; preds = %1
  ret void, !dbg !195                             ; [debug line = 91:1]
}

; [#uses=1]
define internal fastcc void @maxpool([24 x float]* %inp, [12 x float]* %out) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{[24 x float]* %inp}, i64 0, metadata !196), !dbg !197 ; [debug line = 93:20] [debug variable = inp]
  call void @llvm.dbg.value(metadata !{[12 x float]* %out}, i64 0, metadata !198), !dbg !199 ; [debug line = 93:51] [debug variable = out]
  call void (...)* @_ssdm_SpecArrayDimSize([24 x float]* %inp, i32 24) nounwind, !dbg !200 ; [debug line = 93:85]
  call void (...)* @_ssdm_SpecArrayDimSize([12 x float]* %out, i32 12) nounwind, !dbg !202 ; [debug line = 93:122]
  br label %1, !dbg !203                          ; [debug line = 95:29]

; <label>:1                                       ; preds = %10, %0
  %i = phi i32 [ 0, %0 ], [ %i.6, %10 ]           ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %i, 12, !dbg !203      ; [#uses=1 type=i1] [debug line = 95:29]
  br i1 %exitcond1, label %11, label %2, !dbg !203 ; [debug line = 95:29]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !205 ; [debug line = 95:53]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !205 ; [#uses=1 type=i32] [debug line = 95:53]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !207 ; [debug line = 96:1]
  %tmp = shl nsw i32 %i, 1, !dbg !208             ; [#uses=2 type=i32] [debug line = 97:4]
  %tmp.31 = sext i32 %tmp to i64, !dbg !208       ; [#uses=2 type=i64] [debug line = 97:4]
  %tmp.32 = or i32 %tmp, 1, !dbg !211             ; [#uses=1 type=i32] [debug line = 102:4]
  %tmp.33 = sext i32 %tmp.32 to i64, !dbg !211    ; [#uses=2 type=i64] [debug line = 102:4]
  %tmp.34 = sext i32 %i to i64, !dbg !212         ; [#uses=1 type=i64] [debug line = 108:4]
  br label %3, !dbg !213                          ; [debug line = 96:15]

; <label>:3                                       ; preds = %._crit_edge2, %2
  %j = phi i32 [ 0, %2 ], [ %j.3, %._crit_edge2 ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %j, 12, !dbg !213       ; [#uses=1 type=i1] [debug line = 96:15]
  br i1 %exitcond, label %10, label %4, !dbg !213 ; [debug line = 96:15]

; <label>:4                                       ; preds = %3
  %tmp.36 = shl nsw i32 %j, 1, !dbg !208          ; [#uses=2 type=i32] [debug line = 97:4]
  %tmp.37 = sext i32 %tmp.36 to i64, !dbg !208    ; [#uses=2 type=i64] [debug line = 97:4]
  %inp.addr = getelementptr inbounds [24 x float]* %inp, i64 %tmp.31, i64 %tmp.37, !dbg !208 ; [#uses=1 type=float*] [debug line = 97:4]
  %max = load float* %inp.addr, align 4, !dbg !208 ; [#uses=4 type=float] [debug line = 97:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %max) nounwind
  %tmp.38 = or i32 %tmp.36, 1, !dbg !208          ; [#uses=1 type=i32] [debug line = 97:4]
  %tmp.39 = sext i32 %tmp.38 to i64, !dbg !208    ; [#uses=2 type=i64] [debug line = 97:4]
  %inp.addr.1 = getelementptr inbounds [24 x float]* %inp, i64 %tmp.31, i64 %tmp.39, !dbg !208 ; [#uses=1 type=float*] [debug line = 97:4]
  %max.3 = load float* %inp.addr.1, align 4, !dbg !208 ; [#uses=4 type=float] [debug line = 97:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %max.3) nounwind
  %tmp.40 = fcmp ogt float %max, %max.3, !dbg !208 ; [#uses=1 type=i1] [debug line = 97:4]
  br i1 %tmp.40, label %5, label %6, !dbg !208    ; [debug line = 97:4]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %max) nounwind
  call void @llvm.dbg.value(metadata !{float %max}, i64 0, metadata !214), !dbg !215 ; [debug line = 98:5] [debug variable = max]
  br label %7, !dbg !217                          ; [debug line = 99:4]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %max.3) nounwind
  call void @llvm.dbg.value(metadata !{float %max.3}, i64 0, metadata !214), !dbg !218 ; [debug line = 100:5] [debug variable = max]
  br label %7

; <label>:7                                       ; preds = %6, %5
  %max4 = phi float [ %max, %5 ], [ %max.3, %6 ]  ; [#uses=2 type=float]
  %inp.addr.2 = getelementptr inbounds [24 x float]* %inp, i64 %tmp.33, i64 %tmp.37, !dbg !211 ; [#uses=1 type=float*] [debug line = 102:4]
  %max.5 = load float* %inp.addr.2, align 4, !dbg !211 ; [#uses=4 type=float] [debug line = 102:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %max.5) nounwind
  %tmp.41 = fcmp ogt float %max.5, %max4, !dbg !211 ; [#uses=1 type=i1] [debug line = 102:4]
  br i1 %tmp.41, label %8, label %._crit_edge, !dbg !211 ; [debug line = 102:4]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %max.5) nounwind
  call void @llvm.dbg.value(metadata !{float %max.5}, i64 0, metadata !214), !dbg !220 ; [debug line = 103:5] [debug variable = max]
  br label %._crit_edge, !dbg !222                ; [debug line = 104:4]

._crit_edge:                                      ; preds = %8, %7
  %max.1 = phi float [ %max.5, %8 ], [ %max4, %7 ] ; [#uses=2 type=float]
  %inp.addr.3 = getelementptr inbounds [24 x float]* %inp, i64 %tmp.33, i64 %tmp.39, !dbg !223 ; [#uses=1 type=float*] [debug line = 105:4]
  %max.6 = load float* %inp.addr.3, align 4, !dbg !223 ; [#uses=4 type=float] [debug line = 105:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %max.6) nounwind
  %tmp.42 = fcmp ogt float %max.6, %max.1, !dbg !223 ; [#uses=1 type=i1] [debug line = 105:4]
  br i1 %tmp.42, label %9, label %._crit_edge2, !dbg !223 ; [debug line = 105:4]

; <label>:9                                       ; preds = %._crit_edge
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %max.6) nounwind
  call void @llvm.dbg.value(metadata !{float %max.6}, i64 0, metadata !214), !dbg !224 ; [debug line = 106:5] [debug variable = max]
  br label %._crit_edge2, !dbg !226               ; [debug line = 107:4]

._crit_edge2:                                     ; preds = %9, %._crit_edge
  %max.2 = phi float [ %max.6, %9 ], [ %max.1, %._crit_edge ] ; [#uses=1 type=float]
  %tmp.43 = sext i32 %j to i64, !dbg !212         ; [#uses=1 type=i64] [debug line = 108:4]
  %out.addr = getelementptr inbounds [12 x float]* %out, i64 %tmp.34, i64 %tmp.43, !dbg !212 ; [#uses=1 type=float*] [debug line = 108:4]
  store float %max.2, float* %out.addr, align 4, !dbg !212 ; [debug line = 108:4]
  %j.3 = add nsw i32 %j, 1, !dbg !227             ; [#uses=1 type=i32] [debug line = 96:33]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !228), !dbg !227 ; [debug line = 96:33] [debug variable = j]
  br label %3, !dbg !227                          ; [debug line = 96:33]

; <label>:10                                      ; preds = %3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !229 ; [#uses=0 type=i32] [debug line = 120:2]
  %i.6 = add nsw i32 %i, 1, !dbg !230             ; [#uses=1 type=i32] [debug line = 95:47]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !231), !dbg !230 ; [debug line = 95:47] [debug variable = i]
  br label %1, !dbg !230                          ; [debug line = 95:47]

; <label>:11                                      ; preds = %1
  ret void, !dbg !232                             ; [debug line = 121:1]
}

; [#uses=1]
define internal fastcc void @flatten([12 x [12 x float]]* %inp, float* %out) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{[12 x [12 x float]]* %inp}, i64 0, metadata !233), !dbg !234 ; [debug line = 123:20] [debug variable = inp]
  call void @llvm.dbg.value(metadata !{float* %out}, i64 0, metadata !235), !dbg !236 ; [debug line = 123:62] [debug variable = out]
  call void (...)* @_ssdm_SpecArrayDimSize([12 x [12 x float]]* %inp, i32 6) nounwind, !dbg !237 ; [debug line = 123:101]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %out, i32 864) nounwind, !dbg !239 ; [debug line = 123:131]
  br label %1, !dbg !240                          ; [debug line = 124:29]

; <label>:1                                       ; preds = %6, %0
  %i = phi i32 [ 0, %0 ], [ %i.7, %6 ]            ; [#uses=4 type=i32]
  %exitcond2 = icmp eq i32 %i, 6, !dbg !240       ; [#uses=1 type=i1] [debug line = 124:29]
  br i1 %exitcond2, label %7, label %2, !dbg !240 ; [debug line = 124:29]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !242 ; [debug line = 124:42]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !242 ; [#uses=1 type=i32] [debug line = 124:42]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !244 ; [debug line = 125:1]
  %tmp = sext i32 %i to i64, !dbg !245            ; [#uses=1 type=i64] [debug line = 127:5]
  %tmp.45 = mul i32 %i, 144, !dbg !245            ; [#uses=1 type=i32] [debug line = 127:5]
  br label %3, !dbg !250                          ; [debug line = 125:15]

; <label>:3                                       ; preds = %5, %2
  %j = phi i32 [ 0, %2 ], [ %j.4, %5 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %j, 12, !dbg !250      ; [#uses=1 type=i1] [debug line = 125:15]
  br i1 %exitcond1, label %6, label %.preheader.preheader, !dbg !250 ; [debug line = 125:15]

.preheader.preheader:                             ; preds = %3
  %tmp.47 = sext i32 %j to i64, !dbg !245         ; [#uses=1 type=i64] [debug line = 127:5]
  %tmp.48 = mul nsw i32 %j, 12, !dbg !245         ; [#uses=1 type=i32] [debug line = 127:5]
  br label %.preheader, !dbg !251                 ; [debug line = 126:16]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %k = phi i32 [ %k.2, %4 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %k, 12, !dbg !251       ; [#uses=1 type=i1] [debug line = 126:16]
  br i1 %exitcond, label %5, label %4, !dbg !251  ; [debug line = 126:16]

; <label>:4                                       ; preds = %.preheader
  %tmp.50 = sext i32 %k to i64, !dbg !245         ; [#uses=1 type=i64] [debug line = 127:5]
  %inp.addr = getelementptr inbounds [12 x [12 x float]]* %inp, i64 %tmp, i64 %tmp.47, i64 %tmp.50, !dbg !245 ; [#uses=1 type=float*] [debug line = 127:5]
  %inp.load = load float* %inp.addr, align 4, !dbg !245 ; [#uses=2 type=float] [debug line = 127:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %inp.load) nounwind
  %tmp.51 = add i32 %tmp.48, %tmp.45, !dbg !245   ; [#uses=1 type=i32] [debug line = 127:5]
  %tmp.52 = add i32 %tmp.51, %k, !dbg !245        ; [#uses=1 type=i32] [debug line = 127:5]
  %tmp.53 = sext i32 %tmp.52 to i64, !dbg !245    ; [#uses=1 type=i64] [debug line = 127:5]
  %out.addr = getelementptr inbounds float* %out, i64 %tmp.53, !dbg !245 ; [#uses=1 type=float*] [debug line = 127:5]
  store float %inp.load, float* %out.addr, align 4, !dbg !245 ; [debug line = 127:5]
  %k.2 = add nsw i32 %k, 1, !dbg !252             ; [#uses=1 type=i32] [debug line = 126:36]
  call void @llvm.dbg.value(metadata !{i32 %k.2}, i64 0, metadata !253), !dbg !252 ; [debug line = 126:36] [debug variable = k]
  br label %.preheader, !dbg !252                 ; [debug line = 126:36]

; <label>:5                                       ; preds = %.preheader
  %j.4 = add nsw i32 %j, 1, !dbg !254             ; [#uses=1 type=i32] [debug line = 125:35]
  call void @llvm.dbg.value(metadata !{i32 %j.4}, i64 0, metadata !255), !dbg !254 ; [debug line = 125:35] [debug variable = j]
  br label %3, !dbg !254                          ; [debug line = 125:35]

; <label>:6                                       ; preds = %3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str13, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !256 ; [#uses=0 type=i32] [debug line = 130:2]
  %i.7 = add nsw i32 %i, 1, !dbg !257             ; [#uses=1 type=i32] [debug line = 124:36]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !258), !dbg !257 ; [debug line = 124:36] [debug variable = i]
  br label %1, !dbg !257                          ; [debug line = 124:36]

; <label>:7                                       ; preds = %1
  ret void, !dbg !259                             ; [debug line = 131:1]
}

; [#uses=2]
define internal fastcc float @FCL(float* %inp, float* %W) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{float* %inp}, i64 0, metadata !260), !dbg !261 ; [debug line = 133:17] [debug variable = inp]
  call void @llvm.dbg.value(metadata !{float* %W}, i64 0, metadata !262), !dbg !263 ; [debug line = 133:61] [debug variable = W]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %W, i32 864) nounwind, !dbg !264 ; [debug line = 133:98]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %inp, i32 864) nounwind, !dbg !266 ; [debug line = 133:156]
  br label %1, !dbg !267                          ; [debug line = 135:25]

; <label>:1                                       ; preds = %2, %0
  %out = phi float [ 0.000000e+00, %0 ], [ %out.1, %2 ] ; [#uses=2 type=float]
  %i = phi i32 [ 0, %0 ], [ %i.8, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 864, !dbg !267      ; [#uses=1 type=i1] [debug line = 135:25]
  br i1 %exitcond, label %3, label %2, !dbg !267  ; [debug line = 135:25]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0)) nounwind, !dbg !269 ; [debug line = 135:70]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0)) nounwind, !dbg !269 ; [#uses=1 type=i32] [debug line = 135:70]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !271 ; [debug line = 136:1]
  %tmp = sext i32 %i to i64, !dbg !272            ; [#uses=2 type=i64] [debug line = 136:3]
  %inp.addr = getelementptr inbounds float* %inp, i64 %tmp, !dbg !272 ; [#uses=1 type=float*] [debug line = 136:3]
  %inp.load = load float* %inp.addr, align 4, !dbg !272 ; [#uses=2 type=float] [debug line = 136:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %inp.load) nounwind
  %W.addr = getelementptr inbounds float* %W, i64 %tmp, !dbg !272 ; [#uses=1 type=float*] [debug line = 136:3]
  %W.load = load float* %W.addr, align 4, !dbg !272 ; [#uses=2 type=float] [debug line = 136:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %W.load) nounwind
  %tmp.55 = fmul float %inp.load, %W.load, !dbg !272 ; [#uses=1 type=float] [debug line = 136:3]
  %out.1 = fadd float %out, %tmp.55, !dbg !272    ; [#uses=1 type=float] [debug line = 136:3]
  call void @llvm.dbg.value(metadata !{float %out.1}, i64 0, metadata !273), !dbg !272 ; [debug line = 136:3] [debug variable = out]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !274 ; [#uses=0 type=i32] [debug line = 137:2]
  %i.8 = add nsw i32 %i, 1, !dbg !275             ; [#uses=1 type=i32] [debug line = 135:64]
  call void @llvm.dbg.value(metadata !{i32 %i.8}, i64 0, metadata !276), !dbg !275 ; [debug line = 135:64] [debug variable = i]
  br label %1, !dbg !275                          ; [debug line = 135:64]

; <label>:3                                       ; preds = %1
  %out.0.lcssa = phi float [ %out, %1 ]           ; [#uses=1 type=float]
  ret float %out.0.lcssa, !dbg !277               ; [debug line = 138:2]
}

; [#uses=1]
define internal fastcc void @softmax(float* %inp, float* %out) nounwind uwtable {
  %temp = alloca [2 x float], align 4             ; [#uses=3 type=[2 x float]*]
  call void @llvm.dbg.value(metadata !{float* %inp}, i64 0, metadata !278), !dbg !279 ; [debug line = 141:20] [debug variable = inp]
  call void @llvm.dbg.value(metadata !{float* %out}, i64 0, metadata !280), !dbg !281 ; [debug line = 141:34] [debug variable = out]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %inp, i32 2) nounwind, !dbg !282 ; [debug line = 141:43]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %out, i32 2) nounwind, !dbg !284 ; [debug line = 141:73]
  call void @llvm.dbg.declare(metadata !{[2 x float]* %temp}, metadata !285), !dbg !286 ; [debug line = 143:9] [debug variable = temp]
  br label %1, !dbg !287                          ; [debug line = 144:30]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.9, %2 ]            ; [#uses=3 type=i32]
  %sum = phi float [ 0.000000e+00, %0 ], [ %sum.2, %2 ] ; [#uses=2 type=float]
  %exitcond3 = icmp eq i32 %i, 2, !dbg !287       ; [#uses=1 type=i1] [debug line = 144:30]
  br i1 %exitcond3, label %.preheader5.preheader, label %2, !dbg !287 ; [debug line = 144:30]

.preheader5.preheader:                            ; preds = %1
  %sum.0.lcssa = phi float [ %sum, %1 ]           ; [#uses=1 type=float]
  br label %.preheader5, !dbg !289                ; [debug line = 147:31]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str15, i64 0, i64 0)) nounwind, !dbg !291 ; [debug line = 144:43]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str15, i64 0, i64 0)) nounwind, !dbg !291 ; [#uses=1 type=i32] [debug line = 144:43]
  %tmp = sext i32 %i to i64, !dbg !293            ; [#uses=1 type=i64] [debug line = 145:4]
  %inp.addr = getelementptr inbounds float* %inp, i64 %tmp, !dbg !293 ; [#uses=1 type=float*] [debug line = 145:4]
  %inp.load = load float* %inp.addr, align 4, !dbg !293 ; [#uses=2 type=float] [debug line = 145:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %inp.load) nounwind
  %sum.2 = fadd float %sum, %inp.load, !dbg !293  ; [#uses=1 type=float] [debug line = 145:4]
  call void @llvm.dbg.value(metadata !{float %sum.2}, i64 0, metadata !294), !dbg !293 ; [debug line = 145:4] [debug variable = sum]
  %rend11 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str15, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !295 ; [#uses=0 type=i32] [debug line = 146:3]
  %i.9 = add nsw i32 %i, 1, !dbg !296             ; [#uses=1 type=i32] [debug line = 144:37]
  call void @llvm.dbg.value(metadata !{i32 %i.9}, i64 0, metadata !297), !dbg !296 ; [debug line = 144:37] [debug variable = i]
  br label %1, !dbg !296                          ; [debug line = 144:37]

.preheader5:                                      ; preds = %3, %.preheader5.preheader
  %i1 = phi i32 [ %i.10, %3 ], [ 0, %.preheader5.preheader ] ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %i1, 2, !dbg !289      ; [#uses=1 type=i1] [debug line = 147:31]
  br i1 %exitcond2, label %.preheader4.preheader, label %3, !dbg !289 ; [debug line = 147:31]

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4, !dbg !298                ; [debug line = 151:30]

; <label>:3                                       ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) nounwind, !dbg !300 ; [debug line = 147:44]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) nounwind, !dbg !300 ; [#uses=1 type=i32] [debug line = 147:44]
  %tmp.60 = sext i32 %i1 to i64, !dbg !302        ; [#uses=2 type=i64] [debug line = 148:4]
  %inp.addr.4 = getelementptr inbounds float* %inp, i64 %tmp.60, !dbg !302 ; [#uses=1 type=float*] [debug line = 148:4]
  %inp.load.2 = load float* %inp.addr.4, align 4, !dbg !302 ; [#uses=2 type=float] [debug line = 148:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %inp.load.2) nounwind
  %tmp.61 = fdiv float %inp.load.2, %sum.0.lcssa, !dbg !302 ; [#uses=1 type=float] [debug line = 148:4]
  %temp.addr = getelementptr inbounds [2 x float]* %temp, i64 0, i64 %tmp.60, !dbg !302 ; [#uses=1 type=float*] [debug line = 148:4]
  store float %tmp.61, float* %temp.addr, align 4, !dbg !302 ; [debug line = 148:4]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !303 ; [#uses=0 type=i32] [debug line = 149:3]
  %i.10 = add nsw i32 %i1, 1, !dbg !304           ; [#uses=1 type=i32] [debug line = 147:38]
  call void @llvm.dbg.value(metadata !{i32 %i.10}, i64 0, metadata !305), !dbg !304 ; [debug line = 147:38] [debug variable = i]
  br label %.preheader5, !dbg !304                ; [debug line = 147:38]

.preheader4:                                      ; preds = %4, %.preheader4.preheader
  %sum.1 = phi float [ %sum.3, %4 ], [ 0.000000e+00, %.preheader4.preheader ] ; [#uses=2 type=float]
  %i2 = phi i32 [ %i.11, %4 ], [ 0, %.preheader4.preheader ] ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i2, 2, !dbg !298      ; [#uses=1 type=i1] [debug line = 151:30]
  br i1 %exitcond1, label %.preheader.preheader, label %4, !dbg !298 ; [debug line = 151:30]

.preheader.preheader:                             ; preds = %.preheader4
  %sum.1.lcssa = phi float [ %sum.1, %.preheader4 ] ; [#uses=1 type=float]
  %tmp.63 = fpext float %sum.1.lcssa to double, !dbg !306 ; [#uses=1 type=double] [debug line = 155:13]
  br label %.preheader, !dbg !309                 ; [debug line = 154:31]

; <label>:4                                       ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) nounwind, !dbg !310 ; [debug line = 151:43]
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) nounwind, !dbg !310 ; [#uses=1 type=i32] [debug line = 151:43]
  %tmp.64 = sext i32 %i2 to i64, !dbg !312        ; [#uses=1 type=i64] [debug line = 152:11]
  %temp.addr.1 = getelementptr inbounds [2 x float]* %temp, i64 0, i64 %tmp.64, !dbg !312 ; [#uses=1 type=float*] [debug line = 152:11]
  %temp.load = load float* %temp.addr.1, align 4, !dbg !312 ; [#uses=2 type=float] [debug line = 152:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %temp.load) nounwind
  %tmp.65 = fpext float %temp.load to double, !dbg !312 ; [#uses=1 type=double] [debug line = 152:11]
  %tmp.66 = call double @llvm.exp.f64(double %tmp.65), !dbg !312 ; [#uses=1 type=double] [debug line = 152:11]
  %tmp.67 = fpext float %sum.1 to double, !dbg !312 ; [#uses=1 type=double] [debug line = 152:11]
  %tmp.68 = fadd double %tmp.67, %tmp.66, !dbg !312 ; [#uses=1 type=double] [debug line = 152:11]
  %sum.3 = fptrunc double %tmp.68 to float, !dbg !312 ; [#uses=1 type=float] [debug line = 152:11]
  call void @llvm.dbg.value(metadata !{float %sum.3}, i64 0, metadata !294), !dbg !312 ; [debug line = 152:11] [debug variable = sum]
  %rend7 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0), i32 %rbegin6) nounwind, !dbg !313 ; [#uses=0 type=i32] [debug line = 153:3]
  %i.11 = add nsw i32 %i2, 1, !dbg !314           ; [#uses=1 type=i32] [debug line = 151:37]
  call void @llvm.dbg.value(metadata !{i32 %i.11}, i64 0, metadata !315), !dbg !314 ; [debug line = 151:37] [debug variable = i]
  br label %.preheader4, !dbg !314                ; [debug line = 151:37]

.preheader:                                       ; preds = %5, %.preheader.preheader
  %i3 = phi i32 [ %i.12, %5 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i3, 2, !dbg !309       ; [#uses=1 type=i1] [debug line = 154:31]
  br i1 %exitcond, label %6, label %5, !dbg !309  ; [debug line = 154:31]

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) nounwind, !dbg !316 ; [debug line = 154:44]
  %rbegin8 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) nounwind, !dbg !316 ; [#uses=1 type=i32] [debug line = 154:44]
  %tmp.71 = sext i32 %i3 to i64, !dbg !306        ; [#uses=2 type=i64] [debug line = 155:13]
  %temp.addr.2 = getelementptr inbounds [2 x float]* %temp, i64 0, i64 %tmp.71, !dbg !306 ; [#uses=1 type=float*] [debug line = 155:13]
  %temp.load.1 = load float* %temp.addr.2, align 4, !dbg !306 ; [#uses=2 type=float] [debug line = 155:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %temp.load.1) nounwind
  %tmp.72 = fpext float %temp.load.1 to double, !dbg !306 ; [#uses=1 type=double] [debug line = 155:13]
  %tmp.73 = call double @llvm.exp.f64(double %tmp.72), !dbg !306 ; [#uses=1 type=double] [debug line = 155:13]
  %tmp.74 = fdiv double %tmp.73, %tmp.63, !dbg !306 ; [#uses=1 type=double] [debug line = 155:13]
  %tmp.75 = fptrunc double %tmp.74 to float, !dbg !306 ; [#uses=1 type=float] [debug line = 155:13]
  %out.addr = getelementptr inbounds float* %out, i64 %tmp.71, !dbg !306 ; [#uses=1 type=float*] [debug line = 155:13]
  store float %tmp.75, float* %out.addr, align 4, !dbg !306 ; [debug line = 155:13]
  %rend9 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0), i32 %rbegin8) nounwind, !dbg !317 ; [#uses=0 type=i32] [debug line = 156:3]
  %i.12 = add nsw i32 %i3, 1, !dbg !318           ; [#uses=1 type=i32] [debug line = 154:38]
  call void @llvm.dbg.value(metadata !{i32 %i.12}, i64 0, metadata !319), !dbg !318 ; [debug line = 154:38] [debug variable = i]
  br label %.preheader, !dbg !318                 ; [debug line = 154:38]

; <label>:6                                       ; preds = %.preheader
  ret void, !dbg !320                             ; [debug line = 157:1]
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

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/sunny/Google_Drive/CMU/Courses/CMU/18643/vivado_projects/proj1_hls/solution1/.autopilot/db/obj_detector.pragma.2.cpp", metadata !"c:/Users/sunny/Google_Drive/CMU/Courses/CMU/18643/vivado_projects", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !25, metadata !35, metadata !38, metadata !45, metadata !51, metadata !54}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"obj_detector", metadata !"obj_detector", metadata !"_Z12obj_detectorPA28_fPA5_A5_fPA864_fPf", metadata !6, i32 12, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([28 x float]*, [5 x [5 x float]]*, [864 x float]*, float*)* @obj_detector, null, null, metadata !23, i32 12} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"proj1_hls/obj_detector.cpp", metadata !"c:/Users/sunny/Google_Drive/CMU/Courses/CMU/18643/vivado_projects", null} ; [ DW_TAG_file_type ]
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
!57 = metadata !{i32 786689, metadata !5, metadata !"A", metadata !6, i32 16777228, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 12, i32 25, metadata !5, null}
!59 = metadata !{i32 786689, metadata !5, metadata !"W0", metadata !6, i32 33554444, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 12, i32 42, metadata !5, null}
!61 = metadata !{i32 786689, metadata !5, metadata !"W1", metadata !6, i32 50331660, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!62 = metadata !{i32 12, i32 61, metadata !5, null}
!63 = metadata !{i32 786689, metadata !5, metadata !"res", metadata !6, i32 67108876, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 12, i32 107, metadata !5, null}
!65 = metadata !{i32 12, i32 116, metadata !66, null}
!66 = metadata !{i32 786443, metadata !5, i32 12, i32 115, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 12, i32 145, metadata !66, null}
!68 = metadata !{i32 12, i32 175, metadata !66, null}
!69 = metadata !{i32 12, i32 204, metadata !66, null}
!70 = metadata !{i32 13, i32 1, metadata !66, null}
!71 = metadata !{i32 786688, metadata !66, metadata !"s0", metadata !6, i32 14, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 110592, i64 32, i32 0, i32 0, metadata !11, metadata !73, i32 0, i32 0} ; [ DW_TAG_array_type ]
!73 = metadata !{metadata !74, metadata !34, metadata !34}
!74 = metadata !{i32 786465, i64 0, i64 5}        ; [ DW_TAG_subrange_type ]
!75 = metadata !{i32 14, i32 8, metadata !66, null}
!76 = metadata !{i32 786688, metadata !66, metadata !"s1", metadata !6, i32 15, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 15, i32 8, metadata !66, null}
!78 = metadata !{i32 786688, metadata !66, metadata !"s2", metadata !6, i32 16, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 27648, i64 32, i32 0, i32 0, metadata !11, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ]
!80 = metadata !{metadata !74, metadata !44, metadata !44}
!81 = metadata !{i32 16, i32 8, metadata !66, null}
!82 = metadata !{i32 786688, metadata !66, metadata !"s3", metadata !6, i32 17, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 17, i32 8, metadata !66, null}
!84 = metadata !{i32 786688, metadata !66, metadata !"cost", metadata !6, i32 18, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 32, i32 0, i32 0, metadata !11, metadata !86, i32 0, i32 0} ; [ DW_TAG_array_type ]
!86 = metadata !{metadata !87}
!87 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!88 = metadata !{i32 18, i32 8, metadata !66, null}
!89 = metadata !{i32 21, i32 19, metadata !90, null}
!90 = metadata !{i32 786443, metadata !66, i32 21, i32 8, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 26, i32 20, metadata !92, null}
!92 = metadata !{i32 786443, metadata !66, i32 26, i32 8, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 21, i32 32, metadata !94, null}
!94 = metadata !{i32 786443, metadata !90, i32 21, i32 31, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 22, i32 3, metadata !94, null}
!96 = metadata !{i32 23, i32 2, metadata !94, null}
!97 = metadata !{i32 21, i32 26, metadata !90, null}
!98 = metadata !{i32 786688, metadata !90, metadata !"i", metadata !6, i32 21, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!100 = metadata !{i32 31, i32 23, metadata !101, null}
!101 = metadata !{i32 786443, metadata !66, i32 31, i32 11, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 26, i32 33, metadata !103, null}
!103 = metadata !{i32 786443, metadata !92, i32 26, i32 32, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 27, i32 3, metadata !103, null}
!105 = metadata !{i32 28, i32 2, metadata !103, null}
!106 = metadata !{i32 26, i32 27, metadata !92, null}
!107 = metadata !{i32 786688, metadata !92, metadata !"i", metadata !6, i32 26, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 31, i32 36, metadata !109, null}
!109 = metadata !{i32 786443, metadata !101, i32 31, i32 35, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 32, i32 3, metadata !109, null}
!111 = metadata !{i32 33, i32 2, metadata !109, null}
!112 = metadata !{i32 31, i32 30, metadata !101, null}
!113 = metadata !{i32 786688, metadata !101, metadata !"i", metadata !6, i32 31, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 36, i32 11, metadata !66, null}
!115 = metadata !{i32 39, i32 12, metadata !66, null}
!116 = metadata !{i32 40, i32 12, metadata !66, null}
!117 = metadata !{i32 43, i32 2, metadata !66, null}
!118 = metadata !{i32 44, i32 1, metadata !66, null}
!119 = metadata !{i32 786689, metadata !25, metadata !"A", metadata !6, i32 16777270, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!120 = metadata !{i32 54, i32 22, metadata !25, null}
!121 = metadata !{i32 786689, metadata !25, metadata !"B", metadata !6, i32 33554486, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!122 = metadata !{i32 54, i32 39, metadata !25, null}
!123 = metadata !{i32 786689, metadata !25, metadata !"conv", metadata !6, i32 50331702, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!124 = metadata !{i32 54, i32 54, metadata !25, null}
!125 = metadata !{i32 54, i32 81, metadata !126, null}
!126 = metadata !{i32 786443, metadata !25, i32 54, i32 80, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 54, i32 110, metadata !126, null}
!128 = metadata !{i32 54, i32 138, metadata !126, null}
!129 = metadata !{i32 59, i32 24, metadata !130, null}
!130 = metadata !{i32 786443, metadata !126, i32 59, i32 19, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 59, i32 50, metadata !132, null}
!132 = metadata !{i32 786443, metadata !130, i32 59, i32 49, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 60, i32 1, metadata !132, null}
!134 = metadata !{i32 61, i32 5, metadata !135, null}
!135 = metadata !{i32 786443, metadata !136, i32 60, i32 51, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 786443, metadata !132, i32 60, i32 21, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 60, i32 26, metadata !136, null}
!138 = metadata !{i32 60, i32 52, metadata !135, null}
!139 = metadata !{i32 62, i32 12, metadata !140, null}
!140 = metadata !{i32 786443, metadata !135, i32 62, i32 7, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 63, i32 11, metadata !142, null}
!142 = metadata !{i32 786443, metadata !140, i32 62, i32 27, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 786688, metadata !126, metadata !"x", metadata !6, i32 55, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!144 = metadata !{i32 786688, metadata !126, metadata !"y", metadata !6, i32 55, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 64, i32 11, metadata !142, null}
!146 = metadata !{i32 65, i32 11, metadata !142, null}
!147 = metadata !{i32 786688, metadata !126, metadata !"temp", metadata !6, i32 57, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 66, i32 30, metadata !149, null}
!149 = metadata !{i32 786443, metadata !142, i32 66, i32 25, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 66, i32 46, metadata !151, null}
!151 = metadata !{i32 786443, metadata !149, i32 66, i32 45, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 67, i32 1, metadata !151, null}
!153 = metadata !{i32 67, i32 11, metadata !151, null}
!154 = metadata !{i32 68, i32 11, metadata !151, null}
!155 = metadata !{i32 69, i32 11, metadata !151, null}
!156 = metadata !{i32 70, i32 11, metadata !151, null}
!157 = metadata !{i32 71, i32 9, metadata !151, null}
!158 = metadata !{i32 66, i32 40, metadata !149, null}
!159 = metadata !{i32 786688, metadata !126, metadata !"l", metadata !6, i32 56, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!160 = metadata !{i32 72, i32 9, metadata !142, null}
!161 = metadata !{i32 62, i32 22, metadata !140, null}
!162 = metadata !{i32 786688, metadata !126, metadata !"k", metadata !6, i32 56, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!163 = metadata !{i32 74, i32 5, metadata !135, null}
!164 = metadata !{i32 60, i32 46, metadata !136, null}
!165 = metadata !{i32 786688, metadata !126, metadata !"j", metadata !6, i32 56, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 75, i32 3, metadata !132, null}
!167 = metadata !{i32 59, i32 44, metadata !130, null}
!168 = metadata !{i32 786688, metadata !126, metadata !"i", metadata !6, i32 56, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 76, i32 1, metadata !126, null}
!170 = metadata !{i32 786689, metadata !35, metadata !"inp", metadata !6, i32 16777294, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!171 = metadata !{i32 78, i32 17, metadata !35, null}
!172 = metadata !{i32 786689, metadata !35, metadata !"out", metadata !6, i32 33554510, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!173 = metadata !{i32 78, i32 48, metadata !35, null}
!174 = metadata !{i32 78, i32 74, metadata !175, null}
!175 = metadata !{i32 786443, metadata !35, i32 78, i32 73, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 78, i32 111, metadata !175, null}
!177 = metadata !{i32 80, i32 26, metadata !178, null}
!178 = metadata !{i32 786443, metadata !175, i32 80, i32 14, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 80, i32 46, metadata !180, null}
!180 = metadata !{i32 786443, metadata !178, i32 80, i32 45, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 83, i32 4, metadata !182, null}
!182 = metadata !{i32 786443, metadata !183, i32 81, i32 34, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 786443, metadata !180, i32 81, i32 3, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 81, i32 15, metadata !183, null}
!185 = metadata !{i32 84, i32 5, metadata !186, null}
!186 = metadata !{i32 786443, metadata !182, i32 83, i32 23, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 85, i32 4, metadata !186, null}
!188 = metadata !{i32 87, i32 5, metadata !189, null}
!189 = metadata !{i32 786443, metadata !182, i32 86, i32 9, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 81, i32 29, metadata !183, null}
!191 = metadata !{i32 786688, metadata !183, metadata !"j", metadata !6, i32 81, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!192 = metadata !{i32 90, i32 2, metadata !180, null}
!193 = metadata !{i32 80, i32 40, metadata !178, null}
!194 = metadata !{i32 786688, metadata !178, metadata !"i", metadata !6, i32 80, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!195 = metadata !{i32 91, i32 1, metadata !175, null}
!196 = metadata !{i32 786689, metadata !38, metadata !"inp", metadata !6, i32 16777309, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!197 = metadata !{i32 93, i32 20, metadata !38, null}
!198 = metadata !{i32 786689, metadata !38, metadata !"out", metadata !6, i32 33554525, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!199 = metadata !{i32 93, i32 51, metadata !38, null}
!200 = metadata !{i32 93, i32 85, metadata !201, null}
!201 = metadata !{i32 786443, metadata !38, i32 93, i32 84, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 93, i32 122, metadata !201, null}
!203 = metadata !{i32 95, i32 29, metadata !204, null}
!204 = metadata !{i32 786443, metadata !201, i32 95, i32 17, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 95, i32 53, metadata !206, null}
!206 = metadata !{i32 786443, metadata !204, i32 95, i32 52, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!207 = metadata !{i32 96, i32 1, metadata !206, null}
!208 = metadata !{i32 97, i32 4, metadata !209, null}
!209 = metadata !{i32 786443, metadata !210, i32 96, i32 38, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!210 = metadata !{i32 786443, metadata !206, i32 96, i32 3, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 102, i32 4, metadata !209, null}
!212 = metadata !{i32 108, i32 4, metadata !209, null}
!213 = metadata !{i32 96, i32 15, metadata !210, null}
!214 = metadata !{i32 786688, metadata !201, metadata !"max", metadata !6, i32 94, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!215 = metadata !{i32 98, i32 5, metadata !216, null}
!216 = metadata !{i32 786443, metadata !209, i32 97, i32 43, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 99, i32 4, metadata !216, null}
!218 = metadata !{i32 100, i32 5, metadata !219, null}
!219 = metadata !{i32 786443, metadata !209, i32 99, i32 11, metadata !6, i32 29} ; [ DW_TAG_lexical_block ]
!220 = metadata !{i32 103, i32 5, metadata !221, null}
!221 = metadata !{i32 786443, metadata !209, i32 102, i32 33, metadata !6, i32 30} ; [ DW_TAG_lexical_block ]
!222 = metadata !{i32 104, i32 4, metadata !221, null}
!223 = metadata !{i32 105, i32 4, metadata !209, null}
!224 = metadata !{i32 106, i32 5, metadata !225, null}
!225 = metadata !{i32 786443, metadata !209, i32 105, i32 37, metadata !6, i32 31} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 107, i32 4, metadata !225, null}
!227 = metadata !{i32 96, i32 33, metadata !210, null}
!228 = metadata !{i32 786688, metadata !210, metadata !"j", metadata !6, i32 96, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!229 = metadata !{i32 120, i32 2, metadata !206, null}
!230 = metadata !{i32 95, i32 47, metadata !204, null}
!231 = metadata !{i32 786688, metadata !204, metadata !"i", metadata !6, i32 95, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!232 = metadata !{i32 121, i32 1, metadata !201, null}
!233 = metadata !{i32 786689, metadata !45, metadata !"inp", metadata !6, i32 16777339, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!234 = metadata !{i32 123, i32 20, metadata !45, null}
!235 = metadata !{i32 786689, metadata !45, metadata !"out", metadata !6, i32 33554555, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!236 = metadata !{i32 123, i32 62, metadata !45, null}
!237 = metadata !{i32 123, i32 101, metadata !238, null}
!238 = metadata !{i32 786443, metadata !45, i32 123, i32 100, metadata !6, i32 32} ; [ DW_TAG_lexical_block ]
!239 = metadata !{i32 123, i32 131, metadata !238, null}
!240 = metadata !{i32 124, i32 29, metadata !241, null}
!241 = metadata !{i32 786443, metadata !238, i32 124, i32 17, metadata !6, i32 33} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 124, i32 42, metadata !243, null}
!243 = metadata !{i32 786443, metadata !241, i32 124, i32 41, metadata !6, i32 34} ; [ DW_TAG_lexical_block ]
!244 = metadata !{i32 125, i32 1, metadata !243, null}
!245 = metadata !{i32 127, i32 5, metadata !246, null}
!246 = metadata !{i32 786443, metadata !247, i32 126, i32 41, metadata !6, i32 38} ; [ DW_TAG_lexical_block ]
!247 = metadata !{i32 786443, metadata !248, i32 126, i32 4, metadata !6, i32 37} ; [ DW_TAG_lexical_block ]
!248 = metadata !{i32 786443, metadata !249, i32 125, i32 39, metadata !6, i32 36} ; [ DW_TAG_lexical_block ]
!249 = metadata !{i32 786443, metadata !243, i32 125, i32 3, metadata !6, i32 35} ; [ DW_TAG_lexical_block ]
!250 = metadata !{i32 125, i32 15, metadata !249, null}
!251 = metadata !{i32 126, i32 16, metadata !247, null}
!252 = metadata !{i32 126, i32 36, metadata !247, null}
!253 = metadata !{i32 786688, metadata !247, metadata !"k", metadata !6, i32 126, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!254 = metadata !{i32 125, i32 35, metadata !249, null}
!255 = metadata !{i32 786688, metadata !249, metadata !"j", metadata !6, i32 125, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!256 = metadata !{i32 130, i32 2, metadata !243, null}
!257 = metadata !{i32 124, i32 36, metadata !241, null}
!258 = metadata !{i32 786688, metadata !241, metadata !"i", metadata !6, i32 124, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!259 = metadata !{i32 131, i32 1, metadata !238, null}
!260 = metadata !{i32 786689, metadata !51, metadata !"inp", metadata !6, i32 16777349, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!261 = metadata !{i32 133, i32 17, metadata !51, null}
!262 = metadata !{i32 786689, metadata !51, metadata !"W", metadata !6, i32 33554565, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!263 = metadata !{i32 133, i32 61, metadata !51, null}
!264 = metadata !{i32 133, i32 98, metadata !265, null}
!265 = metadata !{i32 786443, metadata !51, i32 133, i32 97, metadata !6, i32 39} ; [ DW_TAG_lexical_block ]
!266 = metadata !{i32 133, i32 156, metadata !265, null}
!267 = metadata !{i32 135, i32 25, metadata !268, null}
!268 = metadata !{i32 786443, metadata !265, i32 135, i32 13, metadata !6, i32 40} ; [ DW_TAG_lexical_block ]
!269 = metadata !{i32 135, i32 70, metadata !270, null}
!270 = metadata !{i32 786443, metadata !268, i32 135, i32 69, metadata !6, i32 41} ; [ DW_TAG_lexical_block ]
!271 = metadata !{i32 136, i32 1, metadata !270, null}
!272 = metadata !{i32 136, i32 3, metadata !270, null}
!273 = metadata !{i32 786688, metadata !265, metadata !"out", metadata !6, i32 134, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!274 = metadata !{i32 137, i32 2, metadata !270, null}
!275 = metadata !{i32 135, i32 64, metadata !268, null}
!276 = metadata !{i32 786688, metadata !268, metadata !"i", metadata !6, i32 135, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!277 = metadata !{i32 138, i32 2, metadata !265, null}
!278 = metadata !{i32 786689, metadata !54, metadata !"inp", metadata !6, i32 16777357, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!279 = metadata !{i32 141, i32 20, metadata !54, null}
!280 = metadata !{i32 786689, metadata !54, metadata !"out", metadata !6, i32 33554573, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!281 = metadata !{i32 141, i32 34, metadata !54, null}
!282 = metadata !{i32 141, i32 43, metadata !283, null}
!283 = metadata !{i32 786443, metadata !54, i32 141, i32 42, metadata !6, i32 42} ; [ DW_TAG_lexical_block ]
!284 = metadata !{i32 141, i32 73, metadata !283, null}
!285 = metadata !{i32 786688, metadata !283, metadata !"temp", metadata !6, i32 143, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!286 = metadata !{i32 143, i32 9, metadata !283, null}
!287 = metadata !{i32 144, i32 30, metadata !288, null}
!288 = metadata !{i32 786443, metadata !283, i32 144, i32 18, metadata !6, i32 43} ; [ DW_TAG_lexical_block ]
!289 = metadata !{i32 147, i32 31, metadata !290, null}
!290 = metadata !{i32 786443, metadata !283, i32 147, i32 19, metadata !6, i32 45} ; [ DW_TAG_lexical_block ]
!291 = metadata !{i32 144, i32 43, metadata !292, null}
!292 = metadata !{i32 786443, metadata !288, i32 144, i32 42, metadata !6, i32 44} ; [ DW_TAG_lexical_block ]
!293 = metadata !{i32 145, i32 4, metadata !292, null}
!294 = metadata !{i32 786688, metadata !283, metadata !"sum", metadata !6, i32 142, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!295 = metadata !{i32 146, i32 3, metadata !292, null}
!296 = metadata !{i32 144, i32 37, metadata !288, null}
!297 = metadata !{i32 786688, metadata !288, metadata !"i", metadata !6, i32 144, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!298 = metadata !{i32 151, i32 30, metadata !299, null}
!299 = metadata !{i32 786443, metadata !283, i32 151, i32 19, metadata !6, i32 47} ; [ DW_TAG_lexical_block ]
!300 = metadata !{i32 147, i32 44, metadata !301, null}
!301 = metadata !{i32 786443, metadata !290, i32 147, i32 43, metadata !6, i32 46} ; [ DW_TAG_lexical_block ]
!302 = metadata !{i32 148, i32 4, metadata !301, null}
!303 = metadata !{i32 149, i32 3, metadata !301, null}
!304 = metadata !{i32 147, i32 38, metadata !290, null}
!305 = metadata !{i32 786688, metadata !290, metadata !"i", metadata !6, i32 147, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!306 = metadata !{i32 155, i32 13, metadata !307, null}
!307 = metadata !{i32 786443, metadata !308, i32 154, i32 43, metadata !6, i32 50} ; [ DW_TAG_lexical_block ]
!308 = metadata !{i32 786443, metadata !283, i32 154, i32 19, metadata !6, i32 49} ; [ DW_TAG_lexical_block ]
!309 = metadata !{i32 154, i32 31, metadata !308, null}
!310 = metadata !{i32 151, i32 43, metadata !311, null}
!311 = metadata !{i32 786443, metadata !299, i32 151, i32 42, metadata !6, i32 48} ; [ DW_TAG_lexical_block ]
!312 = metadata !{i32 152, i32 11, metadata !311, null}
!313 = metadata !{i32 153, i32 3, metadata !311, null}
!314 = metadata !{i32 151, i32 37, metadata !299, null}
!315 = metadata !{i32 786688, metadata !299, metadata !"i", metadata !6, i32 151, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!316 = metadata !{i32 154, i32 44, metadata !307, null}
!317 = metadata !{i32 156, i32 3, metadata !307, null}
!318 = metadata !{i32 154, i32 38, metadata !308, null}
!319 = metadata !{i32 786688, metadata !308, metadata !"i", metadata !6, i32 154, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!320 = metadata !{i32 157, i32 1, metadata !283, null}
