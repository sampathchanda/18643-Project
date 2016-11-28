; ModuleID = '/home/littlefoot/18643_project/Hardware-Accel/HW/maxpool_downsample/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"LOOP\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@maxpool_str = internal unnamed_addr constant [8 x i8] c"maxpool\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str14 = internal unnamed_addr constant [1 x i8] zeroinitializer

define void @maxpool(i1* %begin_r, i8* %input_V, i8* %output_V, i1* %ok) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [8 x i8]* @ap_fifo_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %input_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [8 x i8]* @ap_fifo_str)
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %begin_r), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %input_V), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_V), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %ok), !map !19
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @maxpool_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %ok, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %begin_r, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call fastcc void @maxpool_Loop_LOOP_proc(i8* %output_V, i8* %input_V)
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

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

define internal fastcc void @maxpool_Loop_LOOP_proc(i8* %output_V, i8* %input_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(i8* %input_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [8 x i8]* @ap_fifo_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [8 x i8]* @ap_fifo_str)
  br label %.preheader13

.exitStub:                                        ; preds = %.preheader13
  ret void

.preheader13:                                     ; preds = %.preheader.preheader, %newFuncRoot
  %loop_count = phi i4 [ %loop_count_1, %.preheader.preheader ], [ 0, %newFuncRoot ]
  %exitcond1 = icmp eq i4 %loop_count, -4
  %loop_count_1 = add i4 %loop_count, 1
  br i1 %exitcond1, label %.exitStub, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader13
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 12, i64 12, i64 12)
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str3) nounwind
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %input_V_read = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %input_V_read_1 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_2 = icmp ugt i8 %input_V_read, %input_V_read_1
  %tmp_5 = select i1 %tmp_2, i8 %input_V_read, i8 %input_V_read_1
  %input_V_read_2 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %input_V_read_3 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_4_1 = icmp ugt i8 %input_V_read_2, %input_V_read_3
  %tmp_5_1 = select i1 %tmp_4_1, i8 %input_V_read_2, i8 %input_V_read_3
  %input_V_read_4 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %input_V_read_5 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_4_2 = icmp ugt i8 %input_V_read_4, %input_V_read_5
  %tmp_5_2 = select i1 %tmp_4_2, i8 %input_V_read_4, i8 %input_V_read_5
  %input_V_read_6 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %input_V_read_7 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_4_3 = icmp ugt i8 %input_V_read_6, %input_V_read_7
  %tmp_5_3 = select i1 %tmp_4_3, i8 %input_V_read_6, i8 %input_V_read_7
  %input_V_read_8 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %input_V_read_9 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_4_4 = icmp ugt i8 %input_V_read_8, %input_V_read_9
  %tmp_5_4 = select i1 %tmp_4_4, i8 %input_V_read_8, i8 %input_V_read_9
  %input_V_read_10 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %input_V_read_11 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_4_5 = icmp ugt i8 %input_V_read_10, %input_V_read_11
  %tmp_5_5 = select i1 %tmp_4_5, i8 %input_V_read_10, i8 %input_V_read_11
  %input_V_read_12 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %input_V_read_13 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_4_6 = icmp ugt i8 %input_V_read_12, %input_V_read_13
  %tmp_5_6 = select i1 %tmp_4_6, i8 %input_V_read_12, i8 %input_V_read_13
  %input_V_read_14 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %input_V_read_15 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_4_7 = icmp ugt i8 %input_V_read_14, %input_V_read_15
  %tmp_5_7 = select i1 %tmp_4_7, i8 %input_V_read_14, i8 %input_V_read_15
  %input_V_read_16 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %input_V_read_17 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_4_8 = icmp ugt i8 %input_V_read_16, %input_V_read_17
  %tmp_5_8 = select i1 %tmp_4_8, i8 %input_V_read_16, i8 %input_V_read_17
  %input_V_read_18 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %input_V_read_19 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_4_9 = icmp ugt i8 %input_V_read_18, %input_V_read_19
  %tmp_5_9 = select i1 %tmp_4_9, i8 %input_V_read_18, i8 %input_V_read_19
  %input_V_read_20 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %input_V_read_21 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_4_s = icmp ugt i8 %input_V_read_20, %input_V_read_21
  %tmp_5_s = select i1 %tmp_4_s, i8 %input_V_read_20, i8 %input_V_read_21
  %input_V_read_22 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %input_V_read_23 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_4_10 = icmp ugt i8 %input_V_read_22, %input_V_read_23
  %tmp_5_10 = select i1 %tmp_4_10, i8 %input_V_read_22, i8 %input_V_read_23
  %tmp = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_1 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_s = icmp ugt i8 %tmp, %tmp_1
  %temp3 = select i1 %tmp_s, i8 %tmp, i8 %tmp_1
  %tmp_7 = icmp ugt i8 %tmp_5, %temp3
  %tmp_3 = select i1 %tmp_7, i8 %tmp_5, i8 %temp3
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_V, i8 %tmp_3)
  %tmp_6 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_8 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_1_3 = icmp ugt i8 %tmp_6, %tmp_8
  %temp3_1 = select i1 %tmp_1_3, i8 %tmp_6, i8 %tmp_8
  %tmp_9_1 = icmp ugt i8 %tmp_5_1, %temp3_1
  %tmp_9 = select i1 %tmp_9_1, i8 %tmp_5_1, i8 %temp3_1
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_V, i8 %tmp_9)
  %tmp_10 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_21 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_2_4 = icmp ugt i8 %tmp_10, %tmp_21
  %temp3_s = select i1 %tmp_2_4, i8 %tmp_10, i8 %tmp_21
  %tmp_9_2 = icmp ugt i8 %tmp_5_2, %temp3_s
  %tmp_11 = select i1 %tmp_9_2, i8 %tmp_5_2, i8 %temp3_s
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_V, i8 %tmp_11)
  %tmp_22 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_23 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_3_5 = icmp ugt i8 %tmp_22, %tmp_23
  %temp3_3 = select i1 %tmp_3_5, i8 %tmp_22, i8 %tmp_23
  %tmp_9_3 = icmp ugt i8 %tmp_5_3, %temp3_3
  %tmp_12 = select i1 %tmp_9_3, i8 %tmp_5_3, i8 %temp3_3
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_V, i8 %tmp_12)
  %tmp_24 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_25 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_4_11 = icmp ugt i8 %tmp_24, %tmp_25
  %temp3_4 = select i1 %tmp_4_11, i8 %tmp_24, i8 %tmp_25
  %tmp_9_4 = icmp ugt i8 %tmp_5_4, %temp3_4
  %tmp_13 = select i1 %tmp_9_4, i8 %tmp_5_4, i8 %temp3_4
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_V, i8 %tmp_13)
  %tmp_26 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_27 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_5_12 = icmp ugt i8 %tmp_26, %tmp_27
  %temp3_5 = select i1 %tmp_5_12, i8 %tmp_26, i8 %tmp_27
  %tmp_9_5 = icmp ugt i8 %tmp_5_5, %temp3_5
  %tmp_14 = select i1 %tmp_9_5, i8 %tmp_5_5, i8 %temp3_5
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_V, i8 %tmp_14)
  %tmp_28 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_29 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_6_13 = icmp ugt i8 %tmp_28, %tmp_29
  %temp3_6 = select i1 %tmp_6_13, i8 %tmp_28, i8 %tmp_29
  %tmp_9_6 = icmp ugt i8 %tmp_5_6, %temp3_6
  %tmp_15 = select i1 %tmp_9_6, i8 %tmp_5_6, i8 %temp3_6
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_V, i8 %tmp_15)
  %tmp_30 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_31 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_7_14 = icmp ugt i8 %tmp_30, %tmp_31
  %temp3_7 = select i1 %tmp_7_14, i8 %tmp_30, i8 %tmp_31
  %tmp_9_7 = icmp ugt i8 %tmp_5_7, %temp3_7
  %tmp_16 = select i1 %tmp_9_7, i8 %tmp_5_7, i8 %temp3_7
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_V, i8 %tmp_16)
  %tmp_32 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_33 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_8_15 = icmp ugt i8 %tmp_32, %tmp_33
  %temp3_8 = select i1 %tmp_8_15, i8 %tmp_32, i8 %tmp_33
  %tmp_9_8 = icmp ugt i8 %tmp_5_8, %temp3_8
  %tmp_17 = select i1 %tmp_9_8, i8 %tmp_5_8, i8 %temp3_8
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_V, i8 %tmp_17)
  %tmp_34 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_35 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_9_16 = icmp ugt i8 %tmp_34, %tmp_35
  %temp3_9 = select i1 %tmp_9_16, i8 %tmp_34, i8 %tmp_35
  %tmp_9_9 = icmp ugt i8 %tmp_5_9, %temp3_9
  %tmp_18 = select i1 %tmp_9_9, i8 %tmp_5_9, i8 %temp3_9
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_V, i8 %tmp_18)
  %tmp_36 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_37 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_s_17 = icmp ugt i8 %tmp_36, %tmp_37
  %temp3_2 = select i1 %tmp_s_17, i8 %tmp_36, i8 %tmp_37
  %tmp_9_s = icmp ugt i8 %tmp_5_s, %temp3_2
  %tmp_19 = select i1 %tmp_9_s, i8 %tmp_5_s, i8 %temp3_2
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_V, i8 %tmp_19)
  %tmp_38 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_39 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %input_V)
  %tmp_10_18 = icmp ugt i8 %tmp_38, %tmp_39
  %temp3_10 = select i1 %tmp_10_18, i8 %tmp_38, i8 %tmp_39
  %tmp_9_10 = icmp ugt i8 %tmp_5_10, %temp3_10
  %tmp_20 = select i1 %tmp_9_10, i8 %tmp_5_10, i8 %temp3_10
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %output_V, i8 %tmp_20)
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str3, i32 %tmp_4)
  br label %.preheader13
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
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 0, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"begin", metadata !5, metadata !"bool", i32 0, i32 0}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 7, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"input.V", metadata !5, metadata !"unsigned char", i32 0, i32 7}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 7, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"output.V", metadata !5, metadata !"unsigned char", i32 0, i32 7}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 0, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"ok", metadata !5, metadata !"bool", i32 0, i32 0}
