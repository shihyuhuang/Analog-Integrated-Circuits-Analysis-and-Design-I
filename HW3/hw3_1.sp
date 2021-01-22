*hw3_1
.prot
.lib 'cic018.l' TT
.unprot
.option
+ post=1
+ACCURATE=1
+ runlvl=6
.temp 25


M1 out VG gnd gnd N_18 w=49.99u l=8.5u m=1

vdd vdd gnd 1.8V
Rs in VG 10k
RL vdd out 900k
vin in gnd DC=0.318 AC=0.1
CL out gnd 1.0p

.op
.ac dec 100 100 100G
.dc vin 0 1.8 0.001
.probe ac gain = par('V(out)/V(in)')
.print ro=par('1/LX8(M1)')
.pz V(out) vin
.measure AC max_gain max 'V(out)/V(in)'

.end
