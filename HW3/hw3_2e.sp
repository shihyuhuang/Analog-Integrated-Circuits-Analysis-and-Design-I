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



M1 vdd VG out gnd N_18 w=w l=l m=1

vdd vdd gnd 1.8V
Rs in VG 10k
Rd out gnd Rd
vin in gnd PWL 0 1.69 1n 1.69 1.1n 1.79 1.5n 1.79
CL out gnd 1.0p

.op	
.tran 0.01ns '10n'
.end

