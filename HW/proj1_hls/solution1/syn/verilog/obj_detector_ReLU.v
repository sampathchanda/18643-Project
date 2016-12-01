// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module obj_detector_ReLU (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        inp_address0,
        inp_ce0,
        inp_q0,
        tmp_2,
        out_r_address0,
        out_r_ce0,
        out_r_we0,
        out_r_d0,
        tmp_21
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 6'b1;
parameter    ap_ST_st2_fsm_1 = 6'b10;
parameter    ap_ST_st3_fsm_2 = 6'b100;
parameter    ap_ST_st4_fsm_3 = 6'b1000;
parameter    ap_ST_st5_fsm_4 = 6'b10000;
parameter    ap_ST_st6_fsm_5 = 6'b100000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv5_0 = 5'b00000;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv5_18 = 5'b11000;
parameter    ap_const_lv5_1 = 5'b1;
parameter    ap_const_lv32_17 = 32'b10111;
parameter    ap_const_lv32_1E = 32'b11110;
parameter    ap_const_lv8_FF = 8'b11111111;
parameter    ap_const_lv23_0 = 23'b00000000000000000000000;
parameter    ap_const_lv5_2 = 5'b10;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] inp_address0;
output   inp_ce0;
input  [31:0] inp_q0;
input  [2:0] tmp_2;
output  [11:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [31:0] out_r_d0;
input  [2:0] tmp_21;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg inp_ce0;
reg out_r_ce0;
reg out_r_we0;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm = 6'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_24;
wire  signed [9:0] p_addr_cast_fu_145_p1;
reg  signed [9:0] p_addr_cast_reg_352;
wire  signed [9:0] p_addr12_cast_fu_179_p1;
reg  signed [9:0] p_addr12_cast_reg_357;
wire   [4:0] i_5_fu_189_p2;
reg   [4:0] i_5_reg_365;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_58;
wire  signed [31:0] p_addr2_fu_228_p2;
reg  signed [31:0] p_addr2_reg_370;
wire   [0:0] exitcond1_fu_183_p2;
wire  signed [31:0] p_addr15_fu_263_p2;
reg  signed [31:0] p_addr15_reg_375;
wire   [4:0] j_1_fu_275_p2;
reg   [4:0] j_1_reg_383;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_bdd_75;
wire   [0:0] exitcond_fu_269_p2;
wire  signed [31:0] p_addr16_fu_295_p2;
reg  signed [31:0] p_addr16_reg_393;
reg   [31:0] inp_load_reg_398;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_bdd_90;
wire   [0:0] tmp_331_fu_335_p2;
reg   [0:0] tmp_331_reg_405;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_bdd_99;
reg   [4:0] i_reg_88;
reg   [4:0] j_reg_99;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_bdd_113;
wire   [63:0] tmp_392_fu_290_p1;
wire   [63:0] tmp_394_fu_341_p1;
wire   [31:0] tmp_330_fu_110_p0;
wire   [31:0] tmp_330_fu_110_p1;
wire   [7:0] tmp_fu_115_p3;
wire   [5:0] tmp_385_fu_127_p3;
wire   [8:0] p_shl9_cast_fu_123_p1;
wire   [8:0] p_shl10_cast_fu_135_p1;
wire   [8:0] p_addr_fu_139_p2;
wire   [7:0] tmp_386_fu_149_p3;
wire   [5:0] tmp_387_fu_161_p3;
wire   [8:0] p_shl_cast_fu_157_p1;
wire   [8:0] p_shl11_cast_fu_169_p1;
wire   [8:0] p_addr12_fu_173_p2;
wire   [9:0] tmp_trn_cast_fu_195_p1;
wire  signed [9:0] p_addr1_fu_199_p2;
wire   [14:0] tmp_388_fu_204_p3;
wire   [12:0] tmp_389_fu_216_p3;
wire  signed [31:0] p_shl_fu_212_p1;
wire  signed [31:0] p_shl1_fu_224_p1;
wire  signed [9:0] p_addr13_fu_234_p2;
wire   [14:0] tmp_390_fu_239_p3;
wire   [12:0] tmp_391_fu_251_p3;
wire  signed [31:0] p_shl2_fu_247_p1;
wire  signed [31:0] p_shl3_fu_259_p1;
wire   [31:0] tmp_trn_fu_281_p1;
wire  signed [31:0] p_addr3_fu_285_p2;
wire   [31:0] inp_load_to_int_fu_300_p1;
wire   [7:0] tmp_s_fu_303_p4;
wire   [22:0] tmp_393_fu_313_p1;
wire   [0:0] notrhs_fu_323_p2;
wire   [0:0] notlhs_fu_317_p2;
wire   [0:0] tmp_329_fu_329_p2;
wire   [0:0] tmp_330_fu_110_p2;
wire   [4:0] tmp_330_fu_110_opcode;
reg   [5:0] ap_NS_fsm;


obj_detector_fcmp_32ns_32ns_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
obj_detector_fcmp_32ns_32ns_1_1_U13(
    .din0( tmp_330_fu_110_p0 ),
    .din1( tmp_330_fu_110_p1 ),
    .opcode( tmp_330_fu_110_opcode ),
    .dout( tmp_330_fu_110_p2 )
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
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & ~(ap_const_lv1_0 == exitcond_fu_269_p2))) begin
        i_reg_88 <= i_5_reg_365;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        i_reg_88 <= ap_const_lv5_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        j_reg_99 <= j_1_reg_383;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_183_p2 == ap_const_lv1_0))) begin
        j_reg_99 <= ap_const_lv5_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_5_reg_365 <= i_5_fu_189_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        inp_load_reg_398 <= inp_q0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        j_1_reg_383 <= j_1_fu_275_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        p_addr12_cast_reg_357[9 : 3] <= p_addr12_cast_fu_179_p1[9 : 3];
        p_addr_cast_reg_352[9 : 3] <= p_addr_cast_fu_145_p1[9 : 3];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_183_p2 == ap_const_lv1_0))) begin
        p_addr15_reg_375[31 : 3] <= p_addr15_fu_263_p2[31 : 3];
        p_addr2_reg_370[31 : 3] <= p_addr2_fu_228_p2[31 : 3];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & (ap_const_lv1_0 == exitcond_fu_269_p2))) begin
        p_addr16_reg_393 <= p_addr16_fu_295_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        tmp_331_reg_405 <= tmp_331_fu_335_p2;
    end
