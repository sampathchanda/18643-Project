// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:softmax:1.0
// IP Revision: 1612021759

(* X_CORE_INFO = "softmax,Vivado 2015.2" *)
(* CHECK_LICENSE_TYPE = "design_1_softmax_0_0,softmax,{}" *)
(* CORE_GENERATION_INFO = "design_1_softmax_0_0,softmax,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=softmax,x_ipVersion=1.0,x_ipCoreRevision=1612021759,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CONTROL_ADDR_WIDTH=5,C_S_AXI_CONTROL_DATA_WIDTH=32}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_softmax_0_0 (
  s_axi_control_AWADDR,
  s_axi_control_AWVALID,
  s_axi_control_AWREADY,
  s_axi_control_WDATA,
  s_axi_control_WSTRB,
  s_axi_control_WVALID,
  s_axi_control_WREADY,
  s_axi_control_BRESP,
  s_axi_control_BVALID,
  s_axi_control_BREADY,
  s_axi_control_ARADDR,
  s_axi_control_ARVALID,
  s_axi_control_ARREADY,
  s_axi_control_RDATA,
  s_axi_control_RRESP,
  s_axi_control_RVALID,
  s_axi_control_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  inp_Clk_A,
  inp_Rst_A,
  inp_EN_A,
  inp_WEN_A,
  inp_Addr_A,
  inp_Din_A,
  inp_Dout_A,
  out_r_Clk_A,
  out_r_Rst_A,
  out_r_EN_A,
  out_r_WEN_A,
  out_r_Addr_A,
  out_r_Din_A,
  out_r_Dout_A
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
input wire [4 : 0] s_axi_control_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
input wire s_axi_control_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
output wire s_axi_control_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
input wire [31 : 0] s_axi_control_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
input wire [3 : 0] s_axi_control_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
input wire s_axi_control_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
output wire s_axi_control_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
output wire [1 : 0] s_axi_control_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
output wire s_axi_control_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
input wire s_axi_control_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
input wire [4 : 0] s_axi_control_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
input wire s_axi_control_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
output wire s_axi_control_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
output wire [31 : 0] s_axi_control_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
output wire [1 : 0] s_axi_control_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
output wire s_axi_control_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
input wire s_axi_control_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 inp_PORTA CLK" *)
output wire inp_Clk_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 inp_PORTA RST" *)
output wire inp_Rst_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 inp_PORTA EN" *)
output wire inp_EN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 inp_PORTA WE" *)
output wire [3 : 0] inp_WEN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 inp_PORTA ADDR" *)
output wire [31 : 0] inp_Addr_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 inp_PORTA DIN" *)
output wire [31 : 0] inp_Din_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 inp_PORTA DOUT" *)
input wire [31 : 0] inp_Dout_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 out_r_PORTA CLK" *)
output wire out_r_Clk_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 out_r_PORTA RST" *)
output wire out_r_Rst_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 out_r_PORTA EN" *)
output wire out_r_EN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 out_r_PORTA WE" *)
output wire [3 : 0] out_r_WEN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 out_r_PORTA ADDR" *)
output wire [31 : 0] out_r_Addr_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 out_r_PORTA DIN" *)
output wire [31 : 0] out_r_Din_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 out_r_PORTA DOUT" *)
input wire [31 : 0] out_r_Dout_A;

  softmax #(
    .C_S_AXI_CONTROL_ADDR_WIDTH(5),
    .C_S_AXI_CONTROL_DATA_WIDTH(32)
  ) inst (
    .s_axi_control_AWADDR(s_axi_control_AWADDR),
    .s_axi_control_AWVALID(s_axi_control_AWVALID),
    .s_axi_control_AWREADY(s_axi_control_AWREADY),
    .s_axi_control_WDATA(s_axi_control_WDATA),
    .s_axi_control_WSTRB(s_axi_control_WSTRB),
    .s_axi_control_WVALID(s_axi_control_WVALID),
    .s_axi_control_WREADY(s_axi_control_WREADY),
    .s_axi_control_BRESP(s_axi_control_BRESP),
    .s_axi_control_BVALID(s_axi_control_BVALID),
    .s_axi_control_BREADY(s_axi_control_BREADY),
    .s_axi_control_ARADDR(s_axi_control_ARADDR),
    .s_axi_control_ARVALID(s_axi_control_ARVALID),
    .s_axi_control_ARREADY(s_axi_control_ARREADY),
    .s_axi_control_RDATA(s_axi_control_RDATA),
    .s_axi_control_RRESP(s_axi_control_RRESP),
    .s_axi_control_RVALID(s_axi_control_RVALID),
    .s_axi_control_RREADY(s_axi_control_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .inp_Clk_A(inp_Clk_A),
    .inp_Rst_A(inp_Rst_A),
    .inp_EN_A(inp_EN_A),
    .inp_WEN_A(inp_WEN_A),
    .inp_Addr_A(inp_Addr_A),
    .inp_Din_A(inp_Din_A),
    .inp_Dout_A(inp_Dout_A),
    .out_r_Clk_A(out_r_Clk_A),
    .out_r_Rst_A(out_r_Rst_A),
    .out_r_EN_A(out_r_EN_A),
    .out_r_WEN_A(out_r_WEN_A),
    .out_r_Addr_A(out_r_Addr_A),
    .out_r_Din_A(out_r_Din_A),
    .out_r_Dout_A(out_r_Dout_A)
  );
endmodule
