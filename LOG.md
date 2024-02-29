# Thu 29 Feb 10:49:38 CET 2024

got LVS to work - was due to badly named instances in the verilog stub and mixup between n_rst and rst_n

# Wed 28 Feb 17:42:48 CET 2024

LVS work in progress. In the mag directory:

1. run lvs.sh  - this runs the extract_forlvs.tcl script, getting a spice file with no Rs or Cs
2. run netgen.sh - this runs netgen with the full_lvs.netgen script. This tries to compare the extracted lvs spice to the schematic (verilog + xschem spice)

At least one issue is that 'schematic' should include the actual verilog design and at the moment it's just the src/project.v blackbox

# Wed 28 Feb 14:36:01 CET 2024

Feedback from Harald Pretl: Resistors should be larger than the Ron of the MOSFETs, so that R2R action is dominated by the poly resistors, not the MOSFET. I suggest 10kOhm and higher. 
Since the value is large you should go with the "high" type of the poly res.

# Wed 21 Feb 10:45:08 CET 2024

the Klayout FEOL DRC errors went away when I used this openlane

efabless/openlane:d054702b2cce04761cc2bc598f6b95c9d8ca7c6c-amd64

and PDK

volare/sky130/versions/78b7bc32ddb4b6f14f76883c2e2dc5b5de9d1cbc/sky130A

