; ModuleID = 'C:/Users/AraniBasu/Documents/GitHub/Reconfig-project/Hardware-Accel/HW/project_softmax/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=2 type=[5 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=8 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str3 = private unnamed_addr constant [8 x i8] c"control\00", align 1 ; [#uses=1 type=[8 x i8]*]
@p_str4 = private unnamed_addr constant [15 x i8] c"softmax_label9\00", align 1 ; [#uses=1 type=[15 x i8]*]
@p_str5 = private unnamed_addr constant [16 x i8] c"softmax_label10\00", align 1 ; [#uses=1 type=[16 x i8]*]
@p_str6 = private unnamed_addr constant [16 x i8] c"softmax_label11\00", align 1 ; [#uses=1 type=[16 x i8]*]
@p_str7 = private unnamed_addr constant [16 x i8] c"softmax_label12\00", align 1 ; [#uses=1 type=[16 x i8]*]
@softmax_str = internal unnamed_addr constant [8 x i8] c"softmax\00" ; [#uses=1 type=[8 x i8]*]

; [#uses=3]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=12]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
declare double @llvm.exp.f64(double) nounwind readonly

; [#uses=0]
define void @softmax([2 x float]* %inp, [2 x float]* %out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([2 x float]* %inp) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([2 x float]* %out) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @softmax_str) nounwind
  call void @llvm.dbg.value(metadata !{[2 x float]* %inp}, i64 0, metadata !10), !dbg !22 ; [debug line = 5:20] [debug variable = inp]
  call void @llvm.dbg.value(metadata !{[2 x float]* %out}, i64 0, metadata !23), !dbg !24 ; [debug line = 5:34] [debug variable = out]
  call void (...)* @_ssdm_op_SpecInterface([2 x float]* %out, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([2 x float]* %inp, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !25 ; [debug line = 8:1]
  br label %1, !dbg !27                           ; [debug line = 11:30]

; <label>:1                                       ; preds = %2, %0
  %i = phi i2 [ 0, %0 ], [ %i_1, %2 ]             ; [#uses=3 type=i2]
  %sum = phi float [ 0.000000e+00, %0 ], [ %sum_2, %2 ] ; [#uses=2 type=float]
  %exitcond3 = icmp eq i2 %i, -2, !dbg !27        ; [#uses=1 type=i1] [debug line = 11:30]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  %i_1 = add i2 %i, 1, !dbg !29                   ; [#uses=1 type=i2] [debug line = 11:37]
  br i1 %exitcond3, label %.preheader5, label %2, !dbg !27 ; [debug line = 11:30]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str4) nounwind, !dbg !30 ; [debug line = 11:43]
  %tmp = zext i2 %i to i64, !dbg !32              ; [#uses=1 type=i64] [debug line = 12:4]
  %inp_addr = getelementptr [2 x float]* %inp, i64 0, i64 %tmp, !dbg !32 ; [#uses=1 type=float*] [debug line = 12:4]
  %inp_load = load float* %inp_addr, align 4, !dbg !32 ; [#uses=1 type=float] [debug line = 12:4]
  %sum_2 = fadd float %sum, %inp_load, !dbg !32   ; [#uses=1 type=float] [debug line = 12:4]
  call void @llvm.dbg.value(metadata !{float %sum_2}, i64 0, metadata !33), !dbg !32 ; [debug line = 12:4] [debug variable = sum]
  call void @llvm.dbg.value(metadata !{i2 %i_1}, i64 0, metadata !34), !dbg !29 ; [debug line = 11:37] [debug variable = i]
  br label %1, !dbg !29                           ; [debug line = 11:37]

.preheader5:                                      ; preds = %3, %1
  %temp_1_s = phi float [ %temp_1_1, %3 ], [ undef, %1 ] ; [#uses=3 type=float]
  %temp_0_s = phi float [ %temp_1_2, %3 ], [ undef, %1 ] ; [#uses=3 type=float]
  %i1 = phi i2 [ %i_2, %3 ], [ 0, %1 ]            ; [#uses=4 type=i2]
  %exitcond2 = icmp eq i2 %i1, -2, !dbg !36       ; [#uses=1 type=i1] [debug line = 14:31]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  %i_2 = add i2 %i1, 1, !dbg !38                  ; [#uses=1 type=i2] [debug line = 14:38]
  br i1 %exitcond2, label %.preheader4, label %3, !dbg !36 ; [debug line = 14:31]

; <label>:3                                       ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str5) nounwind, !dbg !39 ; [debug line = 14:44]
  %tmp_3 = zext i2 %i1 to i64, !dbg !41           ; [#uses=1 type=i64] [debug line = 15:4]
  %inp_addr_1 = getelementptr [2 x float]* %inp, i64 0, i64 %tmp_3, !dbg !41 ; [#uses=1 type=float*] [debug line = 15:4]
  %inp_load_1 = load float* %inp_addr_1, align 4, !dbg !41 ; [#uses=1 type=float] [debug line = 15:4]
  %temp_0 = fdiv float %inp_load_1, %sum, !dbg !41 ; [#uses=2 type=float] [debug line = 15:4]
  %tmp_11 = trunc i2 %i1 to i1                    ; [#uses=2 type=i1]
  call void @llvm.dbg.value(metadata !{float %temp_0}, i64 0, metadata !42), !dbg !41 ; [debug line = 15:4] [debug variable = temp[0]]
  call void @llvm.dbg.value(metadata !{float %temp_0}, i64 0, metadata !44), !dbg !41 ; [debug line = 15:4] [debug variable = temp[1]]
  %temp_1_1 = select i1 %tmp_11, float %temp_0, float %temp_1_s, !dbg !41 ; [#uses=1 type=float] [debug line = 15:4]
  call void @llvm.dbg.value(metadata !{float %temp_1_1}, i64 0, metadata !44), !dbg !41 ; [debug line = 15:4] [debug variable = temp[1]]
  %temp_1_2 = select i1 %tmp_11, float %temp_0_s, float %temp_0, !dbg !41 ; [#uses=1 type=float] [debug line = 15:4]
  call void @llvm.dbg.value(metadata !{float %temp_1_2}, i64 0, metadata !44), !dbg !41 ; [debug line = 15:4] [debug variable = temp[1]]
  call void @llvm.dbg.value(metadata !{i2 %i_2}, i64 0, metadata !45), !dbg !38 ; [debug line = 14:38] [debug variable = i]
  br label %.preheader5, !dbg !38                 ; [debug line = 14:38]

.preheader4:                                      ; preds = %4, %.preheader5
  %sum_1 = phi float [ %sum_3, %4 ], [ 0.000000e+00, %.preheader5 ] ; [#uses=2 type=float]
  %i2 = phi i2 [ %i_3, %4 ], [ 0, %.preheader5 ]  ; [#uses=3 type=i2]
  %exitcond1 = icmp eq i2 %i2, -2, !dbg !46       ; [#uses=1 type=i1] [debug line = 18:30]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  %i_3 = add i2 %i2, 1, !dbg !48                  ; [#uses=1 type=i2] [debug line = 18:37]
  br i1 %exitcond1, label %.preheader.preheader, label %4, !dbg !46 ; [debug line = 18:30]

.preheader.preheader:                             ; preds = %.preheader4
  %tmp_6 = fpext float %sum_1 to double, !dbg !49 ; [#uses=1 type=double] [debug line = 22:13]
  br label %.preheader, !dbg !52                  ; [debug line = 21:31]

; <label>:4                                       ; preds = %.preheader4
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str6) nounwind, !dbg !53 ; [debug line = 18:43]
  %tmp_12 = trunc i2 %i2 to i1                    ; [#uses=1 type=i1]
  %temp_load_phi = select i1 %tmp_12, float %temp_1_s, float %temp_0_s, !dbg !55 ; [#uses=1 type=float] [debug line = 19:11]
  %tmp_8 = fpext float %temp_load_phi to double, !dbg !55 ; [#uses=1 type=double] [debug line = 19:11]
  %tmp_9 = call double @llvm.exp.f64(double %tmp_8), !dbg !55 ; [#uses=1 type=double] [debug line = 19:11]
  %tmp_s = fpext float %sum_1 to double, !dbg !55 ; [#uses=1 type=double] [debug line = 19:11]
  %tmp_1 = fadd double %tmp_s, %tmp_9, !dbg !55   ; [#uses=1 type=double] [debug line = 19:11]
  %sum_3 = fptrunc double %tmp_1 to float, !dbg !55 ; [#uses=1 type=float] [debug line = 19:11]
  call void @llvm.dbg.value(metadata !{float %sum_3}, i64 0, metadata !33), !dbg !55 ; [debug line = 19:11] [debug variable = sum]
  call void @llvm.dbg.value(metadata !{i2 %i_3}, i64 0, metadata !56), !dbg !48 ; [debug line = 18:37] [debug variable = i]
  br label %.preheader4, !dbg !48                 ; [debug line = 18:37]

.preheader:                                       ; preds = %5, %.preheader.preheader
  %i3 = phi i2 [ %i_4, %5 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i2]
  %exitcond = icmp eq i2 %i3, -2, !dbg !52        ; [#uses=1 type=i1] [debug line = 21:31]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  %i_4 = add i2 %i3, 1, !dbg !57                  ; [#uses=1 type=i2] [debug line = 21:38]
  br i1 %exitcond, label %6, label %5, !dbg !52   ; [debug line = 21:31]

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str7) nounwind, !dbg !58 ; [debug line = 21:44]
  %tmp_2 = zext i2 %i3 to i64, !dbg !49           ; [#uses=1 type=i64] [debug line = 22:13]
  %tmp_13 = trunc i2 %i3 to i1                    ; [#uses=1 type=i1]
  %temp_load_1_phi = select i1 %tmp_13, float %temp_1_s, float %temp_0_s, !dbg !49 ; [#uses=1 type=float] [debug line = 22:13]
  %tmp_5 = fpext float %temp_load_1_phi to double, !dbg !49 ; [#uses=1 type=double] [debug line = 22:13]
  %tmp_4 = call double @llvm.exp.f64(double %tmp_5), !dbg !49 ; [#uses=1 type=double] [debug line = 22:13]
  %tmp_7 = fdiv double %tmp_4, %tmp_6, !dbg !49   ; [#uses=1 type=double] [debug line = 22:13]
  %tmp_10 = fptrunc double %tmp_7 to float, !dbg !49 ; [#uses=1 type=float] [debug line = 22:13]
  %out_addr = getelementptr [2 x float]* %out, i64 0, i64 %tmp_2, !dbg !49 ; [#uses=1 type=float*] [debug line = 22:13]
  store float %tmp_10, float* %out_addr, align 4, !dbg !49 ; [debug line = 22:13]
  call void @llvm.dbg.value(metadata !{i2 %i_4}, i64 0, metadata !59), !dbg !57 ; [debug line = 21:38] [debug variable = i]
  br label %.preheader, !dbg !57                  ; [debug line = 21:38]

; <label>:6                                       ; preds = %.preheader
  ret void, !dbg !60                              ; [debug line = 24:1]
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"inp", metadata !4, metadata !"float", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 1, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"out", metadata !4, metadata !"float", i32 0, i32 31}
!10 = metadata !{i32 786689, metadata !11, metadata !"inp", null, i32 5, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!11 = metadata !{i32 786478, i32 0, metadata !12, metadata !"softmax", metadata !"softmax", metadata !"_Z7softmaxPfS_", metadata !12, i32 5, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !17, i32 5} ; [ DW_TAG_subprogram ]
!12 = metadata !{i32 786473, metadata !"obj_detector.cpp", metadata !"c:/Users/AraniBasu/Documents/GitHub/Reconfig-project/Hardware-Accel/HW", null} ; [ DW_TAG_file_type ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !15}
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 32, i32 0, i32 0, metadata !16, metadata !20, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ]
!22 = metadata !{i32 5, i32 20, metadata !11, null}
!23 = metadata !{i32 786689, metadata !11, metadata !"out", null, i32 5, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!24 = metadata !{i32 5, i32 34, metadata !11, null}
!25 = metadata !{i32 8, i32 1, metadata !26, null}
!26 = metadata !{i32 786443, metadata !11, i32 5, i32 42, metadata !12, i32 0} ; [ DW_TAG_lexical_block ]
!27 = metadata !{i32 11, i32 30, metadata !28, null}
!28 = metadata !{i32 786443, metadata !26, i32 11, i32 18, metadata !12, i32 1} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 11, i32 37, metadata !28, null}
!30 = metadata !{i32 11, i32 43, metadata !31, null}
!31 = metadata !{i32 786443, metadata !28, i32 11, i32 42, metadata !12, i32 2} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 12, i32 4, metadata !31, null}
!33 = metadata !{i32 786688, metadata !26, metadata !"sum", metadata !12, i32 9, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!34 = metadata !{i32 786688, metadata !28, metadata !"i", metadata !12, i32 11, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!35 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!36 = metadata !{i32 14, i32 31, metadata !37, null}
!37 = metadata !{i32 786443, metadata !26, i32 14, i32 19, metadata !12, i32 3} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 14, i32 38, metadata !37, null}
!39 = metadata !{i32 14, i32 44, metadata !40, null}
!40 = metadata !{i32 786443, metadata !37, i32 14, i32 43, metadata !12, i32 4} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 15, i32 4, metadata !40, null}
!42 = metadata !{i32 790529, metadata !43, metadata !"temp[0]", null, i32 10, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!43 = metadata !{i32 786688, metadata !26, metadata !"temp", metadata !12, i32 10, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 790529, metadata !43, metadata !"temp[1]", null, i32 10, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!45 = metadata !{i32 786688, metadata !37, metadata !"i", metadata !12, i32 14, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 18, i32 30, metadata !47, null}
!47 = metadata !{i32 786443, metadata !26, i32 18, i32 19, metadata !12, i32 5} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 18, i32 37, metadata !47, null}
!49 = metadata !{i32 22, i32 13, metadata !50, null}
!50 = metadata !{i32 786443, metadata !51, i32 21, i32 43, metadata !12, i32 8} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 786443, metadata !26, i32 21, i32 19, metadata !12, i32 7} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 21, i32 31, metadata !51, null}
!53 = metadata !{i32 18, i32 43, metadata !54, null}
!54 = metadata !{i32 786443, metadata !47, i32 18, i32 42, metadata !12, i32 6} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 19, i32 11, metadata !54, null}
!56 = metadata !{i32 786688, metadata !47, metadata !"i", metadata !12, i32 18, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 21, i32 38, metadata !51, null}
!58 = metadata !{i32 21, i32 44, metadata !50, null}
!59 = metadata !{i32 786688, metadata !51, metadata !"i", metadata !12, i32 21, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 24, i32 1, metadata !26, null}
