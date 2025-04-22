library ieee;
library hw_chaos;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.fixed_float_types.all;
use ieee.fixed_pkg.all;
use ieee.math_real.all;
use hw_chaos.data_types.all;


entity Vilnius_oscillator is
  generic (
    a         : real := 0.5;
    ep_rev    : real := 5.7;
	 
	 INT_PART  : natural := 8;
    FRAC_PART : natural := 14;
    WORD      : natural := 22;
	 
	 dt : real := 0.0009765625;
	 
	 
	 MEM_INT  : integer := 8;
    MEM_FRAC : integer := 14;
	 
	 
	 DX1_1_HIGH : integer := INT_PART-1;
    DX1_1_LOW  : integer :=  -FRAC_PART;
    DX2_1_HIGH : integer := DX1_1_HIGH;
    DX2_1_LOW  : integer := DX1_1_LOW;
  
  
    DY1_1_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
    DY1_1_LOW : integer := sfixed_low(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
    DY1_2_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '+', INT_PART-1, -FRAC_PART);
    DY1_2_LOW : integer := sfixed_low(INT_PART-1, -FRAC_PART, '+', INT_PART-1, -FRAC_PART);
    DY2_1_HIGH : integer := sfixed_high(DY1_1_HIGH, DY1_1_LOW, '-', DY1_2_HIGH, DY1_2_LOW);
    DY2_1_LOW : integer := sfixed_low(DY1_1_HIGH, DY1_1_LOW, '-', DY1_2_HIGH, DY1_2_LOW);
  

    DZ1_1_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
    DZ1_1_LOW : integer := sfixed_low(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
    DZ2_1_HIGH : integer := sfixed_high(DZ1_1_HIGH, DZ1_1_LOW, '+', MEM_INT-1, -MEM_FRAC);
    DZ2_1_LOW : integer := sfixed_low(DZ1_1_HIGH, DZ1_1_LOW, '+', MEM_INT-1, -MEM_FRAC);
	  
	 MUL_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
	 MUL_LOW : integer := sfixed_low(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
	 
	 SUM_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '+', INT_PART-1, -FRAC_PART);
	 SUM_LOW  : integer := sfixed_low(INT_PART-1, -FRAC_PART, '+', INT_PART-1, -FRAC_PART)  
	 
  );
  
  port (
    clk       : in  sl;
    rst       : in  sl;

    --i_tdata   : in  aslv(0 to 3-1)(WORD-1 downto 0);
    o_tdata   : out aslv(0 to 3-1)(WORD-1 downto 0);
	 
	 o_addr  : out slv(11 downto 0);
	 o_d_out : out slv(21 downto 0);
	 o_d_out_sfi : out sfi(8-1 downto -14);
	
	 o_derivatives_aslv : out aslv(0 to 3-1)(WORD-1 downto 0);
	 
	 
	 
	 o_dx1_1  : out sfi(DX1_1_HIGH downto DX1_1_LOW) := (others => '0');
	 o_dx2_1  : out sfi(DX2_1_HIGH downto DX2_1_LOW) := (others => '0');
	
	 o_dy1_1  : out sfi(DY1_1_HIGH downto DY1_1_LOW) := (others => '0');
	 o_dy1_2  : out sfi(DY1_2_HIGH downto DY1_2_LOW) := (others => '0');
	 o_dy2_1  : out sfi(DY2_1_HIGH downto DY2_1_LOW) := (others => '0');
	 
	 o_dz1_1  : out sfi(DZ1_1_HIGH downto DZ1_1_LOW) := (others => '0');
	 o_dz2_1  : out sfi(DZ2_1_HIGH downto DZ2_1_LOW) := (others => '0');
	 
	 
	 o_derx  : out sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
	 o_dery  : out sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
	 o_derz  : out sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
	 
	 o_mulx  : out sfi(MUL_HIGH downto MUL_LOW) := (others => '0');
	 o_muly  : out sfi(MUL_HIGH downto MUL_LOW) := (others => '0');
	 o_mulz  : out sfi(MUL_HIGH downto MUL_LOW) := (others => '0');
	 
	 o_x_plus_dx : out sfi(SUM_HIGH downto SUM_LOW) := (others => '0');
	 o_y_plus_dy : out sfi(SUM_HIGH downto SUM_LOW) := (others => '0');
	 o_z_plus_dz : out sfi(SUM_HIGH downto SUM_LOW) := (others => '0')
	  
	 
  );
end entity;


architecture RTL of Vilnius_oscillator is

	signal der_input : aslv(0 to 3-1)(WORD-1 downto 0) := (others => (others => '0'));
	
	signal derivatives_aslv : aslv(0 to 3-1)(WORD-1 downto 0) := (others => (others => '0'));
	signal derx : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
	signal dery : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
	signal derz : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
	

	signal mul_reg, mul_next : asfi(0 to 3-1)(MUL_HIGH downto MUL_LOW) := (others => (others => '0'));
	
	signal dx : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
	signal dy : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
	signal dz : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
	

	signal x_plus_dx : sfi(SUM_HIGH downto SUM_LOW) := (others => '0');
	signal y_plus_dy : sfi(SUM_HIGH downto SUM_LOW) := (others => '0');
	signal z_plus_dz : sfi(SUM_HIGH downto SUM_LOW) := (others => '0');
	
	signal mem_d_out : slv(21 downto 0) := (others => '0');
	
	signal var_main_next : aslv(0 to 3-1)(WORD-1 downto 0) := (others => (others => '0'));
	signal var_main_reg	: aslv(0 to 3-1)(WORD-1 downto 0) := (0 => to_slv(to_sfixed(0.125, INT_PART-1, -FRAC_PART)), 1 => to_slv(to_sfixed(0.125, INT_PART-1, -FRAC_PART)), 2 => to_slv(to_sfixed(0.125, INT_PART-1, -FRAC_PART)));

begin

	DERIV_CALC : entity work.deriv_calc_Vilnius
	generic map (
      a   => a,
      ep_rev   => ep_rev,

      INT_PART  => INT_PART,
      FRAC_PART => FRAC_PART,
      WORD 		 => WORD,
		
		
		
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

      i_tdata => der_input,
      o_tdata => derivatives_aslv,
		
		o_addr => o_addr,
		o_d_out => mem_d_out,
		
		
	   o_dx1_1  => o_dx1_1,
	   o_dx2_1  => o_dx2_1,
	
	   o_dy1_1  => o_dy1_1,
	   o_dy1_2  => o_dy1_2,
	   o_dy2_1  => o_dy2_1,
	 
	   o_dz1_1  => o_dz1_1,
	   o_dz2_1  => o_dz2_1
			
    );


	-- reg-state logic
	process(clk, rst)
	begin
	if rst = '1' then
      mul_reg <= (others => (others => '0'));
      var_main_reg <= (others => (others => '0'));
	elsif rising_edge(clk) then
		mul_reg <= mul_next;
		var_main_reg <= var_main_next;	
	end if;
	end process;
	

	-- next-state logic
	der_input(X_POS) <= var_main_reg(X_POS);
	der_input(Y_POS) <= var_main_reg(Y_POS);
	der_input(Z_POS) <= var_main_reg(Z_POS);
	
	derx <= to_sfixed(derivatives_aslv(X_POS), INT_PART-1, -FRAC_PART);
	dery <= to_sfixed(derivatives_aslv(Y_POS), INT_PART-1, -FRAC_PART);
	derz <= to_sfixed(derivatives_aslv(Z_POS), INT_PART-1, -FRAC_PART);
	
	mul_next(X_POS) <= derx * to_sfixed(dt, INT_PART-1, -FRAC_PART);
	mul_next(Y_POS) <= dery * to_sfixed(dt, INT_PART-1, -FRAC_PART);
	mul_next(Z_POS) <= derz * to_sfixed(dt, INT_PART-1, -FRAC_PART);
	
	dx <= mul_reg(X_POS)(INT_PART-1 downto -FRAC_PART);
	dy <= mul_reg(Y_POS)(INT_PART-1 downto -FRAC_PART);
	dz <= mul_reg(Z_POS)(INT_PART-1 downto -FRAC_PART);
	
	x_plus_dx <= to_sfixed(var_main_reg(X_POS), INT_PART-1, -FRAC_PART) + dx;
	y_plus_dy <= to_sfixed(var_main_reg(Y_POS), INT_PART-1, -FRAC_PART) + dy;
	z_plus_dz <= to_sfixed(var_main_reg(Z_POS), INT_PART-1, -FRAC_PART) + dz;
	
	var_main_next(X_POS) <= to_slv(x_plus_dx(INT_PART-1 downto -FRAC_PART));
	var_main_next(Y_POS) <= to_slv(y_plus_dy(INT_PART-1 downto -FRAC_PART));
	var_main_next(Z_POS) <= to_slv(z_plus_dz(INT_PART-1 downto -FRAC_PART));

	
	-- outputs
	o_tdata <= var_main_reg;
	
	o_d_out_sfi <= to_sfixed(mem_d_out, 8-1, -14);
	o_d_out <= mem_d_out;
	
	o_derivatives_aslv <= derivatives_aslv;
	
	o_derx <= derx;
	o_dery <= dery; 
	o_derz <= derz;

	o_mulx <= mul_reg(X_POS);
	o_muly <= mul_reg(Y_POS); 
	o_mulz <= mul_reg(Z_POS);
	
	o_x_plus_dx <= x_plus_dx;
	o_y_plus_dy <= y_plus_dy;
	o_z_plus_dz <= z_plus_dz;


end architecture;