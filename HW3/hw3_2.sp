*hw3_2
.prot
.lib 'cic018.l' TT
.unprot
.option
+ post=1
+ACCURATE=1
+ runlvl=6
.temp 25

.PARAM 
+ l = 10u
+ w = 50u
+ Rd = 760k
+ Vi = 1.74


M1 vdd VG out gnd N_18 w=w l=l m=1

vdd vdd gnd 1.8V
Rs in VG 10k
Rd out gnd Rd
vin in gnd DC=Vi AC=0.1
CL out gnd 1.0p

.op	
.ac dec 100 1 500meg
.tf V(out) vin
.dc vin 0 1.8 0.01
.print ro=par('1/LX8(M1)')
.measure AC max_gain max 'V(out)/V(in)'

.end

