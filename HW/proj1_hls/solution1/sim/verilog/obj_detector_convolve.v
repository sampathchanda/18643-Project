// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module obj_detector_convolve (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_Addr_A,
        A_EN_A,
        A_WEN_A,
        A_Din_A,
        A_Dout_A,
        B_Addr_A,
        B_EN_A,
        B_WEN_A,
        B_Din_A,
        B_Dout_A,
        tmp,
        conv_address0,
        conv_ce0,
        conv_we0,
        conv_d0,
        tmp1
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 14'b1;
parameter    ap_ST_st2_fsm_1 = 14'b10;
parameter    ap_ST_st3_fsm_2 = 14'b100;
parameter    ap_ST_st4_fsm_3 = 14'b1000;
parameter    ap_ST_st5_fsm_4 = 14'b10000;
parameter    ap_ST_st6_fsm_5 = 14'b100000;
parameter    ap_ST_st7_fsm_6 = 14'b1000000;
parameter    ap_ST_st8_fsm_7 = 14'b10000000;
parameter    ap_ST_st9_fsm_8 = 14'b100000000;
parameter    ap_ST_st10_fsm_9 = 14'b1000000000;
parameter    ap_ST_st11_fsm_10 = 14'b10000000000;
parameter    ap_ST_st12_fsm_11 = 14'b100000000000;
parameter    ap_ST_st13_fsm_12 = 14'b1000000000000;
parameter    ap_ST_st14_fsm_13 = 14'b10000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_C = 32'b1100;
parameter    ap_const_lv5_2 = 5'b10;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv3_1 = 3'b1;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv5_0 = 5'b00000;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv5_1A = 5'b11010;
parameter    ap_const_lv5_1E = 5'b11110;
parameter    ap_const_lv5_1 = 5'b1;
parameter    ap_const_lv3_5 = 3'b101;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] A_Addr_A;
output   A_EN_A;
output  [3:0] A_WEN_A;
output  [31:0] A_Din_A;
input  [31:0] A_Dout_A;
output  [31:0] B_Addr_A;
output   B_EN_A;
output  [3:0] B_WEN_A;
output  [31:0] B_Din_A;
input  [31:0] B_Dout_A;
input  [2:0] tmp;
output  [11:0] conv_address0;
output   conv_ce0;
output   conv_we0;
output  [31:0] conv_d0;
input  [2:0] tmp1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg A_EN_A;
reg B_EN_A;
reg[11:0] conv_address0;
reg conv_ce0;
reg conv_we0;
reg[31:0] conv_d0;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm = 14'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_32;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_bdd_68;
reg    ap_sig_cseq_ST_st10_fsm_9;
reg    ap_sig_bdd_75;
wire  signed [9:0] p_addr15_cast_fu_271_p1;
reg  signed [9:0] p_addr15_cast_reg_568;
wire   [5:0] p_addr11_fu_291_p2;
reg   [5:0] p_addr11_reg_573;
wire  signed [4:0] tmp2_fu_303_p2;
reg  signed [4:0] tmp2_reg_581;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_93;
wire   [0:0] exitcond3_fu_297_p2;
wire  signed [31:0] p_addr16_fu_342_p2;
reg  signed [31:0] p_addr16_reg_586;
wire  signed [4:0] y_fu_354_p2;
reg  signed [4:0] y_reg_594;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_bdd_108;
wire   [0:0] exitcond2_fu_348_p2;
wire   [11:0] tmp_trn_cast_fu_364_p1;
reg   [11:0] tmp_trn_cast_reg_599;
reg   [11:0] conv_addr_reg_604;
wire   [4:0] i_4_fu_378_p2;
wire   [2:0] k_1_fu_394_p2;
reg   [2:0] k_1_reg_617;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_bdd_128;
wire  signed [11:0] p_addr3_cast_fu_438_p1;
reg  signed [11:0] p_addr3_cast_reg_622;
wire   [0:0] exitcond1_fu_388_p2;
wire   [31:0] p_addr13_fu_481_p2;
reg   [31:0] p_addr13_reg_632;
wire   [4:0] j_1_fu_498_p2;
wire   [31:0] grp_fu_225_p2;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_bdd_152;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_bdd_161;
wire   [0:0] exitcond_fu_508_p2;
wire   [2:0] tmp_10_fu_551_p2;
reg   [2:0] tmp_10_reg_665;
wire   [31:0] grp_fu_219_p2;
reg   [31:0] tmp_6_reg_670;
reg    ap_sig_cseq_ST_st13_fsm_12;
reg    ap_sig_bdd_177;
reg   [31:0] temp_1_reg_676;
reg   [4:0] i_reg_139;
reg   [4:0] j_reg_151;
reg   [31:0] tmp_1_reg_163;
reg   [2:0] k_reg_175;
reg   [31:0] tmp_5_reg_186;
reg    ap_sig_cseq_ST_st14_fsm_13;
reg    ap_sig_bdd_199;
reg   [2:0] l_3_reg_198;
reg   [31:0] temp1_reg_209;
wire   [63:0] tmp_57_fu_373_p1;
wire   [63:0] tmp_60_fu_451_p1;
wire  signed [63:0] tmp_62_fu_493_p1;
wire   [63:0] tmp_63_fu_532_p1;
wire   [63:0] tmp_64_fu_546_p1;
wire   [31:0] l_fu_70;
reg   [31:0] A_Addr_A_orig;
reg   [31:0] B_Addr_A_orig;
wire   [31:0] grp_fu_219_p0;
wire   [31:0] grp_fu_219_p1;
wire   [31:0] grp_fu_225_p0;
wire   [31:0] grp_fu_225_p1;
wire   [7:0] tmp_s_fu_241_p3;
wire   [5:0] tmp_54_fu_253_p3;
wire   [8:0] p_shl8_cast_fu_249_p1;
wire   [8:0] p_shl9_cast_fu_261_p1;
wire   [8:0] p_addr15_fu_265_p2;
wire   [4:0] tmp_55_fu_279_p3;
wire   [5:0] tmp_cast_trn9_cast_fu_275_p1;
wire   [5:0] p_shl_cast_fu_287_p1;
wire   [9:0] tmp_8_trn_cast_fu_309_p1;
wire  signed [9:0] p_addr_fu_313_p2;
wire   [14:0] tmp_53_fu_318_p3;
wire   [12:0] tmp_56_fu_330_p3;
wire  signed [31:0] p_shl_fu_326_p1;
wire  signed [31:0] p_shl1_fu_338_p1;
wire   [31:0] tmp_trn_fu_360_p1;
wire  signed [31:0] p_addr17_fu_368_p2;
wire   [4:0] k_cast4_fu_384_p1;
wire  signed [4:0] x_fu_403_p2;
wire   [9:0] tmp_58_fu_408_p3;
wire   [6:0] tmp_59_fu_420_p3;
wire   [10:0] p_shl12_cast_fu_416_p1;
wire   [10:0] p_shl13_cast_fu_428_p1;
wire   [10:0] p_addr3_fu_432_p2;
wire  signed [11:0] p_addr4_fu_442_p2;
wire  signed [31:0] p_addr4_cast_fu_447_p1;
wire   [5:0] tmp_4_trn_cast_fu_456_p1;
wire   [5:0] p_addr12_fu_460_p2;
wire   [7:0] tmp_61_fu_469_p3;
wire   [31:0] p_addr12_cast_fu_465_p1;
wire   [31:0] p_shl2_fu_477_p1;
wire   [31:0] p_addr14_fu_487_p2;
wire   [4:0] l_3_cast2_fu_504_p1;
wire  signed [4:0] y_1_fu_514_p2;
wire   [11:0] tmp_7_trn_cast_fu_519_p1;
wire  signed [11:0] p_addr1_fu_523_p2;
wire  signed [31:0] p_addr1_cast_fu_528_p1;
wire   [31:0] tmp_9_trn_fu_537_p1;
wire   [31:0] p_addr8_fu_541_p2;
wire    grp_fu_219_ce;
wire    grp_fu_225_ce;
reg   [13:0] ap_NS_fsm;


