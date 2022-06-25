<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>normalized</name>
      <ret_bitwidth>0</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>5</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>1</id>
              <name>sim_data_stream_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>sim.data_stream.V</originalName>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs class_id="7" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_2">
          <Value>
            <Obj>
              <type>1</type>
              <id>2</id>
              <name>nor_data_stream_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>nor.data_stream.V</originalName>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>32</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_3">
          <Value>
            <Obj>
              <type>1</type>
              <id>3</id>
              <name>gray_data_stream_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>gray.data_stream.V</originalName>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_4">
          <Value>
            <Obj>
              <type>1</type>
              <id>4</id>
              <name>max</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>64</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_5">
          <Value>
            <Obj>
              <type>1</type>
              <id>5</id>
              <name>min</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>64</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
      </ports>
      <nodes class_id="8" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_6">
          <Value>
            <Obj>
              <type>0</type>
              <id>12</id>
              <name/>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>normalized_Loop_loop_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>6</count>
            <item_version>0</item_version>
            <item>16</item>
            <item>17</item>
            <item>18</item>
            <item>19</item>
            <item>20</item>
            <item>21</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
        </item>
        <item class_id_reference="9" object_id="_7">
          <Value>
            <Obj>
              <type>0</type>
              <id>13</id>
              <name/>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>0</count>
            <item_version>0</item_version>
          </oprand_edges>
          <opcode>ret</opcode>
          <m_Display>0</m_Display>
        </item>
      </nodes>
      <consts class_id="11" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="12" tracking_level="1" version="0" object_id="_8">
          <Value>
            <Obj>
              <type>2</type>
              <id>15</id>
              <name>normalized_Loop_loop</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:normalized_Loop_loop&gt;</content>
        </item>
      </consts>
      <blocks class_id="13" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="14" tracking_level="1" version="0" object_id="_9">
          <Obj>
            <type>3</type>
            <id>14</id>
            <name>normalized</name>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <coreName/>
          </Obj>
          <node_objs>
            <count>2</count>
            <item_version>0</item_version>
            <item>12</item>
            <item>13</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="15" tracking_level="0" version="0">
        <count>6</count>
        <item_version>0</item_version>
        <item class_id="16" tracking_level="1" version="0" object_id="_10">
          <id>16</id>
          <edge_type>1</edge_type>
          <source_obj>15</source_obj>
          <sink_obj>12</sink_obj>
        </item>
        <item class_id_reference="16" object_id="_11">
          <id>17</id>
          <edge_type>1</edge_type>
          <source_obj>4</source_obj>
          <sink_obj>12</sink_obj>
        </item>
        <item class_id_reference="16" object_id="_12">
          <id>18</id>
          <edge_type>1</edge_type>
          <source_obj>5</source_obj>
          <sink_obj>12</sink_obj>
        </item>
        <item class_id_reference="16" object_id="_13">
          <id>19</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>12</sink_obj>
        </item>
        <item class_id_reference="16" object_id="_14">
          <id>20</id>
          <edge_type>1</edge_type>
          <source_obj>2</source_obj>
          <sink_obj>12</sink_obj>
        </item>
        <item class_id_reference="16" object_id="_15">
          <id>21</id>
          <edge_type>1</edge_type>
          <source_obj>3</source_obj>
          <sink_obj>12</sink_obj>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="17" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="18" tracking_level="1" version="0" object_id="_16">
        <mId>1</mId>
        <mTag>normalized</mTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>14</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>345653</mMinLatency>
        <mMaxLatency>-1</mMaxLatency>
        <mIsDfPipe>1</mIsDfPipe>
        <mDfPipe class_id="19" tracking_level="1" version="0" object_id="_17">
          <port_list class_id="20" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </port_list>
          <process_list class_id="21" tracking_level="0" version="0">
            <count>1</count>
            <item_version>0</item_version>
            <item class_id="22" tracking_level="1" version="0" object_id="_18">
              <type>0</type>
              <name>normalized_Loop_loop_U0</name>
              <ssdmobj_id>12</ssdmobj_id>
              <pins class_id="23" tracking_level="0" version="0">
                <count>5</count>
                <item_version>0</item_version>
                <item class_id="24" tracking_level="1" version="0" object_id="_19">
                  <port class_id="25" tracking_level="1" version="0" object_id="_20">
                    <name>max</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id="26" tracking_level="1" version="0" object_id="_21">
                    <type>0</type>
                    <name>normalized_Loop_loop_U0</name>
                    <ssdmobj_id>12</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="24" object_id="_22">
                  <port class_id_reference="25" object_id="_23">
                    <name>min</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="26" object_id_reference="_21"/>
                </item>
                <item class_id_reference="24" object_id="_24">
                  <port class_id_reference="25" object_id="_25">
                    <name>sim_data_stream_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="26" object_id_reference="_21"/>
                </item>
                <item class_id_reference="24" object_id="_26">
                  <port class_id_reference="25" object_id="_27">
                    <name>nor_data_stream_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="26" object_id_reference="_21"/>
                </item>
                <item class_id_reference="24" object_id="_28">
                  <port class_id_reference="25" object_id="_29">
                    <name>gray_data_stream_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="26" object_id_reference="_21"/>
                </item>
              </pins>
            </item>
          </process_list>
          <channel_list class_id="27" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </channel_list>
          <net_list class_id="28" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </net_list>
        </mDfPipe>
      </item>
    </cdfg_regions>
    <fsm class_id="29" tracking_level="1" version="0" object_id="_30">
      <states class_id="30" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="31" tracking_level="1" version="0" object_id="_31">
          <id>1</id>
          <operations class_id="32" tracking_level="0" version="0">
            <count>1</count>
            <item_version>0</item_version>
            <item class_id="33" tracking_level="1" version="0" object_id="_32">
              <id>12</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="31" object_id="_33">
          <id>2</id>
          <operations>
            <count>8</count>
            <item_version>0</item_version>
            <item class_id_reference="33" object_id="_34">
              <id>6</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="33" object_id="_35">
              <id>7</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="33" object_id="_36">
              <id>8</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="33" object_id="_37">
              <id>9</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="33" object_id="_38">
              <id>10</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="33" object_id="_39">
              <id>11</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="33" object_id="_40">
              <id>12</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="33" object_id="_41">
              <id>13</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="34" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="35" tracking_level="1" version="0" object_id="_42">
          <inState>1</inState>
          <outState>2</outState>
          <condition class_id="36" tracking_level="0" version="0">
            <id>0</id>
            <sop class_id="37" tracking_level="0" version="0">
              <count>1</count>
              <item_version>0</item_version>
              <item class_id="38" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
      </transitions>
    </fsm>
    <res class_id="39" tracking_level="1" version="0" object_id="_43">
      <dp_component_resource class_id="40" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="41" tracking_level="0" version="0">
          <first>normalized_Loop_loop_U0 (normalized_Loop_loop)</first>
          <second class_id="42" tracking_level="0" version="0">
            <count>4</count>
            <item_version>0</item_version>
            <item class_id="43" tracking_level="0" version="0">
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>DSP48E</first>
              <second>14</second>
            </item>
            <item>
              <first>FF</first>
              <second>5059</second>
            </item>
            <item>
              <first>LUT</first>
              <second>6982</second>
            </item>
          </second>
        </item>
      </dp_component_resource>
      <dp_expression_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>real_start</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0Size)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(2Count)</first>
              <second>2</second>
            </item>
            <item>
              <first>LUT</first>
              <second>9</second>
            </item>
          </second>
        </item>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>start_once_reg</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>(Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(Consts)</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>1</second>
            </item>
          </second>
        </item>
      </dp_register_resource>
      <dp_dsp_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>normalized_Loop_loop_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_dsp_resource>
      <dp_component_map class_id="44" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="45" tracking_level="0" version="0">
          <first>normalized_Loop_loop_U0 (normalized_Loop_loop)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>12</item>
          </second>
        </item>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_map>
      <dp_memory_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="46" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="47" tracking_level="0" version="0">
        <first>12</first>
        <second class_id="48" tracking_level="0" version="0">
          <first>0</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>13</first>
        <second>
          <first>1</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="49" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="50" tracking_level="0" version="0">
        <first>14</first>
        <second class_id="51" tracking_level="0" version="0">
          <first>0</first>
          <second>1</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="52" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="53" tracking_level="1" version="0" object_id="_44">
        <region_name>normalized</region_name>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>14</item>
        </basic_blocks>
        <nodes>
          <count>8</count>
          <item_version>0</item_version>
          <item>6</item>
          <item>7</item>
          <item>8</item>
          <item>9</item>
          <item>10</item>
          <item>11</item>
          <item>12</item>
          <item>13</item>
        </nodes>
        <anchor_node>-1</anchor_node>
        <region_type>16</region_type>
        <interval>0</interval>
        <pipe_depth>0</pipe_depth>
      </item>
    </regions>
    <dp_fu_nodes class_id="54" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="55" tracking_level="0" version="0">
        <first>28</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>12</item>
          <item>12</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="57" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="58" tracking_level="0" version="0">
        <first>grp_normalized_Loop_loop_fu_28</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>12</item>
          <item>12</item>
        </second>
      </item>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_io>
    <return_ports>
      <count>0</count>
      <item_version>0</item_version>
    </return_ports>
    <dp_mem_port_nodes class_id="59" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="60" tracking_level="0" version="0">
      <count>5</count>
      <item_version>0</item_version>
      <item class_id="61" tracking_level="0" version="0">
        <first>gray_data_stream_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>12</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>max</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>12</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>min</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>12</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>nor_data_stream_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>12</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>sim_data_stream_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>12</item>
            </second>
          </item>
        </second>
      </item>
    </dp_port_io_nodes>
    <port2core class_id="62" tracking_level="0" version="0">
      <count>5</count>
      <item_version>0</item_version>
      <item class_id="63" tracking_level="0" version="0">
        <first>1</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>2</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>3</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>4</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>5</first>
        <second>FIFO</second>
      </item>
    </port2core>
    <node2core>
      <count>0</count>
      <item_version>0</item_version>
    </node2core>
  </syndb>
</boost_serialization>
