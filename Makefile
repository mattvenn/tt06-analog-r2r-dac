PROJECT_NAME := r2r_dac_control
# needs PDK_ROOT and OPENLANE_ROOT, OPENLANE_IMAGE_NAME set from your environment
harden:
	docker run --rm \
	-v $(OPENLANE_ROOT):/openlane \
	-v $(PDK_ROOT):$(PDK_ROOT) \
	-v $(CURDIR):/work \
	-e PDK_ROOT=$(PDK_ROOT) \
	-e PDK=$(PDK) \
	-u $(shell id -u $(USER)):$(shell id -g $(USER)) \
	$(OPENLANE_IMAGE_NAME) \
	/bin/bash -c "./flow.tcl -overwrite -design /work/openlane/$(PROJECT_NAME) -run_path /work/openlane/$(PROJECT_NAME)/runs -tag r2r"

update_files:
	cp openlane/$(PROJECT_NAME)/runs/r2r/results/final/mag/$(PROJECT_NAME).mag mag/
	cp openlane/$(PROJECT_NAME)/runs/r2r/results/final/verilog/gl/$(PROJECT_NAME).v verilog/gl/