obj_detector_fadd_32ns_32ns_32_5_full_dsp #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
obj_detector_fadd_32ns_32ns_32_5_full_dsp_U0(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_219_p0 ),
    .din1( grp_fu_219_p1 ),
    .ce( grp_fu_219_ce ),
    .dout( grp_fu_219_p2 )
);

obj_detector_fmul_32ns_32ns_32_4_max_dsp #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
obj_detector_fmul_32ns_32ns_32_4_max_dsp_U1(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_225_p0 ),
    .din1( grp_fu_225_p1 ),
    .ce( grp_fu_225_ce ),
    .dout( grp_fu_225_p2 )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & ~(ap_const_lv1_0 == exitcond2_fu_348_p2))) begin
        i_reg_139 <= i_4_fu_378_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        i_reg_139 <= ap_const_lv5_2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond3_fu_297_p2 == ap_const_lv1_0))) begin
        j_reg_151 <= ap_const_lv5_2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & ~(ap_const_lv1_0 == exitcond1_fu_388_p2))) begin
        j_reg_151 <= j_1_fu_498_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8) & ~(ap_const_lv1_0 == exitcond_fu_508_p2))) begin
        k_reg_175 <= k_1_reg_617;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & (ap_const_lv1_0 == exitcond2_fu_348_p2))) begin
        k_reg_175 <= ap_const_lv3_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        l_3_reg_198 <= tmp_10_reg_665;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        l_3_reg_198 <= ap_const_lv3_1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        temp1_reg_209 <= temp_1_reg_676;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        temp1_reg_209 <= grp_fu_225_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8) & ~(ap_const_lv1_0 == exitcond_fu_508_p2))) begin
        tmp_1_reg_163 <= tmp_5_reg_186;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & (ap_const_lv1_0 == exitcond2_fu_348_p2))) begin
        tmp_1_reg_163 <= ap_const_lv32_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        tmp_5_reg_186 <= tmp_6_reg_670;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        tmp_5_reg_186 <= tmp_1_reg_163;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & (ap_const_lv1_0 == exitcond2_fu_348_p2))) begin
        conv_addr_reg_604 <= tmp_57_fu_373_p1;
        tmp_trn_cast_reg_599[4 : 0] <= tmp_trn_cast_fu_364_p1[4 : 0];
        y_reg_594 <= y_fu_354_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        k_1_reg_617 <= k_1_fu_394_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        p_addr11_reg_573 <= p_addr11_fu_291_p2;
        p_addr15_cast_reg_568[9 : 3] <= p_addr15_cast_fu_271_p1[9 : 3];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) & (ap_const_lv1_0 == exitcond1_fu_388_p2))) begin
        p_addr13_reg_632 <= p_addr13_fu_481_p2;
        p_addr3_cast_reg_622[11 : 2] <= p_addr3_cast_fu_438_p1[11 : 2];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond3_fu_297_p2 == ap_const_lv1_0))) begin
        p_addr16_reg_586[31 : 3] <= p_addr16_fu_342_p2[31 : 3];
        tmp2_reg_581 <= tmp2_fu_303_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st13_fsm_12)) begin
        temp_1_reg_676 <= grp_fu_225_p2;
        tmp_6_reg_670 <= grp_fu_219_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8) & (ap_const_lv1_0 == exitcond_fu_508_p2))) begin
        tmp_10_reg_665 <= tmp_10_fu_551_p2;
    end
end

/// A_Addr_A_orig assign process. ///
always @ (ap_sig_cseq_ST_st4_fsm_3 or ap_sig_cseq_ST_st9_fsm_8 or tmp_60_fu_451_p1 or tmp_63_fu_532_p1)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        A_Addr_A_orig = tmp_63_fu_532_p1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        A_Addr_A_orig = tmp_60_fu_451_p1;
    end else begin
        A_Addr_A_orig = 'bx;
    end
end

/// A_EN_A assign process. ///
always @ (ap_sig_cseq_ST_st4_fsm_3 or ap_sig_cseq_ST_st9_fsm_8)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) | (ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8))) begin
        A_EN_A = ap_const_logic_1;
    end else begin
        A_EN_A = ap_const_logic_0;
    end
end

/// B_Addr_A_orig assign process. ///
always @ (ap_sig_cseq_ST_st4_fsm_3 or ap_sig_cseq_ST_st9_fsm_8 or tmp_62_fu_493_p1 or tmp_64_fu_546_p1)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        B_Addr_A_orig = tmp_64_fu_546_p1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        B_Addr_A_orig = tmp_62_fu_493_p1;
    end else begin
        B_Addr_A_orig = 'bx;
    end
end

/// B_EN_A assign process. ///
always @ (ap_sig_cseq_ST_st4_fsm_3 or ap_sig_cseq_ST_st9_fsm_8)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3) | (ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8))) begin
        B_EN_A = ap_const_logic_1;
    end else begin
        B_EN_A = ap_const_logic_0;
    end
