magic:
	magic -rcfile sky130A.magicrc tt_um_mattvenn_r2r_dac.mag

extract_lvs:
	magic -noconsole -dnull extract_forlvs.tcl
	rm *.ext

lvs:
	netgen -batch source full_lvs.netgen

update_gds:
	magic -noconsole -dnull rexport.tcl
