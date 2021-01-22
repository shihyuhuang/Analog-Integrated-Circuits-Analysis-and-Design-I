*hw1_1a
.protect
.lib 'cic018.l' TT
.unprotect

.temp 25
.option post

M1A D1 G1 S1 GND n_18 w=5u l=0.18u m=2
M1B D2 G2 S2 GND n_18 w=5u l=0.36u m=4

 
v1 D1 0 1.8
v2 D2 0 1.8
v3 S1 0 0
v4 S2 0 0
v5 G1 0 0
v6 G2 0 0

.op

.dc v5 0 1.8 0.1
.dc v6 0 1.8 0.1

.plot Vth1=LV9(M1A)
.plot Vth2=LV9(M1B)
.end

*hw1_1b
.protect
.lib 'cic018.l' TT
.unprotect

.temp 25
.option post

M1A D1 G1 S1 GND n_18 w=5u l=0.18u m=2
M1B D2 G2 S2 GND n_18 w=5u l=0.36u m=4

 
v1 D1 0 1.8
v2 D2 0 1.8
v3 S1 0 0
v4 S2 0 0
v5 G1 0 0
v6 G2 0 0

.op

.dc v5 0 1.8 0.1
.dc v6 0 1.8 0.1

.plot I1=I(M1A)
.plot I2=I(M1B)
.end

*hw1_1cde
.protect
.lib 'cic018.l' TT
.unprotect

.temp 25
.option post

M1A D1 G1 S1 GND n_18 w=5u l=0.18u m=2
M1B D2 G2 S2 GND n_18 w=5u l=0.36u m=4

 
v1 D1 0 1.8
v2 D2 0 1.8
v3 S1 0 0
v4 S2 0 0
v5 G1 0 0
v6 G2 0 0

.op

.dc v5 0 1.8 0.1
.dc v6 0 1.8 0.1

.plot c1=par('(LX7(M1A)/I(M1A))')
.plot c2=par('(LX7(M1B)/I(M1B))')
.plot d1=par('(LX7(M1A)/LX8(M1A))')
.plot d2=par('(LX7(M1B)/LX8(M1B))')
.plot e1=par('(LX7(M1A)/LX18(M1A))')
.plot e2=par('(LX7(M1B)/LX18(M1B))')
.end

*hw1_2a
.protect
.lib 'cic018.l' TT
.unprotect

.temp 25
.option post

mp1 D1 G1 VDD VDD p_18 w=10u l=0.5u m=5
mp2 D2 G2 VDD VDD p_18 w=50u l=0.5u m=1

 
v1 VDD 0 1.8
v2 D1 0 1.8
v3 D2 0 1.8
v5 G1 0 0
v6 G2 0 0

.op

.dc v5 0 3.6 0.1
.dc v6 0 3.6 0.1


.plot vsg1=par('v(vdd)-v(g1)')

.probe ctot1=par('LX18(mp1)')
.probe ctot2=par('LX18(mp2)')

.end

*hw1_2b
.protect
.lib 'cic018.l' TT
.unprotect

.temp 25
.option post

mp1 D1 G1 VDD VDD p_18 w=10um l=0.5um m=5
mp2 D2 G2 VDD VDD p_18 w=50um l=0.5um m=1
mp3 D3 G3 VDD VDD p_18 w=5um l=5um m=1


 
v1 VDD 0 1.8
v2 D1 0 1.8
v3 D2 0 1.8
v4 D3 0 1.8
v5 G1 0 0
v6 G2 0 0
v7 G3 0 0

.op

.dc v5 0 3.6 0.1
.dc v6 0 3.6 0.1
.dc v7 0 3.6 0.1


.plot vsg1=par('v(vdd)-v(g1)')
.probe ctot1=par('LX18(mp1)')
.probe ctot2=par('LX18(mp2)')
.probe ctot3=par('LX18(mp3)')


.end

*hw1_3atest
.protect
.lib 'cic018.l' TT
.unprotect

.temp 25
.option post

.param wp=0.25u

.subckt inv vin vout vdd vss
mmp vout vin vdd vdd p_18 w='wp' l=0.18u m=1
mmn vout vin vss vss n_18 w=1u l=0.18u m=1
.ends

X1 vin vout vdd vss inv

c1 vout 0 0.3p 
v1 vdd 0 1.8
v2 vss 0 0
v3 vin 0 0.9


.op
.dc wp 1u 5u 0.05u

.end

*hw1_3a
.protect
.lib 'cic018.l' TT
.unprotect

.temp 25
.option post


.subckt inv vin vout vdd vss
mmp vout vin vdd vdd p_18 w=3.15u l=0.18u m=1
mmn vout vin vss vss n_18 w=1u l=0.18u m=1
.ends

X1 vin vout vdd vss inv

c1 vout 0 0.3p 
v1 vdd 0 1.8
v2 vss 0 0
v3 vin 0 0


.op
.dc v3 0 1.8 0.1

.end

*hw1_3b-40
.protect
.lib 'cic018.l' TT
.unprotect

.temp -40
.option post

.param wp=0.25u

.subckt inv vin vout vdd vss
mmp vout vin vdd vdd p_18 w='wp' l=0.18u m=1
mmn vout vin vss vss n_18 w=1u l=0.18u m=1
.ends

X1 vin vout vdd vss inv

c1 vout 0 0.3p 
v1 vdd 0 1.8
v2 vss 0 0
v3 vin 0 0.9


.op
.dc wp 0.7u 5u 0.05u

.alter ss
.lib 'cic018.l' ss
.alter sf
.lib 'cic018.l' sf
.alter fs
.lib 'cic018.l' fs
.alter ff
.lib 'cic018.l' ff

.end

*hw1_3b25
.protect
.lib 'cic018.l' TT
.unprotect

.temp 25
.option post

.param wp=0.25u

.subckt inv vin vout vdd vss
mmp vout vin vdd vdd p_18 w='wp' l=0.18u m=1
mmn vout vin vss vss n_18 w=1u l=0.18u m=1
.ends

X1 vin vout vdd vss inv

c1 vout 0 0.3p 
v1 vdd 0 1.8
v2 vss 0 0
v3 vin 0 0.9


.op
.dc wp 0.7u 5u 0.05u

.alter ss25
.lib 'cic018.l' ss
.alter sf25
.lib 'cic018.l' sf
.alter fs25
.lib 'cic018.l' fs
.alter ff25
.lib 'cic018.l' ff

.end

*hw1_3b125
.protect
.lib 'cic018.l' TT
.unprotect

.temp 125
.option post

.param wp=0.25u

.subckt inv vin vout vdd vss
mmp vout vin vdd vdd p_18 w='wp' l=0.18u m=1
mmn vout vin vss vss n_18 w=1u l=0.18u m=1
.ends

X1 vin vout vdd vss inv

c1 vout 0 0.3p 
v1 vdd 0 1.8
v2 vss 0 0
v3 vin 0 0.9


.op
.dc wp 0.25u 3u 0.05u

.alter ss
.lib 'cic018.l' ss
.alter sf
.lib 'cic018.l' sf
.alter fs
.lib 'cic018.l' fs
.alter ff
.lib 'cic018.l' ff

.end