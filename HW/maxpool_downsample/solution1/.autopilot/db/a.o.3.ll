; ModuleID = '/home/littlefoot/18643_project/Hardware-Accel/HW/maxpool_downsample/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=2 type=[8 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=20 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=4 type=[5 x i8]*]
@p_str4 = private unnamed_addr constant [5 x i8] c"LOOP\00", align 1 ; [#uses=3 type=[5 x i8]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@maxpool_str = internal unnamed_addr constant [8 x i8] c"maxpool\00" ; [#uses=1 type=[8 x i8]*]

; [#uses=0]
define void @maxpool(i1* %begin, i8* %input_V, i8* %output_V, i1* %ok) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind, !dbg !7 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %begin), !map !73
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %input_V), !map !77
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_V), !map !81
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %ok), !map !85
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @maxpool_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %ok, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !89 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %begin, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !90 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %input_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !91 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !92 ; [debug line = 14:1]
  call void @llvm.dbg.value(metadata !{i1* %begin}, i64 0, metadata !93), !dbg !94 ; [debug line = 6:9] [debug variable = begin]
  call void @llvm.dbg.value(metadata !{i8* %input_V}, i64 0, metadata !95), !dbg !100 ; [debug line = 7:25] [debug variable = input.V]
  call void @llvm.dbg.value(metadata !{i8* %output_V}, i64 0, metadata !101), !dbg !103 ; [debug line = 8:25] [debug variable = output.V]
  call void @llvm.dbg.value(metadata !{i1* %ok}, i64 0, metadata !104), !dbg !105 ; [debug line = 9:9] [debug variable = ok]
  call fastcc void @maxpool_Loop_LOOP_proc(i8* %output_V, i8* %input_V)
  ret void, !dbg !106                             ; [debug line = 48:1]
}

