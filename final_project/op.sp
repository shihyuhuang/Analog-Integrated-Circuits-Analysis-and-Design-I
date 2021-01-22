************************************************************************
* auCdl Netlist:
* 
* Library Name:  final
* Top Cell Name: final
* View Name:     schematic
* Netlisted on:  Jan  7 14:16:42 2020
************************************************************************

*.BIPOLAR
*.RESI = 2000 
*.RESVAL
*.CAPVAL
*.DIOPERI
*.DIOAREA
*.EQUATION
*.SCALE METER
*.MEGA
.param vdd=1.5V
.param vss=0V
.param vocm=0.75

************************************************************************
* Library Name: final
* Cell Name:    final
* View Name:    schematic
************************************************************************

.SUBCKT  op vinp vinn vdd vss vop von vocm   
*.PININFO Vinn:I Vinp:I Vocm:O Von:O Vop:O
CCc2 net13 net1 3p 
CCc1 net7 net11 3p 
RRb vdd net063 25K 
RRCM2 net095 Von 5K 
RRCM1 Vop net095 5K 
RRZ2 net1 Von 10K 
RRZ1 Vop net7 10K 
MMB2 net23 net063 vss vss n_18 W=99u L=2u m=1
MMB1 net063 net063 vss vss n_18 W=50u L=2u m=1
MMF4 net19 net19 vss vss n_18 W=90u L=10u m=1
MMF3 net071 net071 vss vss n_18 W=90u L=10u m=1
MM6 Von net13 vss vss n_18 W=80u L=2u m=4
MM8 Vop net11 vss vss n_18 W=80u L=2u m=4
MM4 net13 net19 vss vss n_18 W=75u L=20u m=3
MM3 net11 net19 vss vss n_18 W=75u L=20u m=3
MMB3 net23 net23 vdd vdd p_18 W=90u L=1u m=1
MMF2 net19 net095 net0100 vdd p_18 W=75u L=3u m=1
MMF1 net071 Vocm net0100 vdd p_18 W=75u L=3u m=1
MMF5 net0100 net23 vdd vdd p_18 W=99u L=12u m=1
MM7 Von net23 vdd vdd p_18 W=90u L=3u m=6
MM9 Vop net23 vdd vdd p_18 W=90u L=3u m=6
MM2 net13 Vinn net32 vdd p_18 W=90u L=2u m=1
MM5 net32 net23 vdd vdd p_18 W=30u L=1.5u m=1
MM1 net11 Vinp net32 vdd p_18 W=90u L=2u m=1
.ENDS

