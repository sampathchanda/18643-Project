-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.2
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity obj_detector_FCL is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    inp_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    inp_ce0 : OUT STD_LOGIC;
    inp_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    W_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    W_EN_A : OUT STD_LOGIC;
    W_WEN_A : OUT STD_LOGIC_VECTOR (3 downto 0);
    W_Din_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    W_Dout_A : IN STD_LOGIC_VECTOR (31 downto 0);
    W_offset : IN STD_LOGIC_VECTOR (0 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of obj_detector_FCL is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (10 downto 0) := "00000000100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (10 downto 0) := "00000001000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (10 downto 0) := "00000010000";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (10 downto 0) := "00000100000";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (10 downto 0) := "00001000000";
    constant ap_ST_st8_fsm_7 : STD_LOGIC_VECTOR (10 downto 0) := "00010000000";
    constant ap_ST_st9_fsm_8 : STD_LOGIC_VECTOR (10 downto 0) := "00100000000";
    constant ap_ST_st10_fsm_9 : STD_LOGIC_VECTOR (10 downto 0) := "01000000000";
    constant ap_ST_st11_fsm_10 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv11_360 : STD_LOGIC_VECTOR (10 downto 0) := "01101100000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv10_360 : STD_LOGIC_VECTOR (9 downto 0) := "1101100000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_29 : BOOLEAN;
    signal tmp_60_cast_fu_98_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_60_cast_reg_137 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_5_fu_112_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal i_5_reg_145 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_62 : BOOLEAN;
    signal exitcond_fu_106_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_78 : BOOLEAN;
    signal grp_fu_92_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_reg_170 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st6_fsm_5 : STD_LOGIC;
    signal ap_sig_bdd_88 : BOOLEAN;
    signal grp_fu_87_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st11_fsm_10 : STD_LOGIC;
    signal ap_sig_bdd_97 : BOOLEAN;
    signal out_reg_64 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_76 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_fu_118_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_55_fu_132_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal W_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_87_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_87_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st7_fsm_6 : STD_LOGIC;
    signal ap_sig_bdd_116 : BOOLEAN;
    signal grp_fu_92_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_92_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_trn_cast_fu_123_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_addr1_fu_127_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal grp_fu_87_ce : STD_LOGIC;
    signal grp_fu_92_ce : STD_LOGIC;
    signal ap_return_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (10 downto 0);

    component obj_detector_fadd_32ns_32ns_32_5_full_dsp IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component obj_detector_fmul_32ns_32ns_32_4_max_dsp IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    obj_detector_fadd_32ns_32ns_32_5_full_dsp_U7 : component obj_detector_fadd_32ns_32ns_32_5_full_dsp
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_87_p0,
        din1 => grp_fu_87_p1,
        ce => grp_fu_87_ce,
        dout => grp_fu_87_p2);

    obj_detector_fmul_32ns_32ns_32_4_max_dsp_U8 : component obj_detector_fmul_32ns_32ns_32_4_max_dsp
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_92_p0,
        din1 => grp_fu_92_p1,
        ce => grp_fu_92_ce,
        dout => grp_fu_92_p2);





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


    -- ap_return_preg assign process. --
    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv32_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond_fu_106_p2 = ap_const_lv1_0)))) then 
                    ap_return_preg <= out_reg_64;
                end if; 
            end if;
        end if;
    end process;


    -- i_reg_76 assign process. --
    i_reg_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st11_fsm_10)) then 
                i_reg_76 <= i_5_reg_145;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                i_reg_76 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    -- out_reg_64 assign process. --
    out_reg_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st11_fsm_10)) then 
                out_reg_64 <= grp_fu_87_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                out_reg_64 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                i_5_reg_145 <= i_5_fu_112_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then
                    tmp_60_cast_reg_137(6 downto 5) <= tmp_60_cast_fu_98_p3(6 downto 5);    tmp_60_cast_reg_137(9 downto 8) <= tmp_60_cast_fu_98_p3(9 downto 8);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then
                tmp_s_reg_170 <= grp_fu_92_p2;
            end if;
        end if;
    end process;
    tmp_60_cast_reg_137(4 downto 0) <= "00000";
    tmp_60_cast_reg_137(7 downto 7) <= "0";
    tmp_60_cast_reg_137(10) <= '0';

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond_fu_106_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((exitcond_fu_106_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when ap_ST_st4_fsm_3 => 
                ap_NS_fsm <= ap_ST_st5_fsm_4;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st6_fsm_5;
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
                ap_NS_fsm <= ap_ST_st2_fsm_1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXX";
        end case;
    end process;
    W_Addr_A <= std_logic_vector(shift_left(unsigned(W_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    W_Addr_A_orig <= tmp_55_fu_132_p1(32 - 1 downto 0);
    W_Din_A <= ap_const_lv32_0;

    -- W_EN_A assign process. --
    W_EN_A_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then 
            W_EN_A <= ap_const_logic_1;
        else 
            W_EN_A <= ap_const_logic_0;
        end if; 
    end process;

    W_WEN_A <= ap_const_lv4_0;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0, ap_sig_cseq_ST_st2_fsm_1, exitcond_fu_106_p2)
    begin
        if (((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond_fu_106_p2 = ap_const_lv1_0))))) then 
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
    ap_ready_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond_fu_106_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond_fu_106_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_return assign process. --
    ap_return_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond_fu_106_p2, out_reg_64, ap_return_preg)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond_fu_106_p2 = ap_const_lv1_0)))) then 
            ap_return <= out_reg_64;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;


    -- ap_sig_bdd_116 assign process. --
    ap_sig_bdd_116_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_116 <= (ap_const_lv1_1 = ap_CS_fsm(6 downto 6));
    end process;


    -- ap_sig_bdd_29 assign process. --
    ap_sig_bdd_29_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_29 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_62 assign process. --
    ap_sig_bdd_62_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_62 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_bdd_78 assign process. --
    ap_sig_bdd_78_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_78 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_88 assign process. --
    ap_sig_bdd_88_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_88 <= (ap_const_lv1_1 = ap_CS_fsm(5 downto 5));
    end process;


    -- ap_sig_bdd_97 assign process. --
    ap_sig_bdd_97_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_97 <= (ap_const_lv1_1 = ap_CS_fsm(10 downto 10));
    end process;


    -- ap_sig_cseq_ST_st11_fsm_10 assign process. --
    ap_sig_cseq_ST_st11_fsm_10_assign_proc : process(ap_sig_bdd_97)
    begin
        if (ap_sig_bdd_97) then 
            ap_sig_cseq_ST_st11_fsm_10 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st11_fsm_10 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_29)
    begin
        if (ap_sig_bdd_29) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm_1 assign process. --
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_62)
    begin
        if (ap_sig_bdd_62) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st3_fsm_2 assign process. --
    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_bdd_78)
    begin
        if (ap_sig_bdd_78) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st6_fsm_5 assign process. --
    ap_sig_cseq_ST_st6_fsm_5_assign_proc : process(ap_sig_bdd_88)
    begin
        if (ap_sig_bdd_88) then 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st7_fsm_6 assign process. --
    ap_sig_cseq_ST_st7_fsm_6_assign_proc : process(ap_sig_bdd_116)
    begin
        if (ap_sig_bdd_116) then 
            ap_sig_cseq_ST_st7_fsm_6 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st7_fsm_6 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_fu_106_p2 <= "1" when (i_reg_76 = ap_const_lv10_360) else "0";
    grp_fu_87_ce <= ap_const_logic_1;
    grp_fu_87_p0 <= out_reg_64;
    grp_fu_87_p1 <= tmp_s_reg_170;
    grp_fu_92_ce <= ap_const_logic_1;
    grp_fu_92_p0 <= inp_q0;
    grp_fu_92_p1 <= W_Dout_A;
    i_5_fu_112_p2 <= std_logic_vector(unsigned(i_reg_76) + unsigned(ap_const_lv10_1));
    inp_address0 <= tmp_fu_118_p1(10 - 1 downto 0);

    -- inp_ce0 assign process. --
    inp_ce0_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then 
            inp_ce0 <= ap_const_logic_1;
        else 
            inp_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    p_addr1_fu_127_p2 <= std_logic_vector(unsigned(tmp_trn_cast_fu_123_p1) + unsigned(tmp_60_cast_reg_137));
    tmp_55_fu_132_p1 <= std_logic_vector(resize(unsigned(p_addr1_fu_127_p2),64));
    tmp_60_cast_fu_98_p3 <= 
        ap_const_lv11_360 when (W_offset(0) = '1') else 
        ap_const_lv11_0;
    tmp_fu_118_p1 <= std_logic_vector(resize(unsigned(i_reg_76),64));
    tmp_trn_cast_fu_123_p1 <= std_logic_vector(resize(unsigned(i_reg_76),11));
end behav;
