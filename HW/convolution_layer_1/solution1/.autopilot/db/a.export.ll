; ModuleID = '/home/littlefoot/18643_project/Hardware-Accel/HW/convolution_layer_1/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"bram\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str4 = private unnamed_addr constant [13 x i8] c"BUFFER_RESET\00", align 1
@p_str5 = private unnamed_addr constant [10 x i8] c"SCAN_LINE\00", align 1
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a22]
@convolve_str = internal unnamed_addr constant [9 x i8] c"convolve\00"

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

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

declare void @_GLOBAL__I_a22() nounwind section ".text.startup"

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define void @convolve(i8* %image_V, [25 x float]* %weights, i8* %conv_output_V, i1* %done) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %image_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([25 x float]* %weights), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %conv_output_V), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %done), !map !23
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @convolve_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %done, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([25 x float]* %weights, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %conv_output_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %image_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call fastcc void @convolve_Loop_BUFFER_RESET_proc(i8* %image_V, [25 x float]* %weights, i8* %conv_output_V)
  call fastcc void @convolve_Block__proc(i1* %done)
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_9 = trunc i32 %empty to i8
  ret i8 %empty_9
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_10 = zext i23 %1 to i24
  %empty_11 = shl i24 %empty, 23
  %empty_12 = or i24 %empty_11, %empty_10
  ret i24 %empty_12
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define internal fastcc void @convolve_Loop_BUFFER_RESET_proc(i8* %image_V, [25 x float]* %weights, i8* %conv_output_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(i8* %image_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i8* %conv_output_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface([25 x float]* %weights, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %linebuff = alloca [117 x i8], align 1
  br label %0

.exitStub:                                        ; preds = %.preheader9
  ret void

; <label>:0                                       ; preds = %1, %newFuncRoot
  %pos_0_i_i = phi i7 [ 0, %newFuncRoot ], [ %pos, %1 ]
  %exitcond7_i_i = icmp eq i7 %pos_0_i_i, -11
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 117, i64 117, i64 117)
  %pos = add i7 %pos_0_i_i, 1
  br i1 %exitcond7_i_i, label %.preheader9.preheader, label %1

.preheader9.preheader:                            ; preds = %0
  %linebuff_addr_1 = getelementptr [117 x i8]* %linebuff, i64 0, i64 1
  %linebuff_addr_2 = getelementptr [117 x i8]* %linebuff, i64 0, i64 0
  %linebuff_addr_3 = getelementptr [117 x i8]* %linebuff, i64 0, i64 2
  %linebuff_addr_4 = getelementptr [117 x i8]* %linebuff, i64 0, i64 3
  %linebuff_addr_5 = getelementptr [117 x i8]* %linebuff, i64 0, i64 4
  %linebuff_addr_6 = getelementptr [117 x i8]* %linebuff, i64 0, i64 5
  %linebuff_addr_7 = getelementptr [117 x i8]* %linebuff, i64 0, i64 6
  %linebuff_addr_8 = getelementptr [117 x i8]* %linebuff, i64 0, i64 7
  %linebuff_addr_9 = getelementptr [117 x i8]* %linebuff, i64 0, i64 8
  %linebuff_addr_10 = getelementptr [117 x i8]* %linebuff, i64 0, i64 9
  %linebuff_addr_11 = getelementptr [117 x i8]* %linebuff, i64 0, i64 10
  %linebuff_addr_12 = getelementptr [117 x i8]* %linebuff, i64 0, i64 11
  %linebuff_addr_13 = getelementptr [117 x i8]* %linebuff, i64 0, i64 12
  %linebuff_addr_14 = getelementptr [117 x i8]* %linebuff, i64 0, i64 13
  %linebuff_addr_15 = getelementptr [117 x i8]* %linebuff, i64 0, i64 14
  %linebuff_addr_16 = getelementptr [117 x i8]* %linebuff, i64 0, i64 15
  %linebuff_addr_17 = getelementptr [117 x i8]* %linebuff, i64 0, i64 16
  %linebuff_addr_18 = getelementptr [117 x i8]* %linebuff, i64 0, i64 17
  %linebuff_addr_19 = getelementptr [117 x i8]* %linebuff, i64 0, i64 18
  %linebuff_addr_20 = getelementptr [117 x i8]* %linebuff, i64 0, i64 19
  %linebuff_addr_21 = getelementptr [117 x i8]* %linebuff, i64 0, i64 20
  %linebuff_addr_22 = getelementptr [117 x i8]* %linebuff, i64 0, i64 21
  %linebuff_addr_23 = getelementptr [117 x i8]* %linebuff, i64 0, i64 22
  %linebuff_addr_24 = getelementptr [117 x i8]* %linebuff, i64 0, i64 23
  %linebuff_addr_25 = getelementptr [117 x i8]* %linebuff, i64 0, i64 24
  %linebuff_addr_26 = getelementptr [117 x i8]* %linebuff, i64 0, i64 25
  %linebuff_addr_27 = getelementptr [117 x i8]* %linebuff, i64 0, i64 26
  %linebuff_addr_28 = getelementptr [117 x i8]* %linebuff, i64 0, i64 27
  %linebuff_addr_29 = getelementptr [117 x i8]* %linebuff, i64 0, i64 28
  %linebuff_addr_30 = getelementptr [117 x i8]* %linebuff, i64 0, i64 29
  %linebuff_addr_31 = getelementptr [117 x i8]* %linebuff, i64 0, i64 30
  %linebuff_addr_32 = getelementptr [117 x i8]* %linebuff, i64 0, i64 31
  %linebuff_addr_33 = getelementptr [117 x i8]* %linebuff, i64 0, i64 32
  %linebuff_addr_34 = getelementptr [117 x i8]* %linebuff, i64 0, i64 33
  %linebuff_addr_35 = getelementptr [117 x i8]* %linebuff, i64 0, i64 34
  %linebuff_addr_36 = getelementptr [117 x i8]* %linebuff, i64 0, i64 35
  %linebuff_addr_37 = getelementptr [117 x i8]* %linebuff, i64 0, i64 36
  %linebuff_addr_38 = getelementptr [117 x i8]* %linebuff, i64 0, i64 37
  %linebuff_addr_39 = getelementptr [117 x i8]* %linebuff, i64 0, i64 38
  %linebuff_addr_40 = getelementptr [117 x i8]* %linebuff, i64 0, i64 39
  %linebuff_addr_41 = getelementptr [117 x i8]* %linebuff, i64 0, i64 40
  %linebuff_addr_42 = getelementptr [117 x i8]* %linebuff, i64 0, i64 41
  %linebuff_addr_43 = getelementptr [117 x i8]* %linebuff, i64 0, i64 42
  %linebuff_addr_44 = getelementptr [117 x i8]* %linebuff, i64 0, i64 43
  %linebuff_addr_45 = getelementptr [117 x i8]* %linebuff, i64 0, i64 44
  %linebuff_addr_46 = getelementptr [117 x i8]* %linebuff, i64 0, i64 45
  %linebuff_addr_47 = getelementptr [117 x i8]* %linebuff, i64 0, i64 46
  %linebuff_addr_48 = getelementptr [117 x i8]* %linebuff, i64 0, i64 47
  %linebuff_addr_49 = getelementptr [117 x i8]* %linebuff, i64 0, i64 48
  %linebuff_addr_50 = getelementptr [117 x i8]* %linebuff, i64 0, i64 49
  %linebuff_addr_51 = getelementptr [117 x i8]* %linebuff, i64 0, i64 50
  %linebuff_addr_52 = getelementptr [117 x i8]* %linebuff, i64 0, i64 51
  %linebuff_addr_53 = getelementptr [117 x i8]* %linebuff, i64 0, i64 52
  %linebuff_addr_54 = getelementptr [117 x i8]* %linebuff, i64 0, i64 53
  %linebuff_addr_55 = getelementptr [117 x i8]* %linebuff, i64 0, i64 54
  %linebuff_addr_56 = getelementptr [117 x i8]* %linebuff, i64 0, i64 55
  %linebuff_addr_57 = getelementptr [117 x i8]* %linebuff, i64 0, i64 56
  %linebuff_addr_58 = getelementptr [117 x i8]* %linebuff, i64 0, i64 57
  %linebuff_addr_59 = getelementptr [117 x i8]* %linebuff, i64 0, i64 58
  %linebuff_addr_60 = getelementptr [117 x i8]* %linebuff, i64 0, i64 59
  %linebuff_addr_61 = getelementptr [117 x i8]* %linebuff, i64 0, i64 60
  %linebuff_addr_62 = getelementptr [117 x i8]* %linebuff, i64 0, i64 61
  %linebuff_addr_63 = getelementptr [117 x i8]* %linebuff, i64 0, i64 62
  %linebuff_addr_64 = getelementptr [117 x i8]* %linebuff, i64 0, i64 63
  %linebuff_addr_65 = getelementptr [117 x i8]* %linebuff, i64 0, i64 64
  %linebuff_addr_66 = getelementptr [117 x i8]* %linebuff, i64 0, i64 65
  %linebuff_addr_67 = getelementptr [117 x i8]* %linebuff, i64 0, i64 66
  %linebuff_addr_68 = getelementptr [117 x i8]* %linebuff, i64 0, i64 67
  %linebuff_addr_69 = getelementptr [117 x i8]* %linebuff, i64 0, i64 68
  %linebuff_addr_70 = getelementptr [117 x i8]* %linebuff, i64 0, i64 69
  %linebuff_addr_71 = getelementptr [117 x i8]* %linebuff, i64 0, i64 70
  %linebuff_addr_72 = getelementptr [117 x i8]* %linebuff, i64 0, i64 71
  %linebuff_addr_73 = getelementptr [117 x i8]* %linebuff, i64 0, i64 72
  %linebuff_addr_74 = getelementptr [117 x i8]* %linebuff, i64 0, i64 73
  %linebuff_addr_75 = getelementptr [117 x i8]* %linebuff, i64 0, i64 74
  %linebuff_addr_76 = getelementptr [117 x i8]* %linebuff, i64 0, i64 75
  %linebuff_addr_77 = getelementptr [117 x i8]* %linebuff, i64 0, i64 76
  %linebuff_addr_78 = getelementptr [117 x i8]* %linebuff, i64 0, i64 77
  %linebuff_addr_79 = getelementptr [117 x i8]* %linebuff, i64 0, i64 78
  %linebuff_addr_80 = getelementptr [117 x i8]* %linebuff, i64 0, i64 79
  %linebuff_addr_81 = getelementptr [117 x i8]* %linebuff, i64 0, i64 80
  %linebuff_addr_82 = getelementptr [117 x i8]* %linebuff, i64 0, i64 81
  %linebuff_addr_83 = getelementptr [117 x i8]* %linebuff, i64 0, i64 82
  %linebuff_addr_84 = getelementptr [117 x i8]* %linebuff, i64 0, i64 83
  %linebuff_addr_85 = getelementptr [117 x i8]* %linebuff, i64 0, i64 84
  %linebuff_addr_86 = getelementptr [117 x i8]* %linebuff, i64 0, i64 85
  %linebuff_addr_87 = getelementptr [117 x i8]* %linebuff, i64 0, i64 86
  %linebuff_addr_88 = getelementptr [117 x i8]* %linebuff, i64 0, i64 87
  %linebuff_addr_89 = getelementptr [117 x i8]* %linebuff, i64 0, i64 88
  %linebuff_addr_90 = getelementptr [117 x i8]* %linebuff, i64 0, i64 89
  %linebuff_addr_91 = getelementptr [117 x i8]* %linebuff, i64 0, i64 90
  %linebuff_addr_92 = getelementptr [117 x i8]* %linebuff, i64 0, i64 91
  %linebuff_addr_93 = getelementptr [117 x i8]* %linebuff, i64 0, i64 92
  %linebuff_addr_94 = getelementptr [117 x i8]* %linebuff, i64 0, i64 93
  %linebuff_addr_95 = getelementptr [117 x i8]* %linebuff, i64 0, i64 94
  %linebuff_addr_96 = getelementptr [117 x i8]* %linebuff, i64 0, i64 95
  %linebuff_addr_97 = getelementptr [117 x i8]* %linebuff, i64 0, i64 96
  %linebuff_addr_98 = getelementptr [117 x i8]* %linebuff, i64 0, i64 97
  %linebuff_addr_99 = getelementptr [117 x i8]* %linebuff, i64 0, i64 98
  %linebuff_addr_100 = getelementptr [117 x i8]* %linebuff, i64 0, i64 99
  %linebuff_addr_101 = getelementptr [117 x i8]* %linebuff, i64 0, i64 100
  %linebuff_addr_102 = getelementptr [117 x i8]* %linebuff, i64 0, i64 101
  %linebuff_addr_103 = getelementptr [117 x i8]* %linebuff, i64 0, i64 102
  %linebuff_addr_104 = getelementptr [117 x i8]* %linebuff, i64 0, i64 103
  %linebuff_addr_105 = getelementptr [117 x i8]* %linebuff, i64 0, i64 104
  %linebuff_addr_106 = getelementptr [117 x i8]* %linebuff, i64 0, i64 105
  %linebuff_addr_107 = getelementptr [117 x i8]* %linebuff, i64 0, i64 106
  %linebuff_addr_108 = getelementptr [117 x i8]* %linebuff, i64 0, i64 107
  %linebuff_addr_109 = getelementptr [117 x i8]* %linebuff, i64 0, i64 108
  %linebuff_addr_110 = getelementptr [117 x i8]* %linebuff, i64 0, i64 109
  %linebuff_addr_111 = getelementptr [117 x i8]* %linebuff, i64 0, i64 110
  %linebuff_addr_112 = getelementptr [117 x i8]* %linebuff, i64 0, i64 111
  %linebuff_addr_113 = getelementptr [117 x i8]* %linebuff, i64 0, i64 112
  %linebuff_addr_114 = getelementptr [117 x i8]* %linebuff, i64 0, i64 113
  %linebuff_addr_115 = getelementptr [117 x i8]* %linebuff, i64 0, i64 114
  %linebuff_addr_116 = getelementptr [117 x i8]* %linebuff, i64 0, i64 115
  %linebuff_addr_117 = getelementptr [117 x i8]* %linebuff, i64 0, i64 116
  %weights_addr = getelementptr [25 x float]* %weights, i64 0, i64 0
  %weights_addr_1 = getelementptr [25 x float]* %weights, i64 0, i64 1
  %weights_addr_2 = getelementptr [25 x float]* %weights, i64 0, i64 2
  %weights_addr_3 = getelementptr [25 x float]* %weights, i64 0, i64 3
  %weights_addr_4 = getelementptr [25 x float]* %weights, i64 0, i64 4
  %weights_addr_5 = getelementptr [25 x float]* %weights, i64 0, i64 5
  %weights_addr_6 = getelementptr [25 x float]* %weights, i64 0, i64 6
  %weights_addr_7 = getelementptr [25 x float]* %weights, i64 0, i64 7
  %weights_addr_8 = getelementptr [25 x float]* %weights, i64 0, i64 8
  %weights_addr_9 = getelementptr [25 x float]* %weights, i64 0, i64 9
  %weights_addr_10 = getelementptr [25 x float]* %weights, i64 0, i64 10
  %weights_addr_11 = getelementptr [25 x float]* %weights, i64 0, i64 11
  %weights_addr_12 = getelementptr [25 x float]* %weights, i64 0, i64 12
  %weights_addr_13 = getelementptr [25 x float]* %weights, i64 0, i64 13
  %weights_addr_14 = getelementptr [25 x float]* %weights, i64 0, i64 14
  %weights_addr_15 = getelementptr [25 x float]* %weights, i64 0, i64 15
  %weights_addr_16 = getelementptr [25 x float]* %weights, i64 0, i64 16
  %weights_addr_17 = getelementptr [25 x float]* %weights, i64 0, i64 17
  %weights_addr_18 = getelementptr [25 x float]* %weights, i64 0, i64 18
  %weights_addr_19 = getelementptr [25 x float]* %weights, i64 0, i64 19
  %weights_addr_20 = getelementptr [25 x float]* %weights, i64 0, i64 20
  %weights_addr_21 = getelementptr [25 x float]* %weights, i64 0, i64 21
  %weights_addr_22 = getelementptr [25 x float]* %weights, i64 0, i64 22
  %weights_addr_23 = getelementptr [25 x float]* %weights, i64 0, i64 23
  %weights_addr_24 = getelementptr [25 x float]* %weights, i64 0, i64 24
  br label %.preheader9

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str4) nounwind
  %tmp_i = zext i7 %pos_0_i_i to i64
  %linebuff_addr = getelementptr [117 x i8]* %linebuff, i64 0, i64 %tmp_i
  store i8 0, i8* %linebuff_addr, align 1
  br label %0

.preheader9:                                      ; preds = %.preheader9.preheader, %._crit_edge10
  %t = phi i32 [ %p_t, %._crit_edge10 ], [ 0, %.preheader9.preheader ]
  %pixels_read = phi i10 [ %pixels_read_1, %._crit_edge10 ], [ 0, %.preheader9.preheader ]
  %exitcond6 = icmp eq i10 %pixels_read, -240
  %pixels_read_1 = add i10 %pixels_read, 1
  br i1 %exitcond6, label %.exitStub, label %._crit_edge.0

._crit_edge10:                                    ; preds = %2, %._crit_edge.0
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str5, i32 %tmp_2)
  br label %.preheader9

._crit_edge.0:                                    ; preds = %.preheader9
  %pixels_read_cast9 = zext i10 %pixels_read to i32
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 784, i64 784, i64 784)
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str5) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %read = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %image_V)
  %tmp_6 = zext i8 %read to i32
  %tmp_20_4_4 = sitofp i32 %tmp_6 to float
  %m = sub nsw i32 %pixels_read_cast9, %t
  %tmp_4 = icmp sgt i32 %m, 27
  %t_1 = add nsw i32 28, %t
  %p_t = select i1 %tmp_4, i32 %t_1, i32 %t
  %linebuff_load = load i8* %linebuff_addr_1, align 1
  %extLd1 = zext i8 %linebuff_load to i32
  %tmp_3 = sitofp i32 %extLd1 to float
  store i8 %linebuff_load, i8* %linebuff_addr_2, align 1
  %linebuff_load_1 = load i8* %linebuff_addr_3, align 1
  %extLd2 = zext i8 %linebuff_load_1 to i32
  %tmp_20_0_1 = sitofp i32 %extLd2 to float
  store i8 %linebuff_load_1, i8* %linebuff_addr_1, align 1
  %linebuff_load_2 = load i8* %linebuff_addr_4, align 1
  %extLd3 = zext i8 %linebuff_load_2 to i32
  %tmp_20_0_2 = sitofp i32 %extLd3 to float
  store i8 %linebuff_load_2, i8* %linebuff_addr_3, align 1
  %linebuff_load_3 = load i8* %linebuff_addr_5, align 1
  %extLd4 = zext i8 %linebuff_load_3 to i32
  %tmp_20_0_3 = sitofp i32 %extLd4 to float
  store i8 %linebuff_load_3, i8* %linebuff_addr_4, align 1
  %linebuff_load_4 = load i8* %linebuff_addr_6, align 1
  %extLd5 = zext i8 %linebuff_load_4 to i32
  %tmp_20_0_4 = sitofp i32 %extLd5 to float
  store i8 %linebuff_load_4, i8* %linebuff_addr_5, align 1
  %linebuff_load_5 = load i8* %linebuff_addr_7, align 1
  store i8 %linebuff_load_5, i8* %linebuff_addr_6, align 1
  %linebuff_load_6 = load i8* %linebuff_addr_8, align 1
  store i8 %linebuff_load_6, i8* %linebuff_addr_7, align 1
  %linebuff_load_7 = load i8* %linebuff_addr_9, align 1
  store i8 %linebuff_load_7, i8* %linebuff_addr_8, align 1
  %linebuff_load_8 = load i8* %linebuff_addr_10, align 1
  store i8 %linebuff_load_8, i8* %linebuff_addr_9, align 1
  %linebuff_load_9 = load i8* %linebuff_addr_11, align 1
  store i8 %linebuff_load_9, i8* %linebuff_addr_10, align 1
  %linebuff_load_10 = load i8* %linebuff_addr_12, align 1
  store i8 %linebuff_load_10, i8* %linebuff_addr_11, align 1
  %linebuff_load_11 = load i8* %linebuff_addr_13, align 1
  store i8 %linebuff_load_11, i8* %linebuff_addr_12, align 1
  %linebuff_load_12 = load i8* %linebuff_addr_14, align 1
  store i8 %linebuff_load_12, i8* %linebuff_addr_13, align 1
  %linebuff_load_13 = load i8* %linebuff_addr_15, align 1
  store i8 %linebuff_load_13, i8* %linebuff_addr_14, align 1
  %linebuff_load_14 = load i8* %linebuff_addr_16, align 1
  store i8 %linebuff_load_14, i8* %linebuff_addr_15, align 1
  %linebuff_load_15 = load i8* %linebuff_addr_17, align 1
  store i8 %linebuff_load_15, i8* %linebuff_addr_16, align 1
  %linebuff_load_16 = load i8* %linebuff_addr_18, align 1
  store i8 %linebuff_load_16, i8* %linebuff_addr_17, align 1
  %linebuff_load_17 = load i8* %linebuff_addr_19, align 1
  store i8 %linebuff_load_17, i8* %linebuff_addr_18, align 1
  %linebuff_load_18 = load i8* %linebuff_addr_20, align 1
  store i8 %linebuff_load_18, i8* %linebuff_addr_19, align 1
  %linebuff_load_19 = load i8* %linebuff_addr_21, align 1
  store i8 %linebuff_load_19, i8* %linebuff_addr_20, align 1
  %linebuff_load_20 = load i8* %linebuff_addr_22, align 1
  store i8 %linebuff_load_20, i8* %linebuff_addr_21, align 1
  %linebuff_load_21 = load i8* %linebuff_addr_23, align 1
  store i8 %linebuff_load_21, i8* %linebuff_addr_22, align 1
  %linebuff_load_22 = load i8* %linebuff_addr_24, align 1
  store i8 %linebuff_load_22, i8* %linebuff_addr_23, align 1
  %linebuff_load_23 = load i8* %linebuff_addr_25, align 1
  store i8 %linebuff_load_23, i8* %linebuff_addr_24, align 1
  %linebuff_load_24 = load i8* %linebuff_addr_26, align 1
  store i8 %linebuff_load_24, i8* %linebuff_addr_25, align 1
  %linebuff_load_25 = load i8* %linebuff_addr_27, align 1
  store i8 %linebuff_load_25, i8* %linebuff_addr_26, align 1
  %linebuff_load_26 = load i8* %linebuff_addr_28, align 1
  store i8 %linebuff_load_26, i8* %linebuff_addr_27, align 1
  %linebuff_load_27 = load i8* %linebuff_addr_29, align 1
  store i8 %linebuff_load_27, i8* %linebuff_addr_28, align 1
  %linebuff_load_28 = load i8* %linebuff_addr_30, align 1
  %extLd6 = zext i8 %linebuff_load_28 to i32
  %tmp_20_1 = sitofp i32 %extLd6 to float
  store i8 %linebuff_load_28, i8* %linebuff_addr_29, align 1
  %linebuff_load_29 = load i8* %linebuff_addr_31, align 1
  %extLd7 = zext i8 %linebuff_load_29 to i32
  %tmp_20_1_1 = sitofp i32 %extLd7 to float
  store i8 %linebuff_load_29, i8* %linebuff_addr_30, align 1
  %linebuff_load_30 = load i8* %linebuff_addr_32, align 1
  %extLd8 = zext i8 %linebuff_load_30 to i32
  %tmp_20_1_2 = sitofp i32 %extLd8 to float
  store i8 %linebuff_load_30, i8* %linebuff_addr_31, align 1
  %linebuff_load_31 = load i8* %linebuff_addr_33, align 1
  %extLd9 = zext i8 %linebuff_load_31 to i32
  %tmp_20_1_3 = sitofp i32 %extLd9 to float
  store i8 %linebuff_load_31, i8* %linebuff_addr_32, align 1
  %linebuff_load_32 = load i8* %linebuff_addr_34, align 1
  %extLd10 = zext i8 %linebuff_load_32 to i32
  %tmp_20_1_4 = sitofp i32 %extLd10 to float
  store i8 %linebuff_load_32, i8* %linebuff_addr_33, align 1
  %linebuff_load_33 = load i8* %linebuff_addr_35, align 1
  store i8 %linebuff_load_33, i8* %linebuff_addr_34, align 1
  %linebuff_load_34 = load i8* %linebuff_addr_36, align 1
  store i8 %linebuff_load_34, i8* %linebuff_addr_35, align 1
  %linebuff_load_35 = load i8* %linebuff_addr_37, align 1
  store i8 %linebuff_load_35, i8* %linebuff_addr_36, align 1
  %linebuff_load_36 = load i8* %linebuff_addr_38, align 1
  store i8 %linebuff_load_36, i8* %linebuff_addr_37, align 1
  %linebuff_load_37 = load i8* %linebuff_addr_39, align 1
  store i8 %linebuff_load_37, i8* %linebuff_addr_38, align 1
  %linebuff_load_38 = load i8* %linebuff_addr_40, align 1
  store i8 %linebuff_load_38, i8* %linebuff_addr_39, align 1
  %linebuff_load_39 = load i8* %linebuff_addr_41, align 1
  store i8 %linebuff_load_39, i8* %linebuff_addr_40, align 1
  %linebuff_load_40 = load i8* %linebuff_addr_42, align 1
  store i8 %linebuff_load_40, i8* %linebuff_addr_41, align 1
  %linebuff_load_41 = load i8* %linebuff_addr_43, align 1
  store i8 %linebuff_load_41, i8* %linebuff_addr_42, align 1
  %linebuff_load_42 = load i8* %linebuff_addr_44, align 1
  store i8 %linebuff_load_42, i8* %linebuff_addr_43, align 1
  %linebuff_load_43 = load i8* %linebuff_addr_45, align 1
  store i8 %linebuff_load_43, i8* %linebuff_addr_44, align 1
  %linebuff_load_44 = load i8* %linebuff_addr_46, align 1
  store i8 %linebuff_load_44, i8* %linebuff_addr_45, align 1
  %linebuff_load_45 = load i8* %linebuff_addr_47, align 1
  store i8 %linebuff_load_45, i8* %linebuff_addr_46, align 1
  %linebuff_load_46 = load i8* %linebuff_addr_48, align 1
  store i8 %linebuff_load_46, i8* %linebuff_addr_47, align 1
  %linebuff_load_47 = load i8* %linebuff_addr_49, align 1
  store i8 %linebuff_load_47, i8* %linebuff_addr_48, align 1
  %linebuff_load_48 = load i8* %linebuff_addr_50, align 1
  store i8 %linebuff_load_48, i8* %linebuff_addr_49, align 1
  %linebuff_load_49 = load i8* %linebuff_addr_51, align 1
  store i8 %linebuff_load_49, i8* %linebuff_addr_50, align 1
  %linebuff_load_50 = load i8* %linebuff_addr_52, align 1
  store i8 %linebuff_load_50, i8* %linebuff_addr_51, align 1
  %linebuff_load_51 = load i8* %linebuff_addr_53, align 1
  store i8 %linebuff_load_51, i8* %linebuff_addr_52, align 1
  %linebuff_load_52 = load i8* %linebuff_addr_54, align 1
  store i8 %linebuff_load_52, i8* %linebuff_addr_53, align 1
  %linebuff_load_53 = load i8* %linebuff_addr_55, align 1
  store i8 %linebuff_load_53, i8* %linebuff_addr_54, align 1
  %linebuff_load_54 = load i8* %linebuff_addr_56, align 1
  store i8 %linebuff_load_54, i8* %linebuff_addr_55, align 1
  %linebuff_load_55 = load i8* %linebuff_addr_57, align 1
  store i8 %linebuff_load_55, i8* %linebuff_addr_56, align 1
  %linebuff_load_56 = load i8* %linebuff_addr_58, align 1
  %extLd11 = zext i8 %linebuff_load_56 to i32
  %tmp_20_2 = sitofp i32 %extLd11 to float
  store i8 %linebuff_load_56, i8* %linebuff_addr_57, align 1
  %linebuff_load_57 = load i8* %linebuff_addr_59, align 1
  %extLd12 = zext i8 %linebuff_load_57 to i32
  %tmp_20_2_1 = sitofp i32 %extLd12 to float
  store i8 %linebuff_load_57, i8* %linebuff_addr_58, align 1
  %linebuff_load_58 = load i8* %linebuff_addr_60, align 1
  %extLd13 = zext i8 %linebuff_load_58 to i32
  %tmp_20_2_2 = sitofp i32 %extLd13 to float
  store i8 %linebuff_load_58, i8* %linebuff_addr_59, align 1
  %linebuff_load_59 = load i8* %linebuff_addr_61, align 1
  %extLd14 = zext i8 %linebuff_load_59 to i32
  %tmp_20_2_3 = sitofp i32 %extLd14 to float
  store i8 %linebuff_load_59, i8* %linebuff_addr_60, align 1
  %linebuff_load_60 = load i8* %linebuff_addr_62, align 1
  %extLd16 = zext i8 %linebuff_load_60 to i32
  %tmp_20_2_4 = sitofp i32 %extLd16 to float
  store i8 %linebuff_load_60, i8* %linebuff_addr_61, align 1
  %linebuff_load_61 = load i8* %linebuff_addr_63, align 1
  store i8 %linebuff_load_61, i8* %linebuff_addr_62, align 1
  %linebuff_load_62 = load i8* %linebuff_addr_64, align 1
  store i8 %linebuff_load_62, i8* %linebuff_addr_63, align 1
  %linebuff_load_63 = load i8* %linebuff_addr_65, align 1
  store i8 %linebuff_load_63, i8* %linebuff_addr_64, align 1
  %linebuff_load_64 = load i8* %linebuff_addr_66, align 1
  store i8 %linebuff_load_64, i8* %linebuff_addr_65, align 1
  %linebuff_load_65 = load i8* %linebuff_addr_67, align 1
  store i8 %linebuff_load_65, i8* %linebuff_addr_66, align 1
  %linebuff_load_66 = load i8* %linebuff_addr_68, align 1
  store i8 %linebuff_load_66, i8* %linebuff_addr_67, align 1
  %linebuff_load_67 = load i8* %linebuff_addr_69, align 1
  store i8 %linebuff_load_67, i8* %linebuff_addr_68, align 1
  %linebuff_load_68 = load i8* %linebuff_addr_70, align 1
  store i8 %linebuff_load_68, i8* %linebuff_addr_69, align 1
  %linebuff_load_69 = load i8* %linebuff_addr_71, align 1
  store i8 %linebuff_load_69, i8* %linebuff_addr_70, align 1
  %linebuff_load_70 = load i8* %linebuff_addr_72, align 1
  store i8 %linebuff_load_70, i8* %linebuff_addr_71, align 1
  %linebuff_load_71 = load i8* %linebuff_addr_73, align 1
  store i8 %linebuff_load_71, i8* %linebuff_addr_72, align 1
  %linebuff_load_72 = load i8* %linebuff_addr_74, align 1
  store i8 %linebuff_load_72, i8* %linebuff_addr_73, align 1
  %linebuff_load_73 = load i8* %linebuff_addr_75, align 1
  store i8 %linebuff_load_73, i8* %linebuff_addr_74, align 1
  %linebuff_load_74 = load i8* %linebuff_addr_76, align 1
  store i8 %linebuff_load_74, i8* %linebuff_addr_75, align 1
  %linebuff_load_75 = load i8* %linebuff_addr_77, align 1
  store i8 %linebuff_load_75, i8* %linebuff_addr_76, align 1
  %linebuff_load_76 = load i8* %linebuff_addr_78, align 1
  store i8 %linebuff_load_76, i8* %linebuff_addr_77, align 1
  %linebuff_load_77 = load i8* %linebuff_addr_79, align 1
  store i8 %linebuff_load_77, i8* %linebuff_addr_78, align 1
  %linebuff_load_78 = load i8* %linebuff_addr_80, align 1
  store i8 %linebuff_load_78, i8* %linebuff_addr_79, align 1
  %linebuff_load_79 = load i8* %linebuff_addr_81, align 1
  store i8 %linebuff_load_79, i8* %linebuff_addr_80, align 1
  %linebuff_load_80 = load i8* %linebuff_addr_82, align 1
  store i8 %linebuff_load_80, i8* %linebuff_addr_81, align 1
  %linebuff_load_81 = load i8* %linebuff_addr_83, align 1
  store i8 %linebuff_load_81, i8* %linebuff_addr_82, align 1
  %linebuff_load_82 = load i8* %linebuff_addr_84, align 1
  store i8 %linebuff_load_82, i8* %linebuff_addr_83, align 1
  %linebuff_load_83 = load i8* %linebuff_addr_85, align 1
  store i8 %linebuff_load_83, i8* %linebuff_addr_84, align 1
  %linebuff_load_84 = load i8* %linebuff_addr_86, align 1
  %extLd17 = zext i8 %linebuff_load_84 to i32
  %tmp_20_3 = sitofp i32 %extLd17 to float
  store i8 %linebuff_load_84, i8* %linebuff_addr_85, align 1
  %linebuff_load_85 = load i8* %linebuff_addr_87, align 1
  %extLd19 = zext i8 %linebuff_load_85 to i32
  %tmp_20_3_1 = sitofp i32 %extLd19 to float
  store i8 %linebuff_load_85, i8* %linebuff_addr_86, align 1
  %linebuff_load_86 = load i8* %linebuff_addr_88, align 1
  %extLd20 = zext i8 %linebuff_load_86 to i32
  %tmp_20_3_2 = sitofp i32 %extLd20 to float
  store i8 %linebuff_load_86, i8* %linebuff_addr_87, align 1
  %linebuff_load_87 = load i8* %linebuff_addr_89, align 1
  %extLd22 = zext i8 %linebuff_load_87 to i32
  %tmp_20_3_3 = sitofp i32 %extLd22 to float
  store i8 %linebuff_load_87, i8* %linebuff_addr_88, align 1
  %linebuff_load_88 = load i8* %linebuff_addr_90, align 1
  %extLd23 = zext i8 %linebuff_load_88 to i32
  %tmp_20_3_4 = sitofp i32 %extLd23 to float
  store i8 %linebuff_load_88, i8* %linebuff_addr_89, align 1
  %linebuff_load_89 = load i8* %linebuff_addr_91, align 1
  store i8 %linebuff_load_89, i8* %linebuff_addr_90, align 1
  %linebuff_load_90 = load i8* %linebuff_addr_92, align 1
  store i8 %linebuff_load_90, i8* %linebuff_addr_91, align 1
  %linebuff_load_91 = load i8* %linebuff_addr_93, align 1
  store i8 %linebuff_load_91, i8* %linebuff_addr_92, align 1
  %linebuff_load_92 = load i8* %linebuff_addr_94, align 1
  store i8 %linebuff_load_92, i8* %linebuff_addr_93, align 1
  %linebuff_load_93 = load i8* %linebuff_addr_95, align 1
  store i8 %linebuff_load_93, i8* %linebuff_addr_94, align 1
  %linebuff_load_94 = load i8* %linebuff_addr_96, align 1
  store i8 %linebuff_load_94, i8* %linebuff_addr_95, align 1
  %linebuff_load_95 = load i8* %linebuff_addr_97, align 1
  store i8 %linebuff_load_95, i8* %linebuff_addr_96, align 1
  %linebuff_load_96 = load i8* %linebuff_addr_98, align 1
  store i8 %linebuff_load_96, i8* %linebuff_addr_97, align 1
  %linebuff_load_97 = load i8* %linebuff_addr_99, align 1
  store i8 %linebuff_load_97, i8* %linebuff_addr_98, align 1
  %linebuff_load_98 = load i8* %linebuff_addr_100, align 1
  store i8 %linebuff_load_98, i8* %linebuff_addr_99, align 1
  %linebuff_load_99 = load i8* %linebuff_addr_101, align 1
  store i8 %linebuff_load_99, i8* %linebuff_addr_100, align 1
  %linebuff_load_100 = load i8* %linebuff_addr_102, align 1
  store i8 %linebuff_load_100, i8* %linebuff_addr_101, align 1
  %linebuff_load_101 = load i8* %linebuff_addr_103, align 1
  store i8 %linebuff_load_101, i8* %linebuff_addr_102, align 1
  %linebuff_load_102 = load i8* %linebuff_addr_104, align 1
  store i8 %linebuff_load_102, i8* %linebuff_addr_103, align 1
  %linebuff_load_103 = load i8* %linebuff_addr_105, align 1
  store i8 %linebuff_load_103, i8* %linebuff_addr_104, align 1
  %linebuff_load_104 = load i8* %linebuff_addr_106, align 1
  store i8 %linebuff_load_104, i8* %linebuff_addr_105, align 1
  %linebuff_load_105 = load i8* %linebuff_addr_107, align 1
  store i8 %linebuff_load_105, i8* %linebuff_addr_106, align 1
  %linebuff_load_106 = load i8* %linebuff_addr_108, align 1
  store i8 %linebuff_load_106, i8* %linebuff_addr_107, align 1
  %linebuff_load_107 = load i8* %linebuff_addr_109, align 1
  store i8 %linebuff_load_107, i8* %linebuff_addr_108, align 1
  %linebuff_load_108 = load i8* %linebuff_addr_110, align 1
  store i8 %linebuff_load_108, i8* %linebuff_addr_109, align 1
  %linebuff_load_109 = load i8* %linebuff_addr_111, align 1
  store i8 %linebuff_load_109, i8* %linebuff_addr_110, align 1
  %linebuff_load_110 = load i8* %linebuff_addr_112, align 1
  store i8 %linebuff_load_110, i8* %linebuff_addr_111, align 1
  %linebuff_load_111 = load i8* %linebuff_addr_113, align 1
  store i8 %linebuff_load_111, i8* %linebuff_addr_112, align 1
  %linebuff_load_112 = load i8* %linebuff_addr_114, align 1
  %extLd21 = zext i8 %linebuff_load_112 to i32
  %tmp_20_4 = sitofp i32 %extLd21 to float
  store i8 %linebuff_load_112, i8* %linebuff_addr_113, align 1
  %linebuff_load_113 = load i8* %linebuff_addr_115, align 1
  %extLd18 = zext i8 %linebuff_load_113 to i32
  %tmp_20_4_1 = sitofp i32 %extLd18 to float
  store i8 %linebuff_load_113, i8* %linebuff_addr_114, align 1
  %linebuff_load_114 = load i8* %linebuff_addr_116, align 1
  %extLd15 = zext i8 %linebuff_load_114 to i32
  %tmp_20_4_2 = sitofp i32 %extLd15 to float
  store i8 %linebuff_load_114, i8* %linebuff_addr_115, align 1
  %linebuff_load_115 = load i8* %linebuff_addr_117, align 1
  %extLd = zext i8 %linebuff_load_115 to i32
  %tmp_20_4_3 = sitofp i32 %extLd to float
  store i8 %linebuff_load_115, i8* %linebuff_addr_116, align 1
  store i8 %read, i8* %linebuff_addr_117, align 1
  %weights_load = load float* %weights_addr, align 4
  %tmp_8 = fmul float %tmp_3, %weights_load
  %output_2 = fadd float %tmp_8, 0.000000e+00
  %weights_load_1 = load float* %weights_addr_1, align 4
  %tmp_23_0_1 = fmul float %tmp_20_0_1, %weights_load_1
  %output_2_0_1 = fadd float %output_2, %tmp_23_0_1
  %weights_load_2 = load float* %weights_addr_2, align 4
  %tmp_23_0_2 = fmul float %tmp_20_0_2, %weights_load_2
  %output_2_0_2 = fadd float %output_2_0_1, %tmp_23_0_2
  %weights_load_3 = load float* %weights_addr_3, align 4
  %tmp_23_0_3 = fmul float %tmp_20_0_3, %weights_load_3
  %output_2_0_3 = fadd float %output_2_0_2, %tmp_23_0_3
  %weights_load_4 = load float* %weights_addr_4, align 4
  %tmp_23_0_4 = fmul float %tmp_20_0_4, %weights_load_4
  %output_2_0_4 = fadd float %output_2_0_3, %tmp_23_0_4
  %weights_load_5 = load float* %weights_addr_5, align 4
  %tmp_23_1 = fmul float %tmp_20_1, %weights_load_5
  %output_2_1 = fadd float %output_2_0_4, %tmp_23_1
  %weights_load_6 = load float* %weights_addr_6, align 4
  %tmp_23_1_1 = fmul float %tmp_20_1_1, %weights_load_6
  %output_2_1_1 = fadd float %output_2_1, %tmp_23_1_1
  %weights_load_7 = load float* %weights_addr_7, align 4
  %tmp_23_1_2 = fmul float %tmp_20_1_2, %weights_load_7
  %output_2_1_2 = fadd float %output_2_1_1, %tmp_23_1_2
  %weights_load_8 = load float* %weights_addr_8, align 4
  %tmp_23_1_3 = fmul float %tmp_20_1_3, %weights_load_8
  %output_2_1_3 = fadd float %output_2_1_2, %tmp_23_1_3
  %weights_load_9 = load float* %weights_addr_9, align 4
  %tmp_23_1_4 = fmul float %tmp_20_1_4, %weights_load_9
  %output_2_1_4 = fadd float %output_2_1_3, %tmp_23_1_4
  %weights_load_10 = load float* %weights_addr_10, align 4
  %tmp_23_2 = fmul float %tmp_20_2, %weights_load_10
  %output_2_2 = fadd float %output_2_1_4, %tmp_23_2
  %weights_load_11 = load float* %weights_addr_11, align 4
  %tmp_23_2_1 = fmul float %tmp_20_2_1, %weights_load_11
  %output_2_2_1 = fadd float %output_2_2, %tmp_23_2_1
  %weights_load_12 = load float* %weights_addr_12, align 4
  %tmp_23_2_2 = fmul float %tmp_20_2_2, %weights_load_12
  %output_2_2_2 = fadd float %output_2_2_1, %tmp_23_2_2
  %weights_load_13 = load float* %weights_addr_13, align 4
  %tmp_23_2_3 = fmul float %tmp_20_2_3, %weights_load_13
  %output_2_2_3 = fadd float %output_2_2_2, %tmp_23_2_3
  %weights_load_14 = load float* %weights_addr_14, align 4
  %tmp_23_2_4 = fmul float %tmp_20_2_4, %weights_load_14
  %output_2_2_4 = fadd float %output_2_2_3, %tmp_23_2_4
  %weights_load_15 = load float* %weights_addr_15, align 4
  %tmp_23_3 = fmul float %tmp_20_3, %weights_load_15
  %output_2_3 = fadd float %output_2_2_4, %tmp_23_3
  %weights_load_16 = load float* %weights_addr_16, align 4
  %tmp_23_3_1 = fmul float %tmp_20_3_1, %weights_load_16
  %output_2_3_1 = fadd float %output_2_3, %tmp_23_3_1
  %weights_load_17 = load float* %weights_addr_17, align 4
  %tmp_23_3_2 = fmul float %tmp_20_3_2, %weights_load_17
  %output_2_3_2 = fadd float %output_2_3_1, %tmp_23_3_2
  %weights_load_18 = load float* %weights_addr_18, align 4
  %tmp_23_3_3 = fmul float %tmp_20_3_3, %weights_load_18
  %output_2_3_3 = fadd float %output_2_3_2, %tmp_23_3_3
  %weights_load_19 = load float* %weights_addr_19, align 4
  %tmp_23_3_4 = fmul float %tmp_20_3_4, %weights_load_19
  %output_2_3_4 = fadd float %output_2_3_3, %tmp_23_3_4
  %weights_load_20 = load float* %weights_addr_20, align 4
  %tmp_23_4 = fmul float %tmp_20_4, %weights_load_20
  %output_2_4 = fadd float %output_2_3_4, %tmp_23_4
  %weights_load_21 = load float* %weights_addr_21, align 4
  %tmp_23_4_1 = fmul float %tmp_20_4_1, %weights_load_21
  %output_2_4_1 = fadd float %output_2_4, %tmp_23_4_1
  %weights_load_22 = load float* %weights_addr_22, align 4
  %tmp_23_4_2 = fmul float %tmp_20_4_2, %weights_load_22
  %output_2_4_2 = fadd float %output_2_4_1, %tmp_23_4_2
  %weights_load_23 = load float* %weights_addr_23, align 4
  %tmp_23_4_3 = fmul float %tmp_20_4_3, %weights_load_23
  %output_2_4_3 = fadd float %output_2_4_2, %tmp_23_4_3
  %weights_load_24 = load float* %weights_addr_24, align 4
  %tmp_23_4_4 = fmul float %tmp_20_4_4, %weights_load_24
  %output_2_4_4 = fadd float %output_2_4_3, %tmp_23_4_4
  %output_2_4_4_to_int = bitcast float %output_2_4_4 to i32
  %tmp_5 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %output_2_4_4_to_int, i32 23, i32 30)
  %tmp = trunc i32 %output_2_4_4_to_int to i23
  %notlhs = icmp ne i8 %tmp_5, -1
  %notrhs = icmp eq i23 %tmp, 0
  %tmp_7 = or i1 %notrhs, %notlhs
  %tmp_10 = fcmp ogt float %output_2_4_4, 0.000000e+00
  %tmp_11 = and i1 %tmp_7, %tmp_10
  %p_Val2_1 = select i1 %tmp_11, i32 %output_2_4_4_to_int, i32 0
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_1, i32 31)
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_1, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_1 to i23
  %p_Result_1 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1) nounwind
  %tmp_i_i = zext i24 %p_Result_1 to i78
  %tmp_i_i_cast_i = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_cast_i
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_1_i_i = sub i8 127, %loc_V
  %tmp_1_i_cast_i = sext i8 %tmp_1_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_1_i_cast_i, i9 %sh_assign
  %sh_assign_1_i_cast_i = sext i9 %sh_assign_1 to i32
  %sh_assign_1_i_cast_i_cast = sext i9 %sh_assign_1 to i24
  %tmp_3_i_i = lshr i24 %p_Result_1, %sh_assign_1_i_cast_i_cast
  %tmp_4_i_i = zext i32 %sh_assign_1_i_cast_i to i78
  %tmp_5_i_i = shl i78 %tmp_i_i, %tmp_4_i_i
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_3_i_i, i32 23)
  %tmp_12 = zext i1 %tmp_15 to i32
  %tmp_13 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_5_i_i, i32 23, i32 54)
  %p_Val2_4 = select i1 %isNeg, i32 %tmp_12, i32 %tmp_13
  %p_Val2_7_i_i = sub i32 0, %p_Val2_4
  %p_Val2_10 = select i1 %p_Result_s, i32 %p_Val2_7_i_i, i32 %p_Val2_4
  %tmp_16 = trunc i32 %p_Val2_10 to i8
  %tmp_9 = zext i8 %tmp_16 to i32
  %tmp_s = sitofp i32 %tmp_9 to float
  %tmp_17 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %p_Val2_10, i32 8, i32 31)
  %icmp = icmp sgt i24 %tmp_17, 0
  %tmp_1 = icmp ugt i10 %pixels_read, 116
  %tmp_18 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %m, i32 2, i32 31)
  %icmp1 = icmp sgt i30 %tmp_18, 0
  %not_s = xor i1 %tmp_4, true
  %tmp8 = and i1 %tmp_1, %not_s
  %or_cond = and i1 %tmp8, %icmp1
  br i1 %or_cond, label %2, label %._crit_edge10

