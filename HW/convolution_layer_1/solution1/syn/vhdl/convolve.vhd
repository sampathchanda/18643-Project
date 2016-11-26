-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.2
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity convolve is
port (
    image_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    image_V_empty_n : IN STD_LOGIC;
    image_V_read : OUT STD_LOGIC;
    weights_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    weights_ce0 : OUT STD_LOGIC;
    weights_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    weights_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    weights_we0 : OUT STD_LOGIC;
    weights_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
    weights_ce1 : OUT STD_LOGIC;
    weights_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    weights_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    weights_we1 : OUT STD_LOGIC;
    conv_output_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    conv_output_V_full_n : IN STD_LOGIC;
    conv_output_V_write : OUT STD_LOGIC;
    done : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    done_ap_vld : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC );
end;


architecture behav of convolve is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "convolve,hls_ip_2015_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=8.613500,HLS_SYN_LAT=299607,HLS_SYN_TPT=299608,HLS_SYN_MEM=0,HLS_SYN_DSP=5,HLS_SYN_FF=1125,HLS_SYN_LUT=2136}";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_true : BOOLEAN := true;

    signal convolve_Loop_BUFFER_RESET_proc_U0_ap_start : STD_LOGIC;
    signal convolve_Loop_BUFFER_RESET_proc_U0_ap_done : STD_LOGIC;
    signal convolve_Loop_BUFFER_RESET_proc_U0_ap_continue : STD_LOGIC;
    signal convolve_Loop_BUFFER_RESET_proc_U0_ap_idle : STD_LOGIC;
    signal convolve_Loop_BUFFER_RESET_proc_U0_ap_ready : STD_LOGIC;
    signal convolve_Loop_BUFFER_RESET_proc_U0_weights_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal convolve_Loop_BUFFER_RESET_proc_U0_weights_ce0 : STD_LOGIC;
    signal convolve_Loop_BUFFER_RESET_proc_U0_weights_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal convolve_Loop_BUFFER_RESET_proc_U0_image_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal convolve_Loop_BUFFER_RESET_proc_U0_image_V_empty_n : STD_LOGIC;
    signal convolve_Loop_BUFFER_RESET_proc_U0_image_V_read : STD_LOGIC;
    signal convolve_Loop_BUFFER_RESET_proc_U0_conv_output_V_din : STD_LOGIC_VECTOR (31 downto 0);
    signal convolve_Loop_BUFFER_RESET_proc_U0_conv_output_V_full_n : STD_LOGIC;
    signal convolve_Loop_BUFFER_RESET_proc_U0_conv_output_V_write : STD_LOGIC;
    signal ap_sig_hs_continue : STD_LOGIC;
    signal convolve_Block_proc_U0_ap_start : STD_LOGIC;
    signal convolve_Block_proc_U0_ap_done : STD_LOGIC;
    signal convolve_Block_proc_U0_ap_continue : STD_LOGIC;
    signal convolve_Block_proc_U0_ap_idle : STD_LOGIC;
    signal convolve_Block_proc_U0_ap_ready : STD_LOGIC;
    signal convolve_Block_proc_U0_done : STD_LOGIC_VECTOR (31 downto 0);
    signal convolve_Block_proc_U0_done_ap_vld : STD_LOGIC;
    signal ap_reg_procdone_convolve_Loop_BUFFER_RESET_proc_U0 : STD_LOGIC := '0';
    signal ap_sig_hs_done : STD_LOGIC;
    signal ap_reg_procdone_convolve_Block_proc_U0 : STD_LOGIC := '0';
    signal ap_CS : STD_LOGIC;
    signal ap_sig_top_allready : STD_LOGIC;

    component convolve_Loop_BUFFER_RESET_proc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        weights_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
        weights_ce0 : OUT STD_LOGIC;
        weights_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        image_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        image_V_empty_n : IN STD_LOGIC;
        image_V_read : OUT STD_LOGIC;
        conv_output_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        conv_output_V_full_n : IN STD_LOGIC;
        conv_output_V_write : OUT STD_LOGIC );
    end component;


    component convolve_Block_proc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        done : OUT STD_LOGIC_VECTOR (31 downto 0);
        done_ap_vld : OUT STD_LOGIC );
    end component;



