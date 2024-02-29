# Export
load tt_um_mattvenn_r2r_dac.mag
gds write ../gds/tt_um_mattvenn_r2r_dac.gds
lef write ../lef/tt_um_mattvenn_r2r_dac.lef -pinonly
quit -noprompt
