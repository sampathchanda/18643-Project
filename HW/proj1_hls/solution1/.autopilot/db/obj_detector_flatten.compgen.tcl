# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 36 \
    name inp_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inp_0 \
    op interface \
    ports { inp_0_address0 { O 7 vector } inp_0_ce0 { O 1 bit } inp_0_q0 { I 32 vector } inp_0_address1 { O 7 vector } inp_0_ce1 { O 1 bit } inp_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inp_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 37 \
    name inp_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inp_1 \
    op interface \
    ports { inp_1_address0 { O 7 vector } inp_1_ce0 { O 1 bit } inp_1_q0 { I 32 vector } inp_1_address1 { O 7 vector } inp_1_ce1 { O 1 bit } inp_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inp_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 38 \
    name inp_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inp_2 \
    op interface \
    ports { inp_2_address0 { O 7 vector } inp_2_ce0 { O 1 bit } inp_2_q0 { I 32 vector } inp_2_address1 { O 7 vector } inp_2_ce1 { O 1 bit } inp_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inp_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 39 \
    name inp_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inp_3 \
    op interface \
    ports { inp_3_address0 { O 7 vector } inp_3_ce0 { O 1 bit } inp_3_q0 { I 32 vector } inp_3_address1 { O 7 vector } inp_3_ce1 { O 1 bit } inp_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inp_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 40 \
    name inp_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inp_4 \
    op interface \
    ports { inp_4_address0 { O 7 vector } inp_4_ce0 { O 1 bit } inp_4_q0 { I 32 vector } inp_4_address1 { O 7 vector } inp_4_ce1 { O 1 bit } inp_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inp_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 41 \
    name inp_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inp_5 \
    op interface \
    ports { inp_5_address0 { O 7 vector } inp_5_ce0 { O 1 bit } inp_5_q0 { I 32 vector } inp_5_address1 { O 7 vector } inp_5_ce1 { O 1 bit } inp_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inp_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 42 \
    name inp_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inp_6 \
    op interface \
    ports { inp_6_address0 { O 7 vector } inp_6_ce0 { O 1 bit } inp_6_q0 { I 32 vector } inp_6_address1 { O 7 vector } inp_6_ce1 { O 1 bit } inp_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inp_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 43 \
    name inp_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inp_7 \
    op interface \
    ports { inp_7_address0 { O 7 vector } inp_7_ce0 { O 1 bit } inp_7_q0 { I 32 vector } inp_7_address1 { O 7 vector } inp_7_ce1 { O 1 bit } inp_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inp_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 44 \
    name inp_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inp_8 \
    op interface \
    ports { inp_8_address0 { O 7 vector } inp_8_ce0 { O 1 bit } inp_8_q0 { I 32 vector } inp_8_address1 { O 7 vector } inp_8_ce1 { O 1 bit } inp_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inp_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 45 \
    name inp_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inp_9 \
    op interface \
    ports { inp_9_address0 { O 7 vector } inp_9_ce0 { O 1 bit } inp_9_q0 { I 32 vector } inp_9_address1 { O 7 vector } inp_9_ce1 { O 1 bit } inp_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inp_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 46 \
    name inp_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inp_10 \
    op interface \
    ports { inp_10_address0 { O 7 vector } inp_10_ce0 { O 1 bit } inp_10_q0 { I 32 vector } inp_10_address1 { O 7 vector } inp_10_ce1 { O 1 bit } inp_10_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inp_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 47 \
    name inp_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inp_11 \
    op interface \
    ports { inp_11_address0 { O 7 vector } inp_11_ce0 { O 1 bit } inp_11_q0 { I 32 vector } inp_11_address1 { O 7 vector } inp_11_ce1 { O 1 bit } inp_11_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inp_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 48 \
    name out_r \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_r \
    op interface \
    ports { out_r_address0 { O 10 vector } out_r_ce0 { O 1 bit } out_r_we0 { O 1 bit } out_r_d0 { O 32 vector } out_r_address1 { O 10 vector } out_r_ce1 { O 1 bit } out_r_we1 { O 1 bit } out_r_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_r'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


