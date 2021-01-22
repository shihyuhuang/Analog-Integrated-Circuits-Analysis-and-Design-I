*hw2_1
.prot
.lib 'cic018.l' TT
.unprot
.option
+ post=1
+ACCURATE=1
+ runlvl=6
.temp 25


M1 out G1 gnd gnd n_18 w=1u l=0.45u m=1

vdd vdd gnd 1.5
Rs in G1 10k
RL vdd out 844k
vin in gnd DC=0.48 AC=0.1
CL out gnd 1.0p

.op	
.ac dec 100 100 100G 
.pz V(out) vin
.dc vin 0 1.5 0.01 
.probe ac gain = par('V(out)/V(in)')
.print gm=LX7(M1)
+ ro=par('1/LX8(M1)')
.probe cdb=LX29(M1)
.measure AC max_gain max 'V(out)/V(in)'
.measure AC unitfreq WHEN par('V(out)/V(in)')= 'max_gain*0.707'

.end

*hw2_2
.prot
.lib 'cic018.l' TT
.unprot
.option
+ post=1
+ACCURATE=1
+ runlvl=6
.temp 25


M1 out G1 gnd gnd n_18 w=23u l=10u m=1

vdd vdd gnd 1.5
Rs in G1 10k
RL vdd out 2000k
vin in gnd DC=0.317173 AC=0.1
CL out gnd 1.0p

.op	
.ac dec 100 100 100G 
.pz V(out) vin
.dc vin 0 1.5 0.01 
.probe ac gain = par('V(out)/V(in)')
.print gm=LX7(M1)
+ ro=par('1/LX8(M1)')
.probe cdb=LX29(M1)
.measure AC max_gain max 'V(out)/V(in)'
.measure AC unitfreq WHEN par('V(out)/V(in)')= 'max_gain*0.707'

.end