begin
    convolve_Loop_BUFFER_RESET_proc_U0 : component convolve_Loop_BUFFER_RESET_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => convolve_Loop_BUFFER_RESET_proc_U0_ap_start,
        ap_done => convolve_Loop_BUFFER_RESET_proc_U0_ap_done,
        ap_continue => convolve_Loop_BUFFER_RESET_proc_U0_ap_continue,
        ap_idle => convolve_Loop_BUFFER_RESET_proc_U0_ap_idle,
        ap_ready => convolve_Loop_BUFFER_RESET_proc_U0_ap_ready,
        weights_address0 => convolve_Loop_BUFFER_RESET_proc_U0_weights_address0,
        weights_ce0 => convolve_Loop_BUFFER_RESET_proc_U0_weights_ce0,
        weights_q0 => convolve_Loop_BUFFER_RESET_proc_U0_weights_q0,
        image_V_dout => convolve_Loop_BUFFER_RESET_proc_U0_image_V_dout,
        image_V_empty_n => convolve_Loop_BUFFER_RESET_proc_U0_image_V_empty_n,
        image_V_read => convolve_Loop_BUFFER_RESET_proc_U0_image_V_read,
        conv_output_V_din => convolve_Loop_BUFFER_RESET_proc_U0_conv_output_V_din,
        conv_output_V_full_n => convolve_Loop_BUFFER_RESET_proc_U0_conv_output_V_full_n,
        conv_output_V_write => convolve_Loop_BUFFER_RESET_proc_U0_conv_output_V_write);

    convolve_Block_proc_U0 : component convolve_Block_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => convolve_Block_proc_U0_ap_start,
        ap_done => convolve_Block_proc_U0_ap_done,
        ap_continue => convolve_Block_proc_U0_ap_continue,
        ap_idle => convolve_Block_proc_U0_ap_idle,
        ap_ready => convolve_Block_proc_U0_ap_ready,
        done => convolve_Block_proc_U0_done,
        done_ap_vld => convolve_Block_proc_U0_done_ap_vld);





    -- ap_reg_procdone_convolve_Block_proc_U0 assign process. --
    ap_reg_procdone_convolve_Block_proc_U0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_procdone_convolve_Block_proc_U0 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_sig_hs_done)) then 
                    ap_reg_procdone_convolve_Block_proc_U0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = convolve_Block_proc_U0_ap_done)) then 
                    ap_reg_procdone_convolve_Block_proc_U0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_procdone_convolve_Loop_BUFFER_RESET_proc_U0 assign process. --
    ap_reg_procdone_convolve_Loop_BUFFER_RESET_proc_U0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_procdone_convolve_Loop_BUFFER_RESET_proc_U0 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_sig_hs_done)) then 
                    ap_reg_procdone_convolve_Loop_BUFFER_RESET_proc_U0 <= ap_const_logic_0;
                elsif ((convolve_Loop_BUFFER_RESET_proc_U0_ap_done = ap_const_logic_1)) then 
                    ap_reg_procdone_convolve_Loop_BUFFER_RESET_proc_U0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_CS assign process. --
    ap_CS_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            ap_CS <= ap_const_logic_0;
        end if;
    end process;
    ap_done <= ap_sig_hs_done;

    -- ap_idle assign process. --
    ap_idle_assign_proc : process(convolve_Loop_BUFFER_RESET_proc_U0_ap_idle, convolve_Block_proc_U0_ap_idle)
    begin
        if (((convolve_Loop_BUFFER_RESET_proc_U0_ap_idle = ap_const_logic_1) and (ap_const_logic_1 = convolve_Block_proc_U0_ap_idle))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= ap_sig_top_allready;
    ap_sig_hs_continue <= ap_sig_hs_done;

    -- ap_sig_hs_done assign process. --
    ap_sig_hs_done_assign_proc : process(ap_reg_procdone_convolve_Loop_BUFFER_RESET_proc_U0, ap_reg_procdone_convolve_Block_proc_U0)
    begin
        if (((ap_const_logic_1 = ap_reg_procdone_convolve_Block_proc_U0) and (ap_const_logic_1 = ap_reg_procdone_convolve_Loop_BUFFER_RESET_proc_U0))) then 
            ap_sig_hs_done <= ap_const_logic_1;
        else 
            ap_sig_hs_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_sig_top_allready <= convolve_Loop_BUFFER_RESET_proc_U0_ap_ready;
    conv_output_V_din <= convolve_Loop_BUFFER_RESET_proc_U0_conv_output_V_din;
    conv_output_V_write <= convolve_Loop_BUFFER_RESET_proc_U0_conv_output_V_write;
    convolve_Block_proc_U0_ap_continue <= ap_sig_hs_continue;
    convolve_Block_proc_U0_ap_start <= ap_start;
    convolve_Loop_BUFFER_RESET_proc_U0_ap_continue <= ap_sig_hs_continue;
    convolve_Loop_BUFFER_RESET_proc_U0_ap_start <= ap_start;
    convolve_Loop_BUFFER_RESET_proc_U0_conv_output_V_full_n <= conv_output_V_full_n;
    convolve_Loop_BUFFER_RESET_proc_U0_image_V_dout <= image_V_dout;
    convolve_Loop_BUFFER_RESET_proc_U0_image_V_empty_n <= image_V_empty_n;
    convolve_Loop_BUFFER_RESET_proc_U0_weights_q0 <= weights_q0;
    done <= convolve_Block_proc_U0_done;
    done_ap_vld <= convolve_Block_proc_U0_done_ap_vld;
    image_V_read <= convolve_Loop_BUFFER_RESET_proc_U0_image_V_read;
    weights_address0 <= convolve_Loop_BUFFER_RESET_proc_U0_weights_address0;
    weights_address1 <= ap_const_lv5_0;
    weights_ce0 <= convolve_Loop_BUFFER_RESET_proc_U0_weights_ce0;
    weights_ce1 <= ap_const_logic_0;
    weights_d0 <= ap_const_lv32_0;
    weights_d1 <= ap_const_lv32_0;
    weights_we0 <= ap_const_logic_0;
    weights_we1 <= ap_const_logic_0;
end behav;
