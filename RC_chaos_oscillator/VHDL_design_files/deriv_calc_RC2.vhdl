library ieee;
library ieee_proposed;
library hw_chaos;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee_proposed.fixed_float_types.all;
use ieee_proposed.fixed_pkg.all;
use ieee.math_real.all;
use hw_chaos.data_types.all;


entity deriv_calc_RC2 is
  generic (
    a         : real := 10.0;
    b         : real := 14.1026;
	 u 		  : real := 0.2022;
    k_1       : real := 5.5500;
	 k_2       : real := 4.4615;
	 k_3       : real := 4.5500; -- k_1 - 1
	 k_4 		  : real := 3.5500; -- k_1 - 2
	 k_5 		  : real := 15.5500; -- k_1 + a
	 INT_PART  : natural := 7;
    FRAC_PART : natural := 14;
    WORD      : natural := 21
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


architecture RTL of deriv_calc_RC2 is


	-- Memory
	signal we     	 : STD_LOGIC := '0';  
   signal addr     : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');
   signal d_in     : STD_LOGIC_VECTOR(21 downto 0) := (others => '0');
   signal d_out    : STD_LOGIC_VECTOR(21 downto 0) := (others => '0');
	
	constant MEM_INT : integer := 8;
   constant MEM_FRAC : integer := 14;
	
	signal z_in_std : STD_LOGIC_VECTOR(WORD-1 downto 0);
	

	
  -- state variable signals
  signal x_sfi : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
  signal y_sfi : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');
  signal z_sfi : sfi(INT_PART-1 downto -FRAC_PART) := (others => '0');   

  -- dx registers
  constant DX1_1_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
  constant DX1_1_LOW : integer := sfixed_low(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
  signal dx1_1_reg, dx1_1_next : sfi(DX1_1_HIGH downto DX1_1_LOW) := (others => '0');
  
  constant DX1_2_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
  constant DX1_2_LOW : integer := sfixed_low(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
  signal dx1_2_reg, dx1_2_next : sfi(DX1_2_HIGH downto DX1_2_LOW) := (others => '0');
  
  constant DX1_3_HIGH : integer := INT_PART-1;
  constant DX1_3_LOW : integer := -FRAC_PART;
  signal dx1_3_reg, dx1_3_next : sfi(DX1_3_HIGH downto DX1_3_LOW) := (others => '0');
  
  constant DX2_1_HIGH : integer := sfixed_high(DX1_1_HIGH, DX1_1_LOW, '-', DX1_2_HIGH, DX1_2_LOW);
  constant DX2_1_LOW : integer := sfixed_low(DX1_1_HIGH, DX1_1_LOW, '-', DX1_2_HIGH, DX1_2_LOW);
  signal dx2_1_reg, dx2_1_next : sfi(DX2_1_HIGH downto DX2_1_LOW) := (others => '0');
  
  constant DX2_2_HIGH : integer := DX1_3_HIGH;
  constant DX2_2_LOW : integer := DX1_3_LOW;
  signal dx2_2_reg, dx2_2_next : sfi(DX2_2_HIGH downto DX2_2_LOW) := (others => '0');
  
  constant DX3_1_HIGH : integer := sfixed_high(DX2_1_HIGH, DX2_1_LOW, '-', DX2_2_HIGH, DX2_2_LOW);
  constant DX3_1_LOW : integer := sfixed_low(DX2_1_HIGH, DX2_1_LOW, '-', DX2_2_HIGH, DX2_2_LOW);
  signal dx3_1_reg, dx3_1_next : sfi(DX3_1_HIGH downto DX3_1_LOW) := (others => '0');
  
  constant DX4_1_HIGH : integer := INT_PART-1;
  constant DX4_1_LOW : integer := -FRAC_PART;
  signal dx4_1_reg, dx4_1_next : sfi(DX4_1_HIGH downto DX4_1_LOW) := (others => '0');
  
  
  -- dy registers
  constant DY1_1_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
  constant DY1_1_LOW : integer := sfixed_low(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
  signal dy1_1_reg, dy1_1_next : sfi(DY1_1_HIGH downto DY1_1_LOW) := (others => '0');
  
  constant DY1_2_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
  constant DY1_2_LOW : integer := sfixed_low(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
  signal dy1_2_reg, dy1_2_next : sfi(DY1_2_HIGH downto DY1_2_LOW) := (others => '0');
  
  constant DY1_3_HIGH : integer := INT_PART-1;
  constant DY1_3_LOW : integer := -FRAC_PART;
  signal dy1_3_reg, dy1_3_next : sfi(DY1_3_HIGH downto DY1_3_LOW) := (others => '0');
  
  constant DY2_1_HIGH : integer := sfixed_high(DY1_1_HIGH, DY1_1_LOW, '-', DY1_2_HIGH, DY1_2_LOW);
  constant DY2_1_LOW : integer := sfixed_low(DY1_1_HIGH, DY1_1_LOW, '-', DY1_2_HIGH, DY1_2_LOW);
  signal dy2_1_reg, dy2_1_next : sfi(DY2_1_HIGH downto DY2_1_LOW) := (others => '0');
  
  constant DY2_2_HIGH : integer := DY1_3_HIGH;
  constant DY2_2_LOW : integer := DY1_3_LOW;
  signal dy2_2_reg, dy2_2_next : sfi(DY2_2_HIGH downto DY2_2_LOW) := (others => '0');
  
  constant DY3_1_HIGH : integer := sfixed_high(DY2_1_HIGH, DY2_1_LOW, '-', DY2_2_HIGH, DY2_2_LOW);
  constant DY3_1_LOW : integer := sfixed_low(DY2_1_HIGH, DY2_1_LOW, '-', DY2_2_HIGH, DY2_2_LOW);
  signal dy3_1_reg, dy3_1_next : sfi(DY3_1_HIGH downto DY3_1_LOW) := (others => '0');
  
  constant DY4_1_HIGH : integer := INT_PART-1;
  constant DY4_1_LOW : integer := -FRAC_PART;
  signal dy4_1_reg, dy4_1_next : sfi(DY4_1_HIGH downto DY4_1_LOW) := (others => '0');
   
  
  -- dz registers
  constant DZ1_1_HIGH : integer := sfixed_high(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
  constant DZ1_1_LOW : integer := sfixed_low(INT_PART-1, -FRAC_PART, '*', INT_PART-1, -FRAC_PART);
  signal dz1_1_reg, dz1_1_next : sfi(DZ1_1_HIGH downto DZ1_1_LOW) := (others => '0');

  constant DZ2_1_HIGH : integer := sfixed_high(DZ1_1_HIGH, DZ1_1_LOW, '+', MEM_INT-1, -MEM_FRAC);
  constant DZ2_1_LOW : integer :=  sfixed_low(DZ1_1_HIGH, DZ1_1_LOW, '+', MEM_INT-1, -MEM_FRAC);
  signal dz2_1_reg, dz2_1_next : sfi(DZ2_1_HIGH downto DZ2_1_LOW) := (others => '0');
  
  constant DZ3_1_HIGH : integer := DZ2_1_HIGH;
  constant DZ3_1_LOW : integer := DZ2_1_LOW;
  signal dz3_1_reg, dz3_1_next : sfi(DZ3_1_HIGH downto DZ3_1_LOW) := (others => '0');

  constant DZ4_1_HIGH : integer := INT_PART-1;
  constant DZ4_1_LOW : integer := -FRAC_PART;
  signal dz4_1_reg, dz4_1_next : sfi(DZ4_1_HIGH downto DZ4_1_LOW) := (others => '0');
  
begin


  -- Instantiate memory
  HEAVISIDE_MEMORY : entity work.Heaviside_memory
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
		dx1_2_reg <= (others => '0');
		dx1_3_reg <= (others => '0');
		dx2_1_reg <= (others => '0');
		dx2_2_reg <= (others => '0');
		dx3_1_reg <= (others => '0');
		dx4_1_reg <= (others => '0');
		
		dy1_1_reg <= (others => '0');
		dy1_2_reg <= (others => '0');
		dy1_3_reg <= (others => '0');
		dy2_1_reg <= (others => '0');
		dy2_2_reg <= (others => '0');
		dy3_1_reg <= (others => '0');
		dy4_1_reg <= (others => '0');
		
		dz1_1_reg <= (others => '0');
		dz2_1_reg <= (others => '0');
		dz3_1_reg <= (others => '0');
		dz4_1_reg <= (others => '0');
		

	elsif rising_edge(clk) then
      dx1_1_reg <= dx1_1_next;
		dx1_2_reg <= dx1_2_next;
		dx1_3_reg <= dx1_3_next;
		dx2_1_reg <= dx2_1_next;
		dx2_2_reg <= dx2_2_next;
		dx3_1_reg <= dx3_1_next;
		dx4_1_reg <= dx4_1_next;
		
		dy1_1_reg <= dy1_1_next;
		dy1_2_reg <= dy1_2_next;
		dy1_3_reg <= dy1_3_next;
		dy2_1_reg <= dy2_1_next;
		dy2_2_reg <= dy2_2_next;
		dy3_1_reg <= dy3_1_next;
		dy4_1_reg <= dy4_1_next;
		
		dz1_1_reg <= dz1_1_next;
		dz2_1_reg <= dz2_1_next;
		dz3_1_reg <= dz3_1_next;
		dz4_1_reg <= dz4_1_next;   
	end if;
  end process;
    
  ---------------------------------------------------------------
  -- next-state logic
  ---------------------------------------------------------------
  
	-- X equation
  	dx1_1_next <= to_sfixed(k_3, INT_PART-1, -FRAC_PART) * y_sfi;
	dx1_2_next <= to_sfixed(k_3, INT_PART-1, -FRAC_PART) * z_sfi;
	dx1_3_next <= x_sfi;
	
	dx2_1_next <= dx1_1_reg - dx1_2_reg;
	dx2_2_next <= dx1_3_reg;
	
	dx3_1_next <= dx2_1_reg - dx2_2_reg;

	dx4_1_next <= dx3_1_reg(INT_PART-1 downto -FRAC_PART); 

	
	-- Y equation
	dy1_1_next <= to_sfixed(k_4, INT_PART-1, -FRAC_PART) * y_sfi;
	dy1_2_next <= to_sfixed(k_3, INT_PART-1, -FRAC_PART) * z_sfi;
	dy1_3_next <= x_sfi;
	
	dy2_1_next <= dy1_1_reg - dy1_2_reg;
	dy2_2_next <= dy1_3_reg;
	
	dy3_1_next <= dy2_1_reg - dy2_2_reg;
	
	dy4_1_next <= dy3_1_reg(INT_PART-1 downto -FRAC_PART);
	
	
	
	-- Z equation  
	dz1_1_next <= to_sfixed(k_1, INT_PART-1, -FRAC_PART) * y_sfi;
	
	z_in_std <= to_slv(z_sfi);
	
	addr <= not(z_in_std(19)) & z_in_std(18 downto 8);
	
	dz2_1_next <= dz1_1_reg + to_sfixed(d_out, MEM_INT-1, -MEM_FRAC);
	
	dz3_1_next <= dz2_1_reg;
	
	dz4_1_next <= dz3_1_reg(INT_PART-1 downto -FRAC_PART);
  
  
  
  -- outputs
	o_tdata(X_POS) <= to_slv(dx4_1_reg);
	o_tdata(Y_POS) <= to_slv(dy4_1_reg);
	o_tdata(Z_POS) <= to_slv(dz4_1_reg);
	
	
	
	o_addr <= addr;
	o_d_out <= d_out;
	

end architecture;