end

/// ap_done assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_cseq_ST_st2_fsm_1 or exitcond1_fu_183_p2)
begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_fu_183_p2 == ap_const_lv1_0)))) begin
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
always @ (ap_sig_cseq_ST_st2_fsm_1 or exitcond1_fu_183_p2)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_fu_183_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_24)
begin
    if (ap_sig_bdd_24) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_58)
begin
    if (ap_sig_bdd_58) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st3_fsm_2 assign process. ///
always @ (ap_sig_bdd_75)
begin
    if (ap_sig_bdd_75) begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st4_fsm_3 assign process. ///
always @ (ap_sig_bdd_90)
begin
    if (ap_sig_bdd_90) begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st5_fsm_4 assign process. ///
always @ (ap_sig_bdd_99)
begin
    if (ap_sig_bdd_99) begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st6_fsm_5 assign process. ///
always @ (ap_sig_bdd_113)
begin
    if (ap_sig_bdd_113) begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    end
end

/// inp_ce0 assign process. ///
always @ (ap_sig_cseq_ST_st3_fsm_2)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        inp_ce0 = ap_const_logic_1;
    end else begin
        inp_ce0 = ap_const_logic_0;
    end
end

/// out_r_ce0 assign process. ///
always @ (ap_sig_cseq_ST_st6_fsm_5)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        out_r_ce0 = ap_const_logic_1;
    end else begin
        out_r_ce0 = ap_const_logic_0;
    end
end

