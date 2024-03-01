PROJECT_NAME := tt_um_mattvenn_r2r_dac
.PHONY: lvs magic

magic:
	magic -rcfile sky130A.magicrc $(PROJECT_NAME).mag

$(PROJECT_NAME).lvs.spice:
	magic -noconsole -dnull extract_forlvs.tcl
	rm -f *.ext

extract_sim:
	magic -noconsole -dnull extract_forsim.tcl
	rm -f *.ext

extractr2r_sim:
	magic -noconsole -dnull extract_r2r_forsim.tcl
	rm -f *.ext

lvs.report: $(PROJECT_NAME).lvs.spice
	netgen -batch source full_lvs.netgen

lvs: lvs.report
	@propOk=1; match=0; \
    if grep -q "match uniquely" lvs.report; then \
        match=1; \
    fi; \
    if grep -q "Property errors were found" lvs.report || grep -q "failed pin matching" lvs.report; then \
        propOk=0; \
    fi; \
    if grep -q "Final result: Netlists do not match" lvs.report; then \
        match=0; \
    fi; \
    if grep -q "Final result: Circuits match uniquely" lvs.report; then \
        match=1; \
    fi; \
	if [ $$match -eq 1 ] && [ $$propOk -eq 1 ]; then \
        echo "LVS OK"; \
    else \
        echo "LVS FAIL: match $$match properties $$propOk"; \
    fi

update_gds:
	magic -noconsole -dnull rexport.tcl

clean:
	rm lvs.report $(PROJECT_NAME).lvs.spice
