// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _feature_extractor_maxpool_HH_
#define _feature_extractor_maxpool_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "feature_extractor_sitofp_32ns_32_6.h"
#include "feature_extractor_fcmp_32ns_32ns_1_1.h"

namespace ap_rtl {

struct feature_extractor_maxpool : public sc_module {
    // Port declarations 15
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<12> > input_mat_address0;
    sc_out< sc_logic > input_mat_ce0;
    sc_in< sc_lv<32> > input_mat_q0;
    sc_in< sc_lv<3> > tmp_4;
    sc_out< sc_lv<10> > output_mat_address0;
    sc_out< sc_logic > output_mat_ce0;
    sc_out< sc_logic > output_mat_we0;
    sc_out< sc_lv<32> > output_mat_d0;
    sc_in< sc_lv<3> > tmp_41;


    // Module declarations
    feature_extractor_maxpool(sc_module_name name);
    SC_HAS_PROCESS(feature_extractor_maxpool);

    ~feature_extractor_maxpool();

    sc_trace_file* mVcdFile;

    feature_extractor_sitofp_32ns_32_6<1,6,32,32>* feature_extractor_sitofp_32ns_32_6_U9;
    feature_extractor_fcmp_32ns_32ns_1_1<1,1,32,32,1>* feature_extractor_fcmp_32ns_32ns_1_1_U10;
    sc_signal< sc_lv<12> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_30;
    sc_signal< sc_lv<10> > p_addr_cast_fu_232_p1;
    sc_signal< sc_lv<10> > p_addr_cast_reg_667;
    sc_signal< sc_lv<9> > p_addr4_cast_fu_266_p1;
    sc_signal< sc_lv<9> > p_addr4_cast_reg_672;
    sc_signal< sc_lv<4> > i_2_fu_276_p2;
    sc_signal< sc_lv<4> > i_2_reg_680;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_64;
    sc_signal< sc_lv<5> > tmp_fu_282_p3;
    sc_signal< sc_lv<5> > tmp_reg_685;
    sc_signal< sc_lv<1> > exitcond3_fu_270_p2;
    sc_signal< sc_lv<32> > p_addr6_fu_323_p2;
    sc_signal< sc_lv<32> > p_addr6_reg_690;
    sc_signal< sc_lv<4> > j_2_fu_335_p2;
    sc_signal< sc_lv<4> > j_2_reg_698;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_bdd_81;
    sc_signal< sc_lv<5> > tmp_1_fu_341_p3;
    sc_signal< sc_lv<5> > tmp_1_reg_703;
    sc_signal< sc_lv<1> > exitcond2_fu_329_p2;
    sc_signal< sc_lv<2> > k_2_fu_359_p2;
    sc_signal< sc_lv<2> > k_2_reg_711;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_bdd_95;
    sc_signal< sc_lv<32> > p_addr2_fu_403_p2;
    sc_signal< sc_lv<32> > p_addr2_reg_716;
    sc_signal< sc_lv<1> > exitcond1_fu_353_p2;
    sc_signal< sc_lv<2> > l_1_fu_433_p2;
    sc_signal< sc_lv<2> > l_1_reg_724;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_bdd_109;
    sc_signal< sc_lv<32> > p_addr3_fu_448_p2;
    sc_signal< sc_lv<32> > p_addr3_reg_729;
    sc_signal< sc_lv<1> > exitcond_fu_427_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_bdd_123;
    sc_signal< sc_lv<32> > input_mat_load_reg_739;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_bdd_131;
    sc_signal< sc_lv<32> > grp_fu_194_p1;
    sc_signal< sc_lv<32> > tmp_8_reg_745;
    sc_signal< sc_lv<1> > tmp_13_fu_533_p2;
    sc_signal< sc_lv<1> > tmp_13_reg_751;
    sc_signal< sc_logic > ap_sig_cseq_ST_st11_fsm_10;
    sc_signal< bool > ap_sig_bdd_142;
    sc_signal< sc_lv<1> > p_Result_s_reg_756;
    sc_signal< sc_lv<32> > p_Val2_8_fu_641_p3;
    sc_signal< sc_lv<32> > p_Val2_8_reg_761;
    sc_signal< sc_lv<32> > max_2_fu_660_p3;
    sc_signal< sc_logic > ap_sig_cseq_ST_st12_fsm_11;
    sc_signal< bool > ap_sig_bdd_155;
    sc_signal< sc_lv<4> > i_reg_124;
    sc_signal< sc_lv<4> > j_reg_135;
    sc_signal< sc_lv<32> > max_reg_147;
    sc_signal< sc_lv<2> > k_reg_160;
    sc_signal< sc_lv<32> > max_1_reg_171;
    sc_signal< sc_lv<2> > l_reg_183;
    sc_signal< sc_lv<64> > tmp_17_fu_418_p1;
    sc_signal< sc_lv<64> > tmp_20_fu_453_p1;
    sc_signal< sc_lv<32> > grp_fu_194_p0;
    sc_signal< sc_lv<32> > tmp_12_fu_198_p0;
    sc_signal< sc_lv<32> > tmp_12_fu_198_p1;
    sc_signal< sc_lv<8> > tmp_s_fu_202_p3;
    sc_signal< sc_lv<6> > tmp_5_fu_214_p3;
    sc_signal< sc_lv<9> > p_shl9_cast_fu_210_p1;
    sc_signal< sc_lv<9> > p_shl1_cast_fu_222_p1;
    sc_signal< sc_lv<9> > p_addr_fu_226_p2;
    sc_signal< sc_lv<7> > tmp_9_fu_236_p3;
    sc_signal< sc_lv<5> > tmp_14_fu_248_p3;
    sc_signal< sc_lv<8> > p_shl_cast_fu_244_p1;
    sc_signal< sc_lv<8> > p_shl8_cast_fu_256_p1;
    sc_signal< sc_lv<8> > p_addr4_fu_260_p2;
    sc_signal< sc_lv<9> > tmp_trn_cast_fu_290_p1;
    sc_signal< sc_lv<9> > p_addr5_fu_294_p2;
    sc_signal< sc_lv<13> > tmp_15_fu_299_p3;
    sc_signal< sc_lv<11> > tmp_16_fu_311_p3;
    sc_signal< sc_lv<32> > p_shl2_fu_307_p1;
    sc_signal< sc_lv<32> > p_shl3_fu_319_p1;
    sc_signal< sc_lv<5> > k_cast3_fu_349_p1;
    sc_signal< sc_lv<5> > tmp_3_fu_365_p2;
    sc_signal< sc_lv<10> > tmp_5_trn_cast_fu_370_p1;
    sc_signal< sc_lv<10> > p_addr1_fu_374_p2;
    sc_signal< sc_lv<15> > tmp_18_fu_379_p3;
    sc_signal< sc_lv<13> > tmp_19_fu_391_p3;
    sc_signal< sc_lv<32> > p_shl4_fu_387_p1;
    sc_signal< sc_lv<32> > p_shl5_fu_399_p1;
    sc_signal< sc_lv<32> > tmp_2_trn_fu_409_p1;
    sc_signal< sc_lv<32> > p_addr7_fu_413_p2;
    sc_signal< sc_lv<5> > l_cast2_fu_423_p1;
    sc_signal< sc_lv<5> > tmp_6_fu_439_p2;
    sc_signal< sc_lv<32> > tmp_7_trn_fu_444_p1;
    sc_signal< sc_lv<32> > p_Val2_5_fu_457_p1;
    sc_signal< sc_lv<32> > tmp_8_to_int_fu_474_p1;
    sc_signal< sc_lv<8> > loc_V_fu_460_p4;
    sc_signal< sc_lv<23> > loc_V_2_fu_470_p1;
    sc_signal< sc_lv<1> > notrhs_fu_497_p2;
    sc_signal< sc_lv<1> > notlhs_fu_491_p2;
    sc_signal< sc_lv<8> > tmp_2_fu_477_p4;
    sc_signal< sc_lv<23> > tmp_22_fu_487_p1;
    sc_signal< sc_lv<1> > notrhs2_fu_515_p2;
    sc_signal< sc_lv<1> > notlhs1_fu_509_p2;
    sc_signal< sc_lv<1> > tmp_7_fu_503_p2;
    sc_signal< sc_lv<1> > tmp_10_fu_521_p2;
    sc_signal< sc_lv<1> > tmp_11_fu_527_p2;
    sc_signal< sc_lv<1> > tmp_12_fu_198_p2;
    sc_signal< sc_lv<24> > p_Result_2_fu_547_p3;
    sc_signal< sc_lv<9> > tmp_i_i_i_cast1_fu_559_p1;
    sc_signal< sc_lv<9> > sh_assign_fu_563_p2;
    sc_signal< sc_lv<8> > tmp_1_i_i_fu_577_p2;
    sc_signal< sc_lv<1> > isNeg_fu_569_p3;
    sc_signal< sc_lv<9> > tmp_1_i_i_cast_fu_583_p1;
    sc_signal< sc_lv<9> > sh_assign_1_fu_587_p3;
    sc_signal< sc_lv<32> > sh_assign_1_cast_fu_595_p1;
    sc_signal< sc_lv<24> > sh_assign_1_cast_cast_fu_599_p1;
    sc_signal< sc_lv<78> > tmp_i_i_fu_555_p1;
    sc_signal< sc_lv<78> > tmp_2_i_i_fu_603_p1;
    sc_signal< sc_lv<24> > tmp_3_i_i_fu_607_p2;
    sc_signal< sc_lv<1> > tmp_25_fu_619_p3;
    sc_signal< sc_lv<78> > tmp_5_i_i_fu_613_p2;
    sc_signal< sc_lv<32> > tmp_21_fu_627_p1;
    sc_signal< sc_lv<32> > tmp_23_fu_631_p4;
    sc_signal< sc_lv<32> > p_Val2_7_i_i_fu_649_p2;
    sc_signal< sc_lv<32> > p_Val2_s_fu_654_p3;
    sc_signal< sc_logic > grp_fu_194_ce;
    sc_signal< sc_lv<5> > tmp_12_fu_198_opcode;
    sc_signal< sc_lv<12> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<12> ap_ST_st1_fsm_0;
    static const sc_lv<12> ap_ST_st2_fsm_1;
    static const sc_lv<12> ap_ST_st3_fsm_2;
    static const sc_lv<12> ap_ST_st4_fsm_3;
    static const sc_lv<12> ap_ST_st5_fsm_4;
    static const sc_lv<12> ap_ST_st6_fsm_5;
    static const sc_lv<12> ap_ST_st7_fsm_6;
    static const sc_lv<12> ap_ST_st8_fsm_7;
    static const sc_lv<12> ap_ST_st9_fsm_8;
    static const sc_lv<12> ap_ST_st10_fsm_9;
    static const sc_lv<12> ap_ST_st11_fsm_10;
    static const sc_lv<12> ap_ST_st12_fsm_11;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_C;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<9> ap_const_lv9_181;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<32> ap_const_lv32_36;
    static const sc_lv<5> ap_const_lv5_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_109();
    void thread_ap_sig_bdd_123();
    void thread_ap_sig_bdd_131();
    void thread_ap_sig_bdd_142();
    void thread_ap_sig_bdd_155();
    void thread_ap_sig_bdd_30();
    void thread_ap_sig_bdd_64();
    void thread_ap_sig_bdd_81();
    void thread_ap_sig_bdd_95();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st11_fsm_10();
    void thread_ap_sig_cseq_ST_st12_fsm_11();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_exitcond1_fu_353_p2();
    void thread_exitcond2_fu_329_p2();
    void thread_exitcond3_fu_270_p2();
    void thread_exitcond_fu_427_p2();
    void thread_grp_fu_194_ce();
    void thread_grp_fu_194_p0();
    void thread_i_2_fu_276_p2();
    void thread_input_mat_address0();
    void thread_input_mat_ce0();
    void thread_isNeg_fu_569_p3();
    void thread_j_2_fu_335_p2();
    void thread_k_2_fu_359_p2();
    void thread_k_cast3_fu_349_p1();
    void thread_l_1_fu_433_p2();
    void thread_l_cast2_fu_423_p1();
    void thread_loc_V_2_fu_470_p1();
    void thread_loc_V_fu_460_p4();
    void thread_max_2_fu_660_p3();
    void thread_notlhs1_fu_509_p2();
    void thread_notlhs_fu_491_p2();
    void thread_notrhs2_fu_515_p2();
    void thread_notrhs_fu_497_p2();
    void thread_output_mat_address0();
    void thread_output_mat_ce0();
    void thread_output_mat_d0();
    void thread_output_mat_we0();
    void thread_p_Result_2_fu_547_p3();
    void thread_p_Val2_5_fu_457_p1();
    void thread_p_Val2_7_i_i_fu_649_p2();
    void thread_p_Val2_8_fu_641_p3();
    void thread_p_Val2_s_fu_654_p3();
    void thread_p_addr1_fu_374_p2();
    void thread_p_addr2_fu_403_p2();
    void thread_p_addr3_fu_448_p2();
    void thread_p_addr4_cast_fu_266_p1();
    void thread_p_addr4_fu_260_p2();
    void thread_p_addr5_fu_294_p2();
    void thread_p_addr6_fu_323_p2();
    void thread_p_addr7_fu_413_p2();
    void thread_p_addr_cast_fu_232_p1();
    void thread_p_addr_fu_226_p2();
    void thread_p_shl1_cast_fu_222_p1();
    void thread_p_shl2_fu_307_p1();
    void thread_p_shl3_fu_319_p1();
    void thread_p_shl4_fu_387_p1();
    void thread_p_shl5_fu_399_p1();
    void thread_p_shl8_cast_fu_256_p1();
    void thread_p_shl9_cast_fu_210_p1();
    void thread_p_shl_cast_fu_244_p1();
    void thread_sh_assign_1_cast_cast_fu_599_p1();
    void thread_sh_assign_1_cast_fu_595_p1();
    void thread_sh_assign_1_fu_587_p3();
    void thread_sh_assign_fu_563_p2();
    void thread_tmp_10_fu_521_p2();
    void thread_tmp_11_fu_527_p2();
    void thread_tmp_12_fu_198_opcode();
    void thread_tmp_12_fu_198_p0();
    void thread_tmp_12_fu_198_p1();
    void thread_tmp_13_fu_533_p2();
    void thread_tmp_14_fu_248_p3();
    void thread_tmp_15_fu_299_p3();
    void thread_tmp_16_fu_311_p3();
    void thread_tmp_17_fu_418_p1();
    void thread_tmp_18_fu_379_p3();
    void thread_tmp_19_fu_391_p3();
    void thread_tmp_1_fu_341_p3();
    void thread_tmp_1_i_i_cast_fu_583_p1();
    void thread_tmp_1_i_i_fu_577_p2();
    void thread_tmp_20_fu_453_p1();
    void thread_tmp_21_fu_627_p1();
    void thread_tmp_22_fu_487_p1();
    void thread_tmp_23_fu_631_p4();
    void thread_tmp_25_fu_619_p3();
    void thread_tmp_2_fu_477_p4();
    void thread_tmp_2_i_i_fu_603_p1();
    void thread_tmp_2_trn_fu_409_p1();
    void thread_tmp_3_fu_365_p2();
    void thread_tmp_3_i_i_fu_607_p2();
    void thread_tmp_5_fu_214_p3();
    void thread_tmp_5_i_i_fu_613_p2();
    void thread_tmp_5_trn_cast_fu_370_p1();
    void thread_tmp_6_fu_439_p2();
    void thread_tmp_7_fu_503_p2();
    void thread_tmp_7_trn_fu_444_p1();
    void thread_tmp_8_to_int_fu_474_p1();
    void thread_tmp_9_fu_236_p3();
    void thread_tmp_fu_282_p3();
    void thread_tmp_i_i_fu_555_p1();
    void thread_tmp_i_i_i_cast1_fu_559_p1();
    void thread_tmp_s_fu_202_p3();
    void thread_tmp_trn_cast_fu_290_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
