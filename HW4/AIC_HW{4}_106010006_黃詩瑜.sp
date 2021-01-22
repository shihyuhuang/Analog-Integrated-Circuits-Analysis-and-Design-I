*hw4
.prot
.lib 'cic018.l' TT
.unprot
.option
+ post=1
+ACCURATE=1
+ runlvl=6
+ measdgt=6
.temp 25


M1 M1D M1G M1S gnd n_18 w=6.125u l=0.735u m=1
M2 M1S M1D gnd gnd n_18 w=6.125u l=0.735u m=1

*S1
M11 M11D M11G M11S gnd n_18 w=6.125u l=0.735u m=1
M12 M11S M1G M12S gnd n_18 w=6.125u l=0.735u m=1
M13 M12S M1D gnd gnd n_18 w=6.125u l=0.735u m=1

*S2
M21 M11D M21G M21S gnd n_18 w=6.125u l=0.735u m=2
M22 M21S M1G M22S gnd n_18 w=6.125u l=0.735u m=2
M23 M22S M1D gnd gnd n_18 w=6.125u l=0.735u m=2

*S3
M31 M11D M31G M31S gnd n_18 w=6.125u l=0.735u m=4
M32 M31S M1G M32S gnd n_18 w=6.125u l=0.735u m=4
M33 M32S M1D gnd gnd n_18 w=6.125u l=0.735u m=4

*S4
M41 M11D M41G M41S gnd n_18 w=6.125u l=0.735u m=8
M42 M41S M1G M42S gnd n_18 w=6.125u l=0.735u m=8
M43 M42S M1D gnd gnd n_18 w=6.125u l=0.735u m=8



vdd vdd gnd 1.5V
RL vdd M11D 0.5k
Vb M1G gnd 1.1V
IM vdd M1D 0.0001

VSX1 M11G gnd PULSE 0 1.5 10n 1n 1n 9n 20n
VSX2 M21G gnd PULSE 0 1.5 20n 1n 1n 19n 40n 
VSX3 M31G gnd PULSE 0 1.5 40n 1n 1n 39n 80n 
VSX4 M41G gnd PULSE 0 1.5 80n 1n 1n 79n 160n


.op
.tran 0.01n 160n
.meas TRAN vout1 FIND V(M11D) at=5n
.meas TRAN vout2 FIND V(M11D) at=15n
.meas TRAN vout3 FIND V(M11D) at=25n
.meas TRAN vout4 FIND V(M11D) at=35n
.meas TRAN vout5 FIND V(M11D) at=45n
.meas TRAN vout6 FIND V(M11D) at=55n
.meas TRAN vout7 FIND V(M11D) at=65n
.meas TRAN vout8 FIND V(M11D) at=75n
.meas TRAN vout9 FIND V(M11D) at=85n
.meas TRAN vout10 FIND V(M11D) at=95n
.meas TRAN vout11 FIND V(M11D) at=105n
.meas TRAN vout12 FIND V(M11D) at=115n
.meas TRAN vout13 FIND V(M11D) at=125n
.meas TRAN vout14 FIND V(M11D) at=135n
.meas TRAN vout15 FIND V(M11D) at=145n
.meas TRAN vout16 FIND V(M11D) at=155n

.alter
VSX1 M11G gnd PWL 0n 1.5 10n 1.5 11n 1.45 20n 1.45 21n 1.4 30n 1.4 31n 1.35 40n 1.35 41n 1.3
+ 50n 1.3 51n 1.25 60n 1.25 61n 1.2 70n 1.2 71n 1.15 80n 1.15 81n 1.1 90n 1.1 91n 1.05
+ 100n 1.05 101n 1 110n 1 111n 0.95 120n 0.95 121n 0.9 130n 0.9 131n 0.85 140n 0.85
+ 141n 0.8 150n 0.8 151n 0.75 160n 0.75 


.end


