v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 -40 -100 -40 {
lab=b2}
N -130 -20 -100 -20 {
lab=b3}
N -130 0 -100 0 {
lab=#net1}
N -130 20 -100 20 {
lab=#net2}
N -210 140 -210 160 {
lab=GND}
N -240 60 -210 60 {
lab=b3}
N -210 60 -210 80 {
lab=b3}
N -330 140 -330 160 {
lab=GND}
N -360 60 -330 60 {
lab=b2}
N -330 60 -330 80 {
lab=b2}
N -440 140 -440 160 {
lab=GND}
N -470 60 -440 60 {
lab=b1}
N -440 60 -440 80 {
lab=b1}
N -440 300 -440 320 {
lab=GND}
N -470 220 -440 220 {
lab=b0}
N -440 220 -440 240 {
lab=b0}
N -130 -80 -100 -80 {
lab=b0}
N -130 -60 -100 -60 {
lab=b1}
C {r2r.sym} 50 -10 0 0 {name=x1}
C {devices/lab_pin.sym} -130 -80 0 0 {name=p1 sig_type=std_logic lab=b0}
C {devices/lab_pin.sym} -130 -60 0 0 {name=p2 sig_type=std_logic lab=b1}
C {devices/lab_pin.sym} -130 -40 0 0 {name=p3 sig_type=std_logic lab=b2}
C {devices/lab_pin.sym} -130 -20 0 0 {name=p4 sig_type=std_logic lab=b3}
C {devices/lab_pin.sym} 200 -80 2 0 {name=p5 sig_type=std_logic lab=out}
C {devices/code.sym} 300 -20 0 0 {name=s1 only_toplevel=false value="
.lib /home/matt/work/asic-workshop/shuttle-2404/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 1n 20u uic
.save all
"
}
C {devices/vsource.sym} -210 110 0 0 {name=V1 value="pulse(0 1.8 0 0 0 8u 16u)" savecurrent=false}
C {devices/gnd.sym} -210 160 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -240 60 0 0 {name=p6 sig_type=std_logic lab=b3}
C {devices/vsource.sym} -330 110 0 0 {name=V2 value="pulse(0 1.8 0 0 0 4u 8u)" savecurrent=false}
C {devices/gnd.sym} -330 160 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -360 60 0 0 {name=p7 sig_type=std_logic lab=b2}
C {devices/vsource.sym} -440 110 0 0 {name=V3 value="pulse(0 1.8 0 0 0 2u 4u)" savecurrent=false}
C {devices/gnd.sym} -440 160 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -470 60 0 0 {name=p8 sig_type=std_logic lab=b1}
C {devices/vsource.sym} -440 270 0 0 {name=V4 value="pulse(0 1.8 0 0 0 1u 2u)" savecurrent=false}
C {devices/gnd.sym} -440 320 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -470 220 0 0 {name=p9 sig_type=std_logic lab=b0
}
