load r2r.mag
flatten r2r_flat
load r2r_flat
select top cell
cellname delete r2r
cellname rename r2r_flat r2r
extract all
ext2sim labels on
ext2sim
extresist tolerance 10
extresist
ext2spice lvs
ext2spice cthresh 0
ext2spice extresist on
ext2spice
ext2spice -d -o r2r.sim.spice
quit -noprompt
