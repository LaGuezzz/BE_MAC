

Command: %s
53*	vivadotcl2N
:synth_design -top EthernetController -part xc7a35tcpg236-12default:defaultZ4-113h px� 
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
�
%s*synth2�
�Starting Synthesize : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 1255.273 ; gain = 83.809 ; free physical = 108810 ; free virtual = 135541
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2&
EthernetController2default:default2Z
D/home/deladrie/Bureau/BE_MAC/BE_MAC.srcs/sources_1/new/reception.vhd2default:default2
312default:default8@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2&
internal_collision2default:default2Z
D/home/deladrie/Bureau/BE_MAC/BE_MAC.srcs/sources_1/new/reception.vhd2default:default2
1522default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2&
EthernetController2default:default2
12default:default2
12default:default2Z
D/home/deladrie/Bureau/BE_MAC/BE_MAC.srcs/sources_1/new/reception.vhd2default:default2
312default:default8@Z8-256h px� 
�
%s*synth2�
�Finished Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1299.898 ; gain = 128.434 ; free physical = 108817 ; free virtual = 135548
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
�Finished Constraint Validation : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1299.898 ; gain = 128.434 ; free physical = 108819 ; free virtual = 135550
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
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1307.902 ; gain = 136.438 ; free physical = 108819 ; free virtual = 135550
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
merging register '%s' into '%s'3619*oasys2'
internal_RCVNGP_reg2default:default2

RCVNGP_reg2default:default2Z
D/home/deladrie/Bureau/BE_MAC/BE_MAC.srcs/sources_1/new/reception.vhd2default:default2
552default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2
RSTARTP_reg2default:default2

