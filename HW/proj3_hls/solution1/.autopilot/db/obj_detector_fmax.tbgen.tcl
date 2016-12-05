set moduleName obj_detector_fmax
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 1
set pipeLatency 2
set C_modelName {obj_detector_fmax}
set C_modelType { double 64 }
set C_modelArgList { 
	{ x double 64 regular  }
	{ y double 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x", "interface" : "wire", "bitwidth" : 64 ,"direction" : "READONLY" } , 
 	{ "Name" : "y", "interface" : "wire", "bitwidth" : 64 ,"direction" : "READONLY" } , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 5
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ x sc_in sc_lv 64 signal 0 } 
	{ y sc_in sc_lv 64 signal 1 } 
	{ ap_return sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "x", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x", "role": "default" }} , 
 	{ "name": "y", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "y", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}
set Spec2ImplPortList { 
	x { ap_none {  { x in_data 0 64 } } }
	y { ap_none {  { y in_data 0 64 } } }
}
