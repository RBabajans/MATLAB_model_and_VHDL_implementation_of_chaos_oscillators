#!/usr/bin/env python3
from vunit import VUnit

# Create VUnit instance by parsing command line arguments
prj = VUnit.from_argv()

prj.add_osvvm()
prj.add_vhdl_builtins()
prj.add_com()
prj.add_verification_components()
prj.add_random()

# Create main library
hw_chaos = prj.add_library("hw_chaos")


# Add source files relative to sim directory
hw_chaos.add_source_file("../src/data_types.vhdl")
hw_chaos.add_source_file("../src/Heaviside_memory.vhdl")
hw_chaos.add_source_file("../src/deriv_calc_RC2.vhdl")
hw_chaos.add_source_file("../src/RC2_oscillator.vhdl")

# Add testbench
hw_chaos.add_source_file("../tb/tb.vhdl")


# Run testbench
prj.main()
