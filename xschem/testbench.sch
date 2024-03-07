v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -290 390 510 790 {flags=graph
y1=5.1e-06
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-10
x2=0.000256
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=out
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -290 -90 510 310 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-10
x2=0.000256
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 6"
node="b6
b7"}
B 2 -290 890 510 1290 {flags=graph
y1=0.04
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-10
x2=0.000256
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out2
"
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
T {Simulation} -290 320 0 0 1 1 {}
T {Bit 6 and 7} -300 -170 0 0 1 1 {}
T {Post layout simulation} -290 810 0 0 1 1 {}
N -540 -40 -540 -20 {
lab=GND}
N -570 -120 -540 -120 {
lab=b3}
N -540 -120 -540 -100 {
lab=b3}
N -660 -40 -660 -20 {
lab=GND}
N -690 -120 -660 -120 {
lab=b2}
N -660 -120 -660 -100 {
lab=b2}
N -770 -40 -770 -20 {
lab=GND}
N -800 -120 -770 -120 {
lab=b1}
N -770 -120 -770 -100 {
lab=b1}
N -890 -40 -890 -20 {
lab=GND}
N -920 -120 -890 -120 {
lab=b0}
N -890 -120 -890 -100 {
lab=b0}
N -660 330 -590 330 {
lab=#net1}
N -530 330 -490 330 {
lab=out}
N -490 330 -450 330 {
lab=out}
N -540 150 -540 170 {
lab=GND}
N -570 70 -540 70 {
lab=b7}
N -540 70 -540 90 {
lab=b7}
N -660 150 -660 170 {
lab=GND}
N -690 70 -660 70 {
lab=b6}
N -660 70 -660 90 {
lab=b6}
N -770 150 -770 170 {
lab=GND}
N -800 70 -770 70 {
lab=b5}
N -770 70 -770 90 {
lab=b5}
N -890 150 -890 170 {
lab=GND}
N -920 70 -890 70 {
lab=b4}
N -890 70 -890 90 {
lab=b4}
N -530 570 -490 570 {
lab=out2}
N -490 570 -450 570 {
lab=out2}
N -660 570 -590 570 {
lab=#net2}
C {r2r.sym} -810 410 0 0 {name=x1}
C {devices/lab_pin.sym} -960 390 0 0 {name=p1 sig_type=std_logic lab=b0}
C {devices/lab_pin.sym} -960 370 0 0 {name=p2 sig_type=std_logic lab=b1}
C {devices/lab_pin.sym} -960 350 0 0 {name=p3 sig_type=std_logic lab=b2}
C {devices/lab_pin.sym} -960 470 0 0 {name=p4 sig_type=std_logic lab=b3}
C {devices/lab_pin.sym} -450 330 2 0 {name=p5 sig_type=std_logic lab=out}
C {devices/code.sym} -940 1180 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} -540 -70 0 0 {name=V1 value="pulse(0 1.8 0 0 0 8u 16u)" savecurrent=false}
C {devices/gnd.sym} -540 -20 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -570 -120 0 0 {name=p6 sig_type=std_logic lab=b3}
C {devices/vsource.sym} -660 -70 0 0 {name=V2 value="pulse(0 1.8 0 0 0 4u 8u)" savecurrent=false}
C {devices/gnd.sym} -660 -20 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -690 -120 0 0 {name=p7 sig_type=std_logic lab=b2}
C {devices/vsource.sym} -770 -70 0 0 {name=V3 value="pulse(0 1.8 0 0 0 2u 4u)" savecurrent=false}
C {devices/gnd.sym} -770 -20 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -800 -120 0 0 {name=p8 sig_type=std_logic lab=b1}
C {devices/vsource.sym} -890 -70 0 0 {name=V4 value="pulse(0 1.8 0 0 0 1u 2u)" savecurrent=false}
C {devices/gnd.sym} -890 -20 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -920 -120 0 0 {name=p9 sig_type=std_logic lab=b0
}
C {devices/gnd.sym} -660 350 0 0 {name=l7 lab=GND}
C {devices/launcher.sym} -460 1280 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/testbench.raw tran"
}
C {devices/res.sym} -560 330 1 0 {name=R1
value=500R
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -490 360 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -490 390 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} -960 490 0 0 {name=l9 lab=GND}
C {devices/code.sym} -780 1180 0 0 {name=SIMULATION
only_toplevel=false 
value="
* .options filetype=ascii
.control
tran 10n 256u uic
write testbench.raw
.endc
.end
"}
C {devices/lab_pin.sym} -960 330 0 0 {name=p10 sig_type=std_logic lab=b4}
C {devices/lab_pin.sym} -960 410 0 0 {name=p11 sig_type=std_logic lab=b5}
C {devices/lab_pin.sym} -960 430 0 0 {name=p12 sig_type=std_logic lab=b6}
C {devices/lab_pin.sym} -960 450 0 0 {name=p13 sig_type=std_logic lab=b7
}
C {devices/vsource.sym} -540 120 0 0 {name=V5 value="pulse(0 1.8 0 0 0 128u 256u)" savecurrent=false}
C {devices/gnd.sym} -540 170 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -570 70 0 0 {name=p14 sig_type=std_logic lab=b7}
C {devices/vsource.sym} -660 120 0 0 {name=V6 value="pulse(0 1.8 0 0 0 64u 128u)" savecurrent=false}
C {devices/gnd.sym} -660 170 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -690 70 0 0 {name=p15 sig_type=std_logic lab=b6}
C {devices/vsource.sym} -770 120 0 0 {name=V7 value="pulse(0 1.8 0 0 0 32u 64u)" savecurrent=false}
C {devices/gnd.sym} -770 170 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -800 70 0 0 {name=p16 sig_type=std_logic lab=b5}
C {devices/vsource.sym} -890 120 0 0 {name=V8 value="pulse(0 1.8 0 0 0 16u 32u)" savecurrent=false}
C {devices/gnd.sym} -890 170 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} -920 70 0 0 {name=p17 sig_type=std_logic lab=b4

}
C {r2r.sym} -810 650 0 0 {name=x2
schematic=r2rpex.sim
spice_sym_def=".include ../../mag/r2r.sim.spice"
tclcommand="textwindow ../mag/r2r.sim.spice"}
C {devices/lab_pin.sym} -960 630 0 0 {name=p18 sig_type=std_logic lab=b0}
C {devices/lab_pin.sym} -960 610 0 0 {name=p19 sig_type=std_logic lab=b1}
C {devices/lab_pin.sym} -960 590 0 0 {name=p20 sig_type=std_logic lab=b2}
C {devices/lab_pin.sym} -960 710 0 0 {name=p21 sig_type=std_logic lab=b3}
C {devices/lab_pin.sym} -450 570 2 0 {name=p22 sig_type=std_logic lab=out2}
C {devices/gnd.sym} -660 590 0 0 {name=l12 lab=GND}
C {devices/res.sym} -560 570 1 0 {name=R2
value=500R
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -490 600 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -490 630 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} -960 730 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} -960 570 0 0 {name=p23 sig_type=std_logic lab=b4}
C {devices/lab_pin.sym} -960 650 0 0 {name=p24 sig_type=std_logic lab=b5}
C {devices/lab_pin.sym} -960 670 0 0 {name=p25 sig_type=std_logic lab=b6}
C {devices/lab_pin.sym} -960 690 0 0 {name=p26 sig_type=std_logic lab=b7
}
