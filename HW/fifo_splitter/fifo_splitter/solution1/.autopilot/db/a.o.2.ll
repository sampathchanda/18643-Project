; ModuleID = '/home/littlefoot/18643_project/Hardware-Accel/HW/fifo_splitter/fifo_splitter/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=44 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=14 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=2 type=[12 x i8]*]
@splitter.str = internal unnamed_addr constant [9 x i8] c"splitter\00" ; [#uses=1 type=[9 x i8]*]

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=14]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_op_IfRead.Stream.i8P.i8P(i8*, i8*)

; [#uses=6]
declare void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8*, i8*)

; [#uses=12]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=7]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=0]
define void @splitter(i8* %input.V, i8* %"output[0].V", i8* %"output[1].V", i8* %"output[2].V", i8* %"output[3].V", i8* %"output[4].V", i8* %"output[5].V") {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @.str) nounwind, !dbg !71 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %"output[5].V"), !map !73
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %"output[4].V"), !map !79
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %"output[3].V"), !map !85
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %"output[2].V"), !map !91
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %"output[1].V"), !map !97
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %"output[0].V"), !map !103
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %input.V), !map !109
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @splitter.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %input.V, [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !115 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %"output[0].V", [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %"output[1].V", [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %"output[2].V", [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %"output[3].V", [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %"output[4].V", [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %"output[5].V", [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void @llvm.dbg.value(metadata !{i8* %input.V}, i64 0, metadata !116), !dbg !121 ; [debug line = 4:25] [debug variable = input.V]
  call void @llvm.dbg.value(metadata !{i8* %"output[0].V"}, i64 0, metadata !122), !dbg !125 ; [debug line = 5:24] [debug variable = output[0].V]
  call void @llvm.dbg.value(metadata !{i8* %"output[1].V"}, i64 0, metadata !126), !dbg !125 ; [debug line = 5:24] [debug variable = output[1].V]
  call void @llvm.dbg.value(metadata !{i8* %"output[2].V"}, i64 0, metadata !127), !dbg !125 ; [debug line = 5:24] [debug variable = output[2].V]
  call void @llvm.dbg.value(metadata !{i8* %"output[3].V"}, i64 0, metadata !128), !dbg !125 ; [debug line = 5:24] [debug variable = output[3].V]
  call void @llvm.dbg.value(metadata !{i8* %"output[4].V"}, i64 0, metadata !129), !dbg !125 ; [debug line = 5:24] [debug variable = output[4].V]
  call void @llvm.dbg.value(metadata !{i8* %"output[5].V"}, i64 0, metadata !130), !dbg !125 ; [debug line = 5:24] [debug variable = output[5].V]
  call void @llvm.dbg.value(metadata !{i8* %input.V}, i64 0, metadata !131), !dbg !133 ; [debug line = 129:56@14:9] [debug variable = stream<unsigned char>.V]
  call fastcc void @Loop_1_proc(i8* %input.V, i8* %"output[0].V", i8* %"output[1].V", i8* %"output[2].V", i8* %"output[3].V", i8* %"output[4].V", i8* %"output[5].V")
  ret void, !dbg !137                             ; [debug line = 22:1]
}

; [#uses=1]
define internal fastcc void @Loop_1_proc(i8* %input.V, i8* %"output[0].V", i8* %"output[1].V", i8* %"output[2].V", i8* %"output[3].V", i8* %"output[4].V", i8* %"output[5].V") {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(i8* %"output[5].V", [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %"output[4].V", [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %"output[3].V", [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %"output[2].V", [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %"output[1].V", [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %"output[0].V", [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %input.V, [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  %tmp.1 = alloca i8, align 1                     ; [#uses=12 type=i8*]
  %tmp = alloca i8, align 1                       ; [#uses=2 type=i8*]
  br label %0

splitter_.exit2.exitStub:                         ; preds = %0
  ret void

; <label>:0                                       ; preds = %2, %newFuncRoot
  %pixels_read.0.i.i = phi i10 [ 0, %newFuncRoot ], [ %pixels_read, %2 ] ; [#uses=2 type=i10]
  %exitcond4.i.i = icmp eq i10 %pixels_read.0.i.i, -240, !dbg !138 ; [#uses=1 type=i1] [debug line = 12:25]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784) ; [#uses=0 type=i32]
  br i1 %exitcond4.i.i, label %splitter_.exit2.exitStub, label %2, !dbg !138 ; [debug line = 12:25]

; <label>:2                                       ; preds = %0
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str2), !dbg !139 ; [#uses=1 type=i32] [debug line = 12:117]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !140 ; [debug line = 13:1]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* %input.V, i8* %tmp) nounwind, !dbg !141 ; [debug line = 131:9@14:9]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !143) nounwind, !dbg !144 ; [debug line = 132:9@14:9] [debug variable = tmp]
  %temp = load i8* %tmp, align 1, !dbg !144       ; [#uses=6 type=i8] [debug line = 132:9@14:9]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !145) nounwind, !dbg !134 ; [debug line = 14:9] [debug variable = temp]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !147) nounwind, !dbg !149 ; [debug line = 145:31@19:2] [debug variable = tmp]
  store i8 %temp, i8* %tmp.1, align 1, !dbg !149  ; [debug line = 145:31@19:2]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* %"output[0].V", i8* %tmp.1) nounwind, !dbg !153 ; [debug line = 146:9@19:2]
  store i8 %temp, i8* %tmp.1, align 1, !dbg !149  ; [debug line = 145:31@19:2]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* %"output[1].V", i8* %tmp.1) nounwind, !dbg !153 ; [debug line = 146:9@19:2]
  store i8 %temp, i8* %tmp.1, align 1, !dbg !149  ; [debug line = 145:31@19:2]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* %"output[2].V", i8* %tmp.1) nounwind, !dbg !153 ; [debug line = 146:9@19:2]
  store i8 %temp, i8* %tmp.1, align 1, !dbg !149  ; [debug line = 145:31@19:2]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* %"output[3].V", i8* %tmp.1) nounwind, !dbg !153 ; [debug line = 146:9@19:2]
  store i8 %temp, i8* %tmp.1, align 1, !dbg !149  ; [debug line = 145:31@19:2]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* %"output[4].V", i8* %tmp.1) nounwind, !dbg !153 ; [debug line = 146:9@19:2]
  store i8 %temp, i8* %tmp.1, align 1, !dbg !149  ; [debug line = 145:31@19:2]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* %"output[5].V", i8* %tmp.1) nounwind, !dbg !153 ; [debug line = 146:9@19:2]
  %3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str2, i32 %tmp.2), !dbg !154 ; [#uses=0 type=i32] [debug line = 21:2]
  %pixels_read = add i10 %pixels_read.0.i.i, 1, !dbg !155 ; [#uses=1 type=i10] [debug line = 12:101]
  call void @llvm.dbg.value(metadata !{i10 %pixels_read}, i64 0, metadata !156) nounwind, !dbg !155 ; [debug line = 12:101] [debug variable = pixels_read]
  br label %0, !dbg !155                          ; [debug line = 12:101]
}

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/littlefoot/18643_project/Hardware-Accel/HW/fifo_splitter/fifo_splitter/solution1/.autopilot/db/fifo_splitter.pragma.2.cpp", metadata !"/home/littlefoot/18643_project/Hardware-Accel/HW/fifo_splitter", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !69, metadata !70}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"splitter", metadata !"splitter", metadata !"_Z8splitterRN3hls6streamIhEEPS1_", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !20, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"fifo_splitter/.settings/fifo_splitter.cpp", metadata !"/home/littlefoot/18643_project/Hardware-Accel/HW/fifo_splitter", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !68}
!9 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ]
!10 = metadata !{i32 786434, metadata !11, metadata !"stream<unsigned char>", metadata !12, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !13, i32 0, null, metadata !66} ; [ DW_TAG_class_type ]
!11 = metadata !{i32 786489, null, metadata !"hls", metadata !12, i32 69} ; [ DW_TAG_namespace ]
!12 = metadata !{i32 786473, metadata !"/home/littlefoot/vivado/Vivado_HLS/2015.2/common/technology/autopilot/hls_stream.h", metadata !"/home/littlefoot/18643_project/Hardware-Accel/HW/fifo_splitter", null} ; [ DW_TAG_file_type ]
!13 = metadata !{metadata !14, metadata !16, metadata !22, metadata !28, metadata !33, metadata !36, metadata !40, metadata !45, metadata !50, metadata !51, metadata !52, metadata !55, metadata !58, metadata !59, metadata !62}
!14 = metadata !{i32 786445, metadata !10, metadata !"V", metadata !12, i32 163, i64 8, i64 8, i64 0, i32 1, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!16 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 83, metadata !17, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 83} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19}
!19 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !10} ; [ DW_TAG_pointer_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 86, metadata !23, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 86} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !19, metadata !25}
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!26 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_const_type ]
!27 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 91, metadata !29, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !20, i32 91} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !19, metadata !31}
!31 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_reference_type ]
!32 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!33 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !12, i32 94, metadata !34, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !20, i32 94} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{metadata !9, metadata !19, metadata !31}
!36 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !12, i32 101, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{null, metadata !19, metadata !39}
!39 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_reference_type ]
!40 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !12, i32 105, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{null, metadata !19, metadata !43}
!43 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_reference_type ]
!44 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ]
!45 = metadata !{i32 786478, i32 0, metadata !10, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !12, i32 112, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 112} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{metadata !48, metadata !49}
!48 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!49 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !32} ; [ DW_TAG_pointer_type ]
!50 = metadata !{i32 786478, i32 0, metadata !10, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !12, i32 117, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 117} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !12, i32 123, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !12, i32 129, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 129} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{metadata !15, metadata !19}
!55 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !12, i32 136, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 136} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{metadata !48, metadata !19, metadata !39}
!58 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !12, i32 144, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !12, i32 150, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 150} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{metadata !48, metadata !19, metadata !43}
!62 = metadata !{i32 786478, i32 0, metadata !10, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !12, i32 157, metadata !63, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 157} ; [ DW_TAG_subprogram ]
!63 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{metadata !65, metadata !19}
!65 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !15, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!68 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!69 = metadata !{i32 786478, i32 0, metadata !11, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !12, i32 144, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !58, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !12, i32 129, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !52, metadata !20, i32 129} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 6, i32 1, metadata !72, null}
!72 = metadata !{i32 786443, metadata !5, i32 5, i32 35, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 7, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"output.V", metadata !77, metadata !"unsigned char", i32 0, i32 7}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 5, i32 5, i32 2}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 7, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"output.V", metadata !83, metadata !"unsigned char", i32 0, i32 7}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 4, i32 4, i32 2}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 7, metadata !87}
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !"output.V", metadata !89, metadata !"unsigned char", i32 0, i32 7}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 3, i32 3, i32 2}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 7, metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !"output.V", metadata !95, metadata !"unsigned char", i32 0, i32 7}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 2, i32 2, i32 2}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 7, metadata !99}
!99 = metadata !{metadata !100}
!100 = metadata !{metadata !"output.V", metadata !101, metadata !"unsigned char", i32 0, i32 7}
!101 = metadata !{metadata !102}
!102 = metadata !{i32 1, i32 1, i32 2}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 0, i32 7, metadata !105}
!105 = metadata !{metadata !106}
!106 = metadata !{metadata !"output.V", metadata !107, metadata !"unsigned char", i32 0, i32 7}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 0, i32 0, i32 2}
!109 = metadata !{metadata !110}
!110 = metadata !{i32 0, i32 7, metadata !111}
!111 = metadata !{metadata !112}
!112 = metadata !{metadata !"input.V", metadata !113, metadata !"unsigned char", i32 0, i32 7}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 0, i32 1}
!115 = metadata !{i32 7, i32 1, metadata !72, null}
!116 = metadata !{i32 790531, metadata !117, metadata !"input.V", null, i32 4, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!117 = metadata !{i32 786689, metadata !5, metadata !"input", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ]
!119 = metadata !{i32 786438, metadata !11, metadata !"stream<unsigned char>", metadata !12, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !120, i32 0, null, metadata !66} ; [ DW_TAG_class_field_type ]
!120 = metadata !{metadata !14}
!121 = metadata !{i32 4, i32 25, metadata !5, null}
!122 = metadata !{i32 790531, metadata !123, metadata !"output[0].V", null, i32 5, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!123 = metadata !{i32 786689, metadata !5, metadata !"output", metadata !6, i32 33554437, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!124 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ]
!125 = metadata !{i32 5, i32 24, metadata !5, null}
!126 = metadata !{i32 790531, metadata !123, metadata !"output[1].V", null, i32 5, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!127 = metadata !{i32 790531, metadata !123, metadata !"output[2].V", null, i32 5, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!128 = metadata !{i32 790531, metadata !123, metadata !"output[3].V", null, i32 5, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!129 = metadata !{i32 790531, metadata !123, metadata !"output[4].V", null, i32 5, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!130 = metadata !{i32 790531, metadata !123, metadata !"output[5].V", null, i32 5, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!131 = metadata !{i32 790531, metadata !132, metadata !"stream<unsigned char>.V", null, i32 129, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!132 = metadata !{i32 786689, metadata !70, metadata !"this", metadata !12, i32 16777345, metadata !68, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!133 = metadata !{i32 129, i32 56, metadata !70, metadata !134}
!134 = metadata !{i32 14, i32 9, metadata !135, null}
!135 = metadata !{i32 786443, metadata !136, i32 12, i32 116, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 786443, metadata !72, i32 12, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 22, i32 1, metadata !72, null}
!138 = metadata !{i32 12, i32 25, metadata !136, null}
!139 = metadata !{i32 12, i32 117, metadata !135, null}
!140 = metadata !{i32 13, i32 1, metadata !135, null}
!141 = metadata !{i32 131, i32 9, metadata !142, metadata !134}
!142 = metadata !{i32 786443, metadata !70, i32 129, i32 63, metadata !12, i32 6} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 786688, metadata !142, metadata !"tmp", metadata !12, i32 130, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!144 = metadata !{i32 132, i32 9, metadata !142, metadata !134}
!145 = metadata !{i32 786688, metadata !72, metadata !"temp", metadata !6, i32 10, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !6, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ]
!147 = metadata !{i32 786688, metadata !148, metadata !"tmp", metadata !12, i32 145, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 786443, metadata !69, i32 144, i32 79, metadata !12, i32 5} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 145, i32 31, metadata !148, metadata !150}
!150 = metadata !{i32 19, i32 2, metadata !151, null}
!151 = metadata !{i32 786443, metadata !152, i32 17, i32 19, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 786443, metadata !135, i32 16, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 146, i32 9, metadata !148, metadata !150}
!154 = metadata !{i32 21, i32 2, metadata !135, null}
!155 = metadata !{i32 12, i32 101, metadata !136, null}
!156 = metadata !{i32 786688, metadata !136, metadata !"pixels_read", metadata !6, i32 12, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!157 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
