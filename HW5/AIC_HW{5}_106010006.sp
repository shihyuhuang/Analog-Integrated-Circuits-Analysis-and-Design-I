***hw5
.prot 
.lib 'cic018.l' TT 
.unprot 
.option 
+ post=1 
+ACCURATE=1 
+runlvl=6 
.option delmax = 1e-10 
.temp 25

 
.param vs =0 
 
Mx1a Vout1 VR1 Vx GND N_18 w=50u l=1.5u m=1
Mx1b Vout2 VR2 Vx GND N_18 w=50u l=1.5u m=1
Mx Vx VBS1 GND GND N_18 w=50u l=5u m=1 


VBS VG GND dc = 0.7V 
VBS1 VBS1 GND dc = 0.48V 
V+ VG VG1 dc =  vs ac =0.5 0 
V- VG VG2 dc = -vs ac =0.5 180 
VD VDD GND 1.8V 
  
CL1 Vout1 GND 1.5pF 
CL2 Vout2 GND 1.5pF 
Rd1 VDD Vout1 29k 
Rd2 VDD Vout2 29k 
Rs1 VG1 VR1 5k 
Rs2 VG2 VR2 5k 

*a 
.tf V(Vout1,Vout2) V+  

*b
.op


*c
.meas DC dcGain DERIV V(Vout1) at=0.7V
.dc VBS 0 1.8 0.01  
.probe DC   
+ gm = par('1/LX7(Mx1a)') 
+ ro_mx1 = par('1/LX8(Mx1a)') 
+ ro_mx  = par('1/LX8(Mx)')   
+ cdb = par('LX29(Mx1a)') 


*d
*.alter
*.dc vs -1.8 1.8 0.01  
*.probe DC Diff= par('(V(vout1)-V(vout2))') 

*e 
*.ac dec 1k 1k 1000G
*.pz V(Vout1,Vout2) V+ 
*.probe ac Diffgain =par('(V(Vout1)-V(Vout2))/(V(VG1)-V(VG2))')

*f
*.alter
*V+ VG VG1 sin(0V 0.0135V 10k 0ns) 
*V- VG VG2 dc =-vs ac =0 
*.tran 0.1ns 1000us 
*.four 10k v(vout1,vout2) 

*.alter
*V+ VG VG1 sin(0V 0.0138V 100k 0ns) 
*V- VG VG2 dc =-vs ac =0 
*.tran 0.1ns 100us 
*.four 100k v(vout1,vout2) 

*.alter
*V+ VG VG1 sin(0V 0.0213V 1x 0ns) 
*V- VG VG2 dc =-vs ac =0 
*.tran 0.1ns 30us 
*.four 1x v(vout1,vout2) 

*.alter
*V+ VG VG1 sin(0V 0.019V 10x 0ns) 
*V- VG VG2 dc =-vs ac =0 
*.tran 0.1ns 1us 
*.four 10x v(vout1,vout2) 


.end 