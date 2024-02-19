v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 40 170 70 {
lab=b0}
N 290 40 290 70 {
lab=b1}
N 410 40 410 70 {
lab=b2}
N 530 40 530 70 {
lab=b3}
N 170 130 200 130 {
lab=#net1}
N 170 130 170 150 {
lab=#net1}
N 260 130 290 130 {
lab=#net2}
N 290 130 320 130 {
lab=#net2}
N 380 130 410 130 {
lab=#net3}
N 410 130 440 130 {
lab=#net3}
N 500 130 530 130 {
lab=#net4}
N 530 130 550 130 {
lab=#net4}
N 170 210 170 220 {
lab=GND}
N 660 40 660 70 {
lab=b4}
N 780 40 780 70 {
lab=b5}
N 900 40 900 70 {
lab=b6}
N 1020 40 1020 70 {
lab=b3}
N 660 130 690 130 {
lab=#net5}
N 750 130 780 130 {
lab=#net6}
N 780 130 810 130 {
lab=#net6}
N 870 130 900 130 {
lab=#net7}
N 900 130 930 130 {
lab=#net7}
N 990 130 1020 130 {
lab=out}
N 1020 130 1040 130 {
lab=out}
N 550 130 570 130 {
lab=#net4}
N 630 130 660 130 {
lab=#net5}
C {devices/res.sym} 170 100 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 290 100 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 410 100 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/ipin.sym} 290 40 1 0 {name=p1 lab=b1}
C {devices/ipin.sym} 170 40 1 0 {name=p3 lab=b0}
C {devices/ipin.sym} 410 40 1 0 {name=p4 lab=b2
}
C {devices/ipin.sym} 530 40 1 0 {name=p5 lab=b3}
C {devices/res.sym} 170 180 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 530 100 0 0 {name=R5
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 230 130 1 0 {name=R6
value=500
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 350 130 1 0 {name=R7
value=500
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 470 130 1 0 {name=R8
value=500
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 170 220 0 0 {name=l1 lab=GND}
C {devices/res.sym} 660 100 0 0 {name=R9
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 780 100 0 0 {name=R10
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 900 100 0 0 {name=R11
value=1k
footprint=1206
device=resistor
m=1}
C {devices/ipin.sym} 780 40 1 0 {name=p6 lab=b5}
C {devices/opin.sym} 1040 130 0 0 {name=p7 lab=out}
C {devices/ipin.sym} 660 40 1 0 {name=p8 lab=b4
}
C {devices/ipin.sym} 900 40 1 0 {name=p9 lab=b6
}
C {devices/ipin.sym} 1020 40 1 0 {name=p10 lab=b7}
C {devices/res.sym} 1020 100 0 0 {name=R12
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 720 130 1 0 {name=R13
value=500
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 840 130 1 0 {name=R14
value=500
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 960 130 1 0 {name=R15
value=500
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 600 130 1 0 {name=R16
value=500
footprint=1206
device=resistor
m=1}
