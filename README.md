# MATLAB_model_and_VHDL_implementation_of_chaos_oscillators
This repository contains MATLAB models and VHDL fixed-point arithmetic implementations of several chaos oscillators.
The presented models are used and described in the research article "Field-Programmable Gate Array-Based Chaos Oscillator Implementation for Analog–Discrete and Discrete–Analog Chaotic Synchronization Applications" (https://doi.org/10.3390/e27040334).

Currently the implemented oscillators are:

1. Vilnius Chaos oscillator (https://doi.org/10.1088/0143-0807/26/1/007);
2. RC chaos oscillator (https://doi.org/10.1049/el:19960682).


## Description directories

	### MATLAB_model
	Here the MATLAB fixed-point models of the chaos oscillator is kept.

	### VHDL_design_files
	Here the VHDL design files are kept as Quartus project. The design can be synthesized.

	### Simulation
	Here the simulation files of the VHDL chaos oscillator are kept. The simulations are done using Questa and VUnit


## Description of simulation directories

	### sim
	This directory contains VHDL packages

	### src
	Here all VHDL components are kept for the simulation.

	### tb
	Here the testbench file is stored.



## If the VHDL design and simulation files are wished to be explored properly, the following steps must be done prior:
1. Install latest [Quartus Prime Lite Edition](https://www.intel.com/content/www/us/en/products/details/fpga/development-tools/quartus-prime/resource.html)\
   On Windows it's just running an .exe file\
   <br>
   On Linux: 
   1. Change ownership of /opt/:
      ```
      sudo chown -R <username> /opt
      ```
   2. Unpack .tar archive
      ```
      tar -xvzf Quartus-lite-22.1std.2.922-linux.tar
      ```
   3. Run install script and choose `/opt/intelFPGA_lite/22.1/` as target directory
      ```
      ./QuartusLiteSetup-22.1std.2.922-linux.run
      ```
   4. Modify .bashrc
      ```
      export PATH=$PATH:/opt/intelFPGA_lite/22.1/quartus/bin
      export PATH=$PATH:/opt/intelFPGA_lite/22.1/questa_fse/bin
      ```
2. Install Questa and activate by following this [tutorial](https://www.youtube.com/watch?v=F6FvXga4f1A)\
   On Linux you will need to add a new variable into .bashrc:
   ```
   export LM_LICENSE_FILE=/opt/intelFPGA_lite/22.1/questa_fse/LR-xxxxxx_License.dat
   ```
3. Install VUnit with pip
   ```
   pip install vunit-hdl
   ```

By now you should have Quartus, Questa and VUnit installed.\

