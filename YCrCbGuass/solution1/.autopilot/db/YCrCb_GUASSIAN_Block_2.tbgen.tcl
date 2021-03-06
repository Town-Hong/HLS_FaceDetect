set moduleName YCrCb_GUASSIAN_Block_2
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {YCrCb_GUASSIAN_Block.2}
set C_modelType { void 0 }
set C_modelArgList {
	{ nor_copy1_rows_V_out int 11 regular {fifo 1}  }
	{ nor_copy1_cols_V_out int 10 regular {fifo 1}  }
	{ Sim_rows_V_out int 11 regular {fifo 1}  }
	{ Sim_cols_V_out int 10 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nor_copy1_rows_V_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nor_copy1_cols_V_out", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Sim_rows_V_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Sim_cols_V_out", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nor_copy1_rows_V_out_din sc_out sc_lv 11 signal 0 } 
	{ nor_copy1_rows_V_out_full_n sc_in sc_logic 1 signal 0 } 
	{ nor_copy1_rows_V_out_write sc_out sc_logic 1 signal 0 } 
	{ nor_copy1_cols_V_out_din sc_out sc_lv 10 signal 1 } 
	{ nor_copy1_cols_V_out_full_n sc_in sc_logic 1 signal 1 } 
	{ nor_copy1_cols_V_out_write sc_out sc_logic 1 signal 1 } 
	{ Sim_rows_V_out_din sc_out sc_lv 11 signal 2 } 
	{ Sim_rows_V_out_full_n sc_in sc_logic 1 signal 2 } 
	{ Sim_rows_V_out_write sc_out sc_logic 1 signal 2 } 
	{ Sim_cols_V_out_din sc_out sc_lv 10 signal 3 } 
	{ Sim_cols_V_out_full_n sc_in sc_logic 1 signal 3 } 
	{ Sim_cols_V_out_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nor_copy1_rows_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "nor_copy1_rows_V_out", "role": "din" }} , 
 	{ "name": "nor_copy1_rows_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nor_copy1_rows_V_out", "role": "full_n" }} , 
 	{ "name": "nor_copy1_rows_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nor_copy1_rows_V_out", "role": "write" }} , 
 	{ "name": "nor_copy1_cols_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "nor_copy1_cols_V_out", "role": "din" }} , 
 	{ "name": "nor_copy1_cols_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nor_copy1_cols_V_out", "role": "full_n" }} , 
 	{ "name": "nor_copy1_cols_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nor_copy1_cols_V_out", "role": "write" }} , 
 	{ "name": "Sim_rows_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "Sim_rows_V_out", "role": "din" }} , 
 	{ "name": "Sim_rows_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Sim_rows_V_out", "role": "full_n" }} , 
 	{ "name": "Sim_rows_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Sim_rows_V_out", "role": "write" }} , 
 	{ "name": "Sim_cols_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Sim_cols_V_out", "role": "din" }} , 
 	{ "name": "Sim_cols_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Sim_cols_V_out", "role": "full_n" }} , 
 	{ "name": "Sim_cols_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Sim_cols_V_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "YCrCb_GUASSIAN_Block_2",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "nor_copy1_rows_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "nor_copy1_rows_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nor_copy1_cols_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "nor_copy1_cols_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Sim_rows_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "Sim_rows_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Sim_cols_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "Sim_cols_V_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	YCrCb_GUASSIAN_Block_2 {
		nor_copy1_rows_V_out {Type O LastRead -1 FirstWrite 0}
		nor_copy1_cols_V_out {Type O LastRead -1 FirstWrite 0}
		Sim_rows_V_out {Type O LastRead -1 FirstWrite 0}
		Sim_cols_V_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	nor_copy1_rows_V_out { ap_fifo {  { nor_copy1_rows_V_out_din fifo_data 1 11 }  { nor_copy1_rows_V_out_full_n fifo_status 0 1 }  { nor_copy1_rows_V_out_write fifo_update 1 1 } } }
	nor_copy1_cols_V_out { ap_fifo {  { nor_copy1_cols_V_out_din fifo_data 1 10 }  { nor_copy1_cols_V_out_full_n fifo_status 0 1 }  { nor_copy1_cols_V_out_write fifo_update 1 1 } } }
	Sim_rows_V_out { ap_fifo {  { Sim_rows_V_out_din fifo_data 1 11 }  { Sim_rows_V_out_full_n fifo_status 0 1 }  { Sim_rows_V_out_write fifo_update 1 1 } } }
	Sim_cols_V_out { ap_fifo {  { Sim_cols_V_out_din fifo_data 1 10 }  { Sim_cols_V_out_full_n fifo_status 0 1 }  { Sim_cols_V_out_write fifo_update 1 1 } } }
}
