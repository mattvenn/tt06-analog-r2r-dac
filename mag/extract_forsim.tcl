load tt_um_mattvenn_r2r_dac.mag
flatten tt_um_flat
load tt_um_flat
select top cell
cellname delete tt_um_mattvenn_r2r_dac
cellname rename tt_um_flat tt_um_mattvenn_r2r_dac
extract all
ext2sim labels on
ext2sim
extresist tolerance 10
extresist
ext2spice lvs
ext2spice cthresh 0
ext2spice extresist on
ext2spice
ext2spice -d -o tt_um_mattvenn_r2r_dac.sim.spice
quit -noprompt
