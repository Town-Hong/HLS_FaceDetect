set moduleName normalized_Loop_loop
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {normalized_Loop_loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ max double 64 regular {fifo 0}  }
	{ min double 64 regular {fifo 0}  }
	{ sim_data_stream_V float 32 regular {fifo 0 volatile }  }
	{ nor_data_stream_V float 32 regular {fifo 1 volatile }  }
	{ gray_data_stream_V int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "max", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "min", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sim_data_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "nor_data_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gray_data_stream_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ max_dout sc_in sc_lv 64 signal 0 } 
	{ max_empty_n sc_in sc_logic 1 signal 0 } 
	{ max_read sc_out sc_logic 1 signal 0 } 
	{ min_dout sc_in sc_lv 64 signal 1 } 
	{ min_empty_n sc_in sc_logic 1 signal 1 } 
	{ min_read sc_out sc_logic 1 signal 1 } 
	{ sim_data_stream_V_dout sc_in sc_lv 32 signal 2 } 
	{ sim_data_stream_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ sim_data_stream_V_read sc_out sc_logic 1 signal 2 } 
	{ nor_data_stream_V_din sc_out sc_lv 32 signal 3 } 
	{ nor_data_stream_V_full_n sc_in sc_logic 1 signal 3 } 
	{ nor_data_stream_V_write sc_out sc_logic 1 signal 3 } 
	{ gray_data_stream_V_din sc_out sc_lv 8 signal 4 } 
	{ gray_data_stream_V_full_n sc_in sc_logic 1 signal 4 } 
	{ gray_data_stream_V_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "max_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "max", "role": "dout" }} , 
 	{ "name": "max_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max", "role": "empty_n" }} , 
 	{ "name": "max_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max", "role": "read" }} , 
 	{ "name": "min_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "min", "role": "dout" }} , 
 	{ "name": "min_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min", "role": "empty_n" }} , 
 	{ "name": "min_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min", "role": "read" }} , 
 	{ "name": "sim_data_stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sim_data_stream_V", "role": "dout" }} , 
 	{ "name": "sim_data_stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sim_data_stream_V", "role": "empty_n" }} , 
 	{ "name": "sim_data_stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sim_data_stream_V", "role": "read" }} , 
 	{ "name": "nor_data_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nor_data_stream_V", "role": "din" }} , 
 	{ "name": "nor_data_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nor_data_stream_V", "role": "full_n" }} , 
 	{ "name": "nor_data_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nor_data_stream_V", "role": "write" }} , 
 	{ "name": "gray_data_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gray_data_stream_V", "role": "din" }} , 
 	{ "name": "gray_data_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gray_data_stream_V", "role": "full_n" }} , 
 	{ "name": "gray_data_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gray_data_stream_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "normalized_Loop_loop",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "max", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "max_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "min", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "min_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sim_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "sim_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nor_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "nor_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gray_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "gray_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_fpfYi_U75", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_fpkbM_U76", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_fpkbM_U77", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_dslbW_U78", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_dmhbi_U79", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_ddmb6_U80", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	normalized_Loop_loop {
		max {Type I LastRead 0 FirstWrite -1}
		min {Type I LastRead 0 FirstWrite -1}
		sim_data_stream_V {Type I LastRead 7 FirstWrite -1}
		nor_data_stream_V {Type O LastRead -1 FirstWrite 53}
		gray_data_stream_V {Type O LastRead -1 FirstWrite 53}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "345653", "Max" : "345653"}
	, {"Name" : "Interval", "Min" : "345653", "Max" : "345653"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	max { ap_fifo {  { max_dout fifo_data 0 64 }  { max_empty_n fifo_status 0 1 }  { max_read fifo_update 1 1 } } }
	min { ap_fifo {  { min_dout fifo_data 0 64 }  { min_empty_n fifo_status 0 1 }  { min_read fifo_update 1 1 } } }
	sim_data_stream_V { ap_fifo {  { sim_data_stream_V_dout fifo_data 0 32 }  { sim_data_stream_V_empty_n fifo_status 0 1 }  { sim_data_stream_V_read fifo_update 1 1 } } }
	nor_data_stream_V { ap_fifo {  { nor_data_stream_V_din fifo_data 1 32 }  { nor_data_stream_V_full_n fifo_status 0 1 }  { nor_data_stream_V_write fifo_update 1 1 } } }
	gray_data_stream_V { ap_fifo {  { gray_data_stream_V_din fifo_data 1 8 }  { gray_data_stream_V_full_n fifo_status 0 1 }  { gray_data_stream_V_write fifo_update 1 1 } } }
}
