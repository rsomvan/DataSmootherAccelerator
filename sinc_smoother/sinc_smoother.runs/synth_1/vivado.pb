
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:072default:default2
00:00:082default:default2
431.6992default:default2
110.2702default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2
kC:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
p
Command: %s
53*	vivadotcl2?
+synth_design -top top -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
169202default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1247.609 ; gain = 409.227
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
top2default:default2
 2default:default2�
qC:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/sources_1/imports/sources_1/new/top.v2default:default2
252default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

xadc_wiz_02default:default2
 2default:default2�
�C:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.runs/synth_1/.Xil/Vivado-23592-Laptop/realtime/xadc_wiz_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

xadc_wiz_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.runs/synth_1/.Xil/Vivado-23592-Laptop/realtime/xadc_wiz_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
eos_out2default:default2

xadc_wiz_02default:default2
XLXI_72default:default2�
qC:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/sources_1/imports/sources_1/new/top.v2default:default2
632default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
XLXI_72default:default2

xadc_wiz_02default:default2
222default:default2
212default:default2�
qC:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/sources_1/imports/sources_1/new/top.v2default:default2
632default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2!
sinc_smoother2default:default2
 2default:default2
iC:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/sources_1/new/sinc_smoother.v2default:default2
242default:default8@Z8-6157h px� 
�
index %s out of range324*oasys2
192default:default2
iC:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/sources_1/new/sinc_smoother.v2default:default2
1092default:default8@Z8-324h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
sinc_smoother2default:default2
 2default:default2
02default:default2
12default:default2
iC:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/sources_1/new/sinc_smoother.v2default:default2
242default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
uart_buf_con2default:default2
 2default:default2�
�C:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/sources_1/imports/sources_1/imports/hdl/uart_buf_con.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
uart_buf_con2default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/sources_1/imports/sources_1/imports/hdl/uart_buf_con.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
uart_tx2default:default2
 2default:default2�
}C:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/sources_1/imports/sources_1/imports/hdl/uart_tx.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_tx2default:default2
 2default:default2
02default:default2
12default:default2�
}C:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/sources_1/imports/sources_1/imports/hdl/uart_tx.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2default:default2
 2default:default2
