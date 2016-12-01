; ModuleID = '/home/littlefoot/18643_project/Hardware-Accel/HW/fifo_splitter/fifo_splitter/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=44 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=14 type=[5 x i8]*]
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=2 type=[12 x i8]*]
@splitter_str = internal unnamed_addr constant [9 x i8] c"splitter\00" ; [#uses=1 type=[9 x i8]*]

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=14]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=11]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

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

; [#uses=7]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=0]
define void @splitter(i8* %input_V, i8* %output_0_V, i8* %output_1_V, i8* %output_2_V, i8* %output_3_V, i8* %output_4_V, i8* %output_5_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind, !dbg !0 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_5_V), !map !66
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_4_V), !map !72
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_3_V), !map !78
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_2_V), !map !84
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_1_V), !map !90
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_0_V), !map !96
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %input_V), !map !102
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @splitter_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %input_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !108 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_0_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_1_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_2_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_3_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_4_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_5_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @llvm.dbg.value(metadata !{i8* %input_V}, i64 0, metadata !109), !dbg !114 ; [debug line = 4:25] [debug variable = input.V]
  call void @llvm.dbg.value(metadata !{i8* %output_0_V}, i64 0, metadata !115), !dbg !118 ; [debug line = 5:24] [debug variable = output[0].V]
  call void @llvm.dbg.value(metadata !{i8* %output_1_V}, i64 0, metadata !119), !dbg !118 ; [debug line = 5:24] [debug variable = output[1].V]
  call void @llvm.dbg.value(metadata !{i8* %output_2_V}, i64 0, metadata !120), !dbg !118 ; [debug line = 5:24] [debug variable = output[2].V]
  call void @llvm.dbg.value(metadata !{i8* %output_3_V}, i64 0, metadata !121), !dbg !118 ; [debug line = 5:24] [debug variable = output[3].V]
  call void @llvm.dbg.value(metadata !{i8* %output_4_V}, i64 0, metadata !122), !dbg !118 ; [debug line = 5:24] [debug variable = output[4].V]
  call void @llvm.dbg.value(metadata !{i8* %output_5_V}, i64 0, metadata !123), !dbg !118 ; [debug line = 5:24] [debug variable = output[5].V]
  call void @llvm.dbg.value(metadata !{i8* %input_V}, i64 0, metadata !124), !dbg !127 ; [debug line = 129:56@14:9] [debug variable = stream<unsigned char>.V]
  call fastcc void @splitter_Loop_1_proc(i8* %input_V, i8* %output_0_V, i8* %output_1_V, i8* %output_2_V, i8* %output_3_V, i8* %output_4_V, i8* %output_5_V)
  ret void, !dbg !131                             ; [debug line = 22:1]
}

