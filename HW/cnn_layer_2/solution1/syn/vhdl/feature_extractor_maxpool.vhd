-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.2
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity feature_extractor_maxpool is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_mat_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    input_mat_ce0 : OUT STD_LOGIC;
    input_mat_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    tmp_4 : IN STD_LOGIC_VECTOR (1 downto 0);
    output_mat_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    output_mat_ce0 : OUT STD_LOGIC;
    output_mat_we0 : OUT STD_LOGIC;
    output_mat_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    tmp_41 : IN STD_LOGIC_VECTOR (1 downto 0) );
end;


architecture behav of feature_extractor_maxpool is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (11 downto 0) := "000000001000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (11 downto 0) := "000000010000";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (11 downto 0) := "000000100000";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (11 downto 0) := "000001000000";
    constant ap_ST_st8_fsm_7 : STD_LOGIC_VECTOR (11 downto 0) := "000010000000";
    constant ap_ST_st9_fsm_8 : STD_LOGIC_VECTOR (11 downto 0) := "000100000000";
    constant ap_ST_st10_fsm_9 : STD_LOGIC_VECTOR (11 downto 0) := "001000000000";
    constant ap_ST_st11_fsm_10 : STD_LOGIC_VECTOR (11 downto 0) := "010000000000";
    constant ap_ST_st12_fsm_11 : STD_LOGIC_VECTOR (11 downto 0) := "100000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv9_181 : STD_LOGIC_VECTOR (8 downto 0) := "110000001";
    constant ap_const_lv8_7F : STD_LOGIC_VECTOR (7 downto 0) := "01111111";
    constant ap_const_lv32_36 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110110";
    constant ap_const_lv5_2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_30 : BOOLEAN;
    signal p_addr4_cast_fu_192_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_addr4_cast_reg_536 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_2_fu_202_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_2_reg_544 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_64 : BOOLEAN;
    signal tmp_fu_208_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_reg_549 : STD_LOGIC_VECTOR (2 downto 0);
    signal exitcond3_fu_196_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_addr6_fu_231_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_addr6_reg_554 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_2_fu_241_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_2_reg_562 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_81 : BOOLEAN;
    signal tmp_9_fu_247_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_9_reg_567 : STD_LOGIC_VECTOR (2 downto 0);
    signal exitcond2_fu_235_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_2_fu_263_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal k_2_reg_575 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_95 : BOOLEAN;
    signal tmp_2_fu_269_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_2_reg_580 : STD_LOGIC_VECTOR (2 downto 0);
    signal exitcond1_fu_257_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal l_1_fu_298_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal l_1_reg_588 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_4 : STD_LOGIC;
    signal ap_sig_bdd_109 : BOOLEAN;
    signal tmp_5_fu_304_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_5_reg_593 : STD_LOGIC_VECTOR (2 downto 0);
    signal exitcond_fu_292_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st9_fsm_8 : STD_LOGIC;
    signal ap_sig_bdd_123 : BOOLEAN;
    signal input_mat_load_reg_603 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st10_fsm_9 : STD_LOGIC;
    signal ap_sig_bdd_131 : BOOLEAN;
    signal grp_fu_176_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_7_reg_609 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_13_fu_397_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_13_reg_615 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st11_fsm_10 : STD_LOGIC;
    signal ap_sig_bdd_142 : BOOLEAN;
    signal p_Result_s_reg_620 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_4_fu_505_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_4_reg_625 : STD_LOGIC_VECTOR (31 downto 0);
    signal max_2_fu_524_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st12_fsm_11 : STD_LOGIC;
    signal ap_sig_bdd_155 : BOOLEAN;
    signal i_reg_106 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_reg_117 : STD_LOGIC_VECTOR (2 downto 0);
    signal max_reg_129 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_reg_142 : STD_LOGIC_VECTOR (1 downto 0);
    signal max_1_reg_153 : STD_LOGIC_VECTOR (31 downto 0);
    signal l_reg_165 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_3_fu_283_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_15_fu_316_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_176_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_12_fu_180_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_12_fu_180_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_fu_184_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_trn_cast_fu_214_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_addr5_fu_218_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_8_fu_223_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal k_cast_fu_253_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_1_trn_fu_274_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_addr7_fu_278_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal l_cast_fu_288_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_14_fu_309_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Val2_1_fu_321_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_7_to_int_fu_338_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal loc_V_fu_324_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal loc_V_1_fu_334_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal notrhs_fu_361_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal notlhs_fu_355_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_341_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_17_fu_351_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal notrhs2_fu_379_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal notlhs1_fu_373_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_fu_367_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_10_fu_385_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_11_fu_391_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_12_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_1_fu_411_p3 : STD_LOGIC_VECTOR (23 downto 0);
    signal tmp_i_i_i_cast1_fu_423_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sh_assign_fu_427_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_1_i_i_fu_441_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal isNeg_fu_433_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_i_i_cast_fu_447_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sh_assign_1_fu_451_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal sh_assign_1_cast_fu_459_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sh_assign_1_cast_cast_fu_463_p1 : STD_LOGIC_VECTOR (23 downto 0);
    signal tmp_i_i_fu_419_p1 : STD_LOGIC_VECTOR (77 downto 0);
    signal tmp_2_i_i_fu_467_p1 : STD_LOGIC_VECTOR (77 downto 0);
    signal tmp_3_i_i_fu_471_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal tmp_20_fu_483_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_i_i_fu_477_p2 : STD_LOGIC_VECTOR (77 downto 0);
    signal tmp_16_fu_491_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_18_fu_495_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_7_i_i_fu_513_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_s_fu_518_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_176_ce : STD_LOGIC;
    signal tmp_12_fu_180_opcode : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (11 downto 0);

    component feature_extractor_sitofp_32ns_32_6 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component feature_extractor_fcmp_32ns_32ns_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        opcode : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;