; <label>:2                                       ; preds = %._crit_edge.0
  %tmp_14 = bitcast float %tmp_s to i32
  %p_Val2_s = select i1 %icmp, i32 1132396544, i32 %tmp_14
  %loc_V_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_3 = trunc i32 %p_Val2_s to i23
  %p_Result_2 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_3) nounwind
  %tmp_i_cast_i4 = zext i24 %p_Result_2 to i31
  %tmp_i_i_cast_i5 = zext i8 %loc_V_2 to i9
  %sh_assign_2 = add i9 -127, %tmp_i_i_cast_i5
  %isNeg_1 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign_2, i32 8)
  %tmp_9_i_i = sub i8 127, %loc_V_2
  %tmp_9_i_cast_i = sext i8 %tmp_9_i_i to i9
  %sh_assign_3 = select i1 %isNeg_1, i9 %tmp_9_i_cast_i, i9 %sh_assign_2
  %sh_assign_2_i_cast_i_cast = sext i9 %sh_assign_3 to i24
  %tmp_11_i_i = lshr i24 %p_Result_2, %sh_assign_2_i_cast_i_cast
  %tmp_12_i_cast_i = zext i9 %sh_assign_3 to i31
  %tmp_13_i_i = shl i31 %tmp_i_cast_i4, %tmp_12_i_cast_i
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_11_i_i, i32 23)
  %tmp_19 = zext i1 %tmp_23 to i8
  %tmp_20 = call i8 @_ssdm_op_PartSelect.i8.i31.i32.i32(i31 %tmp_13_i_i, i32 23, i32 30)
  %result_V = select i1 %isNeg_1, i8 %tmp_19, i8 %tmp_20
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %conv_output_V, i8 %result_V)
  br label %._crit_edge10
}

