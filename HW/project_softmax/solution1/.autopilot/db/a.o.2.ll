; ModuleID = 'C:/Users/AraniBasu/Documents/GitHub/Reconfig-project/Hardware-Accel/HW/project_softmax/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=2 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=8 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [8 x i8] c"control\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str4 = private unnamed_addr constant [15 x i8] c"softmax_label9\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str5 = private unnamed_addr constant [16 x i8] c"softmax_label10\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str6 = private unnamed_addr constant [16 x i8] c"softmax_label11\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str7 = private unnamed_addr constant [16 x i8] c"softmax_label12\00", align 1 ; [#uses=1 type=[16 x i8]*]
@softmax.str = internal unnamed_addr constant [8 x i8] c"softmax\00" ; [#uses=1 type=[8 x i8]*]

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=12]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=0]
define void @softmax([2 x float]* %inp, [2 x float]* %out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([2 x float]* %inp) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([2 x float]* %out) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @softmax.str) nounwind
  call void @llvm.dbg.value(metadata !{[2 x float]* %inp}, i64 0, metadata !23), !dbg !27 ; [debug line = 5:20] [debug variable = inp]
  call void @llvm.dbg.value(metadata !{[2 x float]* %out}, i64 0, metadata !28), !dbg !29 ; [debug line = 5:34] [debug variable = out]
  call void (...)* @_ssdm_op_SpecInterface([2 x float]* %out, [5 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([2 x float]* %inp, [5 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !30 ; [debug line = 8:1]
  br label %1, !dbg !32                           ; [debug line = 11:30]

; <label>:1                                       ; preds = %3, %0
  %i = phi i2 [ 0, %0 ], [ %i.1, %3 ]             ; [#uses=3 type=i2]
  %sum = phi float [ 0.000000e+00, %0 ], [ %sum.2, %3 ] ; [#uses=2 type=float]
  %exitcond3 = icmp eq i2 %i, -2, !dbg !32        ; [#uses=1 type=i1] [debug line = 11:30]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %.preheader5.preheader, label %3, !dbg !32 ; [debug line = 11:30]

.preheader5.preheader:                            ; preds = %1
  %sum.lcssa = phi float [ %sum, %1 ]             ; [#uses=1 type=float]
  br label %.preheader5, !dbg !34                 ; [debug line = 14:31]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @.str4) nounwind, !dbg !36 ; [debug line = 11:43]
  %tmp = zext i2 %i to i64, !dbg !38              ; [#uses=1 type=i64] [debug line = 12:4]
  %inp.addr = getelementptr [2 x float]* %inp, i64 0, i64 %tmp, !dbg !38 ; [#uses=1 type=float*] [debug line = 12:4]
  %inp.load = load float* %inp.addr, align 4, !dbg !38 ; [#uses=1 type=float] [debug line = 12:4]
  %sum.2 = fadd float %sum, %inp.load, !dbg !38   ; [#uses=1 type=float] [debug line = 12:4]
  call void @llvm.dbg.value(metadata !{float %sum.2}, i64 0, metadata !39), !dbg !38 ; [debug line = 12:4] [debug variable = sum]
  %i.1 = add i2 %i, 1, !dbg !40                   ; [#uses=1 type=i2] [debug line = 11:37]
  call void @llvm.dbg.value(metadata !{i2 %i.1}, i64 0, metadata !41), !dbg !40 ; [debug line = 11:37] [debug variable = i]
  br label %1, !dbg !40                           ; [debug line = 11:37]

.preheader5:                                      ; preds = %5, %.preheader5.preheader
  %temp.1. = phi float [ %"temp[1].1", %5 ], [ undef, %.preheader5.preheader ] ; [#uses=2 type=float]
  %temp.0. = phi float [ %"temp[1].2", %5 ], [ undef, %.preheader5.preheader ] ; [#uses=2 type=float]
  %i1 = phi i2 [ %i.2, %5 ], [ 0, %.preheader5.preheader ] ; [#uses=4 type=i2]
  %exitcond2 = icmp eq i2 %i1, -2, !dbg !34       ; [#uses=1 type=i1] [debug line = 14:31]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %.preheader4.preheader, label %5, !dbg !34 ; [debug line = 14:31]

.preheader4.preheader:                            ; preds = %.preheader5
  %temp.0..lcssa = phi float [ %temp.0., %.preheader5 ] ; [#uses=2 type=float]
  %temp.1..lcssa = phi float [ %temp.1., %.preheader5 ] ; [#uses=2 type=float]
  br label %.preheader4, !dbg !43                 ; [debug line = 18:30]

; <label>:5                                       ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @.str5) nounwind, !dbg !45 ; [debug line = 14:44]
  %tmp.3 = zext i2 %i1 to i64, !dbg !47           ; [#uses=1 type=i64] [debug line = 15:4]
  %inp.addr.1 = getelementptr [2 x float]* %inp, i64 0, i64 %tmp.3, !dbg !47 ; [#uses=1 type=float*] [debug line = 15:4]
  %inp.load.1 = load float* %inp.addr.1, align 4, !dbg !47 ; [#uses=1 type=float] [debug line = 15:4]
  %"temp[0]" = fdiv float %inp.load.1, %sum.lcssa, !dbg !47 ; [#uses=2 type=float] [debug line = 15:4]
  %i1.t = trunc i2 %i1 to i1                      ; [#uses=2 type=i1]
  call void @llvm.dbg.value(metadata !{float %"temp[0]"}, i64 0, metadata !48), !dbg !47 ; [debug line = 15:4] [debug variable = temp[0]]
  call void @llvm.dbg.value(metadata !{float %"temp[0]"}, i64 0, metadata !50), !dbg !47 ; [debug line = 15:4] [debug variable = temp[1]]
  %"temp[1].1" = select i1 %i1.t, float %"temp[0]", float %temp.1., !dbg !47 ; [#uses=1 type=float] [debug line = 15:4]
  call void @llvm.dbg.value(metadata !{float %"temp[1].1"}, i64 0, metadata !50), !dbg !47 ; [debug line = 15:4] [debug variable = temp[1]]
  %"temp[1].2" = select i1 %i1.t, float %temp.0., float %"temp[0]", !dbg !47 ; [#uses=1 type=float] [debug line = 15:4]
  call void @llvm.dbg.value(metadata !{float %"temp[1].2"}, i64 0, metadata !50), !dbg !47 ; [debug line = 15:4] [debug variable = temp[1]]
  %i.2 = add i2 %i1, 1, !dbg !51                  ; [#uses=1 type=i2] [debug line = 14:38]
  call void @llvm.dbg.value(metadata !{i2 %i.2}, i64 0, metadata !52), !dbg !51 ; [debug line = 14:38] [debug variable = i]
  br label %.preheader5, !dbg !51                 ; [debug line = 14:38]

.preheader4:                                      ; preds = %7, %.preheader4.preheader
  %sum.1 = phi float [ %sum.3, %7 ], [ 0.000000e+00, %.preheader4.preheader ] ; [#uses=2 type=float]
  %i2 = phi i2 [ %i.3, %7 ], [ 0, %.preheader4.preheader ] ; [#uses=3 type=i2]
  %exitcond1 = icmp eq i2 %i2, -2, !dbg !43       ; [#uses=1 type=i1] [debug line = 18:30]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %.preheader.preheader, label %7, !dbg !43 ; [debug line = 18:30]

.preheader.preheader:                             ; preds = %.preheader4
  %sum.1.lcssa = phi float [ %sum.1, %.preheader4 ] ; [#uses=1 type=float]
  %tmp.6 = fpext float %sum.1.lcssa to double, !dbg !53 ; [#uses=1 type=double] [debug line = 22:13]
  br label %.preheader, !dbg !56                  ; [debug line = 21:31]

; <label>:7                                       ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @.str6) nounwind, !dbg !57 ; [debug line = 18:43]
  %i2.t = trunc i2 %i2 to i1                      ; [#uses=1 type=i1]
  %temp.load.phi = select i1 %i2.t, float %temp.1..lcssa, float %temp.0..lcssa, !dbg !59 ; [#uses=1 type=float] [debug line = 19:11]
  %tmp.8 = fpext float %temp.load.phi to double, !dbg !59 ; [#uses=1 type=double] [debug line = 19:11]
  %tmp.9 = call double @llvm.exp.f64(double %tmp.8), !dbg !59 ; [#uses=1 type=double] [debug line = 19:11]
  %tmp. = fpext float %sum.1 to double, !dbg !59  ; [#uses=1 type=double] [debug line = 19:11]
  %tmp.1 = fadd double %tmp., %tmp.9, !dbg !59    ; [#uses=1 type=double] [debug line = 19:11]
  %sum.3 = fptrunc double %tmp.1 to float, !dbg !59 ; [#uses=1 type=float] [debug line = 19:11]
  call void @llvm.dbg.value(metadata !{float %sum.3}, i64 0, metadata !39), !dbg !59 ; [debug line = 19:11] [debug variable = sum]
  %i.3 = add i2 %i2, 1, !dbg !60                  ; [#uses=1 type=i2] [debug line = 18:37]
  call void @llvm.dbg.value(metadata !{i2 %i.3}, i64 0, metadata !61), !dbg !60 ; [debug line = 18:37] [debug variable = i]
  br label %.preheader4, !dbg !60                 ; [debug line = 18:37]

.preheader:                                       ; preds = %9, %.preheader.preheader
  %i3 = phi i2 [ %i.4, %9 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i2]
  %exitcond = icmp eq i2 %i3, -2, !dbg !56        ; [#uses=1 type=i1] [debug line = 21:31]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %10, label %9, !dbg !56  ; [debug line = 21:31]

; <label>:9                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @.str7) nounwind, !dbg !62 ; [debug line = 21:44]
  %tmp.2 = zext i2 %i3 to i64, !dbg !53           ; [#uses=1 type=i64] [debug line = 22:13]
  %i3.t = trunc i2 %i3 to i1                      ; [#uses=1 type=i1]
  %temp.load.1.phi = select i1 %i3.t, float %temp.1..lcssa, float %temp.0..lcssa, !dbg !53 ; [#uses=1 type=float] [debug line = 22:13]
  %tmp.5 = fpext float %temp.load.1.phi to double, !dbg !53 ; [#uses=1 type=double] [debug line = 22:13]
  %tmp.4 = call double @llvm.exp.f64(double %tmp.5), !dbg !53 ; [#uses=1 type=double] [debug line = 22:13]
  %tmp.7 = fdiv double %tmp.4, %tmp.6, !dbg !53   ; [#uses=1 type=double] [debug line = 22:13]
  %tmp.10 = fptrunc double %tmp.7 to float, !dbg !53 ; [#uses=1 type=float] [debug line = 22:13]
  %out.addr = getelementptr [2 x float]* %out, i64 0, i64 %tmp.2, !dbg !53 ; [#uses=1 type=float*] [debug line = 22:13]
  store float %tmp.10, float* %out.addr, align 4, !dbg !53 ; [debug line = 22:13]
  %i.4 = add i2 %i3, 1, !dbg !63                  ; [#uses=1 type=i2] [debug line = 21:38]
  call void @llvm.dbg.value(metadata !{i2 %i.4}, i64 0, metadata !64), !dbg !63 ; [debug line = 21:38] [debug variable = i]
  br label %.preheader, !dbg !63                  ; [debug line = 21:38]

; <label>:10                                      ; preds = %.preheader
  ret void, !dbg !65                              ; [debug line = 24:1]
}

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/AraniBasu/Documents/GitHub/Reconfig-project/Hardware-Accel/HW/project_softmax/solution1/.autopilot/db/obj_detector.pragma.2.cpp", metadata !"c:/Users/AraniBasu/Documents/GitHub/Reconfig-project/Hardware-Accel/HW", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"softmax", metadata !"softmax", metadata !"_Z7softmaxPfS_", metadata !6, i32 5, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"obj_detector.cpp", metadata !"c:/Users/AraniBasu/Documents/GitHub/Reconfig-project/Hardware-Accel/HW", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"inp", metadata !17, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 1, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"out", metadata !17, metadata !"float", i32 0, i32 31}
!23 = metadata !{i32 786689, metadata !5, metadata !"inp", null, i32 5, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!24 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 32, i32 0, i32 0, metadata !10, metadata !25, i32 0, i32 0} ; [ DW_TAG_array_type ]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!27 = metadata !{i32 5, i32 20, metadata !5, null}
!28 = metadata !{i32 786689, metadata !5, metadata !"out", null, i32 5, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!29 = metadata !{i32 5, i32 34, metadata !5, null}
!30 = metadata !{i32 8, i32 1, metadata !31, null}
!31 = metadata !{i32 786443, metadata !5, i32 5, i32 42, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 11, i32 30, metadata !33, null}
!33 = metadata !{i32 786443, metadata !31, i32 11, i32 18, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 14, i32 31, metadata !35, null}
!35 = metadata !{i32 786443, metadata !31, i32 14, i32 19, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 11, i32 43, metadata !37, null}
!37 = metadata !{i32 786443, metadata !33, i32 11, i32 42, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 12, i32 4, metadata !37, null}
!39 = metadata !{i32 786688, metadata !31, metadata !"sum", metadata !6, i32 9, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!40 = metadata !{i32 11, i32 37, metadata !33, null}
!41 = metadata !{i32 786688, metadata !33, metadata !"i", metadata !6, i32 11, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!43 = metadata !{i32 18, i32 30, metadata !44, null}
!44 = metadata !{i32 786443, metadata !31, i32 18, i32 19, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 14, i32 44, metadata !46, null}
!46 = metadata !{i32 786443, metadata !35, i32 14, i32 43, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 15, i32 4, metadata !46, null}
!48 = metadata !{i32 790529, metadata !49, metadata !"temp[0]", null, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!49 = metadata !{i32 786688, metadata !31, metadata !"temp", metadata !6, i32 10, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 790529, metadata !49, metadata !"temp[1]", null, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!51 = metadata !{i32 14, i32 38, metadata !35, null}
!52 = metadata !{i32 786688, metadata !35, metadata !"i", metadata !6, i32 14, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 22, i32 13, metadata !54, null}
!54 = metadata !{i32 786443, metadata !55, i32 21, i32 43, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 786443, metadata !31, i32 21, i32 19, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 21, i32 31, metadata !55, null}
!57 = metadata !{i32 18, i32 43, metadata !58, null}
!58 = metadata !{i32 786443, metadata !44, i32 18, i32 42, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 19, i32 11, metadata !58, null}
!60 = metadata !{i32 18, i32 37, metadata !44, null}
!61 = metadata !{i32 786688, metadata !44, metadata !"i", metadata !6, i32 18, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 21, i32 44, metadata !54, null}
!63 = metadata !{i32 21, i32 38, metadata !55, null}
!64 = metadata !{i32 786688, metadata !55, metadata !"i", metadata !6, i32 21, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 24, i32 1, metadata !31, null}
