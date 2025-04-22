onerror {quit -code 1}
source "C:/Users/rusla/Desktop/ChaosVhdl/Vilnius_FPGA_update/Simulation_oscillator/sim/vunit_out/test_output/hw_chaos.tb.all_47b62a2f9719bb8116208c6823d0e7d123b2ea17/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
