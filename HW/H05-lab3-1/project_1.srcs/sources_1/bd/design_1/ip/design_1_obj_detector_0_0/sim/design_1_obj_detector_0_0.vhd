-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:obj_detector:1.0
-- IP Revision: 1611290133

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_obj_detector_0_0 IS
  PORT (
    s_axi_control_AWADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_control_AWVALID : IN STD_LOGIC;
    s_axi_control_AWREADY : OUT STD_LOGIC;
    s_axi_control_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_control_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_control_WVALID : IN STD_LOGIC;
    s_axi_control_WREADY : OUT STD_LOGIC;
    s_axi_control_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_control_BVALID : OUT STD_LOGIC;
    s_axi_control_BREADY : IN STD_LOGIC;
    s_axi_control_ARADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_control_ARVALID : IN STD_LOGIC;
    s_axi_control_ARREADY : OUT STD_LOGIC;
    s_axi_control_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_control_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_control_RVALID : OUT STD_LOGIC;
    s_axi_control_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    A_Clk_A : OUT STD_LOGIC;
    A_Rst_A : OUT STD_LOGIC;
    A_EN_A : OUT STD_LOGIC;
    A_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    A_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    A_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    A_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    W0_Clk_A : OUT STD_LOGIC;
    W0_Rst_A : OUT STD_LOGIC;
    W0_EN_A : OUT STD_LOGIC;
    W0_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    W0_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    W0_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    W0_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    W1_Clk_A : OUT STD_LOGIC;
    W1_Rst_A : OUT STD_LOGIC;
    W1_EN_A : OUT STD_LOGIC;
    W1_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    W1_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    W1_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    W1_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    res_Clk_A : OUT STD_LOGIC;
    res_Rst_A : OUT STD_LOGIC;
    res_EN_A : OUT STD_LOGIC;
    res_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    res_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    res_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    res_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END design_1_obj_detector_0_0;

ARCHITECTURE design_1_obj_detector_0_0_arch OF design_1_obj_detector_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_obj_detector_0_0_arch: ARCHITECTURE IS "yes";

  COMPONENT obj_detector IS
    GENERIC (
      C_S_AXI_CONTROL_ADDR_WIDTH : INTEGER;
      C_S_AXI_CONTROL_DATA_WIDTH : INTEGER
    );
    PORT (
      s_axi_control_AWADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_control_AWVALID : IN STD_LOGIC;
      s_axi_control_AWREADY : OUT STD_LOGIC;
      s_axi_control_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_control_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_control_WVALID : IN STD_LOGIC;
      s_axi_control_WREADY : OUT STD_LOGIC;
      s_axi_control_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_control_BVALID : OUT STD_LOGIC;
      s_axi_control_BREADY : IN STD_LOGIC;
      s_axi_control_ARADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_control_ARVALID : IN STD_LOGIC;
      s_axi_control_ARREADY : OUT STD_LOGIC;
      s_axi_control_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_control_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_control_RVALID : OUT STD_LOGIC;
      s_axi_control_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC;
      A_Clk_A : OUT STD_LOGIC;
      A_Rst_A : OUT STD_LOGIC;
      A_EN_A : OUT STD_LOGIC;
      A_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      A_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      A_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      A_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      W0_Clk_A : OUT STD_LOGIC;
      W0_Rst_A : OUT STD_LOGIC;
      W0_EN_A : OUT STD_LOGIC;
      W0_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      W0_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      W0_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      W0_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      W1_Clk_A : OUT STD_LOGIC;
      W1_Rst_A : OUT STD_LOGIC;
      W1_EN_A : OUT STD_LOGIC;
      W1_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      W1_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      W1_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      W1_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      res_Clk_A : OUT STD_LOGIC;
      res_Rst_A : OUT STD_LOGIC;
      res_EN_A : OUT STD_LOGIC;
      res_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      res_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      res_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      res_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT obj_detector;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF A_Clk_A: SIGNAL IS "xilinx.com:interface:bram:1.0 A_PORTA CLK";
  ATTRIBUTE X_INTERFACE_INFO OF A_Rst_A: SIGNAL IS "xilinx.com:interface:bram:1.0 A_PORTA RST";
  ATTRIBUTE X_INTERFACE_INFO OF A_EN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 A_PORTA EN";
  ATTRIBUTE X_INTERFACE_INFO OF A_WEN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 A_PORTA WE";
  ATTRIBUTE X_INTERFACE_INFO OF A_Addr_A: SIGNAL IS "xilinx.com:interface:bram:1.0 A_PORTA ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF A_Din_A: SIGNAL IS "xilinx.com:interface:bram:1.0 A_PORTA DIN";
  ATTRIBUTE X_INTERFACE_INFO OF A_Dout_A: SIGNAL IS "xilinx.com:interface:bram:1.0 A_PORTA DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF W0_Clk_A: SIGNAL IS "xilinx.com:interface:bram:1.0 W0_PORTA CLK";
  ATTRIBUTE X_INTERFACE_INFO OF W0_Rst_A: SIGNAL IS "xilinx.com:interface:bram:1.0 W0_PORTA RST";
  ATTRIBUTE X_INTERFACE_INFO OF W0_EN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 W0_PORTA EN";
  ATTRIBUTE X_INTERFACE_INFO OF W0_WEN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 W0_PORTA WE";
  ATTRIBUTE X_INTERFACE_INFO OF W0_Addr_A: SIGNAL IS "xilinx.com:interface:bram:1.0 W0_PORTA ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF W0_Din_A: SIGNAL IS "xilinx.com:interface:bram:1.0 W0_PORTA DIN";
  ATTRIBUTE X_INTERFACE_INFO OF W0_Dout_A: SIGNAL IS "xilinx.com:interface:bram:1.0 W0_PORTA DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF W1_Clk_A: SIGNAL IS "xilinx.com:interface:bram:1.0 W1_PORTA CLK";
  ATTRIBUTE X_INTERFACE_INFO OF W1_Rst_A: SIGNAL IS "xilinx.com:interface:bram:1.0 W1_PORTA RST";
  ATTRIBUTE X_INTERFACE_INFO OF W1_EN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 W1_PORTA EN";
  ATTRIBUTE X_INTERFACE_INFO OF W1_WEN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 W1_PORTA WE";
  ATTRIBUTE X_INTERFACE_INFO OF W1_Addr_A: SIGNAL IS "xilinx.com:interface:bram:1.0 W1_PORTA ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF W1_Din_A: SIGNAL IS "xilinx.com:interface:bram:1.0 W1_PORTA DIN";
  ATTRIBUTE X_INTERFACE_INFO OF W1_Dout_A: SIGNAL IS "xilinx.com:interface:bram:1.0 W1_PORTA DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF res_Clk_A: SIGNAL IS "xilinx.com:interface:bram:1.0 res_PORTA CLK";
  ATTRIBUTE X_INTERFACE_INFO OF res_Rst_A: SIGNAL IS "xilinx.com:interface:bram:1.0 res_PORTA RST";
  ATTRIBUTE X_INTERFACE_INFO OF res_EN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 res_PORTA EN";
  ATTRIBUTE X_INTERFACE_INFO OF res_WEN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 res_PORTA WE";
  ATTRIBUTE X_INTERFACE_INFO OF res_Addr_A: SIGNAL IS "xilinx.com:interface:bram:1.0 res_PORTA ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF res_Din_A: SIGNAL IS "xilinx.com:interface:bram:1.0 res_PORTA DIN";
  ATTRIBUTE X_INTERFACE_INFO OF res_Dout_A: SIGNAL IS "xilinx.com:interface:bram:1.0 res_PORTA DOUT";
BEGIN
  U0 : obj_detector
    GENERIC MAP (
      C_S_AXI_CONTROL_ADDR_WIDTH => 5,
      C_S_AXI_CONTROL_DATA_WIDTH => 32
    )
    PORT MAP (
      s_axi_control_AWADDR => s_axi_control_AWADDR,
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_AWREADY => s_axi_control_AWREADY,
      s_axi_control_WDATA => s_axi_control_WDATA,
      s_axi_control_WSTRB => s_axi_control_WSTRB,
      s_axi_control_WVALID => s_axi_control_WVALID,
      s_axi_control_WREADY => s_axi_control_WREADY,
      s_axi_control_BRESP => s_axi_control_BRESP,
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_ARADDR => s_axi_control_ARADDR,
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_ARREADY => s_axi_control_ARREADY,
      s_axi_control_RDATA => s_axi_control_RDATA,
      s_axi_control_RRESP => s_axi_control_RRESP,
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_RREADY => s_axi_control_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      A_Clk_A => A_Clk_A,
      A_Rst_A => A_Rst_A,
      A_EN_A => A_EN_A,
      A_WEN_A => A_WEN_A,
      A_Addr_A => A_Addr_A,
      A_Din_A => A_Din_A,
      A_Dout_A => A_Dout_A,
      W0_Clk_A => W0_Clk_A,
      W0_Rst_A => W0_Rst_A,
      W0_EN_A => W0_EN_A,
      W0_WEN_A => W0_WEN_A,
      W0_Addr_A => W0_Addr_A,
      W0_Din_A => W0_Din_A,
      W0_Dout_A => W0_Dout_A,
      W1_Clk_A => W1_Clk_A,
      W1_Rst_A => W1_Rst_A,
      W1_EN_A => W1_EN_A,
      W1_WEN_A => W1_WEN_A,
      W1_Addr_A => W1_Addr_A,
      W1_Din_A => W1_Din_A,
      W1_Dout_A => W1_Dout_A,
      res_Clk_A => res_Clk_A,
      res_Rst_A => res_Rst_A,
      res_EN_A => res_EN_A,
      res_WEN_A => res_WEN_A,
      res_Addr_A => res_Addr_A,
      res_Din_A => res_Din_A,
      res_Dout_A => res_Dout_A
    );
END design_1_obj_detector_0_0_arch;