02default:default2
12default:default2�
qC:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/sources_1/imports/sources_1/new/top.v2default:default2
252default:default8@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2%
conv_hldr_reg[15]2default:default2
iC:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/sources_1/new/sinc_smoother.v2default:default2
1092default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2$
conv_hldr_reg[5]2default:default2
iC:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/sources_1/new/sinc_smoother.v2default:default2
1092default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2$
conv_hldr_reg[0]2default:default2
iC:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/sources_1/new/sinc_smoother.v2default:default2
1092default:default8@Z8-6014h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1341.012 ; gain = 502.629
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1341.012 ; gain = 502.629
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1341.012 ; gain = 502.629
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0202default:default2
1341.0122default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0/xadc_wiz_0_in_context.xdc2default:default2
XLXI_7	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0/xadc_wiz_0_in_context.xdc2default:default2
XLXI_7	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2�
{C:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/constrs_1/imports/constraints/Basys3_Master.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
{C:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/constrs_1/imports/constraints/Basys3_Master.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
{C:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.srcs/constrs_1/imports/constraints/Basys3_Master.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2x
bC:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2x
bC:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1387.8322default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0112default:default2
1387.8322default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1387.832 ; gain = 549.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1387.832 ; gain = 549.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1387.832 ; gain = 549.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:22 ; elapsed = 00:00:22 . Memory (MB): peak = 1387.832 ; gain = 549.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   31 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               31 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               19 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   11 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 10    
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
%s
*synth2j
VDSP Report: Generating DSP ss0/conv_hldr_reg[18], operation Mode is: (A''*(B:0x32))'.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register ss0/data_hldr_reg[17] is absorbed into DSP ss0/conv_hldr_reg[18].
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register ss0/data_hldr_reg[18] is absorbed into DSP ss0/conv_hldr_reg[18].
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register ss0/conv_hldr_reg[18] is absorbed into DSP ss0/conv_hldr_reg[18].
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: operator ss0/p_15_out is absorbed into DSP ss0/conv_hldr_reg[18].
2default:defaulth p
x
� 
{
%s
*synth2c
ODSP Report: Generating DSP ss0/n_sum0, operation Mode is: PCIN+(A''*(B:0x6))'.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/data_hldr_reg[0] is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/data_hldr_reg[1] is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/conv_hldr_reg[1] is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: operator ss0/p_0_out is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator ss0/n_sum0 is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP ss0/n_sum0, operation Mode is: PCIN+(A''*(B:0x92))'.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register ss0/data_hldr_reg[16] is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register ss0/data_hldr_reg[17] is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register ss0/conv_hldr_reg[17] is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator ss0/p_14_out is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator ss0/n_sum0 is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP ss0/n_sum0, operation Mode is: PCIN+(A''*(B:0xd1))'.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register ss0/data_hldr_reg[15] is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register ss0/data_hldr_reg[16] is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register ss0/conv_hldr_reg[16] is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator ss0/p_13_out is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator ss0/n_sum0 is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP ss0/n_sum0, operation Mode is: PCIN+(A''*(B:0xd1))'.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/data_hldr_reg[3] is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/data_hldr_reg[4] is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/conv_hldr_reg[4] is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: operator ss0/p_3_out is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator ss0/n_sum0 is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
}
%s
*synth2e
QDSP Report: Generating DSP ss0/n_sum0, operation Mode is: PCIN+(ACIN*(B:0x92))'.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/conv_hldr_reg[3] is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: operator ss0/p_2_out is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator ss0/n_sum0 is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
|
%s
*synth2d
PDSP Report: Generating DSP ss0/n_sum0, operation Mode is: PCIN+(A''*(B:0x32))'.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/data_hldr_reg[1] is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/data_hldr_reg[2] is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/conv_hldr_reg[2] is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: operator ss0/p_1_out is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator ss0/n_sum0 is absorbed into DSP ss0/n_sum0.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: Generating DSP ss0/conv_hldr_reg[13], operation Mode is: (A''*(B:0x918))'.
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register ss0/data_hldr_reg[12] is absorbed into DSP ss0/conv_hldr_reg[13].
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register ss0/data_hldr_reg[13] is absorbed into DSP ss0/conv_hldr_reg[13].
2default:defaulth p
x
� 
�
%s
*synth2k
WDSP Report: register ss0/conv_hldr_reg[13] is absorbed into DSP ss0/conv_hldr_reg[13].
2default:defaulth p
x
� 
z
%s
*synth2b
NDSP Report: operator ss0/p_11_out is absorbed into DSP ss0/conv_hldr_reg[13].
2default:defaulth p
x
� 

%s
*synth2g
SDSP Report: Generating DSP ss0/p_sum0, operation Mode is: PCIN+(ACIN2*(B:0x31e))'.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register ss0/data_hldr_reg[14] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register ss0/conv_hldr_reg[14] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator ss0/p_12_out is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator ss0/p_sum0 is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
~
%s
*synth2f
RDSP Report: Generating DSP ss0/p_sum0, operation Mode is: PCIN+(A''*(B:0x10d0))'.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register ss0/data_hldr_reg[11] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register ss0/data_hldr_reg[12] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register ss0/conv_hldr_reg[12] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
o
%s
*synth2W
CDSP Report: operator ss0/p_10_out is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator ss0/p_sum0 is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
~
%s
*synth2f
RDSP Report: Generating DSP ss0/p_sum0, operation Mode is: PCIN+(A''*(B:0x1780))'.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register ss0/data_hldr_reg[10] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register ss0/data_hldr_reg[11] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register ss0/conv_hldr_reg[11] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: operator ss0/p_9_out is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator ss0/p_sum0 is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 

%s
*synth2g
SDSP Report: Generating DSP ss0/p_sum0, operation Mode is: PCIN+(ACIN*(B:0x1a29))'.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register ss0/conv_hldr_reg[10] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: operator ss0/p_8_out is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator ss0/p_sum0 is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
~
%s
*synth2f
RDSP Report: Generating DSP ss0/p_sum0, operation Mode is: PCIN+(A''*(B:0x1780))'.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/data_hldr_reg[8] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/data_hldr_reg[9] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/conv_hldr_reg[9] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: operator ss0/p_7_out is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator ss0/p_sum0 is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 

%s
*synth2g
SDSP Report: Generating DSP ss0/p_sum0, operation Mode is: PCIN+(ACIN*(B:0x10d0))'.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/conv_hldr_reg[8] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: operator ss0/p_6_out is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator ss0/p_sum0 is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
}
%s
*synth2e
QDSP Report: Generating DSP ss0/p_sum0, operation Mode is: PCIN+(A''*(B:0x918))'.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/data_hldr_reg[6] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/data_hldr_reg[7] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/conv_hldr_reg[7] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: operator ss0/p_5_out is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator ss0/p_sum0 is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
~
%s
*synth2f
RDSP Report: Generating DSP ss0/p_sum0, operation Mode is: PCIN+(ACIN*(B:0x31e))'.
2default:defaulth p
x
� 
w
%s
*synth2_
KDSP Report: register ss0/conv_hldr_reg[6] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
n
%s
*synth2V
BDSP Report: operator ss0/p_4_out is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator ss0/p_sum0 is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
�
%s
*synth2h
TDSP Report: Generating DSP ss0/p_sum0, operation Mode is: PCIN+A:(B:0x0)'+(C:0x0)'.
2default:defaulth p
x
� 
x
%s
*synth2`
LDSP Report: register ss0/conv_hldr_reg[19] is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
m
%s
*synth2U
ADSP Report: operator ss0/p_sum0 is absorbed into DSP ss0/p_sum0.
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1387.832 ; gain = 549.449
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2p
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
2default:defaulth px� 
�
%s*synth2�
�+--------------+--------------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name   | DSP Mapping              | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px� 
�
%s*synth2�
�+--------------+--------------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
�|sinc_smoother | (A''*(B:0x32))'          | 16     | 6      | -      | -      | 22     | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|sinc_smoother | PCIN+(A''*(B:0x6))'      | 16     | 3      | -      | -      | 23     | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|sinc_smoother | PCIN+(A''*(B:0x92))'     | 16     | 8      | -      | -      | 25     | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|sinc_smoother | PCIN+(A''*(B:0xd1))'     | 16     | 8      | -      | -      | 26     | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|top           | PCIN+(A''*(B:0xd1))'     | 16     | 8      | -      | -      | 27     | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|sinc_smoother | PCIN+(ACIN*(B:0x92))'    | 16     | 8      | -      | -      | 28     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|top           | PCIN+(A''*(B:0x32))'     | 16     | 6      | -      | -      | 29     | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|sinc_smoother | (A''*(B:0x918))'         | 16     | 12     | -      | -      | 28     | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|sinc_smoother | PCIN+(ACIN2*(B:0x31e))'  | 16     | 10     | -      | -      | 29     | 1    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|sinc_smoother | PCIN+(A''*(B:0x10d0))'   | 16     | 13     | -      | -      | 30     | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|sinc_smoother | PCIN+(A''*(B:0x1780))'   | 16     | 13     | -      | -      | 31     | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|sinc_smoother | PCIN+(ACIN*(B:0x1a29))'  | 16     | 13     | -      | -      | 32     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|sinc_smoother | PCIN+(A''*(B:0x1780))'   | 16     | 13     | -      | -      | 33     | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|sinc_smoother | PCIN+(ACIN*(B:0x10d0))'  | 16     | 13     | -      | -      | 33     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|sinc_smoother | PCIN+(A''*(B:0x918))'    | 16     | 12     | -      | -      | 33     | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|sinc_smoother | PCIN+(ACIN*(B:0x31e))'   | 16     | 10     | -      | -      | 33     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|sinc_smoother | PCIN+A:(B:0x0)'+(C:0x0)' | 14     | 18     | 32     | -      | -1     | 0    | 1    | 1    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�+--------------+--------------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 1398.672 ; gain = 560.289
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 1402.738 ; gain = 564.355
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 1431.391 ; gain = 593.008
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:45 ; elapsed = 00:00:46 . Memory (MB): peak = 1438.297 ; gain = 599.914
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:45 ; elapsed = 00:00:46 . Memory (MB): peak = 1438.297 ; gain = 599.914
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:45 ; elapsed = 00:00:46 . Memory (MB): peak = 1438.297 ; gain = 599.914
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:45 ; elapsed = 00:00:46 . Memory (MB): peak = 1438.297 ; gain = 599.914
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:45 ; elapsed = 00:00:46 . Memory (MB): peak = 1438.297 ; gain = 599.914
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:45 ; elapsed = 00:00:46 . Memory (MB): peak = 1438.297 ; gain = 599.914
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23

Static Shift Register Report:
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+--------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name | RTL Name                 | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+--------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|top         | ss0/valid_in_reg_reg[2]  | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|top         | ss0/data_hldr_reg[5][15] | 3      | 32    | NO           | NO                 | YES               | 32     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+--------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
i
%s
*synth2Q
=
DSP Final Report (the ' indicates corresponding REG is set)
2default:defaulth p
x
� 
�
%s
*synth2�
�+--------------+------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name   | DSP Mapping      | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+--------------+------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|sinc_smoother | (A''*B)'         | 16     | 6      | -      | -      | 0      | 2    | 0    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|sinc_smoother | PCIN+(A''*B)'    | 16     | 3      | -      | -      | 0      | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|sinc_smoother | PCIN+(A''*B)'    | 16     | 8      | -      | -      | 0      | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|sinc_smoother | PCIN+(A''*B)'    | 16     | 8      | -      | -      | 0      | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|top           | PCIN+(A''*B)'    | 16     | 0      | -      | -      | 0      | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|sinc_smoother | PCIN+(A*B)'      | 0      | 8      | -      | -      | 0      | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|top           | (PCIN+(A''*B)')' | 16     | 6      | -      | -      | 29     | 2    | 0    | -    | -    | -     | 1    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|sinc_smoother | (A''*B)'         | 16     | 12     | -      | -      | 0      | 2    | 0    | -    | -    | -     | 0    | 1    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|sinc_smoother | PCIN+(A'*B)'     | 0      | 10     | -      | -      | 0      | 1    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|sinc_smoother | PCIN+(A''*B)'    | 16     | 13     | -      | -      | 0      | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|sinc_smoother | PCIN+(A''*B)'    | 16     | 13     | -      | -      | 0      | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|sinc_smoother | PCIN+(A*B)'      | 0      | 13     | -      | -      | 0      | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|sinc_smoother | PCIN+(A''*B)'    | 16     | 13     | -      | -      | 0      | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|sinc_smoother | PCIN+(A*B)'      | 0      | 13     | -      | -      | 0      | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|sinc_smoother | PCIN+(A''*B)'    | 16     | 12     | -      | -      | 0      | 2    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|sinc_smoother | PCIN+(A*B)'      | 0      | 10     | -      | -      | 0      | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|sinc_smoother | PCIN+A:B'+C'     | 0      | 0      | -      | -      | 33     | 0    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+--------------+------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |xadc_wiz_0    |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|1     |xadc_wiz |     1|
2default:defaulth px� 
F
%s*synth2.
|2     |BUFG     |     1|
2default:defaulth px� 
F
%s*synth2.
|3     |CARRY4   |    17|
2default:defaulth px� 
F
%s*synth2.
|4     |DSP48E1  |    17|
2default:defaulth px� 
F
%s*synth2.
|12    |LUT1     |    22|
2default:defaulth px� 
F
%s*synth2.
|13    |LUT2     |    35|
2default:defaulth px� 
F
%s*synth2.
|14    |LUT3     |    10|
2default:defaulth px� 
F
%s*synth2.
|15    |LUT4     |    24|
2default:defaulth px� 
F
%s*synth2.
|16    |LUT5     |    13|
2default:defaulth px� 
F
%s*synth2.
|17    |LUT6     |    10|
2default:defaulth px� 
F
%s*synth2.
|18    |SRL16E   |    33|
2default:defaulth px� 
F
%s*synth2.
|19    |FDRE     |   324|
2default:defaulth px� 
F
%s*synth2.
|20    |FDSE     |    35|
2default:defaulth px� 
F
%s*synth2.
|21    |IBUF     |    11|
2default:defaulth px� 
F
%s*synth2.
|22    |OBUF     |    17|
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:45 ; elapsed = 00:00:46 . Memory (MB): peak = 1438.297 ; gain = 599.914
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:32 ; elapsed = 00:00:43 . Memory (MB): peak = 1438.297 ; gain = 553.094
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:45 ; elapsed = 00:00:46 . Memory (MB): peak = 1438.297 ; gain = 599.914
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0132default:default2
1451.3522default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
342default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1456.0162default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
85cbe1962default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
332default:default2
72default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:522default:default2
00:00:532default:default2
1456.0162default:default2
990.5122default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2o
[C:/Users/ravis/source/repos/CEE575/b3_proj/sinc_smoother/sinc_smoother.runs/synth_1/top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Apr 25 17:58:52 20232default:defaultZ17-206h px� 


End Record