load r2r.mag
load tt_um_mattvenn_r2r_dac.mag
extract do resistance
extract all
ext2sim labels on
ext2sim
extresist tolerance 10
extresist all
ext2spice lvs
ext2spice cthresh 0.01
ext2spice rthresh 10
ext2spice extresist on
ext2spice resistor tee on
ext2spice format ngspice
ext2spice -d -o tt_um_mattvenn_r2r_dac.sim.spice
quit -noprompt
