*hw6***
.prot
.lib 'cic018.l' TT
.unprot
.option
+ post=1
+ACCURATE=1
+ runlvl=6
.temp 25

.param
+ wn = 99u
+ ln = 0.27u
+ wp = 26u
+ lp = 0.28u
+ I = 1u


M1N out in gnd gnd N_18 w=wn l=ln m=4
M2P out in Vdd Vdd P_18 w=wp l=lp m=4

RF in out 1k
Rs in gnd 100k
Cin in gnd 1p
Cout out gnd 1p

Vdd Vdd gnd 1.5V
Iin gnd in dc=I ac=1m


.op
.probe DC
+ ro_m1 = par('1/LX8(M1N)')
+ ro_m2 = par('1/LX8(M2P)')
+ Cdb1 =LX29(M1N)
+ Cdb2 =LX29(M2P)
.tf V(out) Iin
.dc Iin 1u 10u 0.1u
.print par('V(out)/I(Iin)')
.pz V(out) Iin
.ac dec 100 1 100g
.probe par('V(out)/I(Iin)')





.end
