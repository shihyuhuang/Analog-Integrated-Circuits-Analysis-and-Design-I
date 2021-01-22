*hw7a
.prot 
.lib 'cic018.l' TT 
.unprot 
.option 
+ post=1 
+ACCURATE=1 
+runlvl=6 
.temp 25
.option delmax = 1e-10 

.param wp=3u
.param lp=10u
.param wn=90u
.param ln=13u
.param wnd=28u
.param lnd=30u
.param vbss=0.52
.param vs =0 


mmpl outl outl vdd vdd p_18 W=wp L=lp m=1
mmpr outr outr vdd vdd p_18 W=wp L=lp m=1
mmnl outl n1 nd gnd n_18 W=wn L=ln m=1
mmnr outr nr nd gnd n_18 W=wn L=ln m=1
mmnd nd vbs gnd gnd n_18 W=wnd L=lnd m=1

rsl n1 rslx 5k
rsr nr rsrx 5k
cll outl gnd 1.5p
clr outr gnd 1.5p

Vcm Vx GND dc = 0.9V 
Vbs Vbs GND dc = vbss
V+ Vx rslx dc =  vs ac =0.5 0 
V- Vx rsrx dc = -vs ac =0.5 180 
VD vdd gnd 1.8V 


.meas ac dcgain_in_db max vdb(outl,outr)
.meas ac dcgain max vm(outl,outr)

.op
.ac dec 10 1k 1T 

.meas ac unity_frequency when vdb(outl,outr)=0
.meas ac phase find vp(outl,outr) at=unity_frequency
.meas ac phase_margin param='180+phase'
.probe V(outl)
.probe V(outr) 
.probe diffout = par('V(outl)-V(outr)')

*pole/zero
.pz V(outl,outr) V+ 


.END
******************************************************************************
*hw7b
.prot 
.lib 'cic018.l' TT 
.unprot 
.option 
+ post=1 
+ACCURATE=1 
+runlvl=6 
.temp 25
.option delmax = 1e-10 

.param wp=3u
.param lp=10u
.param wn=90u
.param ln=13u
.param wnd=28u
.param lnd=30u
.param vbss=0.52
.param vs =0 


mmpl outl outl vdd vdd p_18 W=wp L=lp m=1
mmpr outr outr vdd vdd p_18 W=wp L=lp m=1
mmnl outl n1 nd gnd n_18 W=wn L=ln m=1
mmnr outr nr nd gnd n_18 W=wn L=ln m=1
mmnd nd vbs gnd gnd n_18 W=wnd L=lnd m=1

rsl n1 rslx 5k
rsr nr rsrx 5k
cll outl gnd 1.5p
clr outr gnd 1.5p

Vcm Vx GND dc = 0.9V 
Vbs Vbs GND dc = vbss
V+ Vx rslx dc =  vs
V- Vx rsrx dc = -vs
VD vdd gnd 1.8V 

.DC Vs -1.8 1.8 0.01
.probe diffout = par('V(outl)-V(outr)')

.END
******************************************************************************
*hw7c
.prot 
.lib 'cic018.l' TT 
.unprot 
.option 
+ post=1 
+ACCURATE=1 
+runlvl=6 
.temp 25
.option delmax = 1e-10 

.param wp=3u
.param lp=10u
.param wn=90u
.param ln=13u
.param wnd=28u
.param lnd=30u
.param vbss=0.52
.param vs =0 


mmpl outl outl vdd vdd p_18 W=wp L=lp m=1
mmpr outr outr vdd vdd p_18 W=wp L=lp m=1
mmnl outl n1 nd gnd n_18 W=wn L=ln m=1
mmnr outr nr nd gnd n_18 W=wn L=ln m=1
mmnd nd vbs gnd gnd n_18 W=wnd L=lnd m=1

rsl n1 rslx 5k
rsr nr rsrx 5k
cll outl gnd 1.5p
clr outr gnd 1.5p

