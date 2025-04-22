library ieee;
library ieee_proposed;
library hw_chaos;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee_proposed.fixed_float_types.all;
use ieee_proposed.fixed_pkg.all;
use ieee.math_real.all;
use hw_chaos.data_types.all;


entity RC2_oscillator is
  generic (
    a : real := 10.0;
    b : real := 14.1026;
    u : real := 0.2022;
    k_1 : real := 5.5500;
	 k_2 : real := 4.4615;
	 k_3 : real := 4.5500; -- k_1 - 1
	 k_4 : real := 3.5500; -- k_1 - 2
	 k_5 : real := 15.5500; -- k_1 + a
	 
	 INT_PART : natural := 8;
    FRAC_PART : natural := 14;
    WORD : natural := 22;
	 
	 dt : real := 0.001
  );
  port (
    clk       : in  sl;
    rst       : in  sl;

    --i_tdata   : in  aslv(0 to 3-1)(WORD-1 downto 0);
    o_tdata   : out aslv(0 to 3-1)(WORD-1 downto 0);
	 
	 
	 o_addr  : out slv(11 downto 0);
	 o_d_out : out slv(21 downto 0);
	 o_d_out_sfi : out sfi(8-1 downto -14);
	
	 o_derivatives_aslv : out aslv(0 to 3-1)(WORD-1 downto 0)
	 
  );
end entity;


architecture RTL of RC2_oscillator is

	signal der_input : aslv(0 to 3-1)(WORD-1 downto 0) := (others => (others => '0'));
	
	signal derivatives_aslv : aslv(0 to 3-1)(WORD-1 downto 0) := (others => (others => '0'));
	signal derx : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
	signal dery : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
	signal derz : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
	
	constant MUL_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
	constant MUL_LOW : integer := sfixed_low(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
	signal mul_reg, mul_next : asfi(0 to 3-1)(MUL_HIGH downto MUL_LOW) := (others => (others => '0'));
	
	signal dx : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
	signal dy : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
	signal dz : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
	
	constant SUM_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '+', INT_PART-1, -FRAC_PART);
	constant SUM_LOW : integer := sfixed_low(INT_PART-1, -FRAC_PART, '+', INT_PART-1, -FRAC_PART);
	signal x_plus_dx : sfi(SUM_HIGH downto SUM_LOW) := (others => '0');
	signal y_plus_dy : sfi(SUM_HIGH downto SUM_LOW) := (others => '0');
	signal z_plus_dz : sfi(SUM_HIGH downto SUM_LOW) := (others => '0');
	
	
	signal mem_d_out : slv(21 downto 0) := (others => '0');
	
	signal var_main_next 		: aslv(0 to 3-1)(WORD-1 downto 0) := (others => (others => '0'));
	signal var_main_reg			: aslv(0 to 3-1)(WORD-1 downto 0) := (0 => to_slv(to_sfixed(0.125, INT_PART-1, -FRAC_PART)), 1 => to_slv(to_sfixed(0.125, INT_PART-1, -FRAC_PART)), 2 => to_slv(to_sfixed(0.125, INT_PART-1, -FRAC_PART)));

begin

	DERIV_CALC : entity work.deriv_calc_RC2
	generic map (
      a   => a,
      b   => b,
      u   => u,
      k_1 => k_1,
		k_2 => k_2,
		k_3 => k_3,
		k_4 => k_4,
		k_5 => k_5,

      INT_PART  => INT_PART,
      FRAC_PART => FRAC_PART,
      WORD 		 => WORD
    )
    port map (
      clk => clk,
      rst => rst,

      i_tdata => der_input,
      o_tdata => derivatives_aslv,
		
		o_addr => o_addr,
		o_d_out => mem_d_out
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

end architecture;