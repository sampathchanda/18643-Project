; ModuleID = '/home/littlefoot/18643_project/Hardware-Accel/HW/fifo_splitter/fifo_splitter/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream.0" = type { i8 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@splitter.str = internal unnamed_addr constant [9 x i8] c"splitter\00" ; [#uses=1 type=[9 x i8]*]

; [#uses=0]
define void @splitter(%"class.hls::stream.0"* %input, %"class.hls::stream.0"* %output) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @splitter.str) nounwind
  %tmp.3 = alloca i8, align 1                     ; [#uses=2 type=i8*]
  %tmp = alloca i8, align 1                       ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %input}, i64 0, metadata !71), !dbg !72 ; [debug line = 4:25] [debug variable = input]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %output}, i64 0, metadata !73), !dbg !74 ; [debug line = 5:24] [debug variable = output]
  call void (...)* @_ssdm_SpecArrayDimSize(%"class.hls::stream.0"* %output, i32 6) nounwind, !dbg !75 ; [debug line = 5:36]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !77 ; [debug line = 6:1]
  call void (...)* @_ssdm_SpecStream(%"class.hls::stream.0"* %input, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !78 ; [debug line = 7:1]
  call void (...)* @_ssdm_SpecStream(%"class.hls::stream.0"* %output, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !79 ; [debug line = 8:1]
  %input.addr = getelementptr inbounds %"class.hls::stream.0"* %input, i64 0, i32 0, !dbg !80 ; [#uses=1 type=i8*] [debug line = 131:9@14:9]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %input}, i64 0, metadata !85), !dbg !86 ; [debug line = 129:56@14:9] [debug variable = this]
  br label %0

; <label>:0                                       ; preds = %1, %codeRepl
  %pixels_read.0.i = phi i32 [ 0, %codeRepl ], [ %pixels_read, %1 ] ; [#uses=2 type=i32]
  %exitcond4.i = icmp eq i32 %pixels_read.0.i, 784, !dbg !87 ; [#uses=1 type=i1] [debug line = 12:25]
  br i1 %exitcond4.i, label %splitter_.exit, label %3, !dbg !87 ; [debug line = 12:25]

; <label>:1                                       ; preds = %2
  %rend6 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i32 %rbegin5) nounwind, !dbg !88 ; [#uses=0 type=i32] [debug line = 21:2]
  %pixels_read = add nsw i32 %pixels_read.0.i, 1, !dbg !89 ; [#uses=1 type=i32] [debug line = 12:101]
  call void @llvm.dbg.value(metadata !{i32 %pixels_read}, i64 0, metadata !90) nounwind, !dbg !89 ; [debug line = 12:101] [debug variable = pixels_read]
  br label %0, !dbg !89                           ; [debug line = 12:101]

; <label>:2                                       ; preds = %4, %3
  %loop_count.0.i = phi i32 [ 0, %3 ], [ %loop_count, %4 ] ; [#uses=3 type=i32]
  %exitcond.i = icmp eq i32 %loop_count.0.i, 6, !dbg !92 ; [#uses=1 type=i1] [debug line = 16:25]
  br i1 %exitcond.i, label %1, label %4, !dbg !92 ; [debug line = 16:25]

; <label>:3                                       ; preds = %0
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !94 ; [#uses=1 type=i32] [debug line = 12:117]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !95 ; [debug line = 13:1]
  call void @llvm.dbg.declare(metadata !{i8* %tmp}, metadata !96) nounwind, !dbg !97 ; [debug line = 130:22@14:9] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i8P.i8P(i8* %input.addr, i8* %tmp) nounwind, !dbg !80 ; [debug line = 131:9@14:9]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !96) nounwind, !dbg !98 ; [debug line = 132:9@14:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !96) nounwind, !dbg !98 ; [debug line = 132:9@14:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !96) nounwind, !dbg !98 ; [debug line = 132:9@14:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !96) nounwind, !dbg !98 ; [debug line = 132:9@14:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !96) nounwind, !dbg !98 ; [debug line = 132:9@14:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !96) nounwind, !dbg !98 ; [debug line = 132:9@14:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !96) nounwind, !dbg !98 ; [debug line = 132:9@14:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !96) nounwind, !dbg !98 ; [debug line = 132:9@14:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !96), !dbg !98 ; [debug line = 132:9@14:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !96), !dbg !98 ; [debug line = 132:9@14:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8* %tmp}, i64 0, metadata !96), !dbg !98 ; [debug line = 132:9@14:9] [debug variable = tmp]
  %temp = load i8* %tmp, align 1, !dbg !98        ; [#uses=1 type=i8] [debug line = 132:9@14:9]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !99) nounwind, !dbg !82 ; [debug line = 14:9] [debug variable = temp]
  br label %2, !dbg !92                           ; [debug line = 16:25]

; <label>:4                                       ; preds = %2
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !101 ; [#uses=1 type=i32] [debug line = 17:20]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !103 ; [debug line = 18:1]
  %tmp.2 = sext i32 %loop_count.0.i to i64, !dbg !104 ; [#uses=1 type=i64] [debug line = 19:2]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.3}, metadata !105) nounwind, !dbg !107 ; [debug line = 145:22@19:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !105) nounwind, !dbg !108 ; [debug line = 145:31@19:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !105) nounwind, !dbg !108 ; [debug line = 145:31@19:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !105) nounwind, !dbg !108 ; [debug line = 145:31@19:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !105) nounwind, !dbg !108 ; [debug line = 145:31@19:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !105) nounwind, !dbg !108 ; [debug line = 145:31@19:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !105) nounwind, !dbg !108 ; [debug line = 145:31@19:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !105) nounwind, !dbg !108 ; [debug line = 145:31@19:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !105) nounwind, !dbg !108 ; [debug line = 145:31@19:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !105), !dbg !108 ; [debug line = 145:31@19:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !105), !dbg !108 ; [debug line = 145:31@19:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %temp}, i64 0, metadata !105), !dbg !108 ; [debug line = 145:31@19:2] [debug variable = tmp]
  store i8 %temp, i8* %tmp.3, align 1, !dbg !108  ; [debug line = 145:31@19:2]
  %output.addr = getelementptr inbounds %"class.hls::stream.0"* %output, i64 %tmp.2, i32 0, !dbg !109 ; [#uses=1 type=i8*] [debug line = 146:9@19:2]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* %output.addr, i8* %tmp.3) nounwind, !dbg !109 ; [debug line = 146:9@19:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !110 ; [#uses=0 type=i32] [debug line = 20:3]
  %loop_count = add nsw i32 %loop_count.0.i, 1, !dbg !111 ; [#uses=1 type=i32] [debug line = 17:5]
  call void @llvm.dbg.value(metadata !{i32 %loop_count}, i64 0, metadata !112) nounwind, !dbg !111 ; [debug line = 17:5] [debug variable = loop_count]
  br label %2, !dbg !111                          ; [debug line = 17:5]

splitter_.exit:                                   ; preds = %0
  ret void, !dbg !113                             ; [debug line = 22:1]
}

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecStream(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=1]
declare void @_ssdm_op_IfRead.Stream.i8P.i8P(i8*, i8*)

; [#uses=1]
declare void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8*, i8*)

; [#uses=28]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/littlefoot/18643_project/Hardware-Accel/HW/fifo_splitter/fifo_splitter/solution1/.autopilot/db/fifo_splitter.pragma.2.cpp", metadata !"/home/littlefoot/18643_project/Hardware-Accel/HW/fifo_splitter", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !69, metadata !70}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"splitter", metadata !"splitter", metadata !"_Z8splitterRN3hls6streamIhEEPS1_", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*, %"class.hls::stream.0"*)* @splitter, null, null, metadata !20, i32 5} ; [ DW_TAG_subprogram ]
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
!71 = metadata !{i32 786689, metadata !5, metadata !"input", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 4, i32 25, metadata !5, null}
!73 = metadata !{i32 786689, metadata !5, metadata !"output", metadata !6, i32 33554437, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 5, i32 24, metadata !5, null}
!75 = metadata !{i32 5, i32 36, metadata !76, null}
!76 = metadata !{i32 786443, metadata !5, i32 5, i32 35, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 6, i32 1, metadata !76, null}
!78 = metadata !{i32 7, i32 1, metadata !76, null}
!79 = metadata !{i32 8, i32 1, metadata !76, null}
!80 = metadata !{i32 131, i32 9, metadata !81, metadata !82}
!81 = metadata !{i32 786443, metadata !70, i32 129, i32 63, metadata !12, i32 6} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 14, i32 9, metadata !83, null}
!83 = metadata !{i32 786443, metadata !84, i32 12, i32 116, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !76, i32 12, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786689, metadata !70, metadata !"this", metadata !12, i32 16777345, metadata !68, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 129, i32 56, metadata !70, metadata !82}
!87 = metadata !{i32 12, i32 25, metadata !84, null}
!88 = metadata !{i32 21, i32 2, metadata !83, null}
!89 = metadata !{i32 12, i32 101, metadata !84, null}
!90 = metadata !{i32 786688, metadata !84, metadata !"pixels_read", metadata !6, i32 12, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!92 = metadata !{i32 16, i32 25, metadata !93, null}
!93 = metadata !{i32 786443, metadata !83, i32 16, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 12, i32 117, metadata !83, null}
!95 = metadata !{i32 13, i32 1, metadata !83, null}
!96 = metadata !{i32 786688, metadata !81, metadata !"tmp", metadata !12, i32 130, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 130, i32 22, metadata !81, metadata !82}
!98 = metadata !{i32 132, i32 9, metadata !81, metadata !82}
!99 = metadata !{i32 786688, metadata !76, metadata !"temp", metadata !6, i32 10, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !6, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ]
!101 = metadata !{i32 17, i32 20, metadata !102, null}
!102 = metadata !{i32 786443, metadata !93, i32 17, i32 19, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 18, i32 1, metadata !102, null}
!104 = metadata !{i32 19, i32 2, metadata !102, null}
!105 = metadata !{i32 786688, metadata !106, metadata !"tmp", metadata !12, i32 145, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 786443, metadata !69, i32 144, i32 79, metadata !12, i32 5} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 145, i32 22, metadata !106, metadata !104}
!108 = metadata !{i32 145, i32 31, metadata !106, metadata !104}
!109 = metadata !{i32 146, i32 9, metadata !106, metadata !104}
!110 = metadata !{i32 20, i32 3, metadata !102, null}
!111 = metadata !{i32 17, i32 5, metadata !93, null}
!112 = metadata !{i32 786688, metadata !93, metadata !"loop_count", metadata !6, i32 16, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 22, i32 1, metadata !76, null}
