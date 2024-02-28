foreach cell $::env(FLATGLOB_CELLS) {
        gds flatglob $cell
}
# list cells to be flattened
puts "Flattening [gds flatglob]"
gds flatten yes
#gds polygon subcells temporary
puts "Extracting $::env(LAYOUT_FILE)"
gds read $::env(LAYOUT_FILE)

foreach cell $::env(ABSTRACT_CELLS) {
        load $cell
        property LEFview true
}

load $::env(TOP)
cd $::env(RUN_DIR)
extract no all
extract do aliases
extract do local
extract unique notopports
extract style ngspice($::env(EXTRACT_STYLE))
extract
