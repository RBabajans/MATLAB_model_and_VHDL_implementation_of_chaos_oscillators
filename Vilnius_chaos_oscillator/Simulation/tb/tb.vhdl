library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.fixed_float_types.all;
use ieee.fixed_pkg.all;
use std.textio.all;

library hw_chaos;
use hw_chaos.data_types.all;

library vunit_lib;
context vunit_lib.vunit_context;
context vunit_lib.com_context;
context vunit_lib.data_types_context;
use vunit_lib.axi_stream_pkg.all;
use vunit_lib.stream_master_pkg.all;
use vunit_lib.stream_slave_pkg.all;

library osvvm;
use osvvm.RandomPkg.all;

entity tb is
  generic (
    runner_cfg : string;
    INT_PART : integer := 8;
    FRAC_PART : integer := 14;
    WORD : integer := INT_PART + FRAC_PART
	 
  );
end entity;

architecture RTL of tb is

	constant CLK_PERIOD : time := 1 ns;

	signal clk      : std_logic := '1';
	signal rst      : std_logic := '0';
	signal o_tdata : aslv(0 to 3-1)(WORD-1 downto 0) := (others => (others => '0'));
	signal o_tdata_sfi  : asfi(0 to 3-1)(INT_PART-1 downto -FRAC_PART) := (others => (others => '0'));
	 
	signal o_addr  : slv(11 downto 0) := (others => '0');
	signal o_d_out : slv(21 downto 0) := (others => '0');
	signal o_d_out_sfi : sfi(8-1 downto -14) := (others => '0');
	 
   signal o_derivatives_aslv : aslv(0 to 3-1)(WORD-1 downto 0) := (others => (others => '0'));

	constant  MEM_INT  : integer := 8;
   constant  MEM_FRAC : integer := 14;
	 
	constant  DX1_1_HIGH : integer := INT_PART-1;
   constant  DX1_1_LOW  : integer :=  -FRAC_PART;
   constant  DX2_1_HIGH : integer := DX1_1_HIGH;
   constant  DX2_1_LOW  : integer := DX1_1_LOW;
   constant  DY1_1_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
   constant  DY1_1_LOW  : integer := sfixed_low(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
   constant  DY1_2_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '+', INT_PART-1, -FRAC_PART);
   constant  DY1_2_LOW  : integer := sfixed_low(INT_PART-1, -FRAC_PART, '+', INT_PART-1, -FRAC_PART);
   constant  DY2_1_HIGH : integer := sfixed_high(DY1_1_HIGH, DY1_1_LOW, '-', DY1_2_HIGH, DY1_2_LOW);
   constant  DY2_1_LOW  : integer := sfixed_low(DY1_1_HIGH, DY1_1_LOW, '-', DY1_2_HIGH, DY1_2_LOW);
   constant  DZ1_1_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
   constant  DZ1_1_LOW  : integer := sfixed_low(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
   constant  DZ2_1_HIGH : integer := sfixed_high(DZ1_1_HIGH, DZ1_1_LOW, '+', MEM_INT-1, -MEM_FRAC);
   constant  DZ2_1_LOW  : integer := sfixed_low(DZ1_1_HIGH, DZ1_1_LOW, '+', MEM_INT-1, -MEM_FRAC);
	
	constant MUL_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
   constant MUL_LOW  : integer := sfixed_low(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
	 
   constant SUM_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '+', INT_PART-1, -FRAC_PART);
   constant SUM_LOW  : integer := sfixed_low(INT_PART-1, -FRAC_PART, '+', INT_PART-1, -FRAC_PART); 
  
   signal o_dx1_1 : sfi(DX1_1_HIGH downto DX1_1_LOW) := (others => '0');
   signal o_dx2_1 : sfi(DX2_1_HIGH downto DX2_1_LOW) := (others => '0');
   signal o_dy1_1 : sfi(DY1_1_HIGH downto DY1_1_LOW) := (others => '0');
   signal o_dy1_2 : sfi(DY1_2_HIGH downto DY1_2_LOW) := (others => '0');
   signal o_dy2_1 : sfi(DY2_1_HIGH downto DY2_1_LOW) := (others => '0');
   signal o_dz1_1 : sfi(DZ1_1_HIGH downto DZ1_1_LOW) := (others => '0');
   signal o_dz2_1 : sfi(DZ2_1_HIGH downto DZ2_1_LOW) := (others => '0');
  
   signal  o_derx  : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
   signal  o_dery  : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
   signal  o_derz  : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
	 
   signal  o_mulx  : sfi(MUL_HIGH downto MUL_LOW) := (others => '0');
   signal  o_muly  : sfi(MUL_HIGH downto MUL_LOW) := (others => '0');
   signal  o_mulz  : sfi(MUL_HIGH downto MUL_LOW) := (others => '0');
	 
   signal  o_x_plus_dx : sfi(SUM_HIGH downto SUM_LOW) := (others => '0');
   signal  o_y_plus_dy : sfi(SUM_HIGH downto SUM_LOW) := (others => '0');
   signal  o_z_plus_dz : sfi(SUM_HIGH downto SUM_LOW) := (others => '0');
  
  	file csv_file_X : text;
	file csv_file_Y : text;
	file csv_file_Z : text;
	
	file csv_dx1_1  : text;
	file csv_dx2_1  : text;
   file csv_dy1_1  : text;
	file csv_dy1_2  : text;
	file csv_dy2_1  : text;
	file csv_dz1_1  : text;
   file csv_dz2_1  : text;

	file csv_derx  : text;
	file csv_dery  : text;
	file csv_derz  : text;
	
	file csv_mulx  : text;
	file csv_muly  : text;
	file csv_mulz  : text;
	
	file csv_x_plus_dx  : text;
	file csv_y_plus_dy  : text;
	file csv_z_plus_dz  : text;
	
begin

	clk <= not clk after CLK_PERIOD/2;
	rst <= '0' after CLK_PERIOD;

	------------------------------------------------------------------------------------
	--DUT instantiation
	------------------------------------------------------------------------------------

	DUT: entity hw_chaos.Vilnius_oscillator
		generic map (
			a => 0.472,
			ep_rev => 5.69921875,
			dt => 0.00390625,
	
			INT_PART => INT_PART,
			FRAC_PART => FRAC_PART,
			WORD => WORD,
			
			MEM_INT  => MEM_INT,
			MEM_FRAC => MEM_FRAC,
		
			DX1_1_HIGH => DX1_1_HIGH,
			DX1_1_LOW  => DX1_1_LOW,
			DX2_1_HIGH => DX2_1_HIGH,
			DX2_1_LOW  => DX2_1_LOW,
	
			DY1_1_HIGH 	=> DY1_1_HIGH,
			DY1_1_LOW 	=> DY1_1_LOW,
			DY1_2_HIGH 	=> DY1_2_HIGH,
			DY1_2_LOW   => DY1_2_LOW,
			DY2_1_HIGH  => DY2_1_HIGH,
			DY2_1_LOW   => DY2_1_LOW,
	
			DZ1_1_HIGH  => DZ1_1_HIGH,
			DZ1_1_LOW   => DZ1_1_LOW,
			DZ2_1_HIGH  => DZ2_1_HIGH,
			DZ2_1_LOW   => DZ2_1_LOW
			
		)
		port map (
			clk => clk,
			rst => rst,

			o_addr => o_addr,
			o_d_out => o_d_out,
			o_d_out_sfi => o_d_out_sfi,
			o_derivatives_aslv => o_derivatives_aslv,
			o_tdata => o_tdata,
			
			o_dx1_1  => o_dx1_1,
			o_dx2_1  => o_dx2_1,
			o_dy1_1  => o_dy1_1,
			o_dy1_2  => o_dy1_2,
			o_dy2_1  => o_dy2_1,
			o_dz1_1  => o_dz1_1,
			o_dz2_1  => o_dz2_1,
			
			o_derx => o_derx,
			o_dery => o_dery,
			o_derz => o_derz,
			
			o_mulx => o_mulx,
			o_muly => o_muly,
			o_mulz => o_mulz,
			
			o_x_plus_dx => o_x_plus_dx,
			o_y_plus_dy => o_y_plus_dy,
			o_z_plus_dz => o_z_plus_dz			
		);
		
	o_tdata_sfi(X_POS) <= to_sfixed(o_tdata(X_POS), INT_PART-1, -FRAC_PART);
	o_tdata_sfi(Y_POS) <= to_sfixed(o_tdata(Y_POS), INT_PART-1, -FRAC_PART);
	o_tdata_sfi(Z_POS) <= to_sfixed(o_tdata(Z_POS), INT_PART-1, -FRAC_PART);
	

	------------------------------------------------------------------------------------
	--Test sequencer
	------------------------------------------------------------------------------------
	process	
  	begin
    	test_runner_setup(runner, runner_cfg);
		
		file_open(csv_file_X, "OUTPUT_X.csv", write_mode);
		file_open(csv_file_Y, "OUTPUT_Y.csv", write_mode);
		file_open(csv_file_Z, "OUTPUT_Z.csv", write_mode);
		
--		file_open(csv_dx1_1, "OUTPUT_dx1_1.csv", write_mode);
--		file_open(csv_dx2_1, "OUTPUT_dx2_1.csv", write_mode);
--		
--		file_open(csv_dy1_1, "OUTPUT_dy1_1.csv", write_mode);
--		file_open(csv_dy1_2, "OUTPUT_dy1_2.csv", write_mode);
--		file_open(csv_dy2_1, "OUTPUT_dy2_1.csv", write_mode);
--		
--		file_open(csv_dz1_1, "OUTPUT_dz1_1.csv", write_mode);
--		file_open(csv_dz2_1, "OUTPUT_dz2_1.csv", write_mode);
--		
--		file_open(csv_derx, "OUTPUT_derx.csv", write_mode);
--		file_open(csv_dery, "OUTPUT_dery.csv", write_mode);
--		file_open(csv_derz, "OUTPUT_derz.csv", write_mode);
--		
--		file_open(csv_mulx, "OUTPUT_mulx.csv", write_mode);
--		file_open(csv_muly, "OUTPUT_muly.csv", write_mode);
--		file_open(csv_mulz, "OUTPUT_mulz.csv", write_mode);
--		
--		file_open(csv_x_plus_dx, "OUTPUT_x_plus_dx.csv", write_mode);
--		file_open(csv_y_plus_dy, "OUTPUT_y_plus_dy.csv", write_mode);
--		file_open(csv_z_plus_dz, "OUTPUT_z_plus_dz.csv", write_mode);

    
while now < 200000 ns loop


    wait for 1 ns; -- Adjust the time delay as needed

    -- Write each element of the o_tdata_sfi array to the CSV file
		write(csv_file_X, integer'image(to_integer(signed(o_tdata(X_POS)))) & ",");
		write(csv_file_Y, integer'image(to_integer(signed(o_tdata(Y_POS)))) & ",");
		write(csv_file_Z, integer'image(to_integer(signed(o_tdata(Z_POS)))) & ",");
		
--		write(csv_dx1_1, integer'image(to_integer(signed(to_slv(o_dx1_1))))  & ",");
--		write(csv_dx2_1, integer'image(to_integer(signed(to_slv(o_dx2_1))))  & ",");
--		write(csv_dy1_1, integer'image(to_integer(signed(to_slv(o_dy1_1))))  & ",");
--		write(csv_dy1_2, integer'image(to_integer(signed(to_slv(o_dy1_2))))  & ",");
--		write(csv_dy2_1, integer'image(to_integer(signed(to_slv(o_dy2_1))))  & ",");
--		write(csv_dz1_1, integer'image(to_integer(signed(to_slv(o_dz1_1))))  & ",");
--		write(csv_dz2_1, integer'image(to_integer(signed(to_slv(o_dz2_1))))  & ",");
--
--		write(csv_derx, integer'image(to_integer(signed(to_slv(o_derx))))  & ",");
--		write(csv_dery, integer'image(to_integer(signed(to_slv(o_dery))))  & ",");
--		write(csv_derz, integer'image(to_integer(signed(to_slv(o_derz))))  & ",");
--		
--		write(csv_mulx, integer'image(to_integer(signed(to_slv(o_mulx))))  & ",");
--		write(csv_muly, integer'image(to_integer(signed(to_slv(o_muly))))  & ",");
--		write(csv_mulz, integer'image(to_integer(signed(to_slv(o_mulz))))  & ",");
--		
--		write(csv_x_plus_dx, integer'image(to_integer(signed(to_slv(o_x_plus_dx))))  & ",");
--		write(csv_y_plus_dy, integer'image(to_integer(signed(to_slv(o_y_plus_dy))))  & ",");
--		write(csv_z_plus_dz, integer'image(to_integer(signed(to_slv(o_z_plus_dz))))  & ",");
		   
  end loop;
		
		file_close(csv_file_X);
		file_close(csv_file_Y);
		file_close(csv_file_Z);
    
--		file_close(csv_dx1_1);
--		file_close(csv_dx2_1);
--		
--		file_close(csv_dy1_1);
--		file_close(csv_dy1_2);
--		file_close(csv_dy2_1);
--		
--		file_close(csv_dz1_1);
--		file_close(csv_dz2_1);
--		
--		file_close(csv_derx);
--		file_close(csv_dery);
--		file_close(csv_derz);
--		
--		file_close(csv_mulx);
--		file_close(csv_muly);
--		file_close(csv_mulz);
--		
--		file_close(csv_x_plus_dx);
--		file_close(csv_y_plus_dy);
--		file_close(csv_z_plus_dz);

 
    	test_runner_cleanup(runner);
  end process;
end architecture;