begin
    feature_extractor_sitofp_32ns_32_6_U9 : component feature_extractor_sitofp_32ns_32_6
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_176_p0,
        ce => grp_fu_176_ce,
        dout => grp_fu_176_p1);

    feature_extractor_fcmp_32ns_32ns_1_1_U10 : component feature_extractor_fcmp_32ns_32ns_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 1)
    port map (
        din0 => tmp_12_fu_180_p0,
        din1 => tmp_12_fu_180_p1,
        opcode => tmp_12_fu_180_opcode,
        dout => tmp_12_fu_180_p2);





    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- i_reg_106 assign process. --
    i_reg_106_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((ap_const_lv1_0 = exitcond2_fu_235_p2)))) then 
                i_reg_106 <= i_2_reg_544;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                i_reg_106 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    -- j_reg_117 assign process. --
    j_reg_117_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond3_fu_196_p2 = ap_const_lv1_0))) then 
                j_reg_117 <= ap_const_lv3_0;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not((ap_const_lv1_0 = exitcond1_fu_257_p2)))) then 
                j_reg_117 <= j_2_reg_562;
            end if; 
        end if;
    end process;

    -- k_reg_142 assign process. --
    k_reg_142_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and not((ap_const_lv1_0 = exitcond_fu_292_p2)))) then 
                k_reg_142 <= k_2_reg_575;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (ap_const_lv1_0 = exitcond2_fu_235_p2))) then 
                k_reg_142 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    -- l_reg_165 assign process. --
    l_reg_165_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (ap_const_lv1_0 = exitcond1_fu_257_p2))) then 
                l_reg_165 <= ap_const_lv2_0;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st12_fsm_11)) then 
                l_reg_165 <= l_1_reg_588;
            end if; 
        end if;
    end process;

    -- max_1_reg_153 assign process. --
    max_1_reg_153_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (ap_const_lv1_0 = exitcond1_fu_257_p2))) then 
                max_1_reg_153 <= max_reg_129;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st12_fsm_11)) then 
                max_1_reg_153 <= max_2_fu_524_p3;
            end if; 
        end if;
    end process;

    -- max_reg_129 assign process. --
    max_reg_129_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and not((ap_const_lv1_0 = exitcond_fu_292_p2)))) then 
                max_reg_129 <= max_1_reg_153;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (ap_const_lv1_0 = exitcond2_fu_235_p2))) then 
                max_reg_129 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                i_2_reg_544 <= i_2_fu_202_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st10_fsm_9)) then
                input_mat_load_reg_603 <= input_mat_q0;
                tmp_7_reg_609 <= grp_fu_176_p1;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then
                j_2_reg_562 <= j_2_fu_241_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then
                k_2_reg_575 <= k_2_fu_263_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then
                l_1_reg_588 <= l_1_fu_298_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st11_fsm_10)) then
                p_Result_s_reg_620 <= p_Val2_1_fu_321_p1(31 downto 31);
                p_Val2_4_reg_625 <= p_Val2_4_fu_505_p3;
                tmp_13_reg_615 <= tmp_13_fu_397_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then
                    p_addr4_cast_reg_536(3 downto 2) <= p_addr4_cast_fu_192_p1(3 downto 2);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond3_fu_196_p2 = ap_const_lv1_0))) then
                    p_addr6_reg_554(6 downto 2) <= p_addr6_fu_231_p1(6 downto 2);
                    tmp_reg_549(2 downto 1) <= tmp_fu_208_p2(2 downto 1);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (ap_const_lv1_0 = exitcond1_fu_257_p2))) then
                tmp_2_reg_580 <= tmp_2_fu_269_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and (ap_const_lv1_0 = exitcond_fu_292_p2))) then
                tmp_5_reg_593 <= tmp_5_fu_304_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (ap_const_lv1_0 = exitcond2_fu_235_p2))) then
                    tmp_9_reg_567(2 downto 1) <= tmp_9_fu_247_p2(2 downto 1);
            end if;
        end if;
    end process;
    p_addr4_cast_reg_536(1 downto 0) <= "00";
    p_addr4_cast_reg_536(4) <= '0';
    tmp_reg_549(0) <= '0';
    p_addr6_reg_554(1 downto 0) <= "00";
    p_addr6_reg_554(31 downto 7) <= "0000000000000000000000000";
    tmp_9_reg_567(0) <= '0';

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond3_fu_196_p2, exitcond2_fu_235_p2, exitcond1_fu_257_p2, exitcond_fu_292_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((exitcond3_fu_196_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                if ((ap_const_lv1_0 = exitcond2_fu_235_p2)) then
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                else
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                end if;
            when ap_ST_st4_fsm_3 => 
                if (not((ap_const_lv1_0 = exitcond1_fu_257_p2))) then
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                else
                    ap_NS_fsm <= ap_ST_st5_fsm_4;
                end if;
            when ap_ST_st5_fsm_4 => 
                if ((ap_const_lv1_0 = exitcond_fu_292_p2)) then
                    ap_NS_fsm <= ap_ST_st6_fsm_5;
                else
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                end if;
            when ap_ST_st6_fsm_5 => 
                ap_NS_fsm <= ap_ST_st7_fsm_6;
            when ap_ST_st7_fsm_6 => 
                ap_NS_fsm <= ap_ST_st8_fsm_7;
            when ap_ST_st8_fsm_7 => 
                ap_NS_fsm <= ap_ST_st9_fsm_8;
            when ap_ST_st9_fsm_8 => 
                ap_NS_fsm <= ap_ST_st10_fsm_9;
            when ap_ST_st10_fsm_9 => 
                ap_NS_fsm <= ap_ST_st11_fsm_10;
            when ap_ST_st11_fsm_10 => 
                ap_NS_fsm <= ap_ST_st12_fsm_11;
            when ap_ST_st12_fsm_11 => 
                ap_NS_fsm <= ap_ST_st5_fsm_4;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0, ap_sig_cseq_ST_st2_fsm_1, exitcond3_fu_196_p2)
    begin
        if (((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond3_fu_196_p2 = ap_const_lv1_0))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond3_fu_196_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond3_fu_196_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_bdd_109 assign process. --
    ap_sig_bdd_109_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_109 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    -- ap_sig_bdd_123 assign process. --
    ap_sig_bdd_123_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_123 <= (ap_const_lv1_1 = ap_CS_fsm(8 downto 8));
    end process;


    -- ap_sig_bdd_131 assign process. --
    ap_sig_bdd_131_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_131 <= (ap_const_lv1_1 = ap_CS_fsm(9 downto 9));
    end process;


    -- ap_sig_bdd_142 assign process. --
    ap_sig_bdd_142_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_142 <= (ap_const_lv1_1 = ap_CS_fsm(10 downto 10));
    end process;


    -- ap_sig_bdd_155 assign process. --
    ap_sig_bdd_155_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_155 <= (ap_const_lv1_1 = ap_CS_fsm(11 downto 11));
    end process;


    -- ap_sig_bdd_30 assign process. --
    ap_sig_bdd_30_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_30 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_64 assign process. --
    ap_sig_bdd_64_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_64 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_bdd_81 assign process. --
    ap_sig_bdd_81_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_81 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_95 assign process. --
    ap_sig_bdd_95_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_95 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_cseq_ST_st10_fsm_9 assign process. --
    ap_sig_cseq_ST_st10_fsm_9_assign_proc : process(ap_sig_bdd_131)
    begin
        if (ap_sig_bdd_131) then 
            ap_sig_cseq_ST_st10_fsm_9 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st10_fsm_9 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st11_fsm_10 assign process. --
    ap_sig_cseq_ST_st11_fsm_10_assign_proc : process(ap_sig_bdd_142)
    begin
        if (ap_sig_bdd_142) then 
            ap_sig_cseq_ST_st11_fsm_10 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st11_fsm_10 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st12_fsm_11 assign process. --
    ap_sig_cseq_ST_st12_fsm_11_assign_proc : process(ap_sig_bdd_155)
    begin
        if (ap_sig_bdd_155) then 
            ap_sig_cseq_ST_st12_fsm_11 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st12_fsm_11 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_30)
    begin
        if (ap_sig_bdd_30) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm_1 assign process. --
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_64)
    begin
        if (ap_sig_bdd_64) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st3_fsm_2 assign process. --
    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_bdd_81)
    begin
        if (ap_sig_bdd_81) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st4_fsm_3 assign process. --
    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_bdd_95)
    begin
        if (ap_sig_bdd_95) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st5_fsm_4 assign process. --
    ap_sig_cseq_ST_st5_fsm_4_assign_proc : process(ap_sig_bdd_109)
    begin
        if (ap_sig_bdd_109) then 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st9_fsm_8 assign process. --
    ap_sig_cseq_ST_st9_fsm_8_assign_proc : process(ap_sig_bdd_123)
    begin
        if (ap_sig_bdd_123) then 
            ap_sig_cseq_ST_st9_fsm_8 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st9_fsm_8 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_257_p2 <= "1" when (k_reg_142 = ap_const_lv2_2) else "0";
    exitcond2_fu_235_p2 <= "1" when (j_reg_117 = ap_const_lv3_4) else "0";
    exitcond3_fu_196_p2 <= "1" when (i_reg_106 = ap_const_lv3_4) else "0";
    exitcond_fu_292_p2 <= "1" when (l_reg_165 = ap_const_lv2_2) else "0";
    grp_fu_176_ce <= ap_const_logic_1;
    grp_fu_176_p0 <= max_1_reg_153;
    i_2_fu_202_p2 <= std_logic_vector(unsigned(i_reg_106) + unsigned(ap_const_lv3_1));
    input_mat_address0 <= tmp_15_fu_316_p1(8 - 1 downto 0);

    -- input_mat_ce0 assign process. --
    input_mat_ce0_assign_proc : process(ap_sig_cseq_ST_st9_fsm_8)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st9_fsm_8)) then 
            input_mat_ce0 <= ap_const_logic_1;
        else 
            input_mat_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    isNeg_fu_433_p3 <= sh_assign_fu_427_p2(8 downto 8);
    j_2_fu_241_p2 <= std_logic_vector(unsigned(j_reg_117) + unsigned(ap_const_lv3_1));
    k_2_fu_263_p2 <= std_logic_vector(unsigned(k_reg_142) + unsigned(ap_const_lv2_1));
    k_cast_fu_253_p1 <= std_logic_vector(resize(unsigned(k_reg_142),3));
    l_1_fu_298_p2 <= std_logic_vector(unsigned(l_reg_165) + unsigned(ap_const_lv2_1));
    l_cast_fu_288_p1 <= std_logic_vector(resize(unsigned(l_reg_165),3));
    loc_V_1_fu_334_p1 <= p_Val2_1_fu_321_p1(23 - 1 downto 0);
    loc_V_fu_324_p4 <= p_Val2_1_fu_321_p1(30 downto 23);
    max_2_fu_524_p3 <= 
        p_Val2_s_fu_518_p3 when (tmp_13_reg_615(0) = '1') else 
        max_1_reg_153;
    notlhs1_fu_373_p2 <= "0" when (tmp_1_fu_341_p4 = ap_const_lv8_FF) else "1";
    notlhs_fu_355_p2 <= "0" when (loc_V_fu_324_p4 = ap_const_lv8_FF) else "1";
    notrhs2_fu_379_p2 <= "1" when (tmp_17_fu_351_p1 = ap_const_lv23_0) else "0";
    notrhs_fu_361_p2 <= "1" when (loc_V_1_fu_334_p1 = ap_const_lv23_0) else "0";
    output_mat_address0 <= tmp_3_fu_283_p1(6 - 1 downto 0);

    -- output_mat_ce0 assign process. --
    output_mat_ce0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            output_mat_ce0 <= ap_const_logic_1;
        else 
            output_mat_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_mat_d0 <= max_reg_129;

    -- output_mat_we0 assign process. --
    output_mat_we0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3, exitcond1_fu_257_p2)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not((ap_const_lv1_0 = exitcond1_fu_257_p2))))) then 
            output_mat_we0 <= ap_const_logic_1;
        else 
            output_mat_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_Result_1_fu_411_p3 <= (ap_const_lv1_1 & loc_V_1_fu_334_p1);
    p_Val2_1_fu_321_p1 <= input_mat_load_reg_603;
    p_Val2_4_fu_505_p3 <= 
        tmp_16_fu_491_p1 when (isNeg_fu_433_p3(0) = '1') else 
        tmp_18_fu_495_p4;
    p_Val2_7_i_i_fu_513_p2 <= std_logic_vector(unsigned(ap_const_lv32_0) - unsigned(p_Val2_4_reg_625));
    p_Val2_s_fu_518_p3 <= 
        p_Val2_7_i_i_fu_513_p2 when (p_Result_s_reg_620(0) = '1') else 
        p_Val2_4_reg_625;
    p_addr4_cast_fu_192_p1 <= std_logic_vector(resize(unsigned(tmp_s_fu_184_p3),5));
    p_addr5_fu_218_p2 <= std_logic_vector(unsigned(p_addr4_cast_reg_536) + unsigned(tmp_trn_cast_fu_214_p1));
    p_addr6_fu_231_p1 <= std_logic_vector(resize(unsigned(tmp_8_fu_223_p3),32));
    p_addr7_fu_278_p2 <= std_logic_vector(unsigned(p_addr6_reg_554) + unsigned(tmp_1_trn_fu_274_p1));
        sh_assign_1_cast_cast_fu_463_p1 <= std_logic_vector(resize(signed(sh_assign_1_fu_451_p3),24));

        sh_assign_1_cast_fu_459_p1 <= std_logic_vector(resize(signed(sh_assign_1_fu_451_p3),32));

    sh_assign_1_fu_451_p3 <= 
        tmp_1_i_i_cast_fu_447_p1 when (isNeg_fu_433_p3(0) = '1') else 
        sh_assign_fu_427_p2;
    sh_assign_fu_427_p2 <= std_logic_vector(signed(ap_const_lv9_181) + signed(tmp_i_i_i_cast1_fu_423_p1));
    tmp_10_fu_385_p2 <= (notrhs2_fu_379_p2 or notlhs1_fu_373_p2);
    tmp_11_fu_391_p2 <= (tmp_6_fu_367_p2 and tmp_10_fu_385_p2);
    tmp_12_fu_180_opcode <= ap_const_lv5_2;
    tmp_12_fu_180_p0 <= input_mat_load_reg_603;
    tmp_12_fu_180_p1 <= tmp_7_reg_609;
    tmp_13_fu_397_p2 <= (tmp_11_fu_391_p2 and tmp_12_fu_180_p2);
    tmp_14_fu_309_p4 <= ((tmp_4 & tmp_2_reg_580) & tmp_5_reg_593);
    tmp_15_fu_316_p1 <= std_logic_vector(resize(unsigned(tmp_14_fu_309_p4),64));
    tmp_16_fu_491_p1 <= std_logic_vector(resize(unsigned(tmp_20_fu_483_p3),32));
    tmp_17_fu_351_p1 <= tmp_7_to_int_fu_338_p1(23 - 1 downto 0);
    tmp_18_fu_495_p4 <= tmp_5_i_i_fu_477_p2(54 downto 23);
    tmp_1_fu_341_p4 <= tmp_7_to_int_fu_338_p1(30 downto 23);
        tmp_1_i_i_cast_fu_447_p1 <= std_logic_vector(resize(signed(tmp_1_i_i_fu_441_p2),9));

    tmp_1_i_i_fu_441_p2 <= std_logic_vector(unsigned(ap_const_lv8_7F) - unsigned(loc_V_fu_324_p4));
    tmp_1_trn_fu_274_p1 <= std_logic_vector(resize(unsigned(j_reg_117),32));
    tmp_20_fu_483_p3 <= tmp_3_i_i_fu_471_p2(23 downto 23);
    tmp_2_fu_269_p2 <= std_logic_vector(unsigned(tmp_reg_549) + unsigned(k_cast_fu_253_p1));
    tmp_2_i_i_fu_467_p1 <= std_logic_vector(resize(unsigned(sh_assign_1_cast_fu_459_p1),78));
    tmp_3_fu_283_p1 <= std_logic_vector(resize(unsigned(p_addr7_fu_278_p2),64));
    tmp_3_i_i_fu_471_p2 <= std_logic_vector(shift_right(unsigned(p_Result_1_fu_411_p3),to_integer(unsigned('0' & sh_assign_1_cast_cast_fu_463_p1(24-1 downto 0)))));
    tmp_5_fu_304_p2 <= std_logic_vector(unsigned(l_cast_fu_288_p1) + unsigned(tmp_9_reg_567));
    tmp_5_i_i_fu_477_p2 <= std_logic_vector(shift_left(unsigned(tmp_i_i_fu_419_p1),to_integer(unsigned('0' & tmp_2_i_i_fu_467_p1(31-1 downto 0)))));
    tmp_6_fu_367_p2 <= (notrhs_fu_361_p2 or notlhs_fu_355_p2);
    tmp_7_to_int_fu_338_p1 <= tmp_7_reg_609;
    tmp_8_fu_223_p3 <= (p_addr5_fu_218_p2 & ap_const_lv2_0);
    tmp_9_fu_247_p2 <= std_logic_vector(shift_left(unsigned(j_reg_117),to_integer(unsigned('0' & ap_const_lv3_1(3-1 downto 0)))));
    tmp_fu_208_p2 <= std_logic_vector(shift_left(unsigned(i_reg_106),to_integer(unsigned('0' & ap_const_lv3_1(3-1 downto 0)))));
    tmp_i_i_fu_419_p1 <= std_logic_vector(resize(unsigned(p_Result_1_fu_411_p3),78));
    tmp_i_i_i_cast1_fu_423_p1 <= std_logic_vector(resize(unsigned(loc_V_fu_324_p4),9));
    tmp_s_fu_184_p3 <= (tmp_41 & ap_const_lv2_0);
    tmp_trn_cast_fu_214_p1 <= std_logic_vector(resize(unsigned(i_reg_106),5));
end behav;
