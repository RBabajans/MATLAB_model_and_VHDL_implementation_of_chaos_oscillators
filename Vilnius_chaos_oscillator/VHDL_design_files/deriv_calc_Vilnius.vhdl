library ieee;
library ieee_proposed;
library hw_chaos;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee_proposed.fixed_float_types.all;
use ieee_proposed.fixed_pkg.all;
use ieee.math_real.all;
use hw_chaos.data_types.all;


entity deriv_calc_Vilnius is
  generic (
    a         : real := 0.5;
    ep_rev    : real := 5.7;
	 
	 INT_PART  : natural := 8;
    FRAC_PART : natural := 14;
    WORD      : natural := 22

  );
  port (
    clk       : in  sl;
    rst       : in  sl;

	 i_tdata   : in  aslv(0 to 3-1)(WORD-1 downto 0);
    o_tdata   : out aslv(0 to 3-1)(WORD-1 downto 0);
	 
	 o_addr  : out slv(11 downto 0);
	 o_d_out : out slv(21 downto 0)
	 
  );
end entity;


architecture RTL of deriv_calc_Vilnius is

	
  -- Memory
  signal we     	: STD_LOGIC := '0';  
  signal addr     : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');
  signal d_in     : STD_LOGIC_VECTOR(21 downto 0) := (others => '0');
  signal d_out    : STD_LOGIC_VECTOR(21 downto 0) := (others => '0');
	
  -- State variable signals
  signal x_sfi : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
  signal y_sfi : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
  signal z_sfi : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
  
  constant MEM_INT  : integer := 8;
  constant MEM_FRAC : integer := 14;
	
  signal z_in_std : STD_LOGIC_VECTOR(WORD-1 downto 0);
 

  -- dx registers
  constant DX1_1_HIGH : integer := INT_PART-1;
  constant DX1_1_LOW  : integer :=  -FRAC_PART;
  signal dx1_1_reg, dx1_1_next : sfi(DX1_1_HIGH downto DX1_1_LOW) := (others => '0');
  
  constant DX2_1_HIGH : integer := DX1_1_HIGH;
  constant DX2_1_LOW  : integer := DX1_1_LOW;
  signal dx2_1_reg, dx2_1_next : sfi(DX2_1_HIGH downto DX2_1_LOW) := (others => '0');
  
  
  -- dy registers
  constant DY1_1_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
  constant DY1_1_LOW : integer := sfixed_low(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
  signal dy1_1_reg, dy1_1_next : sfi(DY1_1_HIGH downto DY1_1_LOW) := (others => '0');
  
  constant DY1_2_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '+', INT_PART-1, -FRAC_PART);
  constant DY1_2_LOW : integer := sfixed_low(INT_PART-1, -FRAC_PART, '+', INT_PART-1, -FRAC_PART);
  signal dy1_2_reg, dy1_2_next : sfi(DY1_2_HIGH downto DY1_2_LOW) := (others => '0');
  
  
  constant DY2_1_HIGH : integer := sfixed_high(DY1_1_HIGH, DY1_1_LOW, '-', DY1_2_HIGH, DY1_2_LOW);
  constant DY2_1_LOW : integer := sfixed_low(DY1_1_HIGH, DY1_1_LOW, '-', DY1_2_HIGH, DY1_2_LOW);
  signal dy2_1_reg, dy2_1_next : sfi(DY2_1_HIGH downto DY2_1_LOW) := (others => '0');
  

  
  -- dz registers
  constant DZ1_1_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
  constant DZ1_1_LOW : integer := sfixed_low(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
  signal dz1_1_reg, dz1_1_next : sfi(DZ1_1_HIGH downto DZ1_1_LOW) := (others => '0');
  
  constant DZ2_1_HIGH : integer := sfixed_high(DZ1_1_HIGH, DZ1_1_LOW, '+', MEM_INT-1, -MEM_FRAC);
  constant DZ2_1_LOW : integer := sfixed_low(DZ1_1_HIGH, DZ1_1_LOW, '+', MEM_INT-1, -MEM_FRAC);
  signal dz2_1_reg, dz2_1_next : sfi(DZ2_1_HIGH downto DZ2_1_LOW) := (others => '0');

begin


  -- Instantiate memory
  HEAVISIDE_MEMORY : entity work.Exponent_memory
	port map (
	     clk      => clk,
        we       => we,
        addr     => addr,
        d_in     => d_in,
        d_out    => d_out
	);

	
  -- Take state variables from the ports
  x_sfi <= to_sfixed(i_tdata(X_POS), INT_PART-1, -FRAC_PART);
  y_sfi <= to_sfixed(i_tdata(Y_POS), INT_PART-1, -FRAC_PART);
  z_sfi <= to_sfixed(i_tdata(Z_POS), INT_PART-1, -FRAC_PART);


  -- reg-state logic
  process(clk, rst)
  begin
	if rst = '1' then
		dx1_1_reg <= (others => '0');
		dx2_1_reg <= (others => '0');
		
		
		dy1_1_reg <= (others => '0');
		dy1_2_reg <= (others => '0');
		dy2_1_reg <= (others => '0');

		
		dz1_1_reg <= (others => '0');
		dz2_1_reg <= (others => '0');

	elsif rising_edge(clk) then
      dx1_1_reg <= dx1_1_next;
		dx2_1_reg <= dx2_1_next;

		dy1_1_reg <= dy1_1_next;
		dy1_2_reg <= dy1_2_next;
		dy2_1_reg <= dy2_1_next;

		dz1_1_reg <= dz1_1_next;
		dz2_1_reg <= dz2_1_next;

	end if;
  end process;
    
  ---------------------------------------------------------------
  -- next-state logic
  ---------------------------------------------------------------
  
	-- X equation
	dx1_1_next <= y_sfi;
	dx2_1_next <= dx1_1_reg;

	-- Y equation
	dy1_1_next <= to_sfixed(a, INT_PART-1, -FRAC_PART) * y_sfi;
	dy1_2_next <= x_sfi + z_sfi;
		
	dy2_1_next <= dy1_1_reg - dy1_2_reg;
	

	-- Z equation  
	dz1_1_next <= to_sfixed(ep_rev, INT_PART-1, -FRAC_PART) * y_sfi;
	
	-- Read memory
	z_in_std <= to_slv(z_sfi);
	addr <= not(z_in_std(19)) & z_in_std(18 downto 8);	

	dz2_1_next <= dz1_1_reg + to_sfixed(d_out, MEM_INT-1, -MEM_FRAC);


  -- outputs
	o_tdata(X_POS) <= to_slv(dx2_1_reg(INT_PART-1 downto -FRAC_PART));
	o_tdata(Y_POS) <= to_slv(dy2_1_reg(INT_PART-1 downto -FRAC_PART));
	o_tdata(Z_POS) <= to_slv(dz2_1_reg(INT_PART-1 downto -FRAC_PART));
	
	
	o_addr <= addr;
	o_d_out <= d_out;

end architecture;