RCVNGP_reg2default:default2Z
D/home/deladrie/Bureau/BE_MAC/BE_MAC.srcs/sources_1/new/reception.vhd2default:default2
592default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2
RCLEAND_reg2default:default2
RSMATIP_reg2default:default2Z
D/home/deladrie/Bureau/BE_MAC/BE_MAC.srcs/sources_1/new/reception.vhd2default:default2
572default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2(
internal_TRNSMTP_reg2default:default2
TRNSMTP_reg2default:default2Z
D/home/deladrie/Bureau/BE_MAC/BE_MAC.srcs/sources_1/new/reception.vhd2default:default2
1642default:default8@Z8-4471h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
internal_RCVNGP_reg2default:default2Z
D/home/deladrie/Bureau/BE_MAC/BE_MAC.srcs/sources_1/new/reception.vhd2default:default2
552default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
RSTARTP_reg2default:default2Z
D/home/deladrie/Bureau/BE_MAC/BE_MAC.srcs/sources_1/new/reception.vhd2default:default2
592default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
RCLEAND_reg2default:default2Z
D/home/deladrie/Bureau/BE_MAC/BE_MAC.srcs/sources_1/new/reception.vhd2default:default2
572default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2(
internal_TRNSMTP_reg2default:default2Z
D/home/deladrie/Bureau/BE_MAC/BE_MAC.srcs/sources_1/new/reception.vhd2default:default2
1642default:default8@Z8-6014h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

byte_count2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
tstate2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
TDATAO2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2

rstate_reg2default:default2&
EthernetController2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    idle |                                0 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_               check_mac |                                1 |                               01
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

rstate_reg2default:default2

sequential2default:default2&
EthernetController2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1323.918 ; gain = 152.453 ; free physical = 108809 ; free virtual = 135540
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 4     
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
.	                8 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 8     
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
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 13    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 29    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 11    
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
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
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
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
G
%s
*synth2/
Module EthernetController 
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
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 4     
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
.	                8 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 8     
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
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 13    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 29    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 11    
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
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
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
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
TDATAO2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2

RDONEP_reg2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2!
RDATAO_reg[0]2default:default2
FDCE2default:default2!
RDATAO_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2!
RDATAO_reg[1]2default:default2
FDCE2default:default2!
RDATAO_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2!
RDATAO_reg[2]2default:default2
FDCE2default:default2!
RDATAO_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2!
RDATAO_reg[3]2default:default2
FDCE2default:default2!
RDATAO_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2!
RDATAO_reg[4]2default:default2
FDCE2default:default2!
RDATAO_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2!
RDATAO_reg[5]2default:default2
FDCE2default:default2!
RDATAO_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2!
RDATAO_reg[6]2default:default2
FDCE2default:default2!
RDATAO_reg[7]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2#
\RDATAO_reg[7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2
RSMATIP_reg2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2

RBYTEP_reg2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2

RBYTEP_reg2default:default2&
EthernetController2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
RSMATIP_reg2default:default2&
EthernetController2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
RDATAO_reg[7]2default:default2&
EthernetController2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2

RDONEP_reg2default:default2&
EthernetController2default:defaultZ8-3332h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:10 ; elapsed = 00:00:20 . Memory (MB): peak = 1435.027 ; gain = 263.562 ; free physical = 108619 ; free virtual = 135351
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
�Finished Timing Optimization : Time (s): cpu = 00:00:10 ; elapsed = 00:00:20 . Memory (MB): peak = 1435.027 ; gain = 263.562 ; free physical = 108619 ; free virtual = 135351
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
�Finished Technology Mapping : Time (s): cpu = 00:00:10 ; elapsed = 00:00:21 . Memory (MB): peak = 1436.035 ; gain = 264.570 ; free physical = 108619 ; free virtual = 135351
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
�Finished IO Insertion : Time (s): cpu = 00:00:10 ; elapsed = 00:00:21 . Memory (MB): peak = 1436.035 ; gain = 264.570 ; free physical = 108650 ; free virtual = 135383
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
+multi-driven net %s with %s driver pin '%s'3351*oasys2 
TSOCOLP_OBUF2default:default2
1st2default:default2,
internal_collision_reg/Q2default:default2Z
D/home/deladrie/Bureau/BE_MAC/BE_MAC.srcs/sources_1/new/reception.vhd2default:default2
3132default:default8@Z8-3352h px� 
�
+multi-driven net %s with %s driver pin '%s'3351*oasys2 
TSOCOLP_OBUF2default:default2
2nd2default:default2!
TSOCOLP_reg/Q2default:default2Z
D/home/deladrie/Bureau/BE_MAC/BE_MAC.srcs/sources_1/new/reception.vhd2default:default2
1662default:default8@Z8-3352h px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        1|Failed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:10 ; elapsed = 00:00:21 . Memory (MB): peak = 1436.035 ; gain = 264.570 ; free physical = 108650 ; free virtual = 135383
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:10 ; elapsed = 00:00:21 . Memory (MB): peak = 1436.035 ; gain = 264.570 ; free physical = 108650 ; free virtual = 135383
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:10 ; elapsed = 00:00:21 . Memory (MB): peak = 1436.035 ; gain = 264.570 ; free physical = 108650 ; free virtual = 135383
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:21 . Memory (MB): peak = 1436.035 ; gain = 264.570 ; free physical = 108650 ; free virtual = 135383
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:10 ; elapsed = 00:00:21 . Memory (MB): peak = 1436.035 ; gain = 264.570 ; free physical = 108650 ; free virtual = 135383
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
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
C
%s*synth2+
+------+------+------+
2default:defaulth px� 
C
%s*synth2+
|      |Cell  |Count |
2default:defaulth px� 
C
%s*synth2+
+------+------+------+
2default:defaulth px� 
C
%s*synth2+
|1     |BUFG  |     1|
2default:defaulth px� 
C
%s*synth2+
|2     |LUT1  |     1|
2default:defaulth px� 
C
%s*synth2+
|3     |LUT2  |     9|
2default:defaulth px� 
C
%s*synth2+
|4     |LUT3  |    11|
2default:defaulth px� 
C
%s*synth2+
|5     |LUT4  |     4|
2default:defaulth px� 
C
%s*synth2+
|6     |LUT5  |    14|
2default:defaulth px� 
C
%s*synth2+
|7     |LUT6  |    40|
2default:defaulth px� 
C
%s*synth2+
|8     |MUXF7 |     3|
2default:defaulth px� 
C
%s*synth2+
|9     |FDCE  |    24|
2default:defaulth px� 
C
%s*synth2+
|10    |FDPE  |     2|
2default:defaulth px� 
C
%s*synth2+
|11    |FDRE  |     5|
2default:defaulth px� 
C
%s*synth2+
|12    |IBUF  |    22|
2default:defaulth px� 
C
%s*synth2+
|13    |OBUF  |    27|
2default:defaulth px� 
C
%s*synth2+
+------+------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
� 
N
%s
*synth26
"|      |Instance |Module |Cells |
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
� 
N
%s
*synth26
"|1     |top      |       |   163|
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:10 ; elapsed = 00:00:21 . Memory (MB): peak = 1436.035 ; gain = 264.570 ; free physical = 108650 ; free virtual = 135383
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
FSynthesis finished with 0 errors, 2 critical warnings and 9 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:10 ; elapsed = 00:00:21 . Memory (MB): peak = 1436.035 ; gain = 264.570 ; free physical = 108653 ; free virtual = 135385
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:10 ; elapsed = 00:00:21 . Memory (MB): peak = 1436.043 ; gain = 264.570 ; free physical = 108662 ; free virtual = 135394
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
252default:defaultZ29-17h px� 
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
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
322default:default2
92default:default2
22default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:132default:default2
00:00:232default:default2
1566.0622default:default2
406.2422default:default2
1086312default:default2
1353642default:defaultZ17-722h px� 
K
"No constraint will be written out.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2[
G/home/deladrie/Bureau/BE_MAC/BE_MAC.runs/synth_1/EthernetController.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
zExecuting : report_utilization -file EthernetController_utilization_synth.rpt -pb EthernetController_utilization_synth.pb
2default:defaulth px� 
�
�report_utilization: Time (s): cpu = 00:00:00.08 ; elapsed = 00:00:00.15 . Memory (MB): peak = 1590.074 ; gain = 0.000 ; free physical = 108638 ; free virtual = 135369
*commonh px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Apr 10 16:42:03 20232default:defaultZ17-206h px� 


End Record