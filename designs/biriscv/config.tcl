
# User config
set ::env(DESIGN_NAME) biriscv

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(OPENLANE_ROOT)/designs/biriscv/src/*.v]

# Fill this
set ::env(CLOCK_PERIOD) "15.000"
set ::env(CLOCK_PORT) "clk_i"

set ::env(CLOCK_NET) "clk_i"
set ::env(CLOCK_NET) $::env(CLOCK_PORT)
set filename $::env(OPENLANE_ROOT)/designs/$::env(DESIGN_NAME)/$::env(PDK)_$::env(PDK_VARIANT)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}