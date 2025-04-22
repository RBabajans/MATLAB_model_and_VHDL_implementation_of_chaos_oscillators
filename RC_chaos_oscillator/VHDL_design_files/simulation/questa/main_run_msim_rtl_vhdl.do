transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/rusla/Desktop/ChaosVhdl/RC2_attempt_1/pkg/functions.vhdl}
vlib ieee_proposed
vmap ieee_proposed ieee_proposed
vcom -2008 -work ieee_proposed {C:/Users/rusla/Desktop/ChaosVhdl/RC2_attempt_1/pkg/fixed_float_types_c.vhdl}
vcom -2008 -work ieee_proposed {C:/Users/rusla/Desktop/ChaosVhdl/RC2_attempt_1/pkg/fixed_pkg_c.vhdl}
vcom -2008 -work work {C:/Users/rusla/Desktop/ChaosVhdl/RC2_attempt_1/pkg/data_types.vhdl}
vcom -2008 -work work {C:/Users/rusla/Desktop/ChaosVhdl/RC2_attempt_1/deriv_calc_RC2.vhdl}
vcom -2008 -work work {C:/Users/rusla/Desktop/ChaosVhdl/RC2_attempt_1/RC2_oscillator.vhdl}

vcom -2008 -work work {C:/Users/rusla/Desktop/ChaosVhdl/RC2_attempt_1/pkg/data_types.vhdl}
vcom -2008 -work work {C:/Users/rusla/Desktop/ChaosVhdl/RC2_attempt_1/deriv_calc_RC2.vhdl}
vcom -2008 -work work {C:/Users/rusla/Desktop/ChaosVhdl/RC2_attempt_1/RC2_oscillator.vhdl}
vcom -2008 -work work {C:/Users/rusla/Desktop/ChaosVhdl/RC2_attempt_1/RC2_oscillator_tb.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_hssi -L rtl_work -L work -L ieee_proposed -voptargs="+acc"  RC_oscillator_tb

add wave *
view structure
view signals
run 1 sec
