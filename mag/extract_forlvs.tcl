box 0 0 0 0
load tt_um_mattvenn_r2r_dac.mag
extract do local
extract all
ext2spice lvs
ext2spice cthresh infinite
ext2spice short resistor
ext2spice -d -o tt_um_mattvenn_r2r_dac.lvs.spice
quit -noprompt
