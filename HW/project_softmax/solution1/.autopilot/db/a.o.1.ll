; ModuleID = 'C:/Users/AraniBasu/Documents/GitHub/Reconfig-project/Hardware-Accel/HW/project_softmax/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [8 x i8] c"control\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str4 = private unnamed_addr constant [15 x i8] c"softmax_label9\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str5 = private unnamed_addr constant [16 x i8] c"softmax_label10\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str6 = private unnamed_addr constant [16 x i8] c"softmax_label11\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str7 = private unnamed_addr constant [16 x i8] c"softmax_label12\00", align 1 ; [#uses=1 type=[16 x i8]*]
@softmax.str = internal unnamed_addr constant [8 x i8] c"softmax\00" ; [#uses=1 type=[8 x i8]*]

; [#uses=0]
define void @softmax(float* %inp, float* %out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @softmax.str) nounwind
  %temp = alloca [2 x float], align 4             ; [#uses=3 type=[2 x float]*]
  call void @llvm.dbg.value(metadata !{float* %inp}, i64 0, metadata !13), !dbg !14 ; [debug line = 5:20] [debug variable = inp]
  call void @llvm.dbg.value(metadata !{float* %out}, i64 0, metadata !15), !dbg !16 ; [debug line = 5:34] [debug variable = out]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %inp, i32 2) nounwind, !dbg !17 ; [debug line = 5:43]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %out, i32 2) nounwind, !dbg !19 ; [debug line = 5:73]
  call void (...)* @_ssdm_op_SpecInterface(float* %out, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !20 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %inp, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !21 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !22 ; [debug line = 8:1]
  call void @llvm.dbg.declare(metadata !{[2 x float]* %temp}, metadata !23), !dbg !27 ; [debug line = 10:9] [debug variable = temp]
  br label %1, !dbg !28                           ; [debug line = 11:30]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %sum = phi float [ 0.000000e+00, %0 ], [ %sum.2, %2 ] ; [#uses=2 type=float]
  %exitcond3 = icmp eq i32 %i, 2, !dbg !28        ; [#uses=1 type=i1] [debug line = 11:30]
  br i1 %exitcond3, label %.preheader5.preheader, label %2, !dbg !28 ; [debug line = 11:30]

.preheader5.preheader:                            ; preds = %1
  %sum.0.lcssa = phi float [ %sum, %1 ]           ; [#uses=1 type=float]
  br label %.preheader5, !dbg !30                 ; [debug line = 14:31]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !32 ; [debug line = 11:43]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !32 ; [#uses=1 type=i32] [debug line = 11:43]
  %tmp = sext i32 %i to i64, !dbg !34             ; [#uses=1 type=i64] [debug line = 12:4]
  %inp.addr = getelementptr inbounds float* %inp, i64 %tmp, !dbg !34 ; [#uses=1 type=float*] [debug line = 12:4]
  %inp.load = load float* %inp.addr, align 4, !dbg !34 ; [#uses=2 type=float] [debug line = 12:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %inp.load) nounwind
  %sum.2 = fadd float %sum, %inp.load, !dbg !34   ; [#uses=1 type=float] [debug line = 12:4]
  call void @llvm.dbg.value(metadata !{float %sum.2}, i64 0, metadata !35), !dbg !34 ; [debug line = 12:4] [debug variable = sum]
  %rend11 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !36 ; [#uses=0 type=i32] [debug line = 13:3]
  %i.1 = add nsw i32 %i, 1, !dbg !37              ; [#uses=1 type=i32] [debug line = 11:37]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !38), !dbg !37 ; [debug line = 11:37] [debug variable = i]
  br label %1, !dbg !37                           ; [debug line = 11:37]

.preheader5:                                      ; preds = %3, %.preheader5.preheader
  %i1 = phi i32 [ %i.2, %3 ], [ 0, %.preheader5.preheader ] ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %i1, 2, !dbg !30       ; [#uses=1 type=i1] [debug line = 14:31]
  br i1 %exitcond2, label %.preheader4.preheader, label %3, !dbg !30 ; [debug line = 14:31]

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4, !dbg !40                 ; [debug line = 18:30]

; <label>:3                                       ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !42 ; [debug line = 14:44]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !42 ; [#uses=1 type=i32] [debug line = 14:44]
  %tmp.3 = sext i32 %i1 to i64, !dbg !44          ; [#uses=2 type=i64] [debug line = 15:4]
  %inp.addr.1 = getelementptr inbounds float* %inp, i64 %tmp.3, !dbg !44 ; [#uses=1 type=float*] [debug line = 15:4]
  %inp.load.1 = load float* %inp.addr.1, align 4, !dbg !44 ; [#uses=2 type=float] [debug line = 15:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %inp.load.1) nounwind
  %tmp.4 = fdiv float %inp.load.1, %sum.0.lcssa, !dbg !44 ; [#uses=1 type=float] [debug line = 15:4]
  %temp.addr = getelementptr inbounds [2 x float]* %temp, i64 0, i64 %tmp.3, !dbg !44 ; [#uses=1 type=float*] [debug line = 15:4]
  store float %tmp.4, float* %temp.addr, align 4, !dbg !44 ; [debug line = 15:4]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !45 ; [#uses=0 type=i32] [debug line = 16:3]
  %i.2 = add nsw i32 %i1, 1, !dbg !46             ; [#uses=1 type=i32] [debug line = 14:38]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !47), !dbg !46 ; [debug line = 14:38] [debug variable = i]
  br label %.preheader5, !dbg !46                 ; [debug line = 14:38]

.preheader4:                                      ; preds = %4, %.preheader4.preheader
  %sum.1 = phi float [ %sum.3, %4 ], [ 0.000000e+00, %.preheader4.preheader ] ; [#uses=2 type=float]
  %i2 = phi i32 [ %i.3, %4 ], [ 0, %.preheader4.preheader ] ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i2, 2, !dbg !40       ; [#uses=1 type=i1] [debug line = 18:30]
  br i1 %exitcond1, label %.preheader.preheader, label %4, !dbg !40 ; [debug line = 18:30]

.preheader.preheader:                             ; preds = %.preheader4
  %sum.1.lcssa = phi float [ %sum.1, %.preheader4 ] ; [#uses=1 type=float]
  %tmp.6 = fpext float %sum.1.lcssa to double, !dbg !48 ; [#uses=1 type=double] [debug line = 22:13]
  br label %.preheader, !dbg !51                  ; [debug line = 21:31]

; <label>:4                                       ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !52 ; [debug line = 18:43]
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !52 ; [#uses=1 type=i32] [debug line = 18:43]
  %tmp.7 = sext i32 %i2 to i64, !dbg !54          ; [#uses=1 type=i64] [debug line = 19:11]
  %temp.addr.1 = getelementptr inbounds [2 x float]* %temp, i64 0, i64 %tmp.7, !dbg !54 ; [#uses=1 type=float*] [debug line = 19:11]
  %temp.load = load float* %temp.addr.1, align 4, !dbg !54 ; [#uses=2 type=float] [debug line = 19:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %temp.load) nounwind
  %tmp.8 = fpext float %temp.load to double, !dbg !54 ; [#uses=1 type=double] [debug line = 19:11]
  %tmp.9 = call double @llvm.exp.f64(double %tmp.8), !dbg !54 ; [#uses=1 type=double] [debug line = 19:11]
  %tmp.10 = fpext float %sum.1 to double, !dbg !54 ; [#uses=1 type=double] [debug line = 19:11]
  %tmp.11 = fadd double %tmp.10, %tmp.9, !dbg !54 ; [#uses=1 type=double] [debug line = 19:11]
  %sum.3 = fptrunc double %tmp.11 to float, !dbg !54 ; [#uses=1 type=float] [debug line = 19:11]
  call void @llvm.dbg.value(metadata !{float %sum.3}, i64 0, metadata !35), !dbg !54 ; [debug line = 19:11] [debug variable = sum]
  %rend7 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0), i32 %rbegin6) nounwind, !dbg !55 ; [#uses=0 type=i32] [debug line = 20:3]
  %i.3 = add nsw i32 %i2, 1, !dbg !56             ; [#uses=1 type=i32] [debug line = 18:37]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !57), !dbg !56 ; [debug line = 18:37] [debug variable = i]
  br label %.preheader4, !dbg !56                 ; [debug line = 18:37]

.preheader:                                       ; preds = %5, %.preheader.preheader
  %i3 = phi i32 [ %i.4, %5 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i3, 2, !dbg !51        ; [#uses=1 type=i1] [debug line = 21:31]
  br i1 %exitcond, label %6, label %5, !dbg !51   ; [debug line = 21:31]

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !58 ; [debug line = 21:44]
  %rbegin8 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !58 ; [#uses=1 type=i32] [debug line = 21:44]
  %tmp.14 = sext i32 %i3 to i64, !dbg !48         ; [#uses=2 type=i64] [debug line = 22:13]
  %temp.addr.2 = getelementptr inbounds [2 x float]* %temp, i64 0, i64 %tmp.14, !dbg !48 ; [#uses=1 type=float*] [debug line = 22:13]
  %temp.load.1 = load float* %temp.addr.2, align 4, !dbg !48 ; [#uses=2 type=float] [debug line = 22:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %temp.load.1) nounwind
  %tmp.15 = fpext float %temp.load.1 to double, !dbg !48 ; [#uses=1 type=double] [debug line = 22:13]
  %tmp.16 = call double @llvm.exp.f64(double %tmp.15), !dbg !48 ; [#uses=1 type=double] [debug line = 22:13]
  %tmp.17 = fdiv double %tmp.16, %tmp.6, !dbg !48 ; [#uses=1 type=double] [debug line = 22:13]
  %tmp.18 = fptrunc double %tmp.17 to float, !dbg !48 ; [#uses=1 type=float] [debug line = 22:13]
  %out.addr = getelementptr inbounds float* %out, i64 %tmp.14, !dbg !48 ; [#uses=1 type=float*] [debug line = 22:13]
  store float %tmp.18, float* %out.addr, align 4, !dbg !48 ; [debug line = 22:13]
  %rend9 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i32 %rbegin8) nounwind, !dbg !59 ; [#uses=0 type=i32] [debug line = 23:3]
  %i.4 = add nsw i32 %i3, 1, !dbg !60             ; [#uses=1 type=i32] [debug line = 21:38]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !61), !dbg !60 ; [debug line = 21:38] [debug variable = i]
  br label %.preheader, !dbg !60                  ; [debug line = 21:38]

; <label>:6                                       ; preds = %.preheader
  ret void, !dbg !62                              ; [debug line = 24:1]
}

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=8]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionEnd(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/AraniBasu/Documents/GitHub/Reconfig-project/Hardware-Accel/HW/project_softmax/solution1/.autopilot/db/obj_detector.pragma.2.cpp", metadata !"c:/Users/AraniBasu/Documents/GitHub/Reconfig-project/Hardware-Accel/HW", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"softmax", metadata !"softmax", metadata !"_Z7softmaxPfS_", metadata !6, i32 5, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*)* @softmax, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"obj_detector.cpp", metadata !"c:/Users/AraniBasu/Documents/GitHub/Reconfig-project/Hardware-Accel/HW", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786689, metadata !5, metadata !"inp", metadata !6, i32 16777221, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!14 = metadata !{i32 5, i32 20, metadata !5, null}
!15 = metadata !{i32 786689, metadata !5, metadata !"out", metadata !6, i32 33554437, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!16 = metadata !{i32 5, i32 34, metadata !5, null}
!17 = metadata !{i32 5, i32 43, metadata !18, null}
!18 = metadata !{i32 786443, metadata !5, i32 5, i32 42, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!19 = metadata !{i32 5, i32 73, metadata !18, null}
!20 = metadata !{i32 6, i32 1, metadata !18, null}
!21 = metadata !{i32 7, i32 1, metadata !18, null}
!22 = metadata !{i32 8, i32 1, metadata !18, null}
!23 = metadata !{i32 786688, metadata !18, metadata !"temp", metadata !6, i32 10, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!24 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 32, i32 0, i32 0, metadata !10, metadata !25, i32 0, i32 0} ; [ DW_TAG_array_type ]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!27 = metadata !{i32 10, i32 9, metadata !18, null}
!28 = metadata !{i32 11, i32 30, metadata !29, null}
!29 = metadata !{i32 786443, metadata !18, i32 11, i32 18, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 14, i32 31, metadata !31, null}
!31 = metadata !{i32 786443, metadata !18, i32 14, i32 19, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 11, i32 43, metadata !33, null}
!33 = metadata !{i32 786443, metadata !29, i32 11, i32 42, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 12, i32 4, metadata !33, null}
!35 = metadata !{i32 786688, metadata !18, metadata !"sum", metadata !6, i32 9, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!36 = metadata !{i32 13, i32 3, metadata !33, null}
!37 = metadata !{i32 11, i32 37, metadata !29, null}
!38 = metadata !{i32 786688, metadata !29, metadata !"i", metadata !6, i32 11, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!39 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!40 = metadata !{i32 18, i32 30, metadata !41, null}
!41 = metadata !{i32 786443, metadata !18, i32 18, i32 19, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 14, i32 44, metadata !43, null}
!43 = metadata !{i32 786443, metadata !31, i32 14, i32 43, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 15, i32 4, metadata !43, null}
!45 = metadata !{i32 16, i32 3, metadata !43, null}
!46 = metadata !{i32 14, i32 38, metadata !31, null}
!47 = metadata !{i32 786688, metadata !31, metadata !"i", metadata !6, i32 14, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!48 = metadata !{i32 22, i32 13, metadata !49, null}
!49 = metadata !{i32 786443, metadata !50, i32 21, i32 43, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 786443, metadata !18, i32 21, i32 19, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 21, i32 31, metadata !50, null}
!52 = metadata !{i32 18, i32 43, metadata !53, null}
!53 = metadata !{i32 786443, metadata !41, i32 18, i32 42, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 19, i32 11, metadata !53, null}
!55 = metadata !{i32 20, i32 3, metadata !53, null}
!56 = metadata !{i32 18, i32 37, metadata !41, null}
!57 = metadata !{i32 786688, metadata !41, metadata !"i", metadata !6, i32 18, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 21, i32 44, metadata !49, null}
!59 = metadata !{i32 23, i32 3, metadata !49, null}
!60 = metadata !{i32 21, i32 38, metadata !50, null}
!61 = metadata !{i32 786688, metadata !50, metadata !"i", metadata !6, i32 21, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 24, i32 1, metadata !18, null}