; [#uses=6]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=43]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define internal fastcc void @maxpool_Loop_LOOP_proc(i8* %output_V, i8* %input_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i8* %input_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  br label %.preheader13, !dbg !107               ; [debug line = 25:30]

.exitStub:                                        ; preds = %.preheader13
  ret void

.preheader13:                                     ; preds = %.preheader.preheader, %newFuncRoot
  %loop_count = phi i4 [ %loop_count_1, %.preheader.preheader ], [ 0, %newFuncRoot ] ; [#uses=2 type=i4]
  %exitcond1 = icmp eq i4 %loop_count, -4, !dbg !107 ; [#uses=1 type=i1] [debug line = 25:30]
  %loop_count_1 = add i4 %loop_count, 1, !dbg !109 ; [#uses=1 type=i4] [debug line = 26:27]
  br i1 %exitcond1, label %.exitStub, label %.preheader.preheader, !dbg !107 ; [debug line = 25:30]

.preheader.preheader:                             ; preds = %.preheader13
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 12, i64 12, i64 12) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str4) nounwind, !dbg !110 ; [debug line = 26:42]
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str4), !dbg !110 ; [#uses=1 type=i32] [debug line = 26:42]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !112 ; [debug line = 27:1]
  call void @llvm.dbg.value(metadata !{i8* %input_V}, i64 0, metadata !113), !dbg !118 ; [debug line = 129:56@30:12] [debug variable = stream<unsigned char>.V]
  %input_V_read = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !122 ; [#uses=2 type=i8] [debug line = 131:9@30:12]
  %input_V_read_1 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !124 ; [#uses=2 type=i8] [debug line = 131:9@31:12]
  %tmp_2 = icmp ugt i8 %input_V_read, %input_V_read_1, !dbg !126 ; [#uses=1 type=i1] [debug line = 33:4]
  %tmp_5 = select i1 %tmp_2, i8 %input_V_read, i8 %input_V_read_1, !dbg !126 ; [#uses=2 type=i8] [debug line = 33:4]
  %input_V_read_2 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !122 ; [#uses=2 type=i8] [debug line = 131:9@30:12]
  %input_V_read_3 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !124 ; [#uses=2 type=i8] [debug line = 131:9@31:12]
  %tmp_4_1 = icmp ugt i8 %input_V_read_2, %input_V_read_3, !dbg !126 ; [#uses=1 type=i1] [debug line = 33:4]
  %tmp_5_1 = select i1 %tmp_4_1, i8 %input_V_read_2, i8 %input_V_read_3, !dbg !126 ; [#uses=2 type=i8] [debug line = 33:4]
  %input_V_read_4 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !122 ; [#uses=2 type=i8] [debug line = 131:9@30:12]
  %input_V_read_5 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !124 ; [#uses=2 type=i8] [debug line = 131:9@31:12]
  %tmp_4_2 = icmp ugt i8 %input_V_read_4, %input_V_read_5, !dbg !126 ; [#uses=1 type=i1] [debug line = 33:4]
  %tmp_5_2 = select i1 %tmp_4_2, i8 %input_V_read_4, i8 %input_V_read_5, !dbg !126 ; [#uses=2 type=i8] [debug line = 33:4]
  %input_V_read_6 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !122 ; [#uses=2 type=i8] [debug line = 131:9@30:12]
  %input_V_read_7 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !124 ; [#uses=2 type=i8] [debug line = 131:9@31:12]
  %tmp_4_3 = icmp ugt i8 %input_V_read_6, %input_V_read_7, !dbg !126 ; [#uses=1 type=i1] [debug line = 33:4]
  %tmp_5_3 = select i1 %tmp_4_3, i8 %input_V_read_6, i8 %input_V_read_7, !dbg !126 ; [#uses=2 type=i8] [debug line = 33:4]
  %input_V_read_8 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !122 ; [#uses=2 type=i8] [debug line = 131:9@30:12]
  %input_V_read_9 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !124 ; [#uses=2 type=i8] [debug line = 131:9@31:12]
  %tmp_4_4 = icmp ugt i8 %input_V_read_8, %input_V_read_9, !dbg !126 ; [#uses=1 type=i1] [debug line = 33:4]
  %tmp_5_4 = select i1 %tmp_4_4, i8 %input_V_read_8, i8 %input_V_read_9, !dbg !126 ; [#uses=2 type=i8] [debug line = 33:4]
  %input_V_read_10 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !122 ; [#uses=2 type=i8] [debug line = 131:9@30:12]
  %input_V_read_11 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !124 ; [#uses=2 type=i8] [debug line = 131:9@31:12]
  %tmp_4_5 = icmp ugt i8 %input_V_read_10, %input_V_read_11, !dbg !126 ; [#uses=1 type=i1] [debug line = 33:4]
  %tmp_5_5 = select i1 %tmp_4_5, i8 %input_V_read_10, i8 %input_V_read_11, !dbg !126 ; [#uses=2 type=i8] [debug line = 33:4]
  %input_V_read_12 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !122 ; [#uses=2 type=i8] [debug line = 131:9@30:12]
  %input_V_read_13 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !124 ; [#uses=2 type=i8] [debug line = 131:9@31:12]
  %tmp_4_6 = icmp ugt i8 %input_V_read_12, %input_V_read_13, !dbg !126 ; [#uses=1 type=i1] [debug line = 33:4]
  %tmp_5_6 = select i1 %tmp_4_6, i8 %input_V_read_12, i8 %input_V_read_13, !dbg !126 ; [#uses=2 type=i8] [debug line = 33:4]
  %input_V_read_14 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !122 ; [#uses=2 type=i8] [debug line = 131:9@30:12]
  %input_V_read_15 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !124 ; [#uses=2 type=i8] [debug line = 131:9@31:12]
  %tmp_4_7 = icmp ugt i8 %input_V_read_14, %input_V_read_15, !dbg !126 ; [#uses=1 type=i1] [debug line = 33:4]
  %tmp_5_7 = select i1 %tmp_4_7, i8 %input_V_read_14, i8 %input_V_read_15, !dbg !126 ; [#uses=2 type=i8] [debug line = 33:4]
  %input_V_read_16 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !122 ; [#uses=2 type=i8] [debug line = 131:9@30:12]
  %input_V_read_17 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !124 ; [#uses=2 type=i8] [debug line = 131:9@31:12]
  %tmp_4_8 = icmp ugt i8 %input_V_read_16, %input_V_read_17, !dbg !126 ; [#uses=1 type=i1] [debug line = 33:4]
  %tmp_5_8 = select i1 %tmp_4_8, i8 %input_V_read_16, i8 %input_V_read_17, !dbg !126 ; [#uses=2 type=i8] [debug line = 33:4]
  %input_V_read_18 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !122 ; [#uses=2 type=i8] [debug line = 131:9@30:12]
  %input_V_read_19 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !124 ; [#uses=2 type=i8] [debug line = 131:9@31:12]
  %tmp_4_9 = icmp ugt i8 %input_V_read_18, %input_V_read_19, !dbg !126 ; [#uses=1 type=i1] [debug line = 33:4]
  %tmp_5_9 = select i1 %tmp_4_9, i8 %input_V_read_18, i8 %input_V_read_19, !dbg !126 ; [#uses=2 type=i8] [debug line = 33:4]
  %input_V_read_20 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !122 ; [#uses=2 type=i8] [debug line = 131:9@30:12]
  %input_V_read_21 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !124 ; [#uses=2 type=i8] [debug line = 131:9@31:12]
  %tmp_4_s = icmp ugt i8 %input_V_read_20, %input_V_read_21, !dbg !126 ; [#uses=1 type=i1] [debug line = 33:4]
  %tmp_5_s = select i1 %tmp_4_s, i8 %input_V_read_20, i8 %input_V_read_21, !dbg !126 ; [#uses=2 type=i8] [debug line = 33:4]
  %input_V_read_22 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !122 ; [#uses=2 type=i8] [debug line = 131:9@30:12]
  %input_V_read_23 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !124 ; [#uses=2 type=i8] [debug line = 131:9@31:12]
  %tmp_4_10 = icmp ugt i8 %input_V_read_22, %input_V_read_23, !dbg !126 ; [#uses=1 type=i1] [debug line = 33:4]
  %tmp_5_10 = select i1 %tmp_4_10, i8 %input_V_read_22, i8 %input_V_read_23, !dbg !126 ; [#uses=2 type=i8] [debug line = 33:4]
  %tmp = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !127 ; [#uses=2 type=i8] [debug line = 131:9@38:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp}, i64 0, metadata !131), !dbg !127 ; [debug line = 131:9@38:12] [debug variable = tmp]
  %tmp_1 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !132 ; [#uses=2 type=i8] [debug line = 131:9@39:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_1}, i64 0, metadata !131), !dbg !132 ; [debug line = 131:9@39:12] [debug variable = tmp]
  %tmp_s = icmp ugt i8 %tmp, %tmp_1, !dbg !134    ; [#uses=1 type=i1] [debug line = 41:4]
  %temp3 = select i1 %tmp_s, i8 %tmp, i8 %tmp_1, !dbg !134 ; [#uses=2 type=i8] [debug line = 41:4]
  %tmp_7 = icmp ugt i8 %tmp_5, %temp3, !dbg !135  ; [#uses=1 type=i1] [debug line = 42:4]
  %tmp_3 = select i1 %tmp_7, i8 %tmp_5, i8 %temp3, !dbg !135 ; [#uses=1 type=i8] [debug line = 42:4]
  call void @llvm.dbg.value(metadata !{i8* %output_V}, i64 0, metadata !136), !dbg !139 ; [debug line = 144:48@45:4] [debug variable = stream<unsigned char>.V]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3}, i64 0, metadata !141), !dbg !143 ; [debug line = 145:31@45:4] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_V, i8 %tmp_3), !dbg !144 ; [debug line = 146:9@45:4]
  %tmp_6 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !127 ; [#uses=2 type=i8] [debug line = 131:9@38:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_6}, i64 0, metadata !131), !dbg !127 ; [debug line = 131:9@38:12] [debug variable = tmp]
  %tmp_8 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !132 ; [#uses=2 type=i8] [debug line = 131:9@39:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_8}, i64 0, metadata !131), !dbg !132 ; [debug line = 131:9@39:12] [debug variable = tmp]
  %tmp_1_2 = icmp ugt i8 %tmp_6, %tmp_8, !dbg !134 ; [#uses=1 type=i1] [debug line = 41:4]
  %temp3_1 = select i1 %tmp_1_2, i8 %tmp_6, i8 %tmp_8, !dbg !134 ; [#uses=2 type=i8] [debug line = 41:4]
  %tmp_9_1 = icmp ugt i8 %tmp_5_1, %temp3_1, !dbg !135 ; [#uses=1 type=i1] [debug line = 42:4]
  %tmp_9 = select i1 %tmp_9_1, i8 %tmp_5_1, i8 %temp3_1, !dbg !135 ; [#uses=1 type=i8] [debug line = 42:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp_9}, i64 0, metadata !141), !dbg !143 ; [debug line = 145:31@45:4] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_V, i8 %tmp_9), !dbg !144 ; [debug line = 146:9@45:4]
  %tmp_10 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !127 ; [#uses=2 type=i8] [debug line = 131:9@38:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_10}, i64 0, metadata !131), !dbg !127 ; [debug line = 131:9@38:12] [debug variable = tmp]
  %tmp_21 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !132 ; [#uses=2 type=i8] [debug line = 131:9@39:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_21}, i64 0, metadata !131), !dbg !132 ; [debug line = 131:9@39:12] [debug variable = tmp]
  %tmp_2_3 = icmp ugt i8 %tmp_10, %tmp_21, !dbg !134 ; [#uses=1 type=i1] [debug line = 41:4]
  %temp3_s = select i1 %tmp_2_3, i8 %tmp_10, i8 %tmp_21, !dbg !134 ; [#uses=2 type=i8] [debug line = 41:4]
  %tmp_9_2 = icmp ugt i8 %tmp_5_2, %temp3_s, !dbg !135 ; [#uses=1 type=i1] [debug line = 42:4]
  %tmp_11 = select i1 %tmp_9_2, i8 %tmp_5_2, i8 %temp3_s, !dbg !135 ; [#uses=1 type=i8] [debug line = 42:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp_11}, i64 0, metadata !141), !dbg !143 ; [debug line = 145:31@45:4] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_V, i8 %tmp_11), !dbg !144 ; [debug line = 146:9@45:4]
  %tmp_22 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !127 ; [#uses=2 type=i8] [debug line = 131:9@38:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_22}, i64 0, metadata !131), !dbg !127 ; [debug line = 131:9@38:12] [debug variable = tmp]
  %tmp_23 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !132 ; [#uses=2 type=i8] [debug line = 131:9@39:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_23}, i64 0, metadata !131), !dbg !132 ; [debug line = 131:9@39:12] [debug variable = tmp]
  %tmp_3_4 = icmp ugt i8 %tmp_22, %tmp_23, !dbg !134 ; [#uses=1 type=i1] [debug line = 41:4]
  %temp3_3 = select i1 %tmp_3_4, i8 %tmp_22, i8 %tmp_23, !dbg !134 ; [#uses=2 type=i8] [debug line = 41:4]
  %tmp_9_3 = icmp ugt i8 %tmp_5_3, %temp3_3, !dbg !135 ; [#uses=1 type=i1] [debug line = 42:4]
  %tmp_12 = select i1 %tmp_9_3, i8 %tmp_5_3, i8 %temp3_3, !dbg !135 ; [#uses=1 type=i8] [debug line = 42:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp_12}, i64 0, metadata !141), !dbg !143 ; [debug line = 145:31@45:4] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_V, i8 %tmp_12), !dbg !144 ; [debug line = 146:9@45:4]
  %tmp_24 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !127 ; [#uses=2 type=i8] [debug line = 131:9@38:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_24}, i64 0, metadata !131), !dbg !127 ; [debug line = 131:9@38:12] [debug variable = tmp]
  %tmp_25 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !132 ; [#uses=2 type=i8] [debug line = 131:9@39:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_25}, i64 0, metadata !131), !dbg !132 ; [debug line = 131:9@39:12] [debug variable = tmp]
  %tmp_4_11 = icmp ugt i8 %tmp_24, %tmp_25, !dbg !134 ; [#uses=1 type=i1] [debug line = 41:4]
  %temp3_4 = select i1 %tmp_4_11, i8 %tmp_24, i8 %tmp_25, !dbg !134 ; [#uses=2 type=i8] [debug line = 41:4]
  %tmp_9_4 = icmp ugt i8 %tmp_5_4, %temp3_4, !dbg !135 ; [#uses=1 type=i1] [debug line = 42:4]
  %tmp_13 = select i1 %tmp_9_4, i8 %tmp_5_4, i8 %temp3_4, !dbg !135 ; [#uses=1 type=i8] [debug line = 42:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp_13}, i64 0, metadata !141), !dbg !143 ; [debug line = 145:31@45:4] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_V, i8 %tmp_13), !dbg !144 ; [debug line = 146:9@45:4]
  %tmp_26 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !127 ; [#uses=2 type=i8] [debug line = 131:9@38:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_26}, i64 0, metadata !131), !dbg !127 ; [debug line = 131:9@38:12] [debug variable = tmp]
  %tmp_27 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !132 ; [#uses=2 type=i8] [debug line = 131:9@39:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_27}, i64 0, metadata !131), !dbg !132 ; [debug line = 131:9@39:12] [debug variable = tmp]
  %tmp_5_12 = icmp ugt i8 %tmp_26, %tmp_27, !dbg !134 ; [#uses=1 type=i1] [debug line = 41:4]
  %temp3_5 = select i1 %tmp_5_12, i8 %tmp_26, i8 %tmp_27, !dbg !134 ; [#uses=2 type=i8] [debug line = 41:4]
  %tmp_9_5 = icmp ugt i8 %tmp_5_5, %temp3_5, !dbg !135 ; [#uses=1 type=i1] [debug line = 42:4]
  %tmp_14 = select i1 %tmp_9_5, i8 %tmp_5_5, i8 %temp3_5, !dbg !135 ; [#uses=1 type=i8] [debug line = 42:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp_14}, i64 0, metadata !141), !dbg !143 ; [debug line = 145:31@45:4] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_V, i8 %tmp_14), !dbg !144 ; [debug line = 146:9@45:4]
  %tmp_28 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !127 ; [#uses=2 type=i8] [debug line = 131:9@38:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_28}, i64 0, metadata !131), !dbg !127 ; [debug line = 131:9@38:12] [debug variable = tmp]
  %tmp_29 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !132 ; [#uses=2 type=i8] [debug line = 131:9@39:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_29}, i64 0, metadata !131), !dbg !132 ; [debug line = 131:9@39:12] [debug variable = tmp]
  %tmp_6_13 = icmp ugt i8 %tmp_28, %tmp_29, !dbg !134 ; [#uses=1 type=i1] [debug line = 41:4]
  %temp3_6 = select i1 %tmp_6_13, i8 %tmp_28, i8 %tmp_29, !dbg !134 ; [#uses=2 type=i8] [debug line = 41:4]
  %tmp_9_6 = icmp ugt i8 %tmp_5_6, %temp3_6, !dbg !135 ; [#uses=1 type=i1] [debug line = 42:4]
  %tmp_15 = select i1 %tmp_9_6, i8 %tmp_5_6, i8 %temp3_6, !dbg !135 ; [#uses=1 type=i8] [debug line = 42:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp_15}, i64 0, metadata !141), !dbg !143 ; [debug line = 145:31@45:4] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_V, i8 %tmp_15), !dbg !144 ; [debug line = 146:9@45:4]
  %tmp_30 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !127 ; [#uses=2 type=i8] [debug line = 131:9@38:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_30}, i64 0, metadata !131), !dbg !127 ; [debug line = 131:9@38:12] [debug variable = tmp]
  %tmp_31 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !132 ; [#uses=2 type=i8] [debug line = 131:9@39:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_31}, i64 0, metadata !131), !dbg !132 ; [debug line = 131:9@39:12] [debug variable = tmp]
  %tmp_7_14 = icmp ugt i8 %tmp_30, %tmp_31, !dbg !134 ; [#uses=1 type=i1] [debug line = 41:4]
  %temp3_7 = select i1 %tmp_7_14, i8 %tmp_30, i8 %tmp_31, !dbg !134 ; [#uses=2 type=i8] [debug line = 41:4]
  %tmp_9_7 = icmp ugt i8 %tmp_5_7, %temp3_7, !dbg !135 ; [#uses=1 type=i1] [debug line = 42:4]
  %tmp_16 = select i1 %tmp_9_7, i8 %tmp_5_7, i8 %temp3_7, !dbg !135 ; [#uses=1 type=i8] [debug line = 42:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp_16}, i64 0, metadata !141), !dbg !143 ; [debug line = 145:31@45:4] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_V, i8 %tmp_16), !dbg !144 ; [debug line = 146:9@45:4]
  %tmp_32 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !127 ; [#uses=2 type=i8] [debug line = 131:9@38:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_32}, i64 0, metadata !131), !dbg !127 ; [debug line = 131:9@38:12] [debug variable = tmp]
  %tmp_33 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !132 ; [#uses=2 type=i8] [debug line = 131:9@39:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_33}, i64 0, metadata !131), !dbg !132 ; [debug line = 131:9@39:12] [debug variable = tmp]
  %tmp_8_15 = icmp ugt i8 %tmp_32, %tmp_33, !dbg !134 ; [#uses=1 type=i1] [debug line = 41:4]
  %temp3_8 = select i1 %tmp_8_15, i8 %tmp_32, i8 %tmp_33, !dbg !134 ; [#uses=2 type=i8] [debug line = 41:4]
  %tmp_9_8 = icmp ugt i8 %tmp_5_8, %temp3_8, !dbg !135 ; [#uses=1 type=i1] [debug line = 42:4]
  %tmp_17 = select i1 %tmp_9_8, i8 %tmp_5_8, i8 %temp3_8, !dbg !135 ; [#uses=1 type=i8] [debug line = 42:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp_17}, i64 0, metadata !141), !dbg !143 ; [debug line = 145:31@45:4] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_V, i8 %tmp_17), !dbg !144 ; [debug line = 146:9@45:4]
  %tmp_34 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !127 ; [#uses=2 type=i8] [debug line = 131:9@38:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_34}, i64 0, metadata !131), !dbg !127 ; [debug line = 131:9@38:12] [debug variable = tmp]
  %tmp_35 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !132 ; [#uses=2 type=i8] [debug line = 131:9@39:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_35}, i64 0, metadata !131), !dbg !132 ; [debug line = 131:9@39:12] [debug variable = tmp]
  %tmp_9_16 = icmp ugt i8 %tmp_34, %tmp_35, !dbg !134 ; [#uses=1 type=i1] [debug line = 41:4]
  %temp3_9 = select i1 %tmp_9_16, i8 %tmp_34, i8 %tmp_35, !dbg !134 ; [#uses=2 type=i8] [debug line = 41:4]
  %tmp_9_9 = icmp ugt i8 %tmp_5_9, %temp3_9, !dbg !135 ; [#uses=1 type=i1] [debug line = 42:4]
  %tmp_18 = select i1 %tmp_9_9, i8 %tmp_5_9, i8 %temp3_9, !dbg !135 ; [#uses=1 type=i8] [debug line = 42:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp_18}, i64 0, metadata !141), !dbg !143 ; [debug line = 145:31@45:4] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_V, i8 %tmp_18), !dbg !144 ; [debug line = 146:9@45:4]
  %tmp_36 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !127 ; [#uses=2 type=i8] [debug line = 131:9@38:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_36}, i64 0, metadata !131), !dbg !127 ; [debug line = 131:9@38:12] [debug variable = tmp]
  %tmp_37 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !132 ; [#uses=2 type=i8] [debug line = 131:9@39:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_37}, i64 0, metadata !131), !dbg !132 ; [debug line = 131:9@39:12] [debug variable = tmp]
  %tmp_s_17 = icmp ugt i8 %tmp_36, %tmp_37, !dbg !134 ; [#uses=1 type=i1] [debug line = 41:4]
  %temp3_2 = select i1 %tmp_s_17, i8 %tmp_36, i8 %tmp_37, !dbg !134 ; [#uses=2 type=i8] [debug line = 41:4]
  %tmp_9_s = icmp ugt i8 %tmp_5_s, %temp3_2, !dbg !135 ; [#uses=1 type=i1] [debug line = 42:4]
  %tmp_19 = select i1 %tmp_9_s, i8 %tmp_5_s, i8 %temp3_2, !dbg !135 ; [#uses=1 type=i8] [debug line = 42:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp_19}, i64 0, metadata !141), !dbg !143 ; [debug line = 145:31@45:4] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_V, i8 %tmp_19), !dbg !144 ; [debug line = 146:9@45:4]
  %tmp_38 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !127 ; [#uses=2 type=i8] [debug line = 131:9@38:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_38}, i64 0, metadata !131), !dbg !127 ; [debug line = 131:9@38:12] [debug variable = tmp]
  %tmp_39 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !132 ; [#uses=2 type=i8] [debug line = 131:9@39:12]
  call void @llvm.dbg.value(metadata !{i8 %tmp_39}, i64 0, metadata !131), !dbg !132 ; [debug line = 131:9@39:12] [debug variable = tmp]
  %tmp_10_18 = icmp ugt i8 %tmp_38, %tmp_39, !dbg !134 ; [#uses=1 type=i1] [debug line = 41:4]
  %temp3_10 = select i1 %tmp_10_18, i8 %tmp_38, i8 %tmp_39, !dbg !134 ; [#uses=2 type=i8] [debug line = 41:4]
  %tmp_9_10 = icmp ugt i8 %tmp_5_10, %temp3_10, !dbg !135 ; [#uses=1 type=i1] [debug line = 42:4]
  %tmp_20 = select i1 %tmp_9_10, i8 %tmp_5_10, i8 %temp3_10, !dbg !135 ; [#uses=1 type=i8] [debug line = 42:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp_20}, i64 0, metadata !141), !dbg !143 ; [debug line = 145:31@45:4] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_V, i8 %tmp_20), !dbg !144 ; [debug line = 146:9@45:4]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str4, i32 %tmp_4), !dbg !145 ; [#uses=0 type=i32] [debug line = 47:2]
  call void @llvm.dbg.value(metadata !{i4 %loop_count_1}, i64 0, metadata !146), !dbg !109 ; [debug line = 26:27] [debug variable = loop_count]
  br label %.preheader13, !dbg !109               ; [debug line = 26:27]
}

; [#uses=48]
define weak i8 @_ssdm_op_Read.axis.volatile.i8P(i8*) {
entry:
  %empty = load i8* %0                            ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=12]
define weak void @_ssdm_op_Write.axis.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{i32 12, i32 1, metadata !8, null}
!8 = metadata !{i32 786443, metadata !9, i32 9, i32 13, metadata !10, i32 0} ; [ DW_TAG_lexical_block ]
!9 = metadata !{i32 786478, i32 0, metadata !10, metadata !"maxpool", metadata !"maxpool", metadata !"_Z7maxpoolPbRN3hls6streamIhEES3_S_", metadata !10, i32 5, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !26, i32 9} ; [ DW_TAG_subprogram ]
!10 = metadata !{i32 786473, metadata !"maxpool_downsample/.settings/maxpool_downsample.cpp", metadata !"/home/littlefoot/18643_project/Hardware-Accel/HW", null} ; [ DW_TAG_file_type ]
!11 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!12 = metadata !{null, metadata !13, metadata !15, metadata !15, metadata !13}
!13 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!14 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_reference_type ]
!16 = metadata !{i32 786434, metadata !17, metadata !"stream<unsigned char>", metadata !18, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !19, i32 0, null, metadata !71} ; [ DW_TAG_class_type ]
!17 = metadata !{i32 786489, null, metadata !"hls", metadata !18, i32 69} ; [ DW_TAG_namespace ]
!18 = metadata !{i32 786473, metadata !"/home/littlefoot/vivado/Vivado_HLS/2015.2/common/technology/autopilot/hls_stream.h", metadata !"/home/littlefoot/18643_project/Hardware-Accel/HW", null} ; [ DW_TAG_file_type ]
!19 = metadata !{metadata !20, metadata !22, metadata !28, metadata !34, metadata !39, metadata !42, metadata !46, metadata !51, metadata !55, metadata !56, metadata !57, metadata !60, metadata !63, metadata !64, metadata !67}
!20 = metadata !{i32 786445, metadata !16, metadata !"V", metadata !18, i32 163, i64 8, i64 8, i64 0, i32 1, metadata !21} ; [ DW_TAG_member ]
!21 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786478, i32 0, metadata !16, metadata !"stream", metadata !"stream", metadata !"", metadata !18, i32 83, metadata !23, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 83} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !25}
!25 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !16} ; [ DW_TAG_pointer_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786478, i32 0, metadata !16, metadata !"stream", metadata !"stream", metadata !"", metadata !18, i32 86, metadata !29, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 86} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !25, metadata !31}
!31 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ]
!32 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_const_type ]
!33 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!34 = metadata !{i32 786478, i32 0, metadata !16, metadata !"stream", metadata !"stream", metadata !"", metadata !18, i32 91, metadata !35, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !26, i32 91} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!36 = metadata !{null, metadata !25, metadata !37}
!37 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_reference_type ]
!38 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_const_type ]
!39 = metadata !{i32 786478, i32 0, metadata !16, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !18, i32 94, metadata !40, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !26, i32 94} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{metadata !15, metadata !25, metadata !37}
!42 = metadata !{i32 786478, i32 0, metadata !16, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !18, i32 101, metadata !43, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 101} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!44 = metadata !{null, metadata !25, metadata !45}
!45 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_reference_type ]
!46 = metadata !{i32 786478, i32 0, metadata !16, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !18, i32 105, metadata !47, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 105} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!48 = metadata !{null, metadata !25, metadata !49}
!49 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_reference_type ]
!50 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ]
!51 = metadata !{i32 786478, i32 0, metadata !16, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !18, i32 112, metadata !52, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 112} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{metadata !14, metadata !54}
!54 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !38} ; [ DW_TAG_pointer_type ]
!55 = metadata !{i32 786478, i32 0, metadata !16, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !18, i32 117, metadata !52, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 117} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786478, i32 0, metadata !16, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !18, i32 123, metadata !43, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 123} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786478, i32 0, metadata !16, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !18, i32 129, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 129} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{metadata !21, metadata !25}
!60 = metadata !{i32 786478, i32 0, metadata !16, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !18, i32 136, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 136} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{metadata !14, metadata !25, metadata !45}
!63 = metadata !{i32 786478, i32 0, metadata !16, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !18, i32 144, metadata !47, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 144} ; [ DW_TAG_subprogram ]
!64 = metadata !{i32 786478, i32 0, metadata !16, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !18, i32 150, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 150} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{metadata !14, metadata !25, metadata !49}
!67 = metadata !{i32 786478, i32 0, metadata !16, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !18, i32 157, metadata !68, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 157} ; [ DW_TAG_subprogram ]
!68 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{metadata !70, metadata !25}
!70 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !21, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 0, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"begin", metadata !5, metadata !"bool", i32 0, i32 0}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 7, metadata !79}
!79 = metadata !{metadata !80}
!80 = metadata !{metadata !"input.V", metadata !5, metadata !"unsigned char", i32 0, i32 7}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 0, i32 7, metadata !83}
!83 = metadata !{metadata !84}
!84 = metadata !{metadata !"output.V", metadata !5, metadata !"unsigned char", i32 0, i32 7}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 0, metadata !87}
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !"ok", metadata !5, metadata !"bool", i32 0, i32 0}
!89 = metadata !{i32 10, i32 1, metadata !8, null}
!90 = metadata !{i32 11, i32 1, metadata !8, null}
!91 = metadata !{i32 13, i32 1, metadata !8, null}
!92 = metadata !{i32 14, i32 1, metadata !8, null}
!93 = metadata !{i32 786689, metadata !9, metadata !"begin", metadata !10, i32 16777222, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 6, i32 9, metadata !9, null}
!95 = metadata !{i32 790531, metadata !96, metadata !"input.V", null, i32 7, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!96 = metadata !{i32 786689, metadata !9, metadata !"input", metadata !10, i32 33554439, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!97 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ]
!98 = metadata !{i32 786438, metadata !17, metadata !"stream<unsigned char>", metadata !18, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !99, i32 0, null, metadata !71} ; [ DW_TAG_class_field_type ]
!99 = metadata !{metadata !20}
!100 = metadata !{i32 7, i32 25, metadata !9, null}
!101 = metadata !{i32 790531, metadata !102, metadata !"output.V", null, i32 8, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!102 = metadata !{i32 786689, metadata !9, metadata !"output", metadata !10, i32 50331656, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 8, i32 25, metadata !9, null}
!104 = metadata !{i32 786689, metadata !9, metadata !"ok", metadata !10, i32 67108873, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 9, i32 9, metadata !9, null}
!106 = metadata !{i32 48, i32 1, metadata !8, null}
!107 = metadata !{i32 25, i32 30, metadata !108, null}
!108 = metadata !{i32 786443, metadata !8, i32 25, i32 8, metadata !10, i32 3} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 26, i32 27, metadata !108, null}
!110 = metadata !{i32 26, i32 42, metadata !111, null}
!111 = metadata !{i32 786443, metadata !108, i32 26, i32 41, metadata !10, i32 4} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 27, i32 1, metadata !111, null}
!113 = metadata !{i32 790531, metadata !114, metadata !"stream<unsigned char>.V", null, i32 129, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!114 = metadata !{i32 786689, metadata !115, metadata !"this", metadata !18, i32 16777345, metadata !116, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 786478, i32 0, metadata !17, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !18, i32 129, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !57, metadata !26, i32 129} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!117 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ]
!118 = metadata !{i32 129, i32 56, metadata !115, metadata !119}
!119 = metadata !{i32 30, i32 12, metadata !120, null}
!120 = metadata !{i32 786443, metadata !121, i32 29, i32 44, metadata !10, i32 6} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 786443, metadata !111, i32 28, i32 14, metadata !10, i32 5} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 131, i32 9, metadata !123, metadata !119}
!123 = metadata !{i32 786443, metadata !115, i32 129, i32 63, metadata !18, i32 10} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 131, i32 9, metadata !123, metadata !125}
!125 = metadata !{i32 31, i32 12, metadata !120, null}
!126 = metadata !{i32 33, i32 4, metadata !120, null}
!127 = metadata !{i32 131, i32 9, metadata !123, metadata !128}
!128 = metadata !{i32 38, i32 12, metadata !129, null}
!129 = metadata !{i32 786443, metadata !130, i32 37, i32 44, metadata !10, i32 8} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 786443, metadata !111, i32 36, i32 16, metadata !10, i32 7} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 786688, metadata !123, metadata !"tmp", metadata !18, i32 130, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 131, i32 9, metadata !123, metadata !133}
!133 = metadata !{i32 39, i32 12, metadata !129, null}
!134 = metadata !{i32 41, i32 4, metadata !129, null}
!135 = metadata !{i32 42, i32 4, metadata !129, null}
!136 = metadata !{i32 790531, metadata !137, metadata !"stream<unsigned char>.V", null, i32 144, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!137 = metadata !{i32 786689, metadata !138, metadata !"this", metadata !18, i32 16777360, metadata !116, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 786478, i32 0, metadata !17, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !18, i32 144, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !63, metadata !26, i32 144} ; [ DW_TAG_subprogram ]
!139 = metadata !{i32 144, i32 48, metadata !138, metadata !140}
!140 = metadata !{i32 45, i32 4, metadata !129, null}
!141 = metadata !{i32 786688, metadata !142, metadata !"tmp", metadata !18, i32 145, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 786443, metadata !138, i32 144, i32 79, metadata !18, i32 9} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 145, i32 31, metadata !142, metadata !140}
!144 = metadata !{i32 146, i32 9, metadata !142, metadata !140}
!145 = metadata !{i32 47, i32 2, metadata !111, null}
!146 = metadata !{i32 786688, metadata !108, metadata !"loop_count", metadata !10, i32 25, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!147 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
