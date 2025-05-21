xload _0_0std_0_0cells_0_0INVX1
box 14 7 20 12
paint ndiffusion
box 15 8 15 8
label "Y" right ndiffusion
box 14 28 20 36
paint pdiffusion
box 15 29 15 29
label "Y" right pdiffusion
box 12 4 14 7
paint polysilicon
box 12 7 14 12
paint ntransistor
box 12 12 14 15
paint polysilicon
box 13 13 13 13
label "A" right polysilicon
box 12 25 14 28
paint polysilicon
box 13 26 13 26
label "A" right polysilicon
box 12 28 14 36
paint ptransistor
box 12 36 14 39
paint polysilicon
box 6 7 12 12
paint ndiffusion
box 7 8 7 8
label "GND" right ndiffusion
box 6 28 12 36
paint pdiffusion
box 7 29 7 29
label "Vdd" right pdiffusion
box 18 47 21 50
paint m1
box 19 48 19 48
label "GND" right m1
port class input
port make
box 12 47 15 50
paint m1
box 13 48 13 48
label "Vdd" right m1
port class input
port make
box 6 10 9 13
paint m1
box 7 11 7 11
label "Y" right m1
port class output
port make
box 6 47 9 50
paint m1
box 7 48 7 48
label "A" right m1
port class input
port make
proc lcell { x } { load "_0_0cell_0_0g${x}x0" }