end

/// ap_done assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_cseq_ST_st2_fsm_1 or exitcond3_fu_297_p2)
begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond3_fu_297_p2 == ap_const_lv1_0)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_sig_cseq_ST_st2_fsm_1 or exitcond3_fu_297_p2)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond3_fu_297_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st10_fsm_9 assign process. ///
always @ (ap_sig_bdd_75)
begin
    if (ap_sig_bdd_75) begin
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st13_fsm_12 assign process. ///
always @ (ap_sig_bdd_177)
begin
    if (ap_sig_bdd_177) begin
        ap_sig_cseq_ST_st13_fsm_12 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st13_fsm_12 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st14_fsm_13 assign process. ///
always @ (ap_sig_bdd_199)
begin
    if (ap_sig_bdd_199) begin
        ap_sig_cseq_ST_st14_fsm_13 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st14_fsm_13 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_32)
begin
    if (ap_sig_bdd_32) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_93)
begin
    if (ap_sig_bdd_93) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st3_fsm_2 assign process. ///
always @ (ap_sig_bdd_108)
begin
    if (ap_sig_bdd_108) begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st4_fsm_3 assign process. ///
always @ (ap_sig_bdd_128)
begin
    if (ap_sig_bdd_128) begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st5_fsm_4 assign process. ///
always @ (ap_sig_bdd_68)
begin
    if (ap_sig_bdd_68) begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st8_fsm_7 assign process. ///
always @ (ap_sig_bdd_152)
begin
    if (ap_sig_bdd_152) begin
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st9_fsm_8 assign process. ///
always @ (ap_sig_bdd_161)
begin
    if (ap_sig_bdd_161) begin
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_0;
    end
end

/// conv_address0 assign process. ///
always @ (ap_sig_cseq_ST_st3_fsm_2 or conv_addr_reg_604 or ap_sig_cseq_ST_st14_fsm_13 or tmp_57_fu_373_p1)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        conv_address0 = conv_addr_reg_604;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        conv_address0 = tmp_57_fu_373_p1;
    end else begin
        conv_address0 = 'bx;
    end
end

/// conv_ce0 assign process. ///
always @ (ap_sig_cseq_ST_st3_fsm_2 or ap_sig_cseq_ST_st14_fsm_13)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) | (ap_const_logic_1 == ap_sig_cseq_ST_st14_fsm_13))) begin
        conv_ce0 = ap_const_logic_1;
    end else begin
        conv_ce0 = ap_const_logic_0;
    end
end

/// conv_d0 assign process. ///
always @ (ap_sig_cseq_ST_st3_fsm_2 or tmp_6_reg_670 or ap_sig_cseq_ST_st14_fsm_13)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        conv_d0 = tmp_6_reg_670;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        conv_d0 = ap_const_lv32_0;
    end else begin
        conv_d0 = 'bx;
    end
end

/// conv_we0 assign process. ///
always @ (ap_sig_cseq_ST_st3_fsm_2 or exitcond2_fu_348_p2 or ap_sig_cseq_ST_st14_fsm_13)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & (ap_const_lv1_0 == exitcond2_fu_348_p2)) | (ap_const_logic_1 == ap_sig_cseq_ST_st14_fsm_13))) begin
        conv_we0 = ap_const_logic_1;
    end else begin
        conv_we0 = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm or exitcond3_fu_297_p2 or exitcond2_fu_348_p2 or exitcond1_fu_388_p2 or exitcond_fu_508_p2)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(exitcond3_fu_297_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : 
        begin
            if (~(ap_const_lv1_0 == exitcond2_fu_348_p2)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st4_fsm_3 : 
        begin
            if (~(ap_const_lv1_0 == exitcond1_fu_388_p2)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st5_fsm_4 : 
        begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : 
        begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
        end
        ap_ST_st7_fsm_6 : 
        begin
            ap_NS_fsm = ap_ST_st8_fsm_7;
        end
        ap_ST_st8_fsm_7 : 
        begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        ap_ST_st9_fsm_8 : 
        begin
            if (~(ap_const_lv1_0 == exitcond_fu_508_p2)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st10_fsm_9;
            end
        end
        ap_ST_st10_fsm_9 : 
        begin
            ap_NS_fsm = ap_ST_st11_fsm_10;
        end
        ap_ST_st11_fsm_10 : 
        begin
            ap_NS_fsm = ap_ST_st12_fsm_11;
        end
        ap_ST_st12_fsm_11 : 
        begin
            ap_NS_fsm = ap_ST_st13_fsm_12;
        end
        ap_ST_st13_fsm_12 : 
        begin
            ap_NS_fsm = ap_ST_st14_fsm_13;
        end
        ap_ST_st14_fsm_13 : 
        begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_Addr_A = A_Addr_A_orig << ap_const_lv32_2;
assign A_Din_A = ap_const_lv32_0;
assign A_WEN_A = ap_const_lv4_0;
assign B_Addr_A = B_Addr_A_orig << ap_const_lv32_2;
assign B_Din_A = ap_const_lv32_0;
assign B_WEN_A = ap_const_lv4_0;

/// ap_sig_bdd_108 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_108 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_128 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_128 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_152 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_152 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_7]);
end

/// ap_sig_bdd_161 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_161 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_8]);
end

/// ap_sig_bdd_177 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_177 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_C]);
end

/// ap_sig_bdd_199 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_199 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_D]);
end

/// ap_sig_bdd_32 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_32 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_68 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_68 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_4]);
end

/// ap_sig_bdd_75 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_75 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_9]);
end

/// ap_sig_bdd_93 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_93 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end
assign exitcond1_fu_388_p2 = (k_reg_175 == ap_const_lv3_5? 1'b1: 1'b0);
assign exitcond2_fu_348_p2 = (j_reg_151 == ap_const_lv5_1A? 1'b1: 1'b0);
assign exitcond3_fu_297_p2 = (i_reg_139 == ap_const_lv5_1A? 1'b1: 1'b0);
assign exitcond_fu_508_p2 = (l_3_reg_198 == ap_const_lv3_5? 1'b1: 1'b0);
assign grp_fu_219_ce = ap_const_logic_1;
assign grp_fu_219_p0 = tmp_5_reg_186;
assign grp_fu_219_p1 = temp1_reg_209;
assign grp_fu_225_ce = ap_const_logic_1;
assign grp_fu_225_p0 = A_Dout_A;
assign grp_fu_225_p1 = B_Dout_A;
assign i_4_fu_378_p2 = (i_reg_139 + ap_const_lv5_1);
assign j_1_fu_498_p2 = (j_reg_151 + ap_const_lv5_1);
assign k_1_fu_394_p2 = (k_reg_175 + ap_const_lv3_1);
assign k_cast4_fu_384_p1 = k_reg_175;
assign l_3_cast2_fu_504_p1 = l_3_reg_198;
assign l_fu_70 = ap_const_lv32_5;
assign p_addr11_fu_291_p2 = (tmp_cast_trn9_cast_fu_275_p1 + p_shl_cast_fu_287_p1);
assign p_addr12_cast_fu_465_p1 = p_addr12_fu_460_p2;
assign p_addr12_fu_460_p2 = (p_addr11_reg_573 + tmp_4_trn_cast_fu_456_p1);
assign p_addr13_fu_481_p2 = (p_addr12_cast_fu_465_p1 + p_shl2_fu_477_p1);
assign p_addr14_fu_487_p2 = (p_addr13_fu_481_p2 + l_fu_70);
assign p_addr15_cast_fu_271_p1 = $signed(p_addr15_fu_265_p2);
assign p_addr15_fu_265_p2 = (p_shl8_cast_fu_249_p1 - p_shl9_cast_fu_261_p1);
assign p_addr16_fu_342_p2 = ($signed(p_shl_fu_326_p1) - $signed(p_shl1_fu_338_p1));
assign p_addr17_fu_368_p2 = ($signed(tmp_trn_fu_360_p1) + $signed(p_addr16_reg_586));
assign p_addr1_cast_fu_528_p1 = p_addr1_fu_523_p2;
assign p_addr1_fu_523_p2 = ($signed(tmp_7_trn_cast_fu_519_p1) + $signed(p_addr3_cast_reg_622));
assign p_addr3_cast_fu_438_p1 = $signed(p_addr3_fu_432_p2);
assign p_addr3_fu_432_p2 = (p_shl12_cast_fu_416_p1 - p_shl13_cast_fu_428_p1);
assign p_addr4_cast_fu_447_p1 = p_addr4_fu_442_p2;
assign p_addr4_fu_442_p2 = ($signed(p_addr3_cast_fu_438_p1) + $signed(tmp_trn_cast_reg_599));
assign p_addr8_fu_541_p2 = (tmp_9_trn_fu_537_p1 + p_addr13_reg_632);
assign p_addr_fu_313_p2 = ($signed(p_addr15_cast_reg_568) + $signed(tmp_8_trn_cast_fu_309_p1));
assign p_shl12_cast_fu_416_p1 = tmp_58_fu_408_p3;
assign p_shl13_cast_fu_428_p1 = tmp_59_fu_420_p3;
assign p_shl1_fu_338_p1 = $signed(tmp_56_fu_330_p3);
assign p_shl2_fu_477_p1 = tmp_61_fu_469_p3;
assign p_shl8_cast_fu_249_p1 = tmp_s_fu_241_p3;
assign p_shl9_cast_fu_261_p1 = tmp_54_fu_253_p3;
assign p_shl_cast_fu_287_p1 = tmp_55_fu_279_p3;
assign p_shl_fu_326_p1 = $signed(tmp_53_fu_318_p3);
assign tmp2_fu_303_p2 = ($signed(i_reg_139) + $signed(ap_const_lv5_1E));
assign tmp_10_fu_551_p2 = (l_3_reg_198 + ap_const_lv3_1);
assign tmp_4_trn_cast_fu_456_p1 = k_reg_175;
assign tmp_53_fu_318_p3 = {{p_addr_fu_313_p2}, {ap_const_lv5_0}};
assign tmp_54_fu_253_p3 = {{tmp1}, {ap_const_lv3_0}};
assign tmp_55_fu_279_p3 = {{tmp}, {ap_const_lv2_0}};
assign tmp_56_fu_330_p3 = {{p_addr_fu_313_p2}, {ap_const_lv3_0}};
assign tmp_57_fu_373_p1 = $unsigned(p_addr17_fu_368_p2);
assign tmp_58_fu_408_p3 = {{x_fu_403_p2}, {ap_const_lv5_0}};
assign tmp_59_fu_420_p3 = {{x_fu_403_p2}, {ap_const_lv2_0}};
assign tmp_60_fu_451_p1 = $unsigned(p_addr4_cast_fu_447_p1);
assign tmp_61_fu_469_p3 = {{p_addr12_fu_460_p2}, {ap_const_lv2_0}};
assign tmp_62_fu_493_p1 = $signed(p_addr14_fu_487_p2);
assign tmp_63_fu_532_p1 = $unsigned(p_addr1_cast_fu_528_p1);
assign tmp_64_fu_546_p1 = p_addr8_fu_541_p2;
assign tmp_7_trn_cast_fu_519_p1 = $unsigned(y_1_fu_514_p2);
assign tmp_8_trn_cast_fu_309_p1 = $unsigned(tmp2_fu_303_p2);
assign tmp_9_trn_fu_537_p1 = l_3_reg_198;
assign tmp_cast_trn9_cast_fu_275_p1 = tmp;
assign tmp_s_fu_241_p3 = {{tmp1}, {ap_const_lv5_0}};
assign tmp_trn_cast_fu_364_p1 = $unsigned(y_fu_354_p2);
assign tmp_trn_fu_360_p1 = $unsigned(y_fu_354_p2);
assign x_fu_403_p2 = ($signed(k_cast4_fu_384_p1) + $signed(tmp2_reg_581));
assign y_1_fu_514_p2 = ($signed(y_reg_594) + $signed(l_3_cast2_fu_504_p1));
assign y_fu_354_p2 = ($signed(j_reg_151) + $signed(ap_const_lv5_1E));
always @ (posedge ap_clk)
begin
    p_addr15_cast_reg_568[2:0] <= 3'b000;
    p_addr16_reg_586[2:0] <= 3'b000;
    tmp_trn_cast_reg_599[11:5] <= 7'b0000000;
    p_addr3_cast_reg_622[1:0] <= 2'b00;
end



endmodule //obj_detector_convolve

