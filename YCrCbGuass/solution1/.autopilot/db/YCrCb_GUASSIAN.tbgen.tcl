set moduleName YCrCb_GUASSIAN
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {YCrCb_GUASSIAN}
set C_modelType { void 0 }
set C_modelArgList {
	{ rows int 32 regular {ap_stable 0} }
	{ cols int 32 regular {ap_stable 0} }
	{ src_data_stream_0_V int 8 regular {fifo 0 volatile }  }
	{ src_data_stream_1_V int 8 regular {fifo 0 volatile }  }
	{ src_data_stream_2_V int 8 regular {fifo 0 volatile }  }
	{ res_data_stream_V int 8 regular {fifo 1 volatile }  }
	{ nor_data_stream_V float 32 regular {fifo 1 volatile }  }
	{ threshold double 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "src_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "res_data_stream_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nor_data_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "threshold", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ rows sc_in sc_lv 32 signal 0 } 
	{ cols sc_in sc_lv 32 signal 1 } 
	{ src_data_stream_0_V_dout sc_in sc_lv 8 signal 2 } 
	{ src_data_stream_0_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ src_data_stream_0_V_read sc_out sc_logic 1 signal 2 } 
	{ src_data_stream_1_V_dout sc_in sc_lv 8 signal 3 } 
	{ src_data_stream_1_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ src_data_stream_1_V_read sc_out sc_logic 1 signal 3 } 
	{ src_data_stream_2_V_dout sc_in sc_lv 8 signal 4 } 
	{ src_data_stream_2_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ src_data_stream_2_V_read sc_out sc_logic 1 signal 4 } 
	{ res_data_stream_V_din sc_out sc_lv 8 signal 5 } 
	{ res_data_stream_V_full_n sc_in sc_logic 1 signal 5 } 
	{ res_data_stream_V_write sc_out sc_logic 1 signal 5 } 
	{ nor_data_stream_V_din sc_out sc_lv 32 signal 6 } 
	{ nor_data_stream_V_full_n sc_in sc_logic 1 signal 6 } 
	{ nor_data_stream_V_write sc_out sc_logic 1 signal 6 } 
	{ threshold sc_out sc_lv 64 signal 7 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ rows_ap_vld sc_in sc_logic 1 invld 0 } 
	{ cols_ap_vld sc_in sc_logic 1 invld 1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ threshold_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "src_data_stream_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_data_stream_0_V", "role": "dout" }} , 
 	{ "name": "src_data_stream_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_0_V", "role": "empty_n" }} , 
 	{ "name": "src_data_stream_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_0_V", "role": "read" }} , 
 	{ "name": "src_data_stream_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_data_stream_1_V", "role": "dout" }} , 
 	{ "name": "src_data_stream_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_1_V", "role": "empty_n" }} , 
 	{ "name": "src_data_stream_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_1_V", "role": "read" }} , 
 	{ "name": "src_data_stream_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_data_stream_2_V", "role": "dout" }} , 
 	{ "name": "src_data_stream_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_2_V", "role": "empty_n" }} , 
 	{ "name": "src_data_stream_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_2_V", "role": "read" }} , 
 	{ "name": "res_data_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "res_data_stream_V", "role": "din" }} , 
 	{ "name": "res_data_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_data_stream_V", "role": "full_n" }} , 
 	{ "name": "res_data_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_data_stream_V", "role": "write" }} , 
 	{ "name": "nor_data_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nor_data_stream_V", "role": "din" }} , 
 	{ "name": "nor_data_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nor_data_stream_V", "role": "full_n" }} , 
 	{ "name": "nor_data_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nor_data_stream_V", "role": "write" }} , 
 	{ "name": "threshold", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "threshold", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "rows_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rows", "role": "ap_vld" }} , 
 	{ "name": "cols_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "cols", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "threshold_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "threshold", "role": "ap_vld" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "8", "9", "26", "27", "30", "38", "39", "56", "57", "60", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110"],
		"CDFG" : "YCrCb_GUASSIAN",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "2", "Name" : "CvtColor_U0"}],
		"OutputProcess" : [
			{"ID" : "60", "Name" : "erode_dilate_U0"},
			{"ID" : "38", "Name" : "Duplicate_U0"},
			{"ID" : "56", "Name" : "YCrCb_GUASSIAN_Block_U0"}],
		"Port" : [
			{"Name" : "rows", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cols", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "CvtColor_U0", "Port" : "src_mat_data_stream_s"}]},
			{"Name" : "src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "CvtColor_U0", "Port" : "src_mat_data_stream_1"}]},
			{"Name" : "src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "CvtColor_U0", "Port" : "src_mat_data_stream_2"}]},
			{"Name" : "res_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "erode_dilate_U0", "Port" : "res_data_stream_V"}]},
			{"Name" : "nor_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "Duplicate_U0", "Port" : "dst1_data_stream_V"}]},
			{"Name" : "threshold", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "YCrCb_GUASSIAN_Block_U0", "Port" : "threshold"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Block_2_U0", "Parent" : "0",
		"CDFG" : "YCrCb_GUASSIAN_Block_2",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "nor_copy1_rows_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "nor_copy1_rows_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nor_copy1_cols_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "82",
				"BlockSignal" : [
					{"Name" : "nor_copy1_cols_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Sim_rows_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "Sim_rows_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Sim_cols_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "Sim_cols_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CvtColor_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7"],
		"CDFG" : "CvtColor",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "rows", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cols", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "src_mat_data_stream_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_mat_data_stream_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mat_data_stream_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_mat_data_stream_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mat_data_stream_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_mat_data_stream_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "YCrCb_IMG_data_strea_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "85",
				"BlockSignal" : [
					{"Name" : "YCrCb_IMG_data_strea_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "YCrCb_IMG_data_strea_1_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "86",
				"BlockSignal" : [
					{"Name" : "YCrCb_IMG_data_strea_1_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "YCrCb_IMG_data_strea_2_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "87",
				"BlockSignal" : [
					{"Name" : "YCrCb_IMG_data_strea_2_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.CvtColor_U0.ImgProcess_Top_mubkb_U17", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.CvtColor_U0.ImgProcess_Top_macud_U18", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.CvtColor_U0.ImgProcess_Top_madEe_U19", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.CvtColor_U0.ImgProcess_Top_maeOg_U20", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.CvtColor_U0.ImgProcess_Top_maeOg_U21", "Parent" : "2"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Split_U0", "Parent" : "0",
		"CDFG" : "Split",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "2",
		"StartFifo" : "start_for_Split_U0_U",
		"Port" : [
			{"Name" : "src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "85",
				"BlockSignal" : [
					{"Name" : "src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "86",
				"BlockSignal" : [
					{"Name" : "src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "87",
				"BlockSignal" : [
					{"Name" : "src_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst0_data_stream_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dst1_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "88",
				"BlockSignal" : [
					{"Name" : "dst1_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst2_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "89",
				"BlockSignal" : [
					{"Name" : "dst2_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_1_U0", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
		"CDFG" : "YCrCb_GUASSIAN_Loop_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "8",
		"StartFifo" : "start_for_YCrCb_GBew_U",
		"Port" : [
			{"Name" : "Cr_Img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "88",
				"BlockSignal" : [
					{"Name" : "Cr_Img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Cb_Img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "89",
				"BlockSignal" : [
					{"Name" : "Cb_Img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Sim_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "90",
				"BlockSignal" : [
					{"Name" : "Sim_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_fpfYi_U40", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dag8j_U41", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dag8j_U42", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dag8j_U43", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dag8j_U44", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dag8j_U45", "Parent" : "9"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dmhbi_U46", "Parent" : "9"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dmhbi_U47", "Parent" : "9"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dmhbi_U48", "Parent" : "9"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dmhbi_U49", "Parent" : "9"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dmhbi_U50", "Parent" : "9"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dmhbi_U51", "Parent" : "9"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dmhbi_U52", "Parent" : "9"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_uiibs_U53", "Parent" : "9"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_uiibs_U54", "Parent" : "9"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_1_U0.ImgProcess_Top_dejbC_U55", "Parent" : "9"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Duplicate349_U0", "Parent" : "0",
		"CDFG" : "Duplicate349",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "9",
		"StartFifo" : "start_for_DuplicaCeG_U",
		"Port" : [
			{"Name" : "src_rows_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "src_rows_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_cols_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "src_cols_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "90",
				"BlockSignal" : [
					{"Name" : "src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst1_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "dst1_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst2_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "dst2_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MinMaxLoc_U0", "Parent" : "0", "Child" : ["28", "29"],
		"CDFG" : "MinMaxLoc",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "26",
		"StartFifo" : "start_for_MinMaxLDeQ_U",
		"Port" : [
			{"Name" : "src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "min_val_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "min_val_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_val_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "max_val_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MinMaxLoc_U0.ImgProcess_Top_fpkbM_U69", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MinMaxLoc_U0.ImgProcess_Top_fpkbM_U70", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalized_U0", "Parent" : "0", "Child" : ["31"],
		"CDFG" : "normalized",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "26",
		"StartFifo" : "start_for_normaliEe0_U",
		"InputProcess" : [
			{"ID" : "31", "Name" : "normalized_Loop_loop_U0"}],
		"OutputProcess" : [
			{"ID" : "31", "Name" : "normalized_Loop_loop_U0"}],
		"Port" : [
			{"Name" : "sim_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "92",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "normalized_Loop_loop_U0", "Port" : "sim_data_stream_V"}]},
			{"Name" : "nor_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "95",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "normalized_Loop_loop_U0", "Port" : "nor_data_stream_V"}]},
			{"Name" : "gray_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "96",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "normalized_Loop_loop_U0", "Port" : "gray_data_stream_V"}]},
			{"Name" : "max", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "94",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "normalized_Loop_loop_U0", "Port" : "max"}]},
			{"Name" : "min", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "93",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "normalized_Loop_loop_U0", "Port" : "min"}]}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalized_U0.normalized_Loop_loop_U0", "Parent" : "30", "Child" : ["32", "33", "34", "35", "36", "37"],
		"CDFG" : "normalized_Loop_loop",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "max", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "max_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "min", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "min_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sim_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "sim_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nor_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "95",
				"BlockSignal" : [
					{"Name" : "nor_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gray_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "96",
				"BlockSignal" : [
					{"Name" : "gray_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.normalized_U0.normalized_Loop_loop_U0.ImgProcess_Top_fpfYi_U75", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.normalized_U0.normalized_Loop_loop_U0.ImgProcess_Top_fpkbM_U76", "Parent" : "31"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.normalized_U0.normalized_Loop_loop_U0.ImgProcess_Top_fpkbM_U77", "Parent" : "31"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.normalized_U0.normalized_Loop_loop_U0.ImgProcess_Top_dslbW_U78", "Parent" : "31"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.normalized_U0.normalized_Loop_loop_U0.ImgProcess_Top_dmhbi_U79", "Parent" : "31"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.normalized_U0.normalized_Loop_loop_U0.ImgProcess_Top_ddmb6_U80", "Parent" : "31"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Duplicate_U0", "Parent" : "0",
		"CDFG" : "Duplicate",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "30",
		"StartFifo" : "start_for_DuplicaFfa_U",
		"Port" : [
			{"Name" : "src_rows_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "src_rows_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_cols_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "82",
				"BlockSignal" : [
					{"Name" : "src_cols_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "95",
				"BlockSignal" : [
					{"Name" : "src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst1_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dst1_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst2_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "97",
				"BlockSignal" : [
					{"Name" : "dst2_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.otsu_threshold_U0", "Parent" : "0", "Child" : ["40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55"],
		"CDFG" : "otsu_threshold",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "30",
		"StartFifo" : "start_for_otsu_thGfk_U",
		"Port" : [
			{"Name" : "gray_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "96",
				"BlockSignal" : [
					{"Name" : "gray_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "98",
				"BlockSignal" : [
					{"Name" : "ret_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ret_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "99",
				"BlockSignal" : [
					{"Name" : "ret_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.otsu_threshold_U0.ImgProcess_Top_fancg_U98", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.otsu_threshold_U0.ImgProcess_Top_fsocq_U99", "Parent" : "39"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.otsu_threshold_U0.ImgProcess_Top_fsocq_U100", "Parent" : "39"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.otsu_threshold_U0.ImgProcess_Top_fmpcA_U101", "Parent" : "39"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.otsu_threshold_U0.ImgProcess_Top_fmpcA_U102", "Parent" : "39"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.otsu_threshold_U0.ImgProcess_Top_fdqcK_U103", "Parent" : "39"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.otsu_threshold_U0.ImgProcess_Top_sircU_U104", "Parent" : "39"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.otsu_threshold_U0.ImgProcess_Top_sircU_U105", "Parent" : "39"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.otsu_threshold_U0.ImgProcess_Top_fcsc4_U106", "Parent" : "39"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.otsu_threshold_U0.ImgProcess_Top_ddmb6_U107", "Parent" : "39"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.otsu_threshold_U0.ImgProcess_Top_sitde_U108", "Parent" : "39"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.otsu_threshold_U0.ImgProcess_Top_muudo_U109", "Parent" : "39"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.otsu_threshold_U0.ImgProcess_Top_muudo_U110", "Parent" : "39"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.otsu_threshold_U0.ImgProcess_Top_muudo_U111", "Parent" : "39"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.otsu_threshold_U0.ImgProcess_Top_muudo_U112", "Parent" : "39"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.otsu_threshold_U0.ImgProcess_Top_sdvdy_U113", "Parent" : "39"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Block_U0", "Parent" : "0",
		"CDFG" : "YCrCb_GUASSIAN_Block",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"StartSource" : "39",
		"StartFifo" : "start_for_YCrCb_GIfE_U",
		"Port" : [
			{"Name" : "tmp3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "98",
				"BlockSignal" : [
					{"Name" : "tmp3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "threshold", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_U0", "Parent" : "0", "Child" : ["58", "59"],
		"CDFG" : "YCrCb_GUASSIAN_Loop_s",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "38",
		"StartFifo" : "start_for_YCrCb_GHfu_U",
		"Port" : [
			{"Name" : "nor_copy2_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "97",
				"BlockSignal" : [
					{"Name" : "nor_copy2_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tmp3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "99",
				"BlockSignal" : [
					{"Name" : "tmp3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "origin_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "100",
				"BlockSignal" : [
					{"Name" : "origin_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_U0.ImgProcess_Top_fpkbM_U128", "Parent" : "57"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.YCrCb_GUASSIAN_Loop_U0.ImgProcess_Top_dcwdI_U129", "Parent" : "57"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0", "Parent" : "0", "Child" : ["61", "70", "79", "80"],
		"CDFG" : "erode_dilate",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "57",
		"StartFifo" : "start_for_erode_dJfO_U",
		"InputProcess" : [
			{"ID" : "61", "Name" : "Erode_U0"}],
		"OutputProcess" : [
			{"ID" : "70", "Name" : "Dilate_U0"}],
		"Port" : [
			{"Name" : "img_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "100",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "Erode_U0", "Port" : "p_src_data_stream_V"}]},
			{"Name" : "res_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "Dilate_U0", "Port" : "p_dst_data_stream_V"}]}]},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Erode_U0", "Parent" : "60", "Child" : ["62", "63", "64", "65", "66", "67", "68", "69"],
		"CDFG" : "Erode",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "100",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Erode_U0.k_buf_0_val_3_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Erode_U0.k_buf_0_val_4_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Erode_U0.k_buf_0_val_5_U", "Parent" : "61"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Erode_U0.ImgProcess_Top_muxdS_U134", "Parent" : "61"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Erode_U0.ImgProcess_Top_muxdS_U135", "Parent" : "61"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Erode_U0.ImgProcess_Top_muxdS_U136", "Parent" : "61"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Erode_U0.ImgProcess_Top_muxdS_U137", "Parent" : "61"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Erode_U0.ImgProcess_Top_muxdS_U138", "Parent" : "61"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Dilate_U0", "Parent" : "60", "Child" : ["71", "72", "73", "74", "75", "76", "77", "78"],
		"CDFG" : "Dilate",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "61",
		"StartFifo" : "start_for_Dilate_U0_U",
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Dilate_U0.k_buf_0_val_3_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Dilate_U0.k_buf_0_val_4_U", "Parent" : "70"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Dilate_U0.k_buf_0_val_5_U", "Parent" : "70"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Dilate_U0.ImgProcess_Top_muxdS_U143", "Parent" : "70"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Dilate_U0.ImgProcess_Top_muxdS_U144", "Parent" : "70"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Dilate_U0.ImgProcess_Top_muxdS_U145", "Parent" : "70"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Dilate_U0.ImgProcess_Top_muxdS_U146", "Parent" : "70"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.Dilate_U0.ImgProcess_Top_muxdS_U147", "Parent" : "70"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.tmp_img_data_stream_s_U", "Parent" : "60"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.erode_dilate_U0.start_for_Dilate_U0_U", "Parent" : "60"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nor_copy1_rows_V_c_i_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nor_copy1_cols_V_c_i_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sim_rows_V_c_i_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sim_cols_V_c_i_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.YCrCb_IMG_data_strea_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.YCrCb_IMG_data_strea_1_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.YCrCb_IMG_data_strea_2_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Cr_Img_data_stream_0_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Cb_Img_data_stream_0_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sim_data_stream_0_V_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sim_copy1_data_strea_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sim_copy2_data_strea_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.min_c_i_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max_c_i_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nor_copy1_data_strea_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gray_data_stream_0_s_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nor_copy2_data_strea_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp3_c_i_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp3_c5_i_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.origin_data_stream_0_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Split_U0_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_YCrCb_GBew_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DuplicaCeG_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_MinMaxLDeQ_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_normaliEe0_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DuplicaFfa_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_otsu_thGfk_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_YCrCb_GHfu_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_YCrCb_GIfE_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_erode_dJfO_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	YCrCb_GUASSIAN {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		src_data_stream_0_V {Type I LastRead 3 FirstWrite -1}
		src_data_stream_1_V {Type I LastRead 3 FirstWrite -1}
		src_data_stream_2_V {Type I LastRead 3 FirstWrite -1}
		res_data_stream_V {Type O LastRead -1 FirstWrite 8}
		nor_data_stream_V {Type O LastRead -1 FirstWrite 3}
		threshold {Type O LastRead -1 FirstWrite 0}}
	YCrCb_GUASSIAN_Block_2 {
		nor_copy1_rows_V_out {Type O LastRead -1 FirstWrite 0}
		nor_copy1_cols_V_out {Type O LastRead -1 FirstWrite 0}
		Sim_rows_V_out {Type O LastRead -1 FirstWrite 0}
		Sim_cols_V_out {Type O LastRead -1 FirstWrite 0}}
	CvtColor {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		src_mat_data_stream_s {Type I LastRead 3 FirstWrite -1}
		src_mat_data_stream_1 {Type I LastRead 3 FirstWrite -1}
		src_mat_data_stream_2 {Type I LastRead 3 FirstWrite -1}
		YCrCb_IMG_data_strea_i {Type O LastRead -1 FirstWrite 8}
		YCrCb_IMG_data_strea_1_i {Type O LastRead -1 FirstWrite 8}
		YCrCb_IMG_data_strea_2_i {Type O LastRead -1 FirstWrite 8}}
	Split {
		src_data_stream_0_V {Type I LastRead 3 FirstWrite -1}
		src_data_stream_1_V {Type I LastRead 3 FirstWrite -1}
		src_data_stream_2_V {Type I LastRead 3 FirstWrite -1}
		dst0_data_stream_V {Type O LastRead -1 FirstWrite 3}
		dst1_data_stream_V {Type O LastRead -1 FirstWrite 3}
		dst2_data_stream_V {Type O LastRead -1 FirstWrite 3}}
	YCrCb_GUASSIAN_Loop_1 {
		Cr_Img_data_stream_0_V {Type I LastRead 2 FirstWrite -1}
		Cb_Img_data_stream_0_V {Type I LastRead 2 FirstWrite -1}
		Sim_data_stream_0_V {Type O LastRead -1 FirstWrite 61}}
	Duplicate349 {
		src_rows_V {Type I LastRead 0 FirstWrite -1}
		src_cols_V {Type I LastRead 0 FirstWrite -1}
		src_data_stream_V {Type I LastRead 3 FirstWrite -1}
		dst1_data_stream_V {Type O LastRead -1 FirstWrite 3}
		dst2_data_stream_V {Type O LastRead -1 FirstWrite 3}}
	MinMaxLoc {
		src_data_stream_V {Type I LastRead 3 FirstWrite -1}
		min_val_out {Type O LastRead -1 FirstWrite 2}
		max_val_out {Type O LastRead -1 FirstWrite 2}}
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
		gray_data_stream_V {Type O LastRead -1 FirstWrite 53}}
	Duplicate {
		src_rows_V {Type I LastRead 0 FirstWrite -1}
		src_cols_V {Type I LastRead 0 FirstWrite -1}
		src_data_stream_V {Type I LastRead 3 FirstWrite -1}
		dst1_data_stream_V {Type O LastRead -1 FirstWrite 3}
		dst2_data_stream_V {Type O LastRead -1 FirstWrite 3}}
	otsu_threshold {
		gray_data_stream_V {Type I LastRead 3 FirstWrite -1}
		ret_out {Type O LastRead -1 FirstWrite 58}
		ret_out1 {Type O LastRead -1 FirstWrite 58}}
	YCrCb_GUASSIAN_Block {
		tmp3 {Type I LastRead 0 FirstWrite -1}
		threshold {Type O LastRead -1 FirstWrite 0}}
	YCrCb_GUASSIAN_Loop_s {
		nor_copy2_data_stream_0_V {Type I LastRead 2 FirstWrite -1}
		tmp3 {Type I LastRead 0 FirstWrite -1}
		origin_data_stream_0_V {Type O LastRead -1 FirstWrite 4}}
	erode_dilate {
		img_data_stream_V {Type I LastRead 4 FirstWrite -1}
		res_data_stream_V {Type O LastRead -1 FirstWrite 8}}
	Erode {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 8}}
	Dilate {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "364911", "Max" : "494706"}
	, {"Name" : "Interval", "Min" : "364797", "Max" : "494592"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rows { ap_stable {  { rows in_data 0 32 }  { rows_ap_vld in_vld 0 1 } } }
	cols { ap_stable {  { cols in_data 0 32 }  { cols_ap_vld in_vld 0 1 } } }
	src_data_stream_0_V { ap_fifo {  { src_data_stream_0_V_dout fifo_data 0 8 }  { src_data_stream_0_V_empty_n fifo_status 0 1 }  { src_data_stream_0_V_read fifo_update 1 1 } } }
	src_data_stream_1_V { ap_fifo {  { src_data_stream_1_V_dout fifo_data 0 8 }  { src_data_stream_1_V_empty_n fifo_status 0 1 }  { src_data_stream_1_V_read fifo_update 1 1 } } }
	src_data_stream_2_V { ap_fifo {  { src_data_stream_2_V_dout fifo_data 0 8 }  { src_data_stream_2_V_empty_n fifo_status 0 1 }  { src_data_stream_2_V_read fifo_update 1 1 } } }
	res_data_stream_V { ap_fifo {  { res_data_stream_V_din fifo_data 1 8 }  { res_data_stream_V_full_n fifo_status 0 1 }  { res_data_stream_V_write fifo_update 1 1 } } }
	nor_data_stream_V { ap_fifo {  { nor_data_stream_V_din fifo_data 1 32 }  { nor_data_stream_V_full_n fifo_status 0 1 }  { nor_data_stream_V_write fifo_update 1 1 } } }
	threshold { ap_vld {  { threshold out_data 1 64 }  { threshold_ap_vld out_vld 1 1 } } }
}
