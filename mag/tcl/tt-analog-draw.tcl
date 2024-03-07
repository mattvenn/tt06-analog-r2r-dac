# Important: before running this script, download the the .def file from
# https://github.com/TinyTapeout/tt-support-tools/blob/tt06/def/analog/tt_block_1x2_pg_ana.def
set project [lindex $argv $argc-1]

def read tt_block_1x2_pg_ana.def
cellname rename tt_um_template $project

# VPWR
box 100 500 250 22076
paint met4
label VPWR FreeSans met4
port VPWR make n
port VPWR use power
port VPWR class bidirectional
port conn n s e w

# VGND
box 4900 500 5050 22076
paint met4
label VGND FreeSans met4
port VGND make n
port VGND use ground
port VGND class bidirectional
port conn n s e w

save

quit -noprompt
