set C_TypeInfoList {{ 
"softmax" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"inp": [[], {"array": [ {"scalar": "float"}, [2]]}] }, {"out": [[], {"array": [ {"scalar": "float"}, [2]]}] }],[],""]
}}
set moduleName softmax
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {softmax}
set C_modelType { void 0 }
set C_modelArgList { 
	{ inp float 32 regular {bram 2 { 1 3 } 1 1 }  }
	{ out_r float 32 regular {bram 2 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inp", "interface" : "bram", "bitwidth" : 32 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "inp","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "out_r", "interface" : "bram", "bitwidth" : 32 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ inp_Addr_A sc_out sc_lv 32 signal 0 } 
	{ inp_EN_A sc_out sc_logic 1 signal 0 } 
	{ inp_WEN_A sc_out sc_lv 4 signal 0 } 
	{ inp_Din_A sc_out sc_lv 32 signal 0 } 
	{ inp_Dout_A sc_in sc_lv 32 signal 0 } 
	{ inp_Clk_A sc_out sc_logic 1 signal 0 } 
	{ inp_Rst_A sc_out sc_logic 1 signal 0 } 
	{ out_r_Addr_A sc_out sc_lv 32 signal 1 } 
	{ out_r_EN_A sc_out sc_logic 1 signal 1 } 
	{ out_r_WEN_A sc_out sc_lv 4 signal 1 } 
	{ out_r_Din_A sc_out sc_lv 32 signal 1 } 
	{ out_r_Dout_A sc_in sc_lv 32 signal 1 } 
	{ out_r_Clk_A sc_out sc_logic 1 signal 1 } 
	{ out_r_Rst_A sc_out sc_logic 1 signal 1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"softmax","role":"start","value":"0","valid_bit":"0"},{"name":"softmax","role":"continue","value":"0","valid_bit":"4"},{"name":"softmax","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"softmax","role":"start","value":"0","valid_bit":"0"},{"name":"softmax","role":"done","value":"0","valid_bit":"1"},{"name":"softmax","role":"idle","value":"0","valid_bit":"2"},{"name":"softmax","role":"ready","value":"0","valid_bit":"3"},{"name":"softmax","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "inp_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp", "role": "Addr_A" }} , 
 	{ "name": "inp_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp", "role": "EN_A" }} , 
 	{ "name": "inp_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inp", "role": "WEN_A" }} , 
 	{ "name": "inp_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp", "role": "Din_A" }} , 
 	{ "name": "inp_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp", "role": "Dout_A" }} , 
 	{ "name": "inp_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp", "role": "Clk_A" }} , 
 	{ "name": "inp_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp", "role": "Rst_A" }} , 
 	{ "name": "out_r_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "Addr_A" }} , 
 	{ "name": "out_r_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "EN_A" }} , 
 	{ "name": "out_r_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_r", "role": "WEN_A" }} , 
 	{ "name": "out_r_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "Din_A" }} , 
 	{ "name": "out_r_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "Dout_A" }} , 
 	{ "name": "out_r_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "Clk_A" }} , 
 	{ "name": "out_r_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "Rst_A" }} , 
 	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "interrupt", "role": "default" }}  ]}
set Spec2ImplPortList { 
	inp { bram {  { inp_Addr_A mem_address 1 32 }  { inp_EN_A mem_ce 1 1 }  { inp_WEN_A mem_we 1 4 }  { inp_Din_A mem_din 1 32 }  { inp_Dout_A mem_dout 0 32 }  { inp_Clk_A mem_clk 1 1 }  { inp_Rst_A mem_rst 1 1 } } }
	out_r { bram {  { out_r_Addr_A mem_address 1 32 }  { out_r_EN_A mem_ce 1 1 }  { out_r_WEN_A mem_we 1 4 }  { out_r_Din_A mem_din 1 32 }  { out_r_Dout_A mem_dout 0 32 }  { out_r_Clk_A mem_clk 1 1 }  { out_r_Rst_A mem_rst 1 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
