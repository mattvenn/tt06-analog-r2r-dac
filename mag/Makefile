magic:
	magic -rcfile sky130A.magicrc tt_um_mattvenn_r2r_dac.mag

extract_lvs:
	magic -noconsole -dnull extract_forlvs.tcl
	rm -f *.ext

extract_sim:
	magic -noconsole -dnull extract_forsim.tcl
	rm -f *.ext

extractr2r_sim:
	magic -noconsole -dnull extract_r2r_forsim.tcl
	rm -f *.ext

lvs:
	netgen -batch source full_lvs.netgen

update_gds:
	magic -noconsole -dnull rexport.tcl
