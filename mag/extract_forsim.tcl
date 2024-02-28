load r2r.mag
select top cell
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
ext2spice -d -p . -o r2r_sim.spice
quit -noprompt
