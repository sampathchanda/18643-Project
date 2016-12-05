set C_TypeInfoList {{ 
"obj_detector" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"A": [[], {"array": [ {"array": [ {"scalar": "float"}, [28]]}, [28]]}] }, {"W0": [[], {"array": [ {"array": [ {"scalar": "float"}, [5,5]]}, [6]]}] }, {"W1": [[], {"array": [ {"array": [ {"scalar": "float"}, [864]]}, [2]]}] }, {"res": [[], {"array": [ {"scalar": "float"}, [2]]}] }],[],""]
}}
set moduleName obj_detector
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {obj_detector}
set C_modelType { void 0 }
set C_modelArgList { 
	{ HP0 float 32 regular {axi_master 0}  }
	{ HP1 float 32 regular {axi_master 0}  }
	{ HP2 float 32 regular {axi_master 0}  }
	{ HP3 float 32 regular {axi_master 1}  }
	{ A int 32 regular {axi_slave 0}  }
	{ W0 int 32 regular {axi_slave 0}  }
	{ W1 int 32 regular {axi_slave 0}  }
	{ res int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "HP0", "interface" : "axi_master", "bitwidth" : 32 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "A","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "A"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 27,"step" : 1},{"low" : 0,"up" : 27,"step" : 1}]}]}]} , 
 	{ "Name" : "HP1", "interface" : "axi_master", "bitwidth" : 32 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "W0","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "W0"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 5,"step" : 1},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "HP2", "interface" : "axi_master", "bitwidth" : 32 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "W1","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "W1"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 1,"step" : 1},{"low" : 0,"up" : 863,"step" : 1}]}]}]} , 
 	{ "Name" : "HP3", "interface" : "axi_master", "bitwidth" : 32 ,"direction" : "WRITEONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "res","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "res"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "A", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32 ,"direction" : "READONLY" , "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "W0", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32 ,"direction" : "READONLY" , "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "W1", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32 ,"direction" : "READONLY" , "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "res", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32 ,"direction" : "READONLY" , "offset" : {"in":40}, "offset_end" : {"in":47}} ]}
# RTL Port declarations: 
set portNum 217
set portList { 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
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
	{ m_axi_HP0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_HP0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_HP0_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_HP0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_HP0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_HP0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_HP0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_HP0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_HP0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_HP0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_HP0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_HP0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_HP0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_HP0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_HP0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_HP0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_HP0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_HP0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_HP0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_HP0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_HP0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_HP0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_HP0_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_HP0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_HP0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_HP0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_HP0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_HP0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_HP0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_HP0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_HP0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_HP0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_HP0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_HP0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_HP0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_HP0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_HP0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_HP0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_HP0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_HP0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_HP0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_HP0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_HP0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_HP0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_HP0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_HP1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_HP1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_HP1_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_HP1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_HP1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_HP1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_HP1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_HP1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_HP1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_HP1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_HP1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_HP1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_HP1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_HP1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_HP1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_HP1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_HP1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_HP1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_HP1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_HP1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_HP1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_HP1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_HP1_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_HP1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_HP1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_HP1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_HP1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_HP1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_HP1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_HP1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_HP1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_HP1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_HP1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_HP1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_HP1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_HP1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_HP1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_HP1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_HP1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_HP1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_HP1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_HP1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_HP1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_HP1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_HP1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_HP2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_HP2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_HP2_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_HP2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_HP2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_HP2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_HP2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_HP2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_HP2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_HP2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_HP2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_HP2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_HP2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_HP2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_HP2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_HP2_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_HP2_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_HP2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_HP2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_HP2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_HP2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_HP2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_HP2_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_HP2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_HP2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_HP2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_HP2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_HP2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_HP2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_HP2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_HP2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_HP2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_HP2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_HP2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_HP2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_HP2_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_HP2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_HP2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_HP2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_HP2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_HP2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_HP2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_HP2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_HP2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_HP2_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_HP3_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_HP3_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_HP3_AWADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_HP3_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_HP3_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_HP3_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_HP3_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_HP3_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_HP3_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_HP3_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_HP3_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_HP3_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_HP3_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_HP3_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_HP3_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_HP3_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_HP3_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_HP3_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_HP3_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_HP3_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_HP3_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_HP3_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_HP3_ARADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_HP3_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_HP3_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_HP3_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_HP3_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_HP3_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_HP3_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_HP3_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_HP3_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_HP3_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_HP3_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_HP3_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_HP3_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_HP3_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_HP3_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_HP3_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_HP3_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_HP3_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_HP3_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_HP3_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_HP3_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_HP3_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_HP3_BUSER sc_in sc_lv 1 signal 3 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"A","role":"data","value":"16"},{"name":"W0","role":"data","value":"24"},{"name":"W1","role":"data","value":"32"},{"name":"res","role":"data","value":"40"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"obj_detector","role":"start","value":"0","valid_bit":"0"},{"name":"obj_detector","role":"continue","value":"0","valid_bit":"4"},{"name":"obj_detector","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"obj_detector","role":"start","value":"0","valid_bit":"0"},{"name":"obj_detector","role":"done","value":"0","valid_bit":"1"},{"name":"obj_detector","role":"idle","value":"0","valid_bit":"2"},{"name":"obj_detector","role":"ready","value":"0","valid_bit":"3"},{"name":"obj_detector","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "m_axi_HP0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_HP0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_HP0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HP0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_HP0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "AWID" }} , 
 	{ "name": "m_axi_HP0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HP0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_HP0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HP0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_HP0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_HP0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_HP0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_HP0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HP0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_HP0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_HP0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_HP0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_HP0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "WVALID" }} , 
 	{ "name": "m_axi_HP0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "WREADY" }} , 
 	{ "name": "m_axi_HP0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HP0", "role": "WDATA" }} , 
 	{ "name": "m_axi_HP0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_HP0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "WLAST" }} , 
 	{ "name": "m_axi_HP0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "WID" }} , 
 	{ "name": "m_axi_HP0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "WUSER" }} , 
 	{ "name": "m_axi_HP0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_HP0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_HP0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HP0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_HP0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "ARID" }} , 
 	{ "name": "m_axi_HP0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HP0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_HP0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HP0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_HP0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_HP0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_HP0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_HP0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HP0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_HP0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_HP0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_HP0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_HP0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "RVALID" }} , 
 	{ "name": "m_axi_HP0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "RREADY" }} , 
 	{ "name": "m_axi_HP0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HP0", "role": "RDATA" }} , 
 	{ "name": "m_axi_HP0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "RLAST" }} , 
 	{ "name": "m_axi_HP0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "RID" }} , 
 	{ "name": "m_axi_HP0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "RUSER" }} , 
 	{ "name": "m_axi_HP0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP0", "role": "RRESP" }} , 
 	{ "name": "m_axi_HP0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "BVALID" }} , 
 	{ "name": "m_axi_HP0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "BREADY" }} , 
 	{ "name": "m_axi_HP0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP0", "role": "BRESP" }} , 
 	{ "name": "m_axi_HP0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "BID" }} , 
 	{ "name": "m_axi_HP0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP0", "role": "BUSER" }} , 
 	{ "name": "m_axi_HP1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_HP1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_HP1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HP1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_HP1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "AWID" }} , 
 	{ "name": "m_axi_HP1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HP1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_HP1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HP1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_HP1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_HP1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_HP1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_HP1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HP1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_HP1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_HP1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_HP1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_HP1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "WVALID" }} , 
 	{ "name": "m_axi_HP1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "WREADY" }} , 
 	{ "name": "m_axi_HP1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HP1", "role": "WDATA" }} , 
 	{ "name": "m_axi_HP1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_HP1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "WLAST" }} , 
 	{ "name": "m_axi_HP1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "WID" }} , 
 	{ "name": "m_axi_HP1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "WUSER" }} , 
 	{ "name": "m_axi_HP1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_HP1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_HP1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HP1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_HP1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "ARID" }} , 
 	{ "name": "m_axi_HP1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HP1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_HP1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HP1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_HP1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_HP1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_HP1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_HP1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HP1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_HP1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_HP1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_HP1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_HP1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "RVALID" }} , 
 	{ "name": "m_axi_HP1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "RREADY" }} , 
 	{ "name": "m_axi_HP1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HP1", "role": "RDATA" }} , 
 	{ "name": "m_axi_HP1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "RLAST" }} , 
 	{ "name": "m_axi_HP1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "RID" }} , 
 	{ "name": "m_axi_HP1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "RUSER" }} , 
 	{ "name": "m_axi_HP1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP1", "role": "RRESP" }} , 
 	{ "name": "m_axi_HP1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "BVALID" }} , 
 	{ "name": "m_axi_HP1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "BREADY" }} , 
 	{ "name": "m_axi_HP1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP1", "role": "BRESP" }} , 
 	{ "name": "m_axi_HP1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "BID" }} , 
 	{ "name": "m_axi_HP1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP1", "role": "BUSER" }} , 
 	{ "name": "m_axi_HP2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_HP2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_HP2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HP2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_HP2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "AWID" }} , 
 	{ "name": "m_axi_HP2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HP2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_HP2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HP2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_HP2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_HP2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_HP2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_HP2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HP2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_HP2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_HP2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_HP2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_HP2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "WVALID" }} , 
 	{ "name": "m_axi_HP2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "WREADY" }} , 
 	{ "name": "m_axi_HP2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HP2", "role": "WDATA" }} , 
 	{ "name": "m_axi_HP2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_HP2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "WLAST" }} , 
 	{ "name": "m_axi_HP2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "WID" }} , 
 	{ "name": "m_axi_HP2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "WUSER" }} , 
 	{ "name": "m_axi_HP2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_HP2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_HP2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HP2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_HP2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "ARID" }} , 
 	{ "name": "m_axi_HP2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HP2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_HP2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HP2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_HP2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_HP2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_HP2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_HP2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HP2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_HP2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_HP2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_HP2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_HP2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "RVALID" }} , 
 	{ "name": "m_axi_HP2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "RREADY" }} , 
 	{ "name": "m_axi_HP2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HP2", "role": "RDATA" }} , 
 	{ "name": "m_axi_HP2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "RLAST" }} , 
 	{ "name": "m_axi_HP2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "RID" }} , 
 	{ "name": "m_axi_HP2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "RUSER" }} , 
 	{ "name": "m_axi_HP2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP2", "role": "RRESP" }} , 
 	{ "name": "m_axi_HP2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "BVALID" }} , 
 	{ "name": "m_axi_HP2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "BREADY" }} , 
 	{ "name": "m_axi_HP2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP2", "role": "BRESP" }} , 
 	{ "name": "m_axi_HP2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "BID" }} , 
 	{ "name": "m_axi_HP2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP2", "role": "BUSER" }} , 
 	{ "name": "m_axi_HP3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_HP3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_HP3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HP3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_HP3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "AWID" }} , 
 	{ "name": "m_axi_HP3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HP3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_HP3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HP3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_HP3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_HP3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_HP3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_HP3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HP3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_HP3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_HP3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_HP3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_HP3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "WVALID" }} , 
 	{ "name": "m_axi_HP3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "WREADY" }} , 
 	{ "name": "m_axi_HP3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HP3", "role": "WDATA" }} , 
 	{ "name": "m_axi_HP3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_HP3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "WLAST" }} , 
 	{ "name": "m_axi_HP3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "WID" }} , 
 	{ "name": "m_axi_HP3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "WUSER" }} , 
 	{ "name": "m_axi_HP3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_HP3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_HP3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HP3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_HP3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "ARID" }} , 
 	{ "name": "m_axi_HP3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HP3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_HP3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HP3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_HP3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_HP3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_HP3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_HP3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HP3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_HP3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_HP3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HP3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_HP3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_HP3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "RVALID" }} , 
 	{ "name": "m_axi_HP3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "RREADY" }} , 
 	{ "name": "m_axi_HP3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "HP3", "role": "RDATA" }} , 
 	{ "name": "m_axi_HP3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "RLAST" }} , 
 	{ "name": "m_axi_HP3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "RID" }} , 
 	{ "name": "m_axi_HP3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "RUSER" }} , 
 	{ "name": "m_axi_HP3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP3", "role": "RRESP" }} , 
 	{ "name": "m_axi_HP3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "BVALID" }} , 
 	{ "name": "m_axi_HP3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "BREADY" }} , 
 	{ "name": "m_axi_HP3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HP3", "role": "BRESP" }} , 
 	{ "name": "m_axi_HP3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "BID" }} , 
 	{ "name": "m_axi_HP3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HP3", "role": "BUSER" }} , 
 	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "interrupt", "role": "default" }}  ]}
set Spec2ImplPortList { 
	HP0 { m_axi {  { m_axi_HP0_AWVALID VALID 1 1 }  { m_axi_HP0_AWREADY READY 0 1 }  { m_axi_HP0_AWADDR ADDR 1 32 }  { m_axi_HP0_AWID ID 1 1 }  { m_axi_HP0_AWLEN LEN 1 8 }  { m_axi_HP0_AWSIZE SIZE 1 3 }  { m_axi_HP0_AWBURST BURST 1 2 }  { m_axi_HP0_AWLOCK LOCK 1 2 }  { m_axi_HP0_AWCACHE CACHE 1 4 }  { m_axi_HP0_AWPROT PROT 1 3 }  { m_axi_HP0_AWQOS QOS 1 4 }  { m_axi_HP0_AWREGION REGION 1 4 }  { m_axi_HP0_AWUSER USER 1 1 }  { m_axi_HP0_WVALID VALID 1 1 }  { m_axi_HP0_WREADY READY 0 1 }  { m_axi_HP0_WDATA DATA 1 32 }  { m_axi_HP0_WSTRB STRB 1 4 }  { m_axi_HP0_WLAST LAST 1 1 }  { m_axi_HP0_WID ID 1 1 }  { m_axi_HP0_WUSER USER 1 1 }  { m_axi_HP0_ARVALID VALID 1 1 }  { m_axi_HP0_ARREADY READY 0 1 }  { m_axi_HP0_ARADDR ADDR 1 32 }  { m_axi_HP0_ARID ID 1 1 }  { m_axi_HP0_ARLEN LEN 1 8 }  { m_axi_HP0_ARSIZE SIZE 1 3 }  { m_axi_HP0_ARBURST BURST 1 2 }  { m_axi_HP0_ARLOCK LOCK 1 2 }  { m_axi_HP0_ARCACHE CACHE 1 4 }  { m_axi_HP0_ARPROT PROT 1 3 }  { m_axi_HP0_ARQOS QOS 1 4 }  { m_axi_HP0_ARREGION REGION 1 4 }  { m_axi_HP0_ARUSER USER 1 1 }  { m_axi_HP0_RVALID VALID 0 1 }  { m_axi_HP0_RREADY READY 1 1 }  { m_axi_HP0_RDATA DATA 0 32 }  { m_axi_HP0_RLAST LAST 0 1 }  { m_axi_HP0_RID ID 0 1 }  { m_axi_HP0_RUSER USER 0 1 }  { m_axi_HP0_RRESP RESP 0 2 }  { m_axi_HP0_BVALID VALID 0 1 }  { m_axi_HP0_BREADY READY 1 1 }  { m_axi_HP0_BRESP RESP 0 2 }  { m_axi_HP0_BID ID 0 1 }  { m_axi_HP0_BUSER USER 0 1 } } }
	HP1 { m_axi {  { m_axi_HP1_AWVALID VALID 1 1 }  { m_axi_HP1_AWREADY READY 0 1 }  { m_axi_HP1_AWADDR ADDR 1 32 }  { m_axi_HP1_AWID ID 1 1 }  { m_axi_HP1_AWLEN LEN 1 8 }  { m_axi_HP1_AWSIZE SIZE 1 3 }  { m_axi_HP1_AWBURST BURST 1 2 }  { m_axi_HP1_AWLOCK LOCK 1 2 }  { m_axi_HP1_AWCACHE CACHE 1 4 }  { m_axi_HP1_AWPROT PROT 1 3 }  { m_axi_HP1_AWQOS QOS 1 4 }  { m_axi_HP1_AWREGION REGION 1 4 }  { m_axi_HP1_AWUSER USER 1 1 }  { m_axi_HP1_WVALID VALID 1 1 }  { m_axi_HP1_WREADY READY 0 1 }  { m_axi_HP1_WDATA DATA 1 32 }  { m_axi_HP1_WSTRB STRB 1 4 }  { m_axi_HP1_WLAST LAST 1 1 }  { m_axi_HP1_WID ID 1 1 }  { m_axi_HP1_WUSER USER 1 1 }  { m_axi_HP1_ARVALID VALID 1 1 }  { m_axi_HP1_ARREADY READY 0 1 }  { m_axi_HP1_ARADDR ADDR 1 32 }  { m_axi_HP1_ARID ID 1 1 }  { m_axi_HP1_ARLEN LEN 1 8 }  { m_axi_HP1_ARSIZE SIZE 1 3 }  { m_axi_HP1_ARBURST BURST 1 2 }  { m_axi_HP1_ARLOCK LOCK 1 2 }  { m_axi_HP1_ARCACHE CACHE 1 4 }  { m_axi_HP1_ARPROT PROT 1 3 }  { m_axi_HP1_ARQOS QOS 1 4 }  { m_axi_HP1_ARREGION REGION 1 4 }  { m_axi_HP1_ARUSER USER 1 1 }  { m_axi_HP1_RVALID VALID 0 1 }  { m_axi_HP1_RREADY READY 1 1 }  { m_axi_HP1_RDATA DATA 0 32 }  { m_axi_HP1_RLAST LAST 0 1 }  { m_axi_HP1_RID ID 0 1 }  { m_axi_HP1_RUSER USER 0 1 }  { m_axi_HP1_RRESP RESP 0 2 }  { m_axi_HP1_BVALID VALID 0 1 }  { m_axi_HP1_BREADY READY 1 1 }  { m_axi_HP1_BRESP RESP 0 2 }  { m_axi_HP1_BID ID 0 1 }  { m_axi_HP1_BUSER USER 0 1 } } }
	HP2 { m_axi {  { m_axi_HP2_AWVALID VALID 1 1 }  { m_axi_HP2_AWREADY READY 0 1 }  { m_axi_HP2_AWADDR ADDR 1 32 }  { m_axi_HP2_AWID ID 1 1 }  { m_axi_HP2_AWLEN LEN 1 8 }  { m_axi_HP2_AWSIZE SIZE 1 3 }  { m_axi_HP2_AWBURST BURST 1 2 }  { m_axi_HP2_AWLOCK LOCK 1 2 }  { m_axi_HP2_AWCACHE CACHE 1 4 }  { m_axi_HP2_AWPROT PROT 1 3 }  { m_axi_HP2_AWQOS QOS 1 4 }  { m_axi_HP2_AWREGION REGION 1 4 }  { m_axi_HP2_AWUSER USER 1 1 }  { m_axi_HP2_WVALID VALID 1 1 }  { m_axi_HP2_WREADY READY 0 1 }  { m_axi_HP2_WDATA DATA 1 32 }  { m_axi_HP2_WSTRB STRB 1 4 }  { m_axi_HP2_WLAST LAST 1 1 }  { m_axi_HP2_WID ID 1 1 }  { m_axi_HP2_WUSER USER 1 1 }  { m_axi_HP2_ARVALID VALID 1 1 }  { m_axi_HP2_ARREADY READY 0 1 }  { m_axi_HP2_ARADDR ADDR 1 32 }  { m_axi_HP2_ARID ID 1 1 }  { m_axi_HP2_ARLEN LEN 1 8 }  { m_axi_HP2_ARSIZE SIZE 1 3 }  { m_axi_HP2_ARBURST BURST 1 2 }  { m_axi_HP2_ARLOCK LOCK 1 2 }  { m_axi_HP2_ARCACHE CACHE 1 4 }  { m_axi_HP2_ARPROT PROT 1 3 }  { m_axi_HP2_ARQOS QOS 1 4 }  { m_axi_HP2_ARREGION REGION 1 4 }  { m_axi_HP2_ARUSER USER 1 1 }  { m_axi_HP2_RVALID VALID 0 1 }  { m_axi_HP2_RREADY READY 1 1 }  { m_axi_HP2_RDATA DATA 0 32 }  { m_axi_HP2_RLAST LAST 0 1 }  { m_axi_HP2_RID ID 0 1 }  { m_axi_HP2_RUSER USER 0 1 }  { m_axi_HP2_RRESP RESP 0 2 }  { m_axi_HP2_BVALID VALID 0 1 }  { m_axi_HP2_BREADY READY 1 1 }  { m_axi_HP2_BRESP RESP 0 2 }  { m_axi_HP2_BID ID 0 1 }  { m_axi_HP2_BUSER USER 0 1 } } }
	HP3 { m_axi {  { m_axi_HP3_AWVALID VALID 1 1 }  { m_axi_HP3_AWREADY READY 0 1 }  { m_axi_HP3_AWADDR ADDR 1 32 }  { m_axi_HP3_AWID ID 1 1 }  { m_axi_HP3_AWLEN LEN 1 8 }  { m_axi_HP3_AWSIZE SIZE 1 3 }  { m_axi_HP3_AWBURST BURST 1 2 }  { m_axi_HP3_AWLOCK LOCK 1 2 }  { m_axi_HP3_AWCACHE CACHE 1 4 }  { m_axi_HP3_AWPROT PROT 1 3 }  { m_axi_HP3_AWQOS QOS 1 4 }  { m_axi_HP3_AWREGION REGION 1 4 }  { m_axi_HP3_AWUSER USER 1 1 }  { m_axi_HP3_WVALID VALID 1 1 }  { m_axi_HP3_WREADY READY 0 1 }  { m_axi_HP3_WDATA DATA 1 32 }  { m_axi_HP3_WSTRB STRB 1 4 }  { m_axi_HP3_WLAST LAST 1 1 }  { m_axi_HP3_WID ID 1 1 }  { m_axi_HP3_WUSER USER 1 1 }  { m_axi_HP3_ARVALID VALID 1 1 }  { m_axi_HP3_ARREADY READY 0 1 }  { m_axi_HP3_ARADDR ADDR 1 32 }  { m_axi_HP3_ARID ID 1 1 }  { m_axi_HP3_ARLEN LEN 1 8 }  { m_axi_HP3_ARSIZE SIZE 1 3 }  { m_axi_HP3_ARBURST BURST 1 2 }  { m_axi_HP3_ARLOCK LOCK 1 2 }  { m_axi_HP3_ARCACHE CACHE 1 4 }  { m_axi_HP3_ARPROT PROT 1 3 }  { m_axi_HP3_ARQOS QOS 1 4 }  { m_axi_HP3_ARREGION REGION 1 4 }  { m_axi_HP3_ARUSER USER 1 1 }  { m_axi_HP3_RVALID VALID 0 1 }  { m_axi_HP3_RREADY READY 1 1 }  { m_axi_HP3_RDATA DATA 0 32 }  { m_axi_HP3_RLAST LAST 0 1 }  { m_axi_HP3_RID ID 0 1 }  { m_axi_HP3_RUSER USER 0 1 }  { m_axi_HP3_RRESP RESP 0 2 }  { m_axi_HP3_BVALID VALID 0 1 }  { m_axi_HP3_BREADY READY 1 1 }  { m_axi_HP3_BRESP RESP 0 2 }  { m_axi_HP3_BID ID 0 1 }  { m_axi_HP3_BUSER USER 0 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ HP0 5 }
	{ HP1 5 }
	{ HP2 5 }
	{ HP3 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ HP0 5 }
	{ HP1 5 }
	{ HP2 5 }
	{ HP3 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
