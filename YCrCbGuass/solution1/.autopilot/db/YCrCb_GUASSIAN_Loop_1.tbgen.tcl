set moduleName YCrCb_GUASSIAN_Loop_1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {YCrCb_GUASSIAN_Loop_.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ Cr_Img_data_stream_0_V int 8 regular {fifo 0 volatile }  }
	{ Cb_Img_data_stream_0_V int 8 regular {fifo 0 volatile }  }
	{ Sim_data_stream_0_V float 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Cr_Img_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Cb_Img_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "Sim_data_stream_0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ Cr_Img_data_stream_0_V_dout sc_in sc_lv 8 signal 0 } 
	{ Cr_Img_data_stream_0_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ Cr_Img_data_stream_0_V_read sc_out sc_logic 1 signal 0 } 
	{ Cb_Img_data_stream_0_V_dout sc_in sc_lv 8 signal 1 } 
	{ Cb_Img_data_stream_0_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ Cb_Img_data_stream_0_V_read sc_out sc_logic 1 signal 1 } 
	{ Sim_data_stream_0_V_din sc_out sc_lv 32 signal 2 } 
	{ Sim_data_stream_0_V_full_n sc_in sc_logic 1 signal 2 } 
	{ Sim_data_stream_0_V_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "Cr_Img_data_stream_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Cr_Img_data_stream_0_V", "role": "dout" }} , 
 	{ "name": "Cr_Img_data_stream_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Cr_Img_data_stream_0_V", "role": "empty_n" }} , 
 	{ "name": "Cr_Img_data_stream_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Cr_Img_data_stream_0_V", "role": "read" }} , 
 	{ "name": "Cb_Img_data_stream_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Cb_Img_data_stream_0_V", "role": "dout" }} , 
 	{ "name": "Cb_Img_data_stream_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Cb_Img_data_stream_0_V", "role": "empty_n" }} , 
 	{ "name": "Cb_Img_data_stream_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Cb_Img_data_stream_0_V", "role": "read" }} , 
 	{ "name": "Sim_data_stream_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Sim_data_stream_0_V", "role": "din" }} , 
 	{ "name": "Sim_data_stream_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Sim_data_stream_0_V", "role": "full_n" }} , 
 	{ "name": "Sim_data_stream_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Sim_data_stream_0_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "YCrCb_GUASSIAN_Loop_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "Cr_Img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "Cr_Img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Cb_Img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "Cb_Img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Sim_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "Sim_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_fpfYi_U40", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_dag8j_U41", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_dag8j_U42", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_dag8j_U43", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_dag8j_U44", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_dag8j_U45", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_dmhbi_U46", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_dmhbi_U47", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_dmhbi_U48", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_dmhbi_U49", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_dmhbi_U50", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_dmhbi_U51", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_dmhbi_U52", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_uiibs_U53", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_uiibs_U54", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_dejbC_U55", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	YCrCb_GUASSIAN_Loop_1 {
		Cr_Img_data_stream_0_V {Type I LastRead 2 FirstWrite -1}
		Cb_Img_data_stream_0_V {Type I LastRead 2 FirstWrite -1}
		Sim_data_stream_0_V {Type O LastRead -1 FirstWrite 61}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "345661", "Max" : "345661"}
	, {"Name" : "Interval", "Min" : "345661", "Max" : "345661"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Cr_Img_data_stream_0_V { ap_fifo {  { Cr_Img_data_stream_0_V_dout fifo_data 0 8 }  { Cr_Img_data_stream_0_V_empty_n fifo_status 0 1 }  { Cr_Img_data_stream_0_V_read fifo_update 1 1 } } }
	Cb_Img_data_stream_0_V { ap_fifo {  { Cb_Img_data_stream_0_V_dout fifo_data 0 8 }  { Cb_Img_data_stream_0_V_empty_n fifo_status 0 1 }  { Cb_Img_data_stream_0_V_read fifo_update 1 1 } } }
	Sim_data_stream_0_V { ap_fifo {  { Sim_data_stream_0_V_din fifo_data 1 32 }  { Sim_data_stream_0_V_full_n fifo_status 0 1 }  { Sim_data_stream_0_V_write fifo_update 1 1 } } }
}