Vcm Vx GND dc = 0.9V 
Vbs Vbs GND dc = vbss
V+ Vx rslx dc =  vs ac =1 0 
V- Vx rsrx dc = -vs ac =1 0 
VD vdd gnd 1.8V 

.op
.ac dec 10 0.1k 100T 

.meas ac acm_in_db find vdb(outl) at=10k
.end
******************************************************************************
*hw7d
.prot 
.lib 'cic018.l' TT 
.unprot 
.option 
+ post=1 
+ACCURATE=1 
+runlvl=6 
.temp 25
.option delmax = 1e-10 

.param wp=3u
.param lp=10u
.param wn=90u
.param ln=13u
.param wnd=28u
.param lnd=30u
.param vbss=0.52
.param vs =0 


mmpl outl outl vdd vdd p_18 W=wp L=lp m=1
mmpr outr outr vdd vdd p_18 W=wp L=lp m=1
mmnl outl n1 nd gnd n_18 W=wn L=ln m=1
mmnr outr nr nd gnd n_18 W=wn L=ln m=1
mmnd nd vbs gnd gnd n_18 W=wnd L=lnd m=1

rsl n1 rslx 5k
rsr nr rsrx 5k
cll outl gnd 1.5p
clr outr gnd 1.5p

Vcm Vx GND dc = 0.9V 
Vbs Vbs GND dc = vbss
V+ Vx rslx dc =  vs 
V- Vx rsrx dc = vs 
VD vdd gnd 1.8V 

.DC Vcm 0 1.8 0.01

.END
******************************************************************************
*hw7e1M
.prot 
.lib 'cic018.l' TT 
.unprot 
.option 
+ post=1 
+ACCURATE=1 
+runlvl=6 
.option delmax = 1e-10 
.temp 25

.param wp=3u
.param lp=10u
.param wn=90u
.param ln=13u
.param wnd=28u
.param lnd=30u
.param vbss=0.52
.param vs =0 


mmpl outl outl vdd vdd p_18 W=wp L=lp m=1
mmpr outr outr vdd vdd p_18 W=wp L=lp m=1
mmnl outl n1 nd gnd n_18 W=wn L=ln m=1
mmnr outr nr nd gnd n_18 W=wn L=ln m=1
mmnd nd vbs gnd gnd n_18 W=wnd L=lnd m=1

rsl n1 rslx 5k
rsr nr rsrx 5k
cll outl gnd 1.5p
clr outr gnd 1.5p

Vcm Vx GND dc = 0.9V 
Vbs Vbs GND dc = vbss
V+ Vx rslx sin(0V 0.024V 1x 0ns) 
V- Vx rsrx dc =-vs ac =0 
VD vdd gnd 1.8V 

.op
.tran 0.1ns 10us 
.four 1x v(outl,outr) 
.probe AC 

.END
******************************************************************************
*hw7e10M
.prot 
.lib 'cic018.l' TT 
.unprot 
.option 
+ post=1 
+ACCURATE=1 
+runlvl=6 
.option delmax = 1e-10 
.temp 25

.param wp=3u
.param lp=10u
.param wn=90u
.param ln=13u
.param wnd=28u
.param lnd=30u
.param vbss=0.52
.param vs =0 


mmpl outl outl vdd vdd p_18 W=wp L=lp m=1
mmpr outr outr vdd vdd p_18 W=wp L=lp m=1
mmnl outl n1 nd gnd n_18 W=wn L=ln m=1
mmnr outr nr nd gnd n_18 W=wn L=ln m=1
mmnd nd vbs gnd gnd n_18 W=wnd L=lnd m=1

rsl n1 rslx 5k
rsr nr rsrx 5k
cll outl gnd 1.5p
clr outr gnd 1.5p

Vcm Vx GND dc = 0.9V 
Vbs Vbs GND dc = vbss
V+ Vx rslx sin(0V 0.0195V 10x 0ns) 
V- Vx rsrx dc =-vs ac =0 
VD vdd gnd 1.8V 

.op
.tran 0.1ns 2us 
.four 10x v(outl,outr) 
.probe AC 

.END