/// out_r_we0 assign process. ///
always @ (ap_sig_cseq_ST_st6_fsm_5)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        out_r_we0 = ap_const_logic_1;
    end else begin
        out_r_we0 = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm or exitcond1_fu_183_p2 or exitcond_fu_269_p2)
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
            if (~(exitcond1_fu_183_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : 
        begin
            if (~(ap_const_lv1_0 == exitcond_fu_269_p2)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st4_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : 
        begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : 
        begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_113 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_113 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_5]);
end

/// ap_sig_bdd_24 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_24 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_58 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_58 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_75 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_75 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_90 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_90 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_99 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_99 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_4]);
end
assign exitcond1_fu_183_p2 = (i_reg_88 == ap_const_lv5_18? 1'b1: 1'b0);
assign exitcond_fu_269_p2 = (j_reg_99 == ap_const_lv5_18? 1'b1: 1'b0);
assign i_5_fu_189_p2 = (i_reg_88 + ap_const_lv5_1);
assign inp_address0 = tmp_392_fu_290_p1;
assign inp_load_to_int_fu_300_p1 = inp_load_reg_398;
assign j_1_fu_275_p2 = (j_reg_99 + ap_const_lv5_1);
assign notlhs_fu_317_p2 = (tmp_s_fu_303_p4 != ap_const_lv8_FF? 1'b1: 1'b0);
assign notrhs_fu_323_p2 = (tmp_393_fu_313_p1 == ap_const_lv23_0? 1'b1: 1'b0);
assign out_r_address0 = tmp_394_fu_341_p1;
assign out_r_d0 = ((tmp_331_reg_405[0:0]===1'b1)? inp_load_reg_398: ap_const_lv32_0);
assign p_addr12_cast_fu_179_p1 = $signed(p_addr12_fu_173_p2);
assign p_addr12_fu_173_p2 = (p_shl_cast_fu_157_p1 - p_shl11_cast_fu_169_p1);
assign p_addr13_fu_234_p2 = ($signed(p_addr12_cast_reg_357) + $signed(tmp_trn_cast_fu_195_p1));
assign p_addr15_fu_263_p2 = ($signed(p_shl2_fu_247_p1) - $signed(p_shl3_fu_259_p1));
assign p_addr16_fu_295_p2 = ($signed(tmp_trn_fu_281_p1) + $signed(p_addr15_reg_375));
assign p_addr1_fu_199_p2 = ($signed(p_addr_cast_reg_352) + $signed(tmp_trn_cast_fu_195_p1));
assign p_addr2_fu_228_p2 = ($signed(p_shl_fu_212_p1) - $signed(p_shl1_fu_224_p1));
assign p_addr3_fu_285_p2 = ($signed(tmp_trn_fu_281_p1) + $signed(p_addr2_reg_370));
assign p_addr_cast_fu_145_p1 = $signed(p_addr_fu_139_p2);
assign p_addr_fu_139_p2 = (p_shl9_cast_fu_123_p1 - p_shl10_cast_fu_135_p1);
assign p_shl10_cast_fu_135_p1 = tmp_385_fu_127_p3;
assign p_shl11_cast_fu_169_p1 = tmp_387_fu_161_p3;
assign p_shl1_fu_224_p1 = $signed(tmp_389_fu_216_p3);
assign p_shl2_fu_247_p1 = $signed(tmp_390_fu_239_p3);
assign p_shl3_fu_259_p1 = $signed(tmp_391_fu_251_p3);
assign p_shl9_cast_fu_123_p1 = tmp_fu_115_p3;
assign p_shl_cast_fu_157_p1 = tmp_386_fu_149_p3;
assign p_shl_fu_212_p1 = $signed(tmp_388_fu_204_p3);
assign tmp_329_fu_329_p2 = (notrhs_fu_323_p2 | notlhs_fu_317_p2);
assign tmp_330_fu_110_opcode = ap_const_lv5_2;
assign tmp_330_fu_110_p0 = inp_load_reg_398;
assign tmp_330_fu_110_p1 = ap_const_lv32_0;
assign tmp_331_fu_335_p2 = (tmp_329_fu_329_p2 & tmp_330_fu_110_p2);
assign tmp_385_fu_127_p3 = {{tmp_2}, {ap_const_lv3_0}};
assign tmp_386_fu_149_p3 = {{tmp_21}, {ap_const_lv5_0}};
assign tmp_387_fu_161_p3 = {{tmp_21}, {ap_const_lv3_0}};
assign tmp_388_fu_204_p3 = {{p_addr1_fu_199_p2}, {ap_const_lv5_0}};
assign tmp_389_fu_216_p3 = {{p_addr1_fu_199_p2}, {ap_const_lv3_0}};
assign tmp_390_fu_239_p3 = {{p_addr13_fu_234_p2}, {ap_const_lv5_0}};
assign tmp_391_fu_251_p3 = {{p_addr13_fu_234_p2}, {ap_const_lv3_0}};
assign tmp_392_fu_290_p1 = $unsigned(p_addr3_fu_285_p2);
assign tmp_393_fu_313_p1 = inp_load_to_int_fu_300_p1[22:0];
assign tmp_394_fu_341_p1 = $unsigned(p_addr16_reg_393);
assign tmp_fu_115_p3 = {{tmp_2}, {ap_const_lv5_0}};
assign tmp_s_fu_303_p4 = {{inp_load_to_int_fu_300_p1[ap_const_lv32_1E : ap_const_lv32_17]}};
assign tmp_trn_cast_fu_195_p1 = i_reg_88;
assign tmp_trn_fu_281_p1 = j_reg_99;
always @ (posedge ap_clk)
begin
    p_addr_cast_reg_352[2:0] <= 3'b000;
    p_addr12_cast_reg_357[2:0] <= 3'b000;
    p_addr2_reg_370[2:0] <= 3'b000;
    p_addr15_reg_375[2:0] <= 3'b000;
end



endmodule //obj_detector_ReLU

