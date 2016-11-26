<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="11">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>convolve</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>image_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>image.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
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
						<name>weights</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>weights</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>1</if_type>
				<array_size>25</array_size>
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
						<name>conv_output_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>conv_output.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
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
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>done</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>done</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>3</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>4</count>
					<item_version>0</item_version>
					<item>18</item>
					<item>19</item>
					<item>20</item>
					<item>21</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>14</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>23</item>
					<item>24</item>
				</oprand_edges>
				<opcode>call</opcode>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>15</id>
						<name></name>
						<fileName>convolution_layer_1/.settings/convolution_layer_1.cpp</fileName>
						<fileDirectory>/home/littlefoot/18643_project/Hardware-Accel/HW</fileDirectory>
						<lineNumber>76</lineNumber>
						<contextFuncName>convolve</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="11" tracking_level="0" version="0">
								<first>/home/littlefoot/18643_project/Hardware-Accel/HW</first>
								<second class_id="12" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="13" tracking_level="0" version="0">
										<first class_id="14" tracking_level="0" version="0">
											<first>convolution_layer_1/.settings/convolution_layer_1.cpp</first>
											<second>convolve</second>
										</first>
										<second>76</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_8">
				<Value>
					<Obj>
						<type>2</type>
						<id>17</id>
						<name>convolve_Loop_BUFFER_RESET_proc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:convolve_Loop_BUFFER_RESET_proc&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_9">
				<Value>
					<Obj>
						<type>2</type>
						<id>22</id>
						<name>convolve_Block_proc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:convolve_Block__proc&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_10">
				<Obj>
					<type>3</type>
					<id>16</id>
					<name>convolve</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>3</count>
					<item_version>0</item_version>
					<item>13</item>
					<item>14</item>
					<item>15</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>6</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_11">
				<id>18</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>13</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_12">
				<id>19</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>13</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_13">
				<id>20</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>13</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_14">
				<id>21</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>13</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_15">
				<id>23</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>14</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_16">
				<id>24</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>14</sink_obj>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_17">
			<mId>1</mId>
			<mTag>convolve</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>299607</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_18">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>2</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_19">
						<type>0</type>
						<name>convolve_Loop_BUFFER_RESET_proc_U0</name>
						<ssdmobj_id>13</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>3</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_20">
								<port class_id="29" tracking_level="1" version="0" object_id="_21">
									<name>weights</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_22">
									<type>0</type>
									<name>convolve_Loop_BUFFER_RESET_proc_U0</name>
									<ssdmobj_id>13</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_23">
								<port class_id_reference="29" object_id="_24">
									<name>image_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_22"></inst>
							</item>
							<item class_id_reference="28" object_id="_25">
								<port class_id_reference="29" object_id="_26">
									<name>conv_output_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_22"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_27">
						<type>0</type>
						<name>convolve_Block_proc_U0</name>
						<ssdmobj_id>14</ssdmobj_id>
						<pins>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_28">
								<port class_id_reference="29" object_id="_29">
									<name>done</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_30">
									<type>0</type>
									<name>convolve_Block_proc_U0</name>
									<ssdmobj_id>14</ssdmobj_id>
								</inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</channel_list>
				<net_list class_id="32" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="34" tracking_level="1" version="0" object_id="_31">
		<dp_component_resource class_id="35" tracking_level="0" version="0">
			<count>0</count>
			<item_version>0</item_version>
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
			<count>0</count>
			<item_version>0</item_version>
		</dp_multiplexer_resource>
		<dp_register_resource>
			<count>0</count>
			<item_version>0</item_version>
		</dp_register_resource>
		<dp_component_map class_id="36" tracking_level="0" version="0">
			<count>0</count>
			<item_version>0</item_version>
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
	<node_label_latency class_id="37" tracking_level="0" version="0">
		<count>3</count>
		<item_version>0</item_version>
		<item class_id="38" tracking_level="0" version="0">
			<first>13</first>
			<second class_id="39" tracking_level="0" version="0">
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>14</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>15</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="40" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="41" tracking_level="0" version="0">
			<first>16</first>
			<second class_id="42" tracking_level="0" version="0">
				<first>0</first>
				<second>1</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="43" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="44" tracking_level="1" version="0" object_id="_32">
			<region_name>convolve</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</basic_blocks>
			<nodes>
				<count>11</count>
				<item_version>0</item_version>
				<item>5</item>
				<item>6</item>
				<item>7</item>
				<item>8</item>
				<item>9</item>
				<item>10</item>
				<item>11</item>
				<item>12</item>
				<item>13</item>
				<item>14</item>
				<item>15</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="45" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="47" tracking_level="0" version="0">
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
	<dp_port_io_nodes class_id="48" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core class_id="49" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

