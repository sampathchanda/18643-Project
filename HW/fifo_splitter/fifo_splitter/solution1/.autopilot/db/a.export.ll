; ModuleID = '/home/littlefoot/18643_project/Hardware-Accel/HW/fifo_splitter/fifo_splitter/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@splitter_str = internal unnamed_addr constant [9 x i8] c"splitter\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
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

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define void @splitter(i8* %input_V, i8* %output_0_V, i8* %output_1_V, i8* %output_2_V, i8* %output_3_V, i8* %output_4_V, i8* %output_5_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i8* %output_5_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  %empty_3 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %output_4_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  %empty_4 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %output_3_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %output_2_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %output_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %output_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %input_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_5_V), !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_4_V), !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_3_V), !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_2_V), !map !18
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_1_V), !map !24
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_0_V), !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %input_V), !map !36
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @splitter_str) nounwind
  call fastcc void @splitter_Loop_1_proc(i8* %input_V, i8* %output_0_V, i8* %output_1_V, i8* %output_2_V, i8* %output_3_V, i8* %output_4_V, i8* %output_5_V)
  ret void
}

define internal fastcc void @splitter_Loop_1_proc(i8* %input_V, i8* %output_0_V, i8* %output_1_V, i8* %output_2_V, i8* %output_3_V, i8* %output_4_V, i8* %output_5_V) {
newFuncRoot:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i8* %input_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %output_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %output_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %output_2_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %output_3_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  %empty_13 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %output_4_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %output_5_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [8 x i8]* @ap_fifo_str)
  br label %0

splitter_.exit2.exitStub:                         ; preds = %0
  ret void

; <label>:0                                       ; preds = %1, %newFuncRoot
  %pixels_read_0_i_i = phi i10 [ 0, %newFuncRoot ], [ %pixels_read, %1 ]
  %exitcond4_i_i = icmp eq i10 %pixels_read_0_i_i, -240
  %pixels_read = add i10 %pixels_read_0_i_i, 1
  br i1 %exitcond4_i_i, label %splitter_.exit2.exitStub, label %1

; <label>:1                                       ; preds = %0
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %temp = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_0_V, i8 %temp)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_1_V, i8 %temp)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_2_V, i8 %temp)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_3_V, i8 %temp)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_4_V, i8 %temp)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_5_V, i8 %temp)
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1, i32 %tmp_2)
  br label %0
}

define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

declare i8 @_autotb_FifoRead_i8(i8*)

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 7, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"output.V", metadata !4, metadata !"unsigned char", i32 0, i32 7}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 5, i32 5, i32 2}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 7, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"output.V", metadata !10, metadata !"unsigned char", i32 0, i32 7}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 4, i32 4, i32 2}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 7, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"output.V", metadata !16, metadata !"unsigned char", i32 0, i32 7}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 3, i32 3, i32 2}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 7, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"output.V", metadata !22, metadata !"unsigned char", i32 0, i32 7}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 2, i32 2, i32 2}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 7, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"output.V", metadata !28, metadata !"unsigned char", i32 0, i32 7}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 1, i32 1, i32 2}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 7, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"output.V", metadata !34, metadata !"unsigned char", i32 0, i32 7}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 0, i32 2}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 7, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"input.V", metadata !40, metadata !"unsigned char", i32 0, i32 7}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 0, i32 1}
