set moduleName MinMaxLoc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {MinMaxLoc}
set C_modelType { void 0 }
set C_modelArgList {
	{ src_data_stream_V float 32 regular {fifo 0 volatile }  }
	{ min_val_out double 64 regular {fifo 1}  }
	{ max_val_out double 64 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src_data_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "min_val_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max_val_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ src_data_stream_V_dout sc_in sc_lv 32 signal 0 } 
	{ src_data_stream_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ src_data_stream_V_read sc_out sc_logic 1 signal 0 } 
	{ min_val_out_din sc_out sc_lv 64 signal 1 } 
	{ min_val_out_full_n sc_in sc_logic 1 signal 1 } 
	{ min_val_out_write sc_out sc_logic 1 signal 1 } 
	{ max_val_out_din sc_out sc_lv 64 signal 2 } 
	{ max_val_out_full_n sc_in sc_logic 1 signal 2 } 
	{ max_val_out_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "src_data_stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "src_data_stream_V", "role": "dout" }} , 
 	{ "name": "src_data_stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_V", "role": "empty_n" }} , 
 	{ "name": "src_data_stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_V", "role": "read" }} , 
 	{ "name": "min_val_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "min_val_out", "role": "din" }} , 
 	{ "name": "min_val_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min_val_out", "role": "full_n" }} , 
 	{ "name": "min_val_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min_val_out", "role": "write" }} , 
 	{ "name": "max_val_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "max_val_out", "role": "din" }} , 
 	{ "name": "max_val_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_val_out", "role": "full_n" }} , 
 	{ "name": "max_val_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_val_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "MinMaxLoc",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "min_val_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "min_val_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_val_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "max_val_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_fpkbM_U69", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_fpkbM_U70", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MinMaxLoc {
		src_data_stream_V {Type I LastRead 3 FirstWrite -1}
		min_val_out {Type O LastRead -1 FirstWrite 2}
		max_val_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "348482", "Max" : "348482"}
	, {"Name" : "Interval", "Min" : "348482", "Max" : "348482"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	src_data_stream_V { ap_fifo {  { src_data_stream_V_dout fifo_data 0 32 }  { src_data_stream_V_empty_n fifo_status 0 1 }  { src_data_stream_V_read fifo_update 1 1 } } }
	min_val_out { ap_fifo {  { min_val_out_din fifo_data 1 64 }  { min_val_out_full_n fifo_status 0 1 }  { min_val_out_write fifo_update 1 1 } } }
	max_val_out { ap_fifo {  { max_val_out_din fifo_data 1 64 }  { max_val_out_full_n fifo_status 0 1 }  { max_val_out_write fifo_update 1 1 } } }
}