define internal fastcc void @convolve_Block__proc(i1* nocapture %done) {
newFuncRoot:
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %done, i1 false)
  ret void
}

define weak i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78, i32, i32) nounwind readnone {
entry:
  %empty = call i78 @llvm.part.select.i78(i78 %0, i32 %1, i32 %2)
  %empty_15 = trunc i78 %empty to i32
  ret i32 %empty_15
}

define weak i8 @_ssdm_op_PartSelect.i8.i31.i32.i32(i31, i32, i32) nounwind readnone {
entry:
  %empty = call i31 @llvm.part.select.i31(i31 %0, i32 %1, i32 %2)
  %empty_16 = trunc i31 %empty to i8
  ret i8 %empty_16
}

define weak void @_ssdm_op_Write.ap_auto.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak i8 @_ssdm_op_Read.axis.volatile.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak void @_ssdm_op_Write.axis.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_17 = and i32 %0, %empty
  %empty_18 = icmp ne i32 %empty_17, 0
  ret i1 %empty_18
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_19 = shl i9 1, %empty
  %empty_20 = and i9 %0, %empty_19
  %empty_21 = icmp ne i9 %empty_20, 0
  ret i1 %empty_21
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_22 = shl i24 1, %empty
  %empty_23 = and i24 %0, %empty_22
  %empty_24 = icmp ne i24 %empty_23, 0
  ret i1 %empty_24
}

define weak i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_25 = trunc i32 %empty to i24
  ret i24 %empty_25
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_26 = trunc i32 %empty to i30
  ret i30 %empty_26
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i78 @llvm.part.select.i78(i78, i32, i32) nounwind readnone

declare i31 @llvm.part.select.i31(i31, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [2 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 7, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"image.V", metadata !11, metadata !"unsigned char", i32 0, i32 7}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"weights", metadata !17, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 24, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 7, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"conv_output.V", metadata !11, metadata !"unsigned char", i32 0, i32 7}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 0, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"done", metadata !11, metadata !"bool", i32 0, i32 0}
