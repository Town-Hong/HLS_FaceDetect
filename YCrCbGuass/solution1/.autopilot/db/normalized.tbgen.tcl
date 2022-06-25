set moduleName normalized
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {normalized}
set C_modelType { void 0 }
set C_modelArgList {
	{ sim_data_stream_V float 32 regular {fifo 0 volatile }  }
	{ nor_data_stream_V float 32 regular {fifo 1 volatile }  }
	{ gray_data_stream_V int 8 regular {fifo 1 volatile }  }
	{ max double 64 regular {fifo 0}  }
	{ min double 64 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sim_data_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "nor_data_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gray_data_stream_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "min", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ sim_data_stream_V_dout sc_in sc_lv 32 signal 0 } 
	{ sim_data_stream_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ sim_data_stream_V_read sc_out sc_logic 1 signal 0 } 
	{ nor_data_stream_V_din sc_out sc_lv 32 signal 1 } 
	{ nor_data_stream_V_full_n sc_in sc_logic 1 signal 1 } 
	{ nor_data_stream_V_write sc_out sc_logic 1 signal 1 } 
	{ gray_data_stream_V_din sc_out sc_lv 8 signal 2 } 
	{ gray_data_stream_V_full_n sc_in sc_logic 1 signal 2 } 
	{ gray_data_stream_V_write sc_out sc_logic 1 signal 2 } 
	{ max_dout sc_in sc_lv 64 signal 3 } 
	{ max_empty_n sc_in sc_logic 1 signal 3 } 
	{ max_read sc_out sc_logic 1 signal 3 } 
	{ min_dout sc_in sc_lv 64 signal 4 } 
	{ min_empty_n sc_in sc_logic 1 signal 4 } 
	{ min_read sc_out sc_logic 1 signal 4 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "sim_data_stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sim_data_stream_V", "role": "dout" }} , 
 	{ "name": "sim_data_stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sim_data_stream_V", "role": "empty_n" }} , 
 	{ "name": "sim_data_stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sim_data_stream_V", "role": "read" }} , 
 	{ "name": "nor_data_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nor_data_stream_V", "role": "din" }} , 
 	{ "name": "nor_data_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nor_data_stream_V", "role": "full_n" }} , 
 	{ "name": "nor_data_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nor_data_stream_V", "role": "write" }} , 
 	{ "name": "gray_data_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gray_data_stream_V", "role": "din" }} , 
 	{ "name": "gray_data_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gray_data_stream_V", "role": "full_n" }} , 
 	{ "name": "gray_data_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gray_data_stream_V", "role": "write" }} , 
 	{ "name": "max_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "max", "role": "dout" }} , 
 	{ "name": "max_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max", "role": "empty_n" }} , 
 	{ "name": "max_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max", "role": "read" }} , 
 	{ "name": "min_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "min", "role": "dout" }} , 
 	{ "name": "min_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min", "role": "empty_n" }} , 
 	{ "name": "min_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min", "role": "read" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "normalized",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "1", "Name" : "normalized_Loop_loop_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "normalized_Loop_loop_U0"}],
		"Port" : [
			{"Name" : "sim_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "normalized_Loop_loop_U0", "Port" : "sim_data_stream_V"}]},
			{"Name" : "nor_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "normalized_Loop_loop_U0", "Port" : "nor_data_stream_V"}]},
			{"Name" : "gray_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "normalized_Loop_loop_U0", "Port" : "gray_data_stream_V"}]},
			{"Name" : "max", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "normalized_Loop_loop_U0", "Port" : "max"}]},
			{"Name" : "min", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "normalized_Loop_loop_U0", "Port" : "min"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalized_Loop_loop_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalized_Loop_loop_U0.ImgProcess_Top_fpfYi_U75", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalized_Loop_loop_U0.ImgProcess_Top_fpkbM_U76", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalized_Loop_loop_U0.ImgProcess_Top_fpkbM_U77", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalized_Loop_loop_U0.ImgProcess_Top_dslbW_U78", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalized_Loop_loop_U0.ImgProcess_Top_dmhbi_U79", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalized_Loop_loop_U0.ImgProcess_Top_ddmb6_U80", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	normalized {
		sim_data_stream_V {Type I LastRead 7 FirstWrite -1}
		nor_data_stream_V {Type O LastRead -1 FirstWrite 53}
		gray_data_stream_V {Type O LastRead -1 FirstWrite 53}
		max {Type I LastRead 0 FirstWrite -1}
		min {Type I LastRead 0 FirstWrite -1}}
	normalized_Loop_loop {
		max {Type I LastRead 0 FirstWrite -1}
		min {Type I LastRead 0 FirstWrite -1}
		sim_data_stream_V {Type I LastRead 7 FirstWrite -1}
		nor_data_stream_V {Type O LastRead -1 FirstWrite 53}
		gray_data_stream_V {Type O LastRead -1 FirstWrite 53}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "345653", "Max" : "345653"}
	, {"Name" : "Interval", "Min" : "345654", "Max" : "345654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sim_data_stream_V { ap_fifo {  { sim_data_stream_V_dout fifo_data 0 32 }  { sim_data_stream_V_empty_n fifo_status 0 1 }  { sim_data_stream_V_read fifo_update 1 1 } } }
	nor_data_stream_V { ap_fifo {  { nor_data_stream_V_din fifo_data 1 32 }  { nor_data_stream_V_full_n fifo_status 0 1 }  { nor_data_stream_V_write fifo_update 1 1 } } }
	gray_data_stream_V { ap_fifo {  { gray_data_stream_V_din fifo_data 1 8 }  { gray_data_stream_V_full_n fifo_status 0 1 }  { gray_data_stream_V_write fifo_update 1 1 } } }
	max { ap_fifo {  { max_dout fifo_data 0 64 }  { max_empty_n fifo_status 0 1 }  { max_read fifo_update 1 1 } } }
	min { ap_fifo {  { min_dout fifo_data 0 64 }  { min_empty_n fifo_status 0 1 }  { min_read fifo_update 1 1 } } }
}