; [#uses=1]
define internal fastcc void @splitter_Loop_1_proc(i8* %input_V, i8* %output_0_V, i8* %output_1_V, i8* %output_2_V, i8* %output_3_V, i8* %output_4_V, i8* %output_5_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_5_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_4_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_3_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_2_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_1_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_0_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %input_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %0

splitter_.exit2.exitStub:                         ; preds = %0
  ret void

; <label>:0                                       ; preds = %1, %newFuncRoot
  %pixels_read_0_i_i = phi i10 [ 0, %newFuncRoot ], [ %pixels_read, %1 ] ; [#uses=2 type=i10]
  %exitcond4_i_i = icmp eq i10 %pixels_read_0_i_i, -240, !dbg !132 ; [#uses=1 type=i1] [debug line = 12:25]
  %pixels_read = add i10 %pixels_read_0_i_i, 1, !dbg !133 ; [#uses=1 type=i10] [debug line = 12:101]
  br i1 %exitcond4_i_i, label %splitter_.exit2.exitStub, label %1, !dbg !132 ; [debug line = 12:25]

; <label>:1                                       ; preds = %0
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784) ; [#uses=0 type=i32]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2), !dbg !134 ; [#uses=1 type=i32] [debug line = 12:117]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !135 ; [debug line = 13:1]
  %temp = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %input_V), !dbg !136 ; [#uses=6 type=i8] [debug line = 131:9@14:9]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !138) nounwind, !dbg !128 ; [debug line = 14:9] [debug variable = temp]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !140) nounwind, !dbg !143 ; [debug line = 145:31@19:2] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_0_V, i8 %temp), !dbg !147 ; [debug line = 146:9@19:2]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_1_V, i8 %temp), !dbg !147 ; [debug line = 146:9@19:2]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_2_V, i8 %temp), !dbg !147 ; [debug line = 146:9@19:2]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_3_V, i8 %temp), !dbg !147 ; [debug line = 146:9@19:2]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_4_V, i8 %temp), !dbg !147 ; [debug line = 146:9@19:2]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %output_5_V, i8 %temp), !dbg !147 ; [debug line = 146:9@19:2]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_2), !dbg !148 ; [#uses=0 type=i32] [debug line = 21:2]
  call void @llvm.dbg.value(metadata !{i10 %pixels_read}, i64 0, metadata !149) nounwind, !dbg !133 ; [debug line = 12:101] [debug variable = pixels_read]
  br label %0, !dbg !133                          ; [debug line = 12:101]
}

; [#uses=1]
define weak i8 @_ssdm_op_Read.axis.volatile.i8P(i8*) {
entry:
  %empty = load i8* %0                            ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=6]
define weak void @_ssdm_op_Write.axis.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 6, i32 1, metadata !1, null}
!1 = metadata !{i32 786443, metadata !2, i32 5, i32 35, metadata !3, i32 0} ; [ DW_TAG_lexical_block ]
!2 = metadata !{i32 786478, i32 0, metadata !3, metadata !"splitter", metadata !"splitter", metadata !"_Z8splitterRN3hls6streamIhEEPS1_", metadata !3, i32 3, metadata !4, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !17, i32 5} ; [ DW_TAG_subprogram ]
!3 = metadata !{i32 786473, metadata !"fifo_splitter/.settings/fifo_splitter.cpp", metadata !"/home/littlefoot/18643_project/Hardware-Accel/HW/fifo_splitter", null} ; [ DW_TAG_file_type ]
!4 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!5 = metadata !{null, metadata !6, metadata !65}
!6 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !7} ; [ DW_TAG_reference_type ]
!7 = metadata !{i32 786434, metadata !8, metadata !"stream<unsigned char>", metadata !9, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !10, i32 0, null, metadata !63} ; [ DW_TAG_class_type ]
!8 = metadata !{i32 786489, null, metadata !"hls", metadata !9, i32 69} ; [ DW_TAG_namespace ]
!9 = metadata !{i32 786473, metadata !"/home/littlefoot/vivado/Vivado_HLS/2015.2/common/technology/autopilot/hls_stream.h", metadata !"/home/littlefoot/18643_project/Hardware-Accel/HW/fifo_splitter", null} ; [ DW_TAG_file_type ]
!10 = metadata !{metadata !11, metadata !13, metadata !19, metadata !25, metadata !30, metadata !33, metadata !37, metadata !42, metadata !47, metadata !48, metadata !49, metadata !52, metadata !55, metadata !56, metadata !59}
!11 = metadata !{i32 786445, metadata !7, metadata !"V", metadata !9, i32 163, i64 8, i64 8, i64 0, i32 1, metadata !12} ; [ DW_TAG_member ]
!12 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !7, metadata !"stream", metadata !"stream", metadata !"", metadata !9, i32 83, metadata !14, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !17, i32 83} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{null, metadata !16}
!16 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !7} ; [ DW_TAG_pointer_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!19 = metadata !{i32 786478, i32 0, metadata !7, metadata !"stream", metadata !"stream", metadata !"", metadata !9, i32 86, metadata !20, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !17, i32 86} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !16, metadata !22}
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_const_type ]
!24 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!25 = metadata !{i32 786478, i32 0, metadata !7, metadata !"stream", metadata !"stream", metadata !"", metadata !9, i32 91, metadata !26, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !17, i32 91} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !16, metadata !28}
!28 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_reference_type ]
!29 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !7} ; [ DW_TAG_const_type ]
!30 = metadata !{i32 786478, i32 0, metadata !7, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !9, i32 94, metadata !31, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !17, i32 94} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{metadata !6, metadata !16, metadata !28}
!33 = metadata !{i32 786478, i32 0, metadata !7, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !9, i32 101, metadata !34, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !17, i32 101} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{null, metadata !16, metadata !36}
!36 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_reference_type ]
!37 = metadata !{i32 786478, i32 0, metadata !7, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !9, i32 105, metadata !38, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !17, i32 105} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!39 = metadata !{null, metadata !16, metadata !40}
!40 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_reference_type ]
!41 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ]
!42 = metadata !{i32 786478, i32 0, metadata !7, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !9, i32 112, metadata !43, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !17, i32 112} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!44 = metadata !{metadata !45, metadata !46}
!45 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!46 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !29} ; [ DW_TAG_pointer_type ]
!47 = metadata !{i32 786478, i32 0, metadata !7, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !9, i32 117, metadata !43, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !17, i32 117} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786478, i32 0, metadata !7, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !9, i32 123, metadata !34, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !17, i32 123} ; [ DW_TAG_subprogram ]
!49 = metadata !{i32 786478, i32 0, metadata !7, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !9, i32 129, metadata !50, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !17, i32 129} ; [ DW_TAG_subprogram ]
!50 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!51 = metadata !{metadata !12, metadata !16}
!52 = metadata !{i32 786478, i32 0, metadata !7, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !9, i32 136, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !17, i32 136} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{metadata !45, metadata !16, metadata !36}
!55 = metadata !{i32 786478, i32 0, metadata !7, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !9, i32 144, metadata !38, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !17, i32 144} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786478, i32 0, metadata !7, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !9, i32 150, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !17, i32 150} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!58 = metadata !{metadata !45, metadata !16, metadata !40}
!59 = metadata !{i32 786478, i32 0, metadata !7, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !9, i32 157, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !17, i32 157} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{metadata !62, metadata !16}
!62 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!63 = metadata !{metadata !64}
!64 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !12, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!65 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 7, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"output.V", metadata !70, metadata !"unsigned char", i32 0, i32 7}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 5, i32 5, i32 2}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 0, i32 7, metadata !74}
!74 = metadata !{metadata !75}
!75 = metadata !{metadata !"output.V", metadata !76, metadata !"unsigned char", i32 0, i32 7}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 4, i32 4, i32 2}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 7, metadata !80}
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !"output.V", metadata !82, metadata !"unsigned char", i32 0, i32 7}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 3, i32 3, i32 2}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 7, metadata !86}
!86 = metadata !{metadata !87}
!87 = metadata !{metadata !"output.V", metadata !88, metadata !"unsigned char", i32 0, i32 7}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 2, i32 2, i32 2}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 0, i32 7, metadata !92}
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !"output.V", metadata !94, metadata !"unsigned char", i32 0, i32 7}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 1, i32 1, i32 2}
!96 = metadata !{metadata !97}
!97 = metadata !{i32 0, i32 7, metadata !98}
!98 = metadata !{metadata !99}
!99 = metadata !{metadata !"output.V", metadata !100, metadata !"unsigned char", i32 0, i32 7}
!100 = metadata !{metadata !101}
!101 = metadata !{i32 0, i32 0, i32 2}
!102 = metadata !{metadata !103}
!103 = metadata !{i32 0, i32 7, metadata !104}
!104 = metadata !{metadata !105}
!105 = metadata !{metadata !"input.V", metadata !106, metadata !"unsigned char", i32 0, i32 7}
!106 = metadata !{metadata !107}
!107 = metadata !{i32 0, i32 0, i32 1}
!108 = metadata !{i32 7, i32 1, metadata !1, null}
!109 = metadata !{i32 790531, metadata !110, metadata !"input.V", null, i32 4, metadata !111, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!110 = metadata !{i32 786689, metadata !2, metadata !"input", metadata !3, i32 16777220, metadata !6, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ]
!112 = metadata !{i32 786438, metadata !8, metadata !"stream<unsigned char>", metadata !9, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !113, i32 0, null, metadata !63} ; [ DW_TAG_class_field_type ]
!113 = metadata !{metadata !11}
!114 = metadata !{i32 4, i32 25, metadata !2, null}
!115 = metadata !{i32 790531, metadata !116, metadata !"output[0].V", null, i32 5, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!116 = metadata !{i32 786689, metadata !2, metadata !"output", metadata !3, i32 33554437, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!117 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ]
!118 = metadata !{i32 5, i32 24, metadata !2, null}
!119 = metadata !{i32 790531, metadata !116, metadata !"output[1].V", null, i32 5, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!120 = metadata !{i32 790531, metadata !116, metadata !"output[2].V", null, i32 5, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!121 = metadata !{i32 790531, metadata !116, metadata !"output[3].V", null, i32 5, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!122 = metadata !{i32 790531, metadata !116, metadata !"output[4].V", null, i32 5, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!123 = metadata !{i32 790531, metadata !116, metadata !"output[5].V", null, i32 5, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!124 = metadata !{i32 790531, metadata !125, metadata !"stream<unsigned char>.V", null, i32 129, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!125 = metadata !{i32 786689, metadata !126, metadata !"this", metadata !9, i32 16777345, metadata !65, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 786478, i32 0, metadata !8, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !9, i32 129, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !49, metadata !17, i32 129} ; [ DW_TAG_subprogram ]
!127 = metadata !{i32 129, i32 56, metadata !126, metadata !128}
!128 = metadata !{i32 14, i32 9, metadata !129, null}
!129 = metadata !{i32 786443, metadata !130, i32 12, i32 116, metadata !3, i32 2} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 786443, metadata !1, i32 12, i32 2, metadata !3, i32 1} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 22, i32 1, metadata !1, null}
!132 = metadata !{i32 12, i32 25, metadata !130, null}
!133 = metadata !{i32 12, i32 101, metadata !130, null}
!134 = metadata !{i32 12, i32 117, metadata !129, null}
!135 = metadata !{i32 13, i32 1, metadata !129, null}
!136 = metadata !{i32 131, i32 9, metadata !137, metadata !128}
!137 = metadata !{i32 786443, metadata !126, i32 129, i32 63, metadata !9, i32 6} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 786688, metadata !1, metadata !"temp", metadata !3, i32 10, metadata !139, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!139 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !3, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!140 = metadata !{i32 786688, metadata !141, metadata !"tmp", metadata !9, i32 145, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 786443, metadata !142, i32 144, i32 79, metadata !9, i32 5} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 786478, i32 0, metadata !8, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !9, i32 144, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !55, metadata !17, i32 144} ; [ DW_TAG_subprogram ]
!143 = metadata !{i32 145, i32 31, metadata !141, metadata !144}
!144 = metadata !{i32 19, i32 2, metadata !145, null}
!145 = metadata !{i32 786443, metadata !146, i32 17, i32 19, metadata !3, i32 4} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 786443, metadata !129, i32 16, i32 3, metadata !3, i32 3} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 146, i32 9, metadata !141, metadata !144}
!148 = metadata !{i32 21, i32 2, metadata !129, null}
!149 = metadata !{i32 786688, metadata !130, metadata !"pixels_read", metadata !3, i32 12, metadata !150, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
