-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "02/26/2025 13:44:03"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE RC2_oscillator_data_type IS

TYPE o_tdata_21_0_type IS ARRAY (21 DOWNTO 0) OF std_logic;
TYPE o_tdata_21_0_0_2_type IS ARRAY (0 TO 2) OF o_tdata_21_0_type;
SUBTYPE o_tdata_type IS o_tdata_21_0_0_2_type;

TYPE o_derivatives_aslv_21_0_type IS ARRAY (21 DOWNTO 0) OF std_logic;
TYPE o_derivatives_aslv_21_0_0_2_type IS ARRAY (0 TO 2) OF o_derivatives_aslv_21_0_type;
SUBTYPE o_derivatives_aslv_type IS o_derivatives_aslv_21_0_0_2_type;

END RC2_oscillator_data_type;

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
LIBRARY WORK;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.RC2_OSCILLATOR_DATA_TYPE.ALL;

ENTITY 	RC2_oscillator IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	o_tdata : BUFFER o_tdata_type;
	o_addr : BUFFER std_logic_vector(11 DOWNTO 0);
	o_d_out : BUFFER std_logic_vector(21 DOWNTO 0);
	o_d_out_sfi_neg_14 : BUFFER std_logic;
	o_d_out_sfi_neg_13 : BUFFER std_logic;
	o_d_out_sfi_neg_12 : BUFFER std_logic;
	o_d_out_sfi_neg_11 : BUFFER std_logic;
	o_d_out_sfi_neg_10 : BUFFER std_logic;
	o_d_out_sfi_neg_9 : BUFFER std_logic;
	o_d_out_sfi_neg_8 : BUFFER std_logic;
	o_d_out_sfi_neg_7 : BUFFER std_logic;
	o_d_out_sfi_neg_6 : BUFFER std_logic;
	o_d_out_sfi_neg_5 : BUFFER std_logic;
	o_d_out_sfi_neg_4 : BUFFER std_logic;
	o_d_out_sfi_neg_3 : BUFFER std_logic;
	o_d_out_sfi_neg_2 : BUFFER std_logic;
	o_d_out_sfi_neg_1 : BUFFER std_logic;
	o_d_out_sfi : BUFFER std_logic_vector(7 DOWNTO 0);
	o_derivatives_aslv : BUFFER o_derivatives_aslv_type
	);
END RC2_oscillator;

-- Design Ports Information
-- o_tdata[2][0]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][1]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][2]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][3]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][4]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][5]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][8]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][9]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][10]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][11]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][12]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][13]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][14]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][15]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][16]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][17]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][18]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][19]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][20]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][21]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][0]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][1]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][3]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][4]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][5]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][7]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][8]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][9]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][10]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][11]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][12]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][13]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][14]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][15]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][16]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][17]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][18]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][19]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][20]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][21]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][0]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][1]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][2]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][3]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][4]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][5]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][6]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][7]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][8]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][9]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][10]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][11]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][12]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][13]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][14]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][15]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][16]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][17]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][18]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][19]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][20]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][21]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[0]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[1]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[2]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[4]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[5]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[6]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[7]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[8]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[9]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[10]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[11]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[0]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[1]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[2]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[4]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[5]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[7]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[8]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[9]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[10]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[11]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[12]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[13]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[14]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[15]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[16]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[17]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[18]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[19]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[20]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[21]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-14]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-13]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-12]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-11]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-10]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-9]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-8]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-7]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-6]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-5]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-4]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-3]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-2]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-1]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[0]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[1]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[2]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[3]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[4]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[5]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[6]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[7]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][0]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][1]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][2]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][4]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][5]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][6]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][7]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][8]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][9]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][10]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][11]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][12]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][13]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][14]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][15]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][16]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][17]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][18]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][19]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][20]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][21]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][0]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][1]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][2]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][3]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][5]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][6]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][7]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][8]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][9]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][10]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][11]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][12]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][13]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][14]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][15]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][16]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][17]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][18]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][19]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][20]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][21]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][0]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][1]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][2]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][3]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][4]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][5]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][6]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][7]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][8]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][9]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][10]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][11]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][12]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][13]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][14]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][15]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][16]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][17]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][18]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][19]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][20]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][21]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RC2_oscillator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_o_tdata : o_tdata_type;
SIGNAL ww_o_addr : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_o_d_out : std_logic_vector(21 DOWNTO 0);
SIGNAL ww_o_d_out_sfi_neg_14 : std_logic;
SIGNAL ww_o_d_out_sfi_neg_13 : std_logic;
SIGNAL ww_o_d_out_sfi_neg_12 : std_logic;
SIGNAL ww_o_d_out_sfi_neg_11 : std_logic;
SIGNAL ww_o_d_out_sfi_neg_10 : std_logic;
SIGNAL ww_o_d_out_sfi_neg_9 : std_logic;
SIGNAL ww_o_d_out_sfi_neg_8 : std_logic;
SIGNAL ww_o_d_out_sfi_neg_7 : std_logic;
SIGNAL ww_o_d_out_sfi_neg_6 : std_logic;
SIGNAL ww_o_d_out_sfi_neg_5 : std_logic;
SIGNAL ww_o_d_out_sfi_neg_4 : std_logic;
SIGNAL ww_o_d_out_sfi_neg_3 : std_logic;
SIGNAL ww_o_d_out_sfi_neg_2 : std_logic;
SIGNAL ww_o_d_out_sfi_neg_1 : std_logic;
SIGNAL ww_o_d_out_sfi : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_derivatives_aslv : o_derivatives_aslv_type;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult4~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult4~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult4~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult4~8_AX_bus\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult4~8_AY_bus\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult4~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult2~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult2~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult2~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult2~mac_AX_bus\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult2~mac_AY_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult2~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult3~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult3~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult3~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult3~mac_AX_bus\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult3~mac_AY_bus\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult3~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult0~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult0~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult0~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult0~mac_AX_bus\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult0~mac_AY_bus\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult0~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult1~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult1~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult1~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult1~mac_AX_bus\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult1~mac_AY_bus\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult1~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult4~8_resulta\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~9\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~10\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~11\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~12\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~13\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~14\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~15\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~16\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~17\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~18\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~19\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~20\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~21\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~22\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~23\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~24\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~25\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~26\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~27\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~28\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~29\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~30\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~31\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~32\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~33\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~34\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~35\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~36\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~37\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~38\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~39\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~40\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~41\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~42\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~43\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~44\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~45\ : std_logic;
SIGNAL \DERIV_CALC|Mult4~46\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~8\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~9\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~10\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~11\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~12\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~13\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~14\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~15\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~16\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~17\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~18\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~19\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~20\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~21\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~22\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~23\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~24\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~25\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~26\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~27\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~28\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~29\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~30\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~31\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~32\ : std_logic;
SIGNAL \DERIV_CALC|Mult2~33\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~8\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~9\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~10\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~11\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~12\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~13\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~14\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~15\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~16\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~17\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~18\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~19\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~20\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~21\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~22\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~23\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~24\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~25\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~26\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~27\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~28\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~29\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~30\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~31\ : std_logic;
SIGNAL \DERIV_CALC|Mult3~32\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~8\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~9\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~10\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~11\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~12\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~13\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~14\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~15\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~16\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~17\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~18\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~19\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~20\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~21\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~22\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~23\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~24\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~25\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~26\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~27\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~28\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~29\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~30\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~31\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~32\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~8\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~9\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~10\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~11\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~12\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~13\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~14\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~15\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~16\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~17\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~18\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~19\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~20\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~21\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~22\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~23\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~24\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~25\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~26\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~27\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~28\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~29\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~30\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~31\ : std_logic;
SIGNAL \DERIV_CALC|Mult1~32\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputCLKENA0_outclk\ : std_logic;
SIGNAL \var_main_reg[1][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \var_main_reg[2][1]~_Duplicate_2_q\ : std_logic;
SIGNAL \var_main_reg[1][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \var_main_reg[2][2]~_Duplicate_2_q\ : std_logic;
SIGNAL \var_main_reg[1][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \var_main_reg[0][13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \var_main_reg[0][14]~q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \var_main_reg[0][15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \var_main_reg[0][16]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \var_main_reg[0][17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \var_main_reg[0][18]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \var_main_reg[0][19]~q\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \var_main_reg[0][20]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[6]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[6]~DUPLICATE_q\ : std_logic;
SIGNAL \var_main_reg[2][3]~_Duplicate_2_q\ : std_logic;
SIGNAL \var_main_reg[1][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \var_main_reg[1][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[1]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[1]~feeder_combout\ : std_logic;
SIGNAL \var_main_reg[2][5]~_Duplicate_2_q\ : std_logic;
SIGNAL \var_main_reg[1][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \var_main_reg[2][6]~_Duplicate_2_q\ : std_logic;
SIGNAL \mul_reg[2][7]~DUPLICATE_q\ : std_logic;
SIGNAL \var_main_reg[2][7]~_Duplicate_2_q\ : std_logic;
SIGNAL \var_main_reg[2][4]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \var_main_reg[2][4]~_Duplicate_2DUPLICATE_q\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \var_main_reg[2][13]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \var_main_reg[2][13]~_Duplicate_2_q\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \var_main_reg[2][14]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \var_main_reg[2][14]~_Duplicate_2_q\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \var_main_reg[2][15]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \var_main_reg[2][15]~_Duplicate_2DUPLICATE_q\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \var_main_reg[2][16]~_Duplicate_2_q\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \var_main_reg[2][17]~_Duplicate_2_q\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \var_main_reg[2][18]~_Duplicate_2_q\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \var_main_reg[2][19]~_Duplicate_2_q\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \var_main_reg[2][20]~_Duplicate_2_q\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \var_main_reg[2][21]~_Duplicate_2_q\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \var_main_reg[1][8]~_Duplicate_3_q\ : std_logic;
SIGNAL \var_main_reg[1][9]~_Duplicate_3_q\ : std_logic;
SIGNAL \var_main_reg[1][12]~_Duplicate_3feeder_combout\ : std_logic;
SIGNAL \var_main_reg[1][12]~_Duplicate_3DUPLICATE_q\ : std_logic;
SIGNAL \var_main_reg[1][11]~_Duplicate_3DUPLICATE_q\ : std_logic;
SIGNAL \var_main_reg[1][10]~_Duplicate_3_q\ : std_logic;
SIGNAL \var_main_reg[1][7]~_Duplicate_3_q\ : std_logic;
SIGNAL \var_main_reg[1][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \var_main_reg[1][13]~_Duplicate_3_q\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \var_main_reg[1][14]~_Duplicate_3_q\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \var_main_reg[1][15]~_Duplicate_3_q\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \var_main_reg[1][16]~_Duplicate_3_q\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \var_main_reg[1][17]~_Duplicate_3_q\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \var_main_reg[1][18]~_Duplicate_3_q\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \var_main_reg[1][19]~_Duplicate_3_q\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \var_main_reg[1][20]~_Duplicate_3_q\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \var_main_reg[1][21]~_Duplicate_3_q\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-1]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-2]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-2]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-3]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-3]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-4]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-5]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-5]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-6]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-6]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-7]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-7]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-8]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-8]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-9]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-9]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-10]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-10]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-11]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-11]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-12]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-12]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-13]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-13]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-14]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-14]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-15]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-15]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-16]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-16]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-17]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-17]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-18]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-18]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-19]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-19]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-20]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-20]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-21]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-21]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-22]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-22]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-23]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-23]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-24]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-24]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-25]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-25]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-26]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-26]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-27]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-27]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-28]\ : std_logic;
SIGNAL \DERIV_CALC|dy1_1_reg[-28]\ : std_logic;
SIGNAL \DERIV_CALC|Add2~142_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~143\ : std_logic;
SIGNAL \DERIV_CALC|Add2~138_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~139\ : std_logic;
SIGNAL \DERIV_CALC|Add2~134_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~135\ : std_logic;
SIGNAL \DERIV_CALC|Add2~130_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~131\ : std_logic;
SIGNAL \DERIV_CALC|Add2~126_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~127\ : std_logic;
SIGNAL \DERIV_CALC|Add2~122_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~123\ : std_logic;
SIGNAL \DERIV_CALC|Add2~118_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~119\ : std_logic;
SIGNAL \DERIV_CALC|Add2~114_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~115\ : std_logic;
SIGNAL \DERIV_CALC|Add2~110_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~111\ : std_logic;
SIGNAL \DERIV_CALC|Add2~106_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~107\ : std_logic;
SIGNAL \DERIV_CALC|Add2~102_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~103\ : std_logic;
SIGNAL \DERIV_CALC|Add2~98_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~99\ : std_logic;
SIGNAL \DERIV_CALC|Add2~94_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~95\ : std_logic;
SIGNAL \DERIV_CALC|Add2~90_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~91\ : std_logic;
SIGNAL \DERIV_CALC|Add2~2\ : std_logic;
SIGNAL \DERIV_CALC|Add2~3\ : std_logic;
SIGNAL \DERIV_CALC|Add2~6\ : std_logic;
SIGNAL \DERIV_CALC|Add2~7\ : std_logic;
SIGNAL \DERIV_CALC|Add2~10\ : std_logic;
SIGNAL \DERIV_CALC|Add2~11\ : std_logic;
SIGNAL \DERIV_CALC|Add2~14\ : std_logic;
SIGNAL \DERIV_CALC|Add2~15\ : std_logic;
SIGNAL \DERIV_CALC|Add2~18\ : std_logic;
SIGNAL \DERIV_CALC|Add2~19\ : std_logic;
SIGNAL \DERIV_CALC|Add2~22\ : std_logic;
SIGNAL \DERIV_CALC|Add2~23\ : std_logic;
SIGNAL \DERIV_CALC|Add2~26\ : std_logic;
SIGNAL \DERIV_CALC|Add2~27\ : std_logic;
SIGNAL \DERIV_CALC|Add2~30\ : std_logic;
SIGNAL \DERIV_CALC|Add2~31\ : std_logic;
SIGNAL \DERIV_CALC|Add2~34\ : std_logic;
SIGNAL \DERIV_CALC|Add2~35\ : std_logic;
SIGNAL \DERIV_CALC|Add2~38\ : std_logic;
SIGNAL \DERIV_CALC|Add2~39\ : std_logic;
SIGNAL \DERIV_CALC|Add2~42\ : std_logic;
SIGNAL \DERIV_CALC|Add2~43\ : std_logic;
SIGNAL \DERIV_CALC|Add2~46\ : std_logic;
SIGNAL \DERIV_CALC|Add2~47\ : std_logic;
SIGNAL \DERIV_CALC|Add2~50\ : std_logic;
SIGNAL \DERIV_CALC|Add2~51\ : std_logic;
SIGNAL \DERIV_CALC|Add2~54\ : std_logic;
SIGNAL \DERIV_CALC|Add2~55\ : std_logic;
SIGNAL \DERIV_CALC|Add2~58\ : std_logic;
SIGNAL \DERIV_CALC|Add2~59\ : std_logic;
SIGNAL \DERIV_CALC|Add2~62\ : std_logic;
SIGNAL \DERIV_CALC|Add2~63\ : std_logic;
SIGNAL \DERIV_CALC|Add2~66\ : std_logic;
SIGNAL \DERIV_CALC|Add2~67\ : std_logic;
SIGNAL \DERIV_CALC|Add2~70\ : std_logic;
SIGNAL \DERIV_CALC|Add2~71\ : std_logic;
SIGNAL \DERIV_CALC|Add2~74\ : std_logic;
SIGNAL \DERIV_CALC|Add2~75\ : std_logic;
SIGNAL \DERIV_CALC|Add2~78\ : std_logic;
SIGNAL \DERIV_CALC|Add2~79\ : std_logic;
SIGNAL \DERIV_CALC|Add2~82\ : std_logic;
SIGNAL \DERIV_CALC|Add2~83\ : std_logic;
SIGNAL \DERIV_CALC|Add2~85_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \var_main_reg[0][21]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[5]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[4]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[4]~feeder_combout\ : std_logic;
SIGNAL \var_main_reg[0][17]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[3]~feeder_combout\ : std_logic;
SIGNAL \var_main_reg[0][16]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[0]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-1]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-1]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~49_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~45_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-3]~q\ : std_logic;
SIGNAL \var_main_reg[0][10]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-1]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-1]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-2]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-2]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-3]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-3]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-4]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-4]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-5]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-5]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-6]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-6]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-7]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-7]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-8]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-8]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-9]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-9]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-10]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-10]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-11]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-11]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-12]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-12]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-13]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-13]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-14]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-14]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-15]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-15]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-16]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-16]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-17]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-17]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-18]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-18]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-19]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-19]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-20]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-20]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-21]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-21]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-22]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-22]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-23]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-23]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-24]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-24]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-25]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-25]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-26]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-26]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-27]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-27]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-28]\ : std_logic;
SIGNAL \DERIV_CALC|dx1_2_reg[-28]\ : std_logic;
SIGNAL \DERIV_CALC|Add0~142_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~143\ : std_logic;
SIGNAL \DERIV_CALC|Add0~138_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~139\ : std_logic;
SIGNAL \DERIV_CALC|Add0~134_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~135\ : std_logic;
SIGNAL \DERIV_CALC|Add0~130_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~131\ : std_logic;
SIGNAL \DERIV_CALC|Add0~126_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~127\ : std_logic;
SIGNAL \DERIV_CALC|Add0~122_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~123\ : std_logic;
SIGNAL \DERIV_CALC|Add0~118_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~119\ : std_logic;
SIGNAL \DERIV_CALC|Add0~114_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~115\ : std_logic;
SIGNAL \DERIV_CALC|Add0~110_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~111\ : std_logic;
SIGNAL \DERIV_CALC|Add0~106_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~107\ : std_logic;
SIGNAL \DERIV_CALC|Add0~102_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~103\ : std_logic;
SIGNAL \DERIV_CALC|Add0~98_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~99\ : std_logic;
SIGNAL \DERIV_CALC|Add0~94_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~95\ : std_logic;
SIGNAL \DERIV_CALC|Add0~90_cout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~91\ : std_logic;
SIGNAL \DERIV_CALC|Add0~2\ : std_logic;
SIGNAL \DERIV_CALC|Add0~3\ : std_logic;
SIGNAL \DERIV_CALC|Add0~6\ : std_logic;
SIGNAL \DERIV_CALC|Add0~7\ : std_logic;
SIGNAL \DERIV_CALC|Add0~10\ : std_logic;
SIGNAL \DERIV_CALC|Add0~11\ : std_logic;
SIGNAL \DERIV_CALC|Add0~14\ : std_logic;
SIGNAL \DERIV_CALC|Add0~15\ : std_logic;
SIGNAL \DERIV_CALC|Add0~18\ : std_logic;
SIGNAL \DERIV_CALC|Add0~19\ : std_logic;
SIGNAL \DERIV_CALC|Add0~22\ : std_logic;
SIGNAL \DERIV_CALC|Add0~23\ : std_logic;
SIGNAL \DERIV_CALC|Add0~26\ : std_logic;
SIGNAL \DERIV_CALC|Add0~27\ : std_logic;
SIGNAL \DERIV_CALC|Add0~30\ : std_logic;
SIGNAL \DERIV_CALC|Add0~31\ : std_logic;
SIGNAL \DERIV_CALC|Add0~34\ : std_logic;
SIGNAL \DERIV_CALC|Add0~35\ : std_logic;
SIGNAL \DERIV_CALC|Add0~38\ : std_logic;
SIGNAL \DERIV_CALC|Add0~39\ : std_logic;
SIGNAL \DERIV_CALC|Add0~42\ : std_logic;
SIGNAL \DERIV_CALC|Add0~43\ : std_logic;
SIGNAL \DERIV_CALC|Add0~46\ : std_logic;
SIGNAL \DERIV_CALC|Add0~47\ : std_logic;
SIGNAL \DERIV_CALC|Add0~50\ : std_logic;
SIGNAL \DERIV_CALC|Add0~51\ : std_logic;
SIGNAL \DERIV_CALC|Add0~54\ : std_logic;
SIGNAL \DERIV_CALC|Add0~55\ : std_logic;
SIGNAL \DERIV_CALC|Add0~58\ : std_logic;
SIGNAL \DERIV_CALC|Add0~59\ : std_logic;
SIGNAL \DERIV_CALC|Add0~62\ : std_logic;
SIGNAL \DERIV_CALC|Add0~63\ : std_logic;
SIGNAL \DERIV_CALC|Add0~66\ : std_logic;
SIGNAL \DERIV_CALC|Add0~67\ : std_logic;
SIGNAL \DERIV_CALC|Add0~70\ : std_logic;
SIGNAL \DERIV_CALC|Add0~71\ : std_logic;
SIGNAL \DERIV_CALC|Add0~74\ : std_logic;
SIGNAL \DERIV_CALC|Add0~75\ : std_logic;
SIGNAL \DERIV_CALC|Add0~77_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~73_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~69_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~65_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~61_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[1]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~57_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~53_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~49_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-3]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~45_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~41_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~37_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~33_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~69_sumout\ : std_logic;
SIGNAL \mul_reg[0][-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~65_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[2]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~61_sumout\ : std_logic;
SIGNAL \mul_reg[0][-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~57_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[0]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-10]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~53_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx3_1_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-1]~q\ : std_logic;
SIGNAL \mul_reg[0][-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~49_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx3_1_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-2]~q\ : std_logic;
SIGNAL \mul_reg[0][-12]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~45_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx3_1_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-3]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-3]~q\ : std_logic;
SIGNAL \mul_reg[0][-13]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~41_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx3_1_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-4]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-4]~q\ : std_logic;
SIGNAL \mul_reg[0][-14]~q\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \var_main_reg[0][0]~q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \var_main_reg[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \var_main_reg[0][2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \var_main_reg[0][3]~q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \var_main_reg[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \var_main_reg[0][5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \var_main_reg[0][6]~q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \var_main_reg[0][7]~q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \var_main_reg[0][8]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-6]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~29_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~25_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~21_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-9]~q\ : std_logic;
SIGNAL \var_main_reg[0][5]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-9]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-9]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~17_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-10]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-10]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-11]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~13_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~9_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~5_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-13]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-14]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-14]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~1_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~2\ : std_logic;
SIGNAL \DERIV_CALC|Add1~3\ : std_logic;
SIGNAL \DERIV_CALC|Add1~6\ : std_logic;
SIGNAL \DERIV_CALC|Add1~7\ : std_logic;
SIGNAL \DERIV_CALC|Add1~10\ : std_logic;
SIGNAL \DERIV_CALC|Add1~11\ : std_logic;
SIGNAL \DERIV_CALC|Add1~14\ : std_logic;
SIGNAL \DERIV_CALC|Add1~15\ : std_logic;
SIGNAL \DERIV_CALC|Add1~18\ : std_logic;
SIGNAL \DERIV_CALC|Add1~19\ : std_logic;
SIGNAL \DERIV_CALC|Add1~22\ : std_logic;
SIGNAL \DERIV_CALC|Add1~23\ : std_logic;
SIGNAL \DERIV_CALC|Add1~26\ : std_logic;
SIGNAL \DERIV_CALC|Add1~27\ : std_logic;
SIGNAL \DERIV_CALC|Add1~30\ : std_logic;
SIGNAL \DERIV_CALC|Add1~31\ : std_logic;
SIGNAL \DERIV_CALC|Add1~34\ : std_logic;
SIGNAL \DERIV_CALC|Add1~35\ : std_logic;
SIGNAL \DERIV_CALC|Add1~39\ : std_logic;
SIGNAL \DERIV_CALC|Add1~43\ : std_logic;
SIGNAL \DERIV_CALC|Add1~47\ : std_logic;
SIGNAL \DERIV_CALC|Add1~51\ : std_logic;
SIGNAL \DERIV_CALC|Add1~55\ : std_logic;
SIGNAL \DERIV_CALC|Add1~59\ : std_logic;
SIGNAL \DERIV_CALC|Add1~63\ : std_logic;
SIGNAL \DERIV_CALC|Add1~67\ : std_logic;
SIGNAL \DERIV_CALC|Add1~71\ : std_logic;
SIGNAL \DERIV_CALC|Add1~73_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[4]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-6]~q\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \var_main_reg[0][9]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-5]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~38\ : std_logic;
SIGNAL \DERIV_CALC|Add1~42\ : std_logic;
SIGNAL \DERIV_CALC|Add1~46\ : std_logic;
SIGNAL \DERIV_CALC|Add1~50\ : std_logic;
SIGNAL \DERIV_CALC|Add1~54\ : std_logic;
SIGNAL \DERIV_CALC|Add1~58\ : std_logic;
SIGNAL \DERIV_CALC|Add1~62\ : std_logic;
SIGNAL \DERIV_CALC|Add1~66\ : std_logic;
SIGNAL \DERIV_CALC|Add1~70\ : std_logic;
SIGNAL \DERIV_CALC|Add1~74\ : std_logic;
SIGNAL \DERIV_CALC|Add1~75\ : std_logic;
SIGNAL \DERIV_CALC|Add1~77_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[5]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-5]~q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \var_main_reg[0][10]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-4]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~37_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~33_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~29_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~25_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~21_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-9]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~17_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~13_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~9_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~5_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~1_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add3~2\ : std_logic;
SIGNAL \DERIV_CALC|Add3~3\ : std_logic;
SIGNAL \DERIV_CALC|Add3~6\ : std_logic;
SIGNAL \DERIV_CALC|Add3~7\ : std_logic;
SIGNAL \DERIV_CALC|Add3~10\ : std_logic;
SIGNAL \DERIV_CALC|Add3~11\ : std_logic;
SIGNAL \DERIV_CALC|Add3~14\ : std_logic;
SIGNAL \DERIV_CALC|Add3~15\ : std_logic;
SIGNAL \DERIV_CALC|Add3~18\ : std_logic;
SIGNAL \DERIV_CALC|Add3~19\ : std_logic;
SIGNAL \DERIV_CALC|Add3~22\ : std_logic;
SIGNAL \DERIV_CALC|Add3~23\ : std_logic;
SIGNAL \DERIV_CALC|Add3~26\ : std_logic;
SIGNAL \DERIV_CALC|Add3~27\ : std_logic;
SIGNAL \DERIV_CALC|Add3~30\ : std_logic;
SIGNAL \DERIV_CALC|Add3~31\ : std_logic;
SIGNAL \DERIV_CALC|Add3~34\ : std_logic;
SIGNAL \DERIV_CALC|Add3~35\ : std_logic;
SIGNAL \DERIV_CALC|Add3~38\ : std_logic;
SIGNAL \DERIV_CALC|Add3~39\ : std_logic;
SIGNAL \DERIV_CALC|Add3~42\ : std_logic;
SIGNAL \DERIV_CALC|Add3~43\ : std_logic;
SIGNAL \DERIV_CALC|Add3~46\ : std_logic;
SIGNAL \DERIV_CALC|Add3~47\ : std_logic;
SIGNAL \DERIV_CALC|Add3~50\ : std_logic;
SIGNAL \DERIV_CALC|Add3~51\ : std_logic;
SIGNAL \DERIV_CALC|Add3~54\ : std_logic;
SIGNAL \DERIV_CALC|Add3~55\ : std_logic;
SIGNAL \DERIV_CALC|Add3~58\ : std_logic;
SIGNAL \DERIV_CALC|Add3~59\ : std_logic;
SIGNAL \DERIV_CALC|Add3~62\ : std_logic;
SIGNAL \DERIV_CALC|Add3~63\ : std_logic;
SIGNAL \DERIV_CALC|Add3~66\ : std_logic;
SIGNAL \DERIV_CALC|Add3~67\ : std_logic;
SIGNAL \DERIV_CALC|Add3~70\ : std_logic;
SIGNAL \DERIV_CALC|Add3~71\ : std_logic;
SIGNAL \DERIV_CALC|Add3~74\ : std_logic;
SIGNAL \DERIV_CALC|Add3~75\ : std_logic;
SIGNAL \DERIV_CALC|Add3~78\ : std_logic;
SIGNAL \DERIV_CALC|Add3~79\ : std_logic;
SIGNAL \DERIV_CALC|Add3~82\ : std_logic;
SIGNAL \DERIV_CALC|Add3~83\ : std_logic;
SIGNAL \DERIV_CALC|Add3~85_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[7]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[1][7]~q\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~81_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add3~81_sumout\ : std_logic;
SIGNAL \mul_reg[1][-4]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[1][-4]~q\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~77_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add3~77_sumout\ : std_logic;
SIGNAL \mul_reg[1][-5]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[1][-5]~q\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~73_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add3~73_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[4]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[1][-6]~q\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~69_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add3~69_sumout\ : std_logic;
SIGNAL \mul_reg[1][-7]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[1][-7]~q\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \var_main_reg[2][15]~_Duplicate_2_q\ : std_logic;
SIGNAL \var_main_reg[2][19]~_wirecell_combout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[3]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[0]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-1]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-2]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-3]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-5]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-5]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-6]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-6]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-7]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-7]\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-8]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-8]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-9]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-9]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-10]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-10]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-11]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-11]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-12]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-12]\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-13]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-13]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-14]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-14]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add4~2\ : std_logic;
SIGNAL \DERIV_CALC|Add4~6\ : std_logic;
SIGNAL \DERIV_CALC|Add4~10\ : std_logic;
SIGNAL \DERIV_CALC|Add4~14\ : std_logic;
SIGNAL \DERIV_CALC|Add4~18\ : std_logic;
SIGNAL \DERIV_CALC|Add4~22\ : std_logic;
SIGNAL \DERIV_CALC|Add4~26\ : std_logic;
SIGNAL \DERIV_CALC|Add4~30\ : std_logic;
SIGNAL \DERIV_CALC|Add4~34\ : std_logic;
SIGNAL \DERIV_CALC|Add4~38\ : std_logic;
SIGNAL \DERIV_CALC|Add4~42\ : std_logic;
SIGNAL \DERIV_CALC|Add4~46\ : std_logic;
SIGNAL \DERIV_CALC|Add4~50\ : std_logic;
SIGNAL \DERIV_CALC|Add4~54\ : std_logic;
SIGNAL \DERIV_CALC|Add4~58\ : std_logic;
SIGNAL \DERIV_CALC|Add4~62\ : std_logic;
SIGNAL \DERIV_CALC|Add4~66\ : std_logic;
SIGNAL \DERIV_CALC|Add4~69_sumout\ : std_logic;
SIGNAL \mul_reg[2][-7]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][-7]~q\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \var_main_reg[2][12]~_Duplicate_2_q\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[7]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[5]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|Add4~70\ : std_logic;
SIGNAL \DERIV_CALC|Add4~74\ : std_logic;
SIGNAL \DERIV_CALC|Add4~78\ : std_logic;
SIGNAL \DERIV_CALC|Add4~82\ : std_logic;
SIGNAL \DERIV_CALC|Add4~85_sumout\ : std_logic;
SIGNAL \mul_reg[2][7]~q\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \var_main_reg[2][11]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \var_main_reg[2][11]~_Duplicate_2_q\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[6]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|Add4~81_sumout\ : std_logic;
SIGNAL \mul_reg[2][-4]~q\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \var_main_reg[2][10]~_Duplicate_2_q\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|Add4~65_sumout\ : std_logic;
SIGNAL \mul_reg[2][-8]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][-8]~q\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~65_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add3~65_sumout\ : std_logic;
SIGNAL \mul_reg[1][-8]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[1][-8]~q\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add4~77_sumout\ : std_logic;
SIGNAL \mul_reg[2][-5]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][-5]~q\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \var_main_reg[2][9]~_Duplicate_2_q\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[1]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|Add4~61_sumout\ : std_logic;
SIGNAL \mul_reg[2][-9]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][-9]~q\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~61_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add3~61_sumout\ : std_logic;
SIGNAL \mul_reg[1][-9]~q\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~57_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add3~57_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[0]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[1][-10]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[1][-10]~q\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add4~57_sumout\ : std_logic;
SIGNAL \mul_reg[2][-10]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][-10]~q\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-1]\ : std_logic;
SIGNAL \DERIV_CALC|Add2~53_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add3~53_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy3_1_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-1]~q\ : std_logic;
SIGNAL \mul_reg[1][-11]~q\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add4~73_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[4]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[4]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][-6]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][-6]~q\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \var_main_reg[2][8]~_Duplicate_2_q\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-1]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_2_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add4~53_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-1]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-1]~q\ : std_logic;
SIGNAL \mul_reg[2][-11]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][-11]~q\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~78\ : std_logic;
SIGNAL \DERIV_CALC|Add0~79\ : std_logic;
SIGNAL \DERIV_CALC|Add0~81_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add1~78\ : std_logic;
SIGNAL \DERIV_CALC|Add1~79\ : std_logic;
SIGNAL \DERIV_CALC|Add1~81_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[6]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-4]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-4]~q\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \var_main_reg[0][12]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add3~49_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy3_1_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-2]~q\ : std_logic;
SIGNAL \mul_reg[1][-12]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[1][-12]~q\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-2]\ : std_logic;
SIGNAL \DERIV_CALC|Add4~49_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-2]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-2]~q\ : std_logic;
SIGNAL \mul_reg[2][-12]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][-12]~q\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~82\ : std_logic;
SIGNAL \DERIV_CALC|Add0~83\ : std_logic;
SIGNAL \DERIV_CALC|Add0~85_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add1~82\ : std_logic;
SIGNAL \DERIV_CALC|Add1~83\ : std_logic;
SIGNAL \DERIV_CALC|Add1~85_sumout\ : std_logic;
SIGNAL \mul_reg[0][7]~q\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \var_main_reg[0][11]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_3_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_2_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add3~45_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy3_1_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-3]~q\ : std_logic;
SIGNAL \mul_reg[1][-13]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[1][-13]~q\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-3]\ : std_logic;
SIGNAL \DERIV_CALC|Add4~45_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-3]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-3]~q\ : std_logic;
SIGNAL \mul_reg[2][-13]~q\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-4]\ : std_logic;
SIGNAL \DERIV_CALC|Add2~41_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add3~41_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy3_1_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-4]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-4]~q\ : std_logic;
SIGNAL \mul_reg[1][-14]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[1][-14]~q\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-4]\ : std_logic;
SIGNAL \DERIV_CALC|Add4~41_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-4]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-4]~q\ : std_logic;
SIGNAL \mul_reg[2][-14]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][-14]~q\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \var_main_reg[2][0]~_Duplicate_2_q\ : std_logic;
SIGNAL \var_main_reg[2][4]~_Duplicate_2_q\ : std_logic;
SIGNAL \var_main_reg[1][11]~_Duplicate_3_q\ : std_logic;
SIGNAL \var_main_reg[1][12]~_Duplicate_3_q\ : std_logic;
SIGNAL \var_main_reg[0][1]~q\ : std_logic;
SIGNAL \var_main_reg[0][2]~q\ : std_logic;
SIGNAL \var_main_reg[0][4]~q\ : std_logic;
SIGNAL \var_main_reg[0][11]~q\ : std_logic;
SIGNAL \var_main_reg[0][13]~q\ : std_logic;
SIGNAL \var_main_reg[0][15]~q\ : std_logic;
SIGNAL \var_main_reg[0][18]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add4~1_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-14]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add4~5_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add4~9_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add4~13_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-11]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-11]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add4~17_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-10]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add4~21_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-9]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add4~25_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-8]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add4~29_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add4~33_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add4~37_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz3_1_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz4_1_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add3~1_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy3_1_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-14]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add3~5_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy3_1_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add3~9_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy3_1_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add3~13_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy3_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-11]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add3~17_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy3_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-10]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add3~21_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy3_1_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add3~25_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy3_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-8]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add3~29_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy3_1_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-7]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add3~33_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy3_1_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add3~37_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy3_1_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|dy4_1_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~1_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx3_1_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~5_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx3_1_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-13]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~9_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx3_1_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-12]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~13_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx3_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-11]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~17_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx3_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-10]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~21_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx3_1_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~25_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx3_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-8]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~29_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx3_1_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~33_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx3_1_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-6]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~37_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dx3_1_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[-4]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|dx4_1_reg[3]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DERIV_CALC|dy1_1_next\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DERIV_CALC|dz1_1_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DERIV_CALC|dx1_1_next\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DERIV_CALC|dz1_1_next\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DERIV_CALC|dy1_1_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DERIV_CALC|dy1_2_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DERIV_CALC|dy1_2_next\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DERIV_CALC|dx1_2_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DERIV_CALC|dx1_2_next\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DERIV_CALC|dz4_1_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|dy4_1_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|dx4_1_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|dz3_1_reg\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \DERIV_CALC|dy3_1_reg\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \DERIV_CALC|dx3_1_reg\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \DERIV_CALC|dz2_1_reg\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \DERIV_CALC|dx2_2_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|dy2_1_reg\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \DERIV_CALC|dx2_1_reg\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \DERIV_CALC|dz1_2_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|dx1_3_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[6]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[1]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-3]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-6]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-9]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[2][7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][18]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][12]~_Duplicate_3DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][11]~_Duplicate_3DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][15]~_Duplicate_2DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][4]~_Duplicate_2DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_rst~inputCLKENA0_outclk\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_3_reg\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \DERIV_CALC|ALT_INV_dx1_3_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_3_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_3_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_3_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_3_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_3_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_2_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dz1_2_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_2_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_2_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_2_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_2_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_2_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_2_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_2_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_2_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_2_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_2_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_2_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_2_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_2_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_2_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz2_1_reg\ : std_logic_vector(4 DOWNTO 4);
SIGNAL \DERIV_CALC|ALT_INV_dz2_1_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz2_1_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz2_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz2_1_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz2_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz2_1_reg[-14]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[0][-4]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[0][-5]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[0][-6]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[0][-7]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[0][-8]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[0][-9]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[0][-10]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[0][-11]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[0][-12]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[0][-13]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[0][-14]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[1][-4]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[1][-5]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[1][-6]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[1][-7]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[1][-8]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[1][-9]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[1][-10]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[1][-11]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[1][-12]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[1][-13]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[1][-14]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[2][-4]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[2][-5]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[2][-6]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[2][-7]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[2][-8]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[2][-9]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[2][-10]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[2][-11]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[2][-12]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[2][-13]~q\ : std_logic;
SIGNAL \ALT_INV_mul_reg[2][-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx3_1_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dx3_1_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx3_1_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx3_1_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx3_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx3_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx3_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx3_1_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx3_1_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy3_1_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dy3_1_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy3_1_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy3_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy3_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy3_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy3_1_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz3_1_reg\ : std_logic_vector(4 DOWNTO 4);
SIGNAL \DERIV_CALC|ALT_INV_dz3_1_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz3_1_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz3_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz3_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx4_1_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dx4_1_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx4_1_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy4_1_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dy4_1_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy4_1_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy4_1_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz4_1_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dz4_1_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz4_1_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz4_1_reg[-4]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][21]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][20]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][19]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][14]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][12]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][10]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][9]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][21]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][20]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][19]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][18]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][17]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][16]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][15]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][14]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][13]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][10]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][9]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][8]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][7]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][6]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][5]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][4]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][3]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][2]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][1]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][0]~_Duplicate_3_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][21]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][20]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][19]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][18]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][17]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][16]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][14]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][13]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][12]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][11]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][10]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][9]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][8]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][7]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][6]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][5]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][3]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][2]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][1]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][0]~_Duplicate_2_q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-1]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-2]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-3]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-4]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-5]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-6]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-7]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-8]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-9]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-10]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-11]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-12]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-13]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-14]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-15]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-16]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-17]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-18]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-19]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-20]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-21]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-22]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-23]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-24]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-25]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-26]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-27]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_2_reg[-28]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-1]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-2]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-3]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-4]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-5]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-6]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-7]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-8]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-9]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-10]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-11]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-12]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-13]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-14]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-15]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-16]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-17]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-18]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-19]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-20]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-21]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-22]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-23]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-24]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-25]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-26]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-27]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-28]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-1]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-2]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-3]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-4]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-5]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-6]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-7]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-8]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-9]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-10]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-11]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-12]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-13]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-14]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-15]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-16]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-17]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-18]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-19]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-20]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-21]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-22]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-23]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-24]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-25]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-26]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-27]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-28]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-1]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-2]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-3]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-4]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-5]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-6]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-7]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-8]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-9]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-10]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-11]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-12]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-13]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-14]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-15]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-16]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-17]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-18]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-19]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-20]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-21]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-22]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-23]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-24]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-25]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-26]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-27]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_1_reg[-28]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_1_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dz1_1_reg[-1]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_1_reg[-2]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_1_reg[-3]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_1_reg[-4]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_1_reg[-5]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_1_reg[-6]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_1_reg[-7]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_1_reg[-8]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_1_reg[-9]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_1_reg[-10]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_1_reg[-11]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_1_reg[-12]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_1_reg[-13]\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz1_1_reg[-14]\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a21\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a20~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a19\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a17\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
o_tdata <= ww_o_tdata;
o_addr <= ww_o_addr;
o_d_out <= ww_o_d_out;
o_d_out_sfi_neg_14 <= ww_o_d_out_sfi_neg_14;
o_d_out_sfi_neg_13 <= ww_o_d_out_sfi_neg_13;
o_d_out_sfi_neg_12 <= ww_o_d_out_sfi_neg_12;
o_d_out_sfi_neg_11 <= ww_o_d_out_sfi_neg_11;
o_d_out_sfi_neg_10 <= ww_o_d_out_sfi_neg_10;
o_d_out_sfi_neg_9 <= ww_o_d_out_sfi_neg_9;
o_d_out_sfi_neg_8 <= ww_o_d_out_sfi_neg_8;
o_d_out_sfi_neg_7 <= ww_o_d_out_sfi_neg_7;
o_d_out_sfi_neg_6 <= ww_o_d_out_sfi_neg_6;
o_d_out_sfi_neg_5 <= ww_o_d_out_sfi_neg_5;
o_d_out_sfi_neg_4 <= ww_o_d_out_sfi_neg_4;
o_d_out_sfi_neg_3 <= ww_o_d_out_sfi_neg_3;
o_d_out_sfi_neg_2 <= ww_o_d_out_sfi_neg_2;
o_d_out_sfi_neg_1 <= ww_o_d_out_sfi_neg_1;
o_d_out_sfi <= ww_o_d_out_sfi;
o_derivatives_aslv <= ww_o_derivatives_aslv;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~_Duplicate_2_q\ & \var_main_reg[2][17]~_Duplicate_2_q\ & \var_main_reg[2][16]~_Duplicate_2_q\ & 
\var_main_reg[2][15]~_Duplicate_2_q\ & \var_main_reg[2][14]~_Duplicate_2_q\ & \var_main_reg[2][13]~_Duplicate_2_q\ & \var_main_reg[2][12]~_Duplicate_2_q\ & \var_main_reg[2][11]~_Duplicate_2_q\ & \var_main_reg[2][10]~_Duplicate_2_q\ & 
\var_main_reg[2][9]~_Duplicate_2_q\ & \var_main_reg[2][8]~_Duplicate_2_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a1\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~_Duplicate_2_q\ & \var_main_reg[2][17]~_Duplicate_2_q\ & \var_main_reg[2][16]~_Duplicate_2_q\ & 
\var_main_reg[2][15]~_Duplicate_2_q\ & \var_main_reg[2][14]~_Duplicate_2_q\ & \var_main_reg[2][13]~_Duplicate_2_q\ & \var_main_reg[2][12]~_Duplicate_2_q\ & \var_main_reg[2][11]~_Duplicate_2_q\ & \var_main_reg[2][10]~_Duplicate_2_q\ & 
\var_main_reg[2][9]~_Duplicate_2_q\ & \var_main_reg[2][8]~_Duplicate_2_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a3\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~_Duplicate_2_q\ & \var_main_reg[2][17]~_Duplicate_2_q\ & \var_main_reg[2][16]~_Duplicate_2_q\ & 
\var_main_reg[2][15]~_Duplicate_2_q\ & \var_main_reg[2][14]~_Duplicate_2_q\ & \var_main_reg[2][13]~_Duplicate_2_q\ & \var_main_reg[2][12]~_Duplicate_2_q\ & \var_main_reg[2][11]~_Duplicate_2_q\ & \var_main_reg[2][10]~_Duplicate_2_q\ & 
\var_main_reg[2][9]~_Duplicate_2_q\ & \var_main_reg[2][8]~_Duplicate_2_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a5\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~_Duplicate_2_q\ & \var_main_reg[2][17]~_Duplicate_2_q\ & \var_main_reg[2][16]~_Duplicate_2_q\ & 
\var_main_reg[2][15]~_Duplicate_2_q\ & \var_main_reg[2][14]~_Duplicate_2_q\ & \var_main_reg[2][13]~_Duplicate_2_q\ & \var_main_reg[2][12]~_Duplicate_2_q\ & \var_main_reg[2][11]~_Duplicate_2_q\ & \var_main_reg[2][10]~_Duplicate_2_q\ & 
\var_main_reg[2][9]~_Duplicate_2_q\ & \var_main_reg[2][8]~_Duplicate_2_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a7\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~_Duplicate_2_q\ & \var_main_reg[2][17]~_Duplicate_2_q\ & \var_main_reg[2][16]~_Duplicate_2_q\ & 
\var_main_reg[2][15]~_Duplicate_2_q\ & \var_main_reg[2][14]~_Duplicate_2_q\ & \var_main_reg[2][13]~_Duplicate_2_q\ & \var_main_reg[2][12]~_Duplicate_2_q\ & \var_main_reg[2][11]~_Duplicate_2_q\ & \var_main_reg[2][10]~_Duplicate_2_q\ & 
\var_main_reg[2][9]~_Duplicate_2_q\ & \var_main_reg[2][8]~_Duplicate_2_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a9\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~_Duplicate_2_q\ & \var_main_reg[2][17]~_Duplicate_2_q\ & \var_main_reg[2][16]~_Duplicate_2_q\ & 
\var_main_reg[2][15]~_Duplicate_2_q\ & \var_main_reg[2][14]~_Duplicate_2_q\ & \var_main_reg[2][13]~_Duplicate_2_q\ & \var_main_reg[2][12]~_Duplicate_2_q\ & \var_main_reg[2][11]~_Duplicate_2_q\ & \var_main_reg[2][10]~_Duplicate_2_q\ & 
\var_main_reg[2][9]~_Duplicate_2_q\ & \var_main_reg[2][8]~_Duplicate_2_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a11\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~_Duplicate_2_q\ & \var_main_reg[2][17]~_Duplicate_2_q\ & \var_main_reg[2][16]~_Duplicate_2_q\ & 
\var_main_reg[2][15]~_Duplicate_2_q\ & \var_main_reg[2][14]~_Duplicate_2_q\ & \var_main_reg[2][13]~_Duplicate_2_q\ & \var_main_reg[2][12]~_Duplicate_2_q\ & \var_main_reg[2][11]~_Duplicate_2_q\ & \var_main_reg[2][10]~_Duplicate_2_q\ & 
\var_main_reg[2][9]~_Duplicate_2_q\ & \var_main_reg[2][8]~_Duplicate_2_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a13\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~_Duplicate_2_q\ & \var_main_reg[2][17]~_Duplicate_2_q\ & \var_main_reg[2][16]~_Duplicate_2_q\ & 
\var_main_reg[2][15]~_Duplicate_2_q\ & \var_main_reg[2][14]~_Duplicate_2_q\ & \var_main_reg[2][13]~_Duplicate_2_q\ & \var_main_reg[2][12]~_Duplicate_2_q\ & \var_main_reg[2][11]~_Duplicate_2_q\ & \var_main_reg[2][10]~_Duplicate_2_q\ & 
\var_main_reg[2][9]~_Duplicate_2_q\ & \var_main_reg[2][8]~_Duplicate_2_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a15\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~_Duplicate_2_q\ & \var_main_reg[2][17]~_Duplicate_2_q\ & \var_main_reg[2][16]~_Duplicate_2_q\ & 
\var_main_reg[2][15]~_Duplicate_2_q\ & \var_main_reg[2][14]~_Duplicate_2_q\ & \var_main_reg[2][13]~_Duplicate_2_q\ & \var_main_reg[2][12]~_Duplicate_2_q\ & \var_main_reg[2][11]~_Duplicate_2_q\ & \var_main_reg[2][10]~_Duplicate_2_q\ & 
\var_main_reg[2][9]~_Duplicate_2_q\ & \var_main_reg[2][8]~_Duplicate_2_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a17\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~_Duplicate_2_q\ & \var_main_reg[2][17]~_Duplicate_2_q\ & \var_main_reg[2][16]~_Duplicate_2_q\ & 
\var_main_reg[2][15]~_Duplicate_2_q\ & \var_main_reg[2][14]~_Duplicate_2_q\ & \var_main_reg[2][13]~_Duplicate_2_q\ & \var_main_reg[2][12]~_Duplicate_2_q\ & \var_main_reg[2][11]~_Duplicate_2_q\ & \var_main_reg[2][10]~_Duplicate_2_q\ & 
\var_main_reg[2][9]~_Duplicate_2_q\ & \var_main_reg[2][8]~_Duplicate_2_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a19\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~_Duplicate_2_q\ & \var_main_reg[2][17]~_Duplicate_2_q\ & \var_main_reg[2][16]~_Duplicate_2_q\ & 
\var_main_reg[2][15]~_Duplicate_2_q\ & \var_main_reg[2][14]~_Duplicate_2_q\ & \var_main_reg[2][13]~_Duplicate_2_q\ & \var_main_reg[2][12]~_Duplicate_2_q\ & \var_main_reg[2][11]~_Duplicate_2_q\ & \var_main_reg[2][10]~_Duplicate_2_q\ & 
\var_main_reg[2][9]~_Duplicate_2_q\ & \var_main_reg[2][8]~_Duplicate_2_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a21\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\(1);

\DERIV_CALC|Mult4~8_ACLR_bus\ <= (\rst~inputCLKENA0_outclk\ & \rst~inputCLKENA0_outclk\);

\DERIV_CALC|Mult4~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\DERIV_CALC|Mult4~8_ENA_bus\ <= (vcc & vcc & vcc);

\DERIV_CALC|Mult4~8_AX_bus\ <= (\Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~81_sumout\ & \Add1~77_sumout\ & \Add1~73_sumout\ & \Add1~69_sumout\ & \Add1~65_sumout\ & 
\Add1~61_sumout\ & \Add1~57_sumout\ & \Add1~53_sumout\ & \Add1~49_sumout\ & \Add1~45_sumout\ & \Add1~41_sumout\ & \Add1~37_sumout\ & \Add1~33_sumout\ & \Add1~29_sumout\ & \Add1~25_sumout\ & \Add1~21_sumout\ & \Add1~17_sumout\ & \Add1~13_sumout\ & 
\Add1~9_sumout\ & \Add1~5_sumout\ & \Add1~1_sumout\);

\DERIV_CALC|Mult4~8_AY_bus\ <= (vcc & gnd & vcc & vcc & gnd & gnd & gnd & vcc & vcc & gnd & gnd & vcc & vcc & gnd & gnd & vcc & vcc);

\DERIV_CALC|Mult4~8_resulta\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(0);
\DERIV_CALC|Mult4~9\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(1);
\DERIV_CALC|Mult4~10\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(2);
\DERIV_CALC|Mult4~11\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(3);
\DERIV_CALC|Mult4~12\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(4);
\DERIV_CALC|Mult4~13\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(5);
\DERIV_CALC|Mult4~14\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(6);
\DERIV_CALC|Mult4~15\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(7);
\DERIV_CALC|Mult4~16\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(8);
\DERIV_CALC|Mult4~17\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(9);
\DERIV_CALC|Mult4~18\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(10);
\DERIV_CALC|Mult4~19\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(11);
\DERIV_CALC|Mult4~20\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(12);
\DERIV_CALC|Mult4~21\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(13);
\DERIV_CALC|dz1_1_reg[-14]\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(14);
\DERIV_CALC|dz1_1_reg[-13]\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(15);
\DERIV_CALC|dz1_1_reg[-12]\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(16);
\DERIV_CALC|dz1_1_reg[-11]\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(17);
\DERIV_CALC|dz1_1_reg[-10]\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(18);
\DERIV_CALC|dz1_1_reg[-9]\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(19);
\DERIV_CALC|dz1_1_reg[-8]\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(20);
\DERIV_CALC|dz1_1_reg[-7]\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(21);
\DERIV_CALC|dz1_1_reg[-6]\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(22);
\DERIV_CALC|dz1_1_reg[-5]\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(23);
\DERIV_CALC|dz1_1_reg[-4]\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(24);
\DERIV_CALC|dz1_1_reg[-3]\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(25);
\DERIV_CALC|dz1_1_reg[-2]\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(26);
\DERIV_CALC|dz1_1_reg[-1]\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(27);
\DERIV_CALC|dz1_1_reg\(0) <= \DERIV_CALC|Mult4~8_RESULTA_bus\(28);
\DERIV_CALC|dz1_1_reg\(1) <= \DERIV_CALC|Mult4~8_RESULTA_bus\(29);
\DERIV_CALC|dz1_1_reg\(2) <= \DERIV_CALC|Mult4~8_RESULTA_bus\(30);
\DERIV_CALC|dz1_1_reg\(3) <= \DERIV_CALC|Mult4~8_RESULTA_bus\(31);
\DERIV_CALC|dz1_1_reg\(4) <= \DERIV_CALC|Mult4~8_RESULTA_bus\(32);
\DERIV_CALC|dz1_1_reg\(5) <= \DERIV_CALC|Mult4~8_RESULTA_bus\(33);
\DERIV_CALC|dz1_1_reg\(6) <= \DERIV_CALC|Mult4~8_RESULTA_bus\(34);
\DERIV_CALC|dz1_1_reg\(7) <= \DERIV_CALC|Mult4~8_RESULTA_bus\(35);
\DERIV_CALC|dz1_1_next\(8) <= \DERIV_CALC|Mult4~8_RESULTA_bus\(36);
\DERIV_CALC|dz1_1_next\(9) <= \DERIV_CALC|Mult4~8_RESULTA_bus\(37);
\DERIV_CALC|dz1_1_next\(10) <= \DERIV_CALC|Mult4~8_RESULTA_bus\(38);
\DERIV_CALC|Mult4~22\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(39);
\DERIV_CALC|Mult4~23\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(40);
\DERIV_CALC|Mult4~24\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(41);
\DERIV_CALC|Mult4~25\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(42);
\DERIV_CALC|Mult4~26\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(43);
\DERIV_CALC|Mult4~27\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(44);
\DERIV_CALC|Mult4~28\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(45);
\DERIV_CALC|Mult4~29\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(46);
\DERIV_CALC|Mult4~30\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(47);
\DERIV_CALC|Mult4~31\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(48);
\DERIV_CALC|Mult4~32\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(49);
\DERIV_CALC|Mult4~33\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(50);
\DERIV_CALC|Mult4~34\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(51);
\DERIV_CALC|Mult4~35\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(52);
\DERIV_CALC|Mult4~36\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(53);
\DERIV_CALC|Mult4~37\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(54);
\DERIV_CALC|Mult4~38\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(55);
\DERIV_CALC|Mult4~39\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(56);
\DERIV_CALC|Mult4~40\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(57);
\DERIV_CALC|Mult4~41\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(58);
\DERIV_CALC|Mult4~42\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(59);
\DERIV_CALC|Mult4~43\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(60);
\DERIV_CALC|Mult4~44\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(61);
\DERIV_CALC|Mult4~45\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(62);
\DERIV_CALC|Mult4~46\ <= \DERIV_CALC|Mult4~8_RESULTA_bus\(63);

\DERIV_CALC|Mult2~mac_ACLR_bus\ <= (\rst~inputCLKENA0_outclk\ & \rst~inputCLKENA0_outclk\);

\DERIV_CALC|Mult2~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\DERIV_CALC|Mult2~mac_ENA_bus\ <= (vcc & vcc & vcc);

\DERIV_CALC|Mult2~mac_AX_bus\ <= (\Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~81_sumout\ & \Add1~77_sumout\ & \Add1~73_sumout\ & \Add1~69_sumout\ & \Add1~65_sumout\ & 
\Add1~61_sumout\ & \Add1~57_sumout\ & \Add1~53_sumout\ & \Add1~49_sumout\ & \Add1~45_sumout\ & \Add1~41_sumout\ & \Add1~37_sumout\ & \Add1~33_sumout\ & \Add1~29_sumout\ & \Add1~25_sumout\ & \Add1~21_sumout\ & \Add1~17_sumout\ & \Add1~13_sumout\ & 
\Add1~9_sumout\ & \Add1~5_sumout\ & \Add1~1_sumout\);

\DERIV_CALC|Mult2~mac_AY_bus\ <= (vcc & vcc & vcc & gnd & gnd & gnd & vcc & vcc & gnd & gnd & vcc & vcc & gnd & gnd & vcc & vcc);

\DERIV_CALC|dy1_1_reg[-28]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(0);
\DERIV_CALC|dy1_1_reg[-27]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(1);
\DERIV_CALC|dy1_1_reg[-26]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(2);
\DERIV_CALC|dy1_1_reg[-25]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(3);
\DERIV_CALC|dy1_1_reg[-24]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(4);
\DERIV_CALC|dy1_1_reg[-23]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(5);
\DERIV_CALC|dy1_1_reg[-22]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(6);
\DERIV_CALC|dy1_1_reg[-21]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(7);
\DERIV_CALC|dy1_1_reg[-20]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(8);
\DERIV_CALC|dy1_1_reg[-19]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(9);
\DERIV_CALC|dy1_1_reg[-18]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(10);
\DERIV_CALC|dy1_1_reg[-17]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(11);
\DERIV_CALC|dy1_1_reg[-16]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(12);
\DERIV_CALC|dy1_1_reg[-15]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(13);
\DERIV_CALC|dy1_1_reg[-14]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(14);
\DERIV_CALC|dy1_1_reg[-13]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(15);
\DERIV_CALC|dy1_1_reg[-12]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(16);
\DERIV_CALC|dy1_1_reg[-11]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(17);
\DERIV_CALC|dy1_1_reg[-10]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(18);
\DERIV_CALC|dy1_1_reg[-9]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(19);
\DERIV_CALC|dy1_1_reg[-8]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(20);
\DERIV_CALC|dy1_1_reg[-7]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(21);
\DERIV_CALC|dy1_1_reg[-6]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(22);
\DERIV_CALC|dy1_1_reg[-5]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(23);
\DERIV_CALC|dy1_1_reg[-4]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(24);
\DERIV_CALC|dy1_1_reg[-3]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(25);
\DERIV_CALC|dy1_1_reg[-2]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(26);
\DERIV_CALC|dy1_1_reg[-1]\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(27);
\DERIV_CALC|dy1_1_reg\(0) <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(28);
\DERIV_CALC|dy1_1_reg\(1) <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(29);
\DERIV_CALC|dy1_1_reg\(2) <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(30);
\DERIV_CALC|dy1_1_reg\(3) <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(31);
\DERIV_CALC|dy1_1_reg\(4) <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(32);
\DERIV_CALC|dy1_1_reg\(5) <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(33);
\DERIV_CALC|dy1_1_reg\(6) <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(34);
\DERIV_CALC|dy1_1_reg\(7) <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(35);
\DERIV_CALC|dy1_1_next\(8) <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(36);
\DERIV_CALC|dy1_1_next\(9) <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(37);
\DERIV_CALC|Mult2~8\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(38);
\DERIV_CALC|Mult2~9\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(39);
\DERIV_CALC|Mult2~10\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(40);
\DERIV_CALC|Mult2~11\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(41);
\DERIV_CALC|Mult2~12\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(42);
\DERIV_CALC|Mult2~13\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(43);
\DERIV_CALC|Mult2~14\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(44);
\DERIV_CALC|Mult2~15\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(45);
\DERIV_CALC|Mult2~16\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(46);
\DERIV_CALC|Mult2~17\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(47);
\DERIV_CALC|Mult2~18\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(48);
\DERIV_CALC|Mult2~19\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(49);
\DERIV_CALC|Mult2~20\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(50);
\DERIV_CALC|Mult2~21\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(51);
\DERIV_CALC|Mult2~22\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(52);
\DERIV_CALC|Mult2~23\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(53);
\DERIV_CALC|Mult2~24\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(54);
\DERIV_CALC|Mult2~25\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(55);
\DERIV_CALC|Mult2~26\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(56);
\DERIV_CALC|Mult2~27\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(57);
\DERIV_CALC|Mult2~28\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(58);
\DERIV_CALC|Mult2~29\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(59);
\DERIV_CALC|Mult2~30\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(60);
\DERIV_CALC|Mult2~31\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(61);
\DERIV_CALC|Mult2~32\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(62);
\DERIV_CALC|Mult2~33\ <= \DERIV_CALC|Mult2~mac_RESULTA_bus\(63);

\DERIV_CALC|Mult3~mac_ACLR_bus\ <= (\rst~inputCLKENA0_outclk\ & \rst~inputCLKENA0_outclk\);

\DERIV_CALC|Mult3~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\DERIV_CALC|Mult3~mac_ENA_bus\ <= (vcc & vcc & vcc);

\DERIV_CALC|Mult3~mac_AX_bus\ <= (\Add2~85_sumout\ & \Add2~85_sumout\ & \Add2~85_sumout\ & \Add2~85_sumout\ & \Add2~85_sumout\ & \Add2~85_sumout\ & \Add2~81_sumout\ & \Add2~77_sumout\ & \Add2~73_sumout\ & \Add2~69_sumout\ & \Add2~65_sumout\ & 
\Add2~61_sumout\ & \Add2~57_sumout\ & \Add2~53_sumout\ & \Add2~49_sumout\ & \Add2~45_sumout\ & \Add2~41_sumout\ & \Add2~37_sumout\ & \Add2~33_sumout\ & \Add2~29_sumout\ & \Add2~25_sumout\ & \Add2~21_sumout\ & \Add2~17_sumout\ & \Add2~13_sumout\ & 
\Add2~9_sumout\ & \Add2~5_sumout\ & \Add2~1_sumout\);

\DERIV_CALC|Mult3~mac_AY_bus\ <= (vcc & gnd & gnd & vcc & gnd & gnd & gnd & vcc & vcc & gnd & gnd & vcc & vcc & gnd & gnd & vcc & vcc);

\DERIV_CALC|dy1_2_reg[-28]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(0);
\DERIV_CALC|dy1_2_reg[-27]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(1);
\DERIV_CALC|dy1_2_reg[-26]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(2);
\DERIV_CALC|dy1_2_reg[-25]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(3);
\DERIV_CALC|dy1_2_reg[-24]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(4);
\DERIV_CALC|dy1_2_reg[-23]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(5);
\DERIV_CALC|dy1_2_reg[-22]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(6);
\DERIV_CALC|dy1_2_reg[-21]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(7);
\DERIV_CALC|dy1_2_reg[-20]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(8);
\DERIV_CALC|dy1_2_reg[-19]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(9);
\DERIV_CALC|dy1_2_reg[-18]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(10);
\DERIV_CALC|dy1_2_reg[-17]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(11);
\DERIV_CALC|dy1_2_reg[-16]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(12);
\DERIV_CALC|dy1_2_reg[-15]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(13);
\DERIV_CALC|dy1_2_reg[-14]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(14);
\DERIV_CALC|dy1_2_reg[-13]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(15);
\DERIV_CALC|dy1_2_reg[-12]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(16);
\DERIV_CALC|dy1_2_reg[-11]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(17);
\DERIV_CALC|dy1_2_reg[-10]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(18);
\DERIV_CALC|dy1_2_reg[-9]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(19);
\DERIV_CALC|dy1_2_reg[-8]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(20);
\DERIV_CALC|dy1_2_reg[-7]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(21);
\DERIV_CALC|dy1_2_reg[-6]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(22);
\DERIV_CALC|dy1_2_reg[-5]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(23);
\DERIV_CALC|dy1_2_reg[-4]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(24);
\DERIV_CALC|dy1_2_reg[-3]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(25);
\DERIV_CALC|dy1_2_reg[-2]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(26);
\DERIV_CALC|dy1_2_reg[-1]\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(27);
\DERIV_CALC|dy1_2_reg\(0) <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(28);
\DERIV_CALC|dy1_2_reg\(1) <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(29);
\DERIV_CALC|dy1_2_reg\(2) <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(30);
\DERIV_CALC|dy1_2_reg\(3) <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(31);
\DERIV_CALC|dy1_2_reg\(4) <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(32);
\DERIV_CALC|dy1_2_reg\(5) <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(33);
\DERIV_CALC|dy1_2_reg\(6) <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(34);
\DERIV_CALC|dy1_2_reg\(7) <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(35);
\DERIV_CALC|dy1_2_next\(8) <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(36);
\DERIV_CALC|dy1_2_next\(9) <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(37);
\DERIV_CALC|dy1_2_next\(10) <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(38);
\DERIV_CALC|Mult3~8\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(39);
\DERIV_CALC|Mult3~9\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(40);
\DERIV_CALC|Mult3~10\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(41);
\DERIV_CALC|Mult3~11\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(42);
\DERIV_CALC|Mult3~12\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(43);
\DERIV_CALC|Mult3~13\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(44);
\DERIV_CALC|Mult3~14\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(45);
\DERIV_CALC|Mult3~15\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(46);
\DERIV_CALC|Mult3~16\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(47);
\DERIV_CALC|Mult3~17\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(48);
\DERIV_CALC|Mult3~18\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(49);
\DERIV_CALC|Mult3~19\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(50);
\DERIV_CALC|Mult3~20\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(51);
\DERIV_CALC|Mult3~21\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(52);
\DERIV_CALC|Mult3~22\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(53);
\DERIV_CALC|Mult3~23\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(54);
\DERIV_CALC|Mult3~24\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(55);
\DERIV_CALC|Mult3~25\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(56);
\DERIV_CALC|Mult3~26\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(57);
\DERIV_CALC|Mult3~27\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(58);
\DERIV_CALC|Mult3~28\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(59);
\DERIV_CALC|Mult3~29\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(60);
\DERIV_CALC|Mult3~30\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(61);
\DERIV_CALC|Mult3~31\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(62);
\DERIV_CALC|Mult3~32\ <= \DERIV_CALC|Mult3~mac_RESULTA_bus\(63);

\DERIV_CALC|Mult0~mac_ACLR_bus\ <= (\rst~inputCLKENA0_outclk\ & \rst~inputCLKENA0_outclk\);

\DERIV_CALC|Mult0~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\DERIV_CALC|Mult0~mac_ENA_bus\ <= (vcc & vcc & vcc);

\DERIV_CALC|Mult0~mac_AX_bus\ <= (\Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~81_sumout\ & \Add1~77_sumout\ & \Add1~73_sumout\ & \Add1~69_sumout\ & \Add1~65_sumout\ & 
\Add1~61_sumout\ & \Add1~57_sumout\ & \Add1~53_sumout\ & \Add1~49_sumout\ & \Add1~45_sumout\ & \Add1~41_sumout\ & \Add1~37_sumout\ & \Add1~33_sumout\ & \Add1~29_sumout\ & \Add1~25_sumout\ & \Add1~21_sumout\ & \Add1~17_sumout\ & \Add1~13_sumout\ & 
\Add1~9_sumout\ & \Add1~5_sumout\ & \Add1~1_sumout\);

\DERIV_CALC|Mult0~mac_AY_bus\ <= (vcc & gnd & gnd & vcc & gnd & gnd & gnd & vcc & vcc & gnd & gnd & vcc & vcc & gnd & gnd & vcc & vcc);

\DERIV_CALC|dx1_1_reg[-28]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(0);
\DERIV_CALC|dx1_1_reg[-27]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(1);
\DERIV_CALC|dx1_1_reg[-26]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(2);
\DERIV_CALC|dx1_1_reg[-25]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(3);
\DERIV_CALC|dx1_1_reg[-24]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(4);
\DERIV_CALC|dx1_1_reg[-23]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(5);
\DERIV_CALC|dx1_1_reg[-22]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(6);
\DERIV_CALC|dx1_1_reg[-21]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(7);
\DERIV_CALC|dx1_1_reg[-20]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(8);
\DERIV_CALC|dx1_1_reg[-19]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(9);
\DERIV_CALC|dx1_1_reg[-18]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(10);
\DERIV_CALC|dx1_1_reg[-17]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(11);
\DERIV_CALC|dx1_1_reg[-16]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(12);
\DERIV_CALC|dx1_1_reg[-15]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(13);
\DERIV_CALC|dx1_1_reg[-14]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(14);
\DERIV_CALC|dx1_1_reg[-13]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(15);
\DERIV_CALC|dx1_1_reg[-12]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(16);
\DERIV_CALC|dx1_1_reg[-11]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(17);
\DERIV_CALC|dx1_1_reg[-10]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(18);
\DERIV_CALC|dx1_1_reg[-9]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(19);
\DERIV_CALC|dx1_1_reg[-8]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(20);
\DERIV_CALC|dx1_1_reg[-7]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(21);
\DERIV_CALC|dx1_1_reg[-6]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(22);
\DERIV_CALC|dx1_1_reg[-5]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(23);
\DERIV_CALC|dx1_1_reg[-4]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(24);
\DERIV_CALC|dx1_1_reg[-3]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(25);
\DERIV_CALC|dx1_1_reg[-2]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(26);
\DERIV_CALC|dx1_1_reg[-1]\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(27);
\DERIV_CALC|dx1_1_reg\(0) <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(28);
\DERIV_CALC|dx1_1_reg\(1) <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(29);
\DERIV_CALC|dx1_1_reg\(2) <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(30);
\DERIV_CALC|dx1_1_reg\(3) <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(31);
\DERIV_CALC|dx1_1_reg\(4) <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(32);
\DERIV_CALC|dx1_1_reg\(5) <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(33);
\DERIV_CALC|dx1_1_reg\(6) <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(34);
\DERIV_CALC|dx1_1_reg\(7) <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(35);
\DERIV_CALC|dx1_1_next\(8) <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(36);
\DERIV_CALC|dx1_1_next\(9) <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(37);
\DERIV_CALC|dx1_1_next\(10) <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(38);
\DERIV_CALC|Mult0~8\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(39);
\DERIV_CALC|Mult0~9\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(40);
\DERIV_CALC|Mult0~10\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(41);
\DERIV_CALC|Mult0~11\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(42);
\DERIV_CALC|Mult0~12\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(43);
\DERIV_CALC|Mult0~13\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(44);
\DERIV_CALC|Mult0~14\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(45);
\DERIV_CALC|Mult0~15\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(46);
\DERIV_CALC|Mult0~16\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(47);
\DERIV_CALC|Mult0~17\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(48);
\DERIV_CALC|Mult0~18\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(49);
\DERIV_CALC|Mult0~19\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(50);
\DERIV_CALC|Mult0~20\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(51);
\DERIV_CALC|Mult0~21\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(52);
\DERIV_CALC|Mult0~22\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(53);
\DERIV_CALC|Mult0~23\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(54);
\DERIV_CALC|Mult0~24\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(55);
\DERIV_CALC|Mult0~25\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(56);
\DERIV_CALC|Mult0~26\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(57);
\DERIV_CALC|Mult0~27\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(58);
\DERIV_CALC|Mult0~28\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(59);
\DERIV_CALC|Mult0~29\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(60);
\DERIV_CALC|Mult0~30\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(61);
\DERIV_CALC|Mult0~31\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(62);
\DERIV_CALC|Mult0~32\ <= \DERIV_CALC|Mult0~mac_RESULTA_bus\(63);

\DERIV_CALC|Mult1~mac_ACLR_bus\ <= (\rst~inputCLKENA0_outclk\ & \rst~inputCLKENA0_outclk\);

\DERIV_CALC|Mult1~mac_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\DERIV_CALC|Mult1~mac_ENA_bus\ <= (vcc & vcc & vcc);

\DERIV_CALC|Mult1~mac_AX_bus\ <= (\Add2~85_sumout\ & \Add2~85_sumout\ & \Add2~85_sumout\ & \Add2~85_sumout\ & \Add2~85_sumout\ & \Add2~85_sumout\ & \Add2~81_sumout\ & \Add2~77_sumout\ & \Add2~73_sumout\ & \Add2~69_sumout\ & \Add2~65_sumout\ & 
\Add2~61_sumout\ & \Add2~57_sumout\ & \Add2~53_sumout\ & \Add2~49_sumout\ & \Add2~45_sumout\ & \Add2~41_sumout\ & \Add2~37_sumout\ & \Add2~33_sumout\ & \Add2~29_sumout\ & \Add2~25_sumout\ & \Add2~21_sumout\ & \Add2~17_sumout\ & \Add2~13_sumout\ & 
\Add2~9_sumout\ & \Add2~5_sumout\ & \Add2~1_sumout\);

\DERIV_CALC|Mult1~mac_AY_bus\ <= (vcc & gnd & gnd & vcc & gnd & gnd & gnd & vcc & vcc & gnd & gnd & vcc & vcc & gnd & gnd & vcc & vcc);

\DERIV_CALC|dx1_2_reg[-28]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(0);
\DERIV_CALC|dx1_2_reg[-27]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(1);
\DERIV_CALC|dx1_2_reg[-26]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(2);
\DERIV_CALC|dx1_2_reg[-25]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(3);
\DERIV_CALC|dx1_2_reg[-24]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(4);
\DERIV_CALC|dx1_2_reg[-23]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(5);
\DERIV_CALC|dx1_2_reg[-22]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(6);
\DERIV_CALC|dx1_2_reg[-21]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(7);
\DERIV_CALC|dx1_2_reg[-20]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(8);
\DERIV_CALC|dx1_2_reg[-19]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(9);
\DERIV_CALC|dx1_2_reg[-18]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(10);
\DERIV_CALC|dx1_2_reg[-17]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(11);
\DERIV_CALC|dx1_2_reg[-16]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(12);
\DERIV_CALC|dx1_2_reg[-15]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(13);
\DERIV_CALC|dx1_2_reg[-14]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(14);
\DERIV_CALC|dx1_2_reg[-13]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(15);
\DERIV_CALC|dx1_2_reg[-12]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(16);
\DERIV_CALC|dx1_2_reg[-11]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(17);
\DERIV_CALC|dx1_2_reg[-10]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(18);
\DERIV_CALC|dx1_2_reg[-9]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(19);
\DERIV_CALC|dx1_2_reg[-8]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(20);
\DERIV_CALC|dx1_2_reg[-7]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(21);
\DERIV_CALC|dx1_2_reg[-6]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(22);
\DERIV_CALC|dx1_2_reg[-5]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(23);
\DERIV_CALC|dx1_2_reg[-4]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(24);
\DERIV_CALC|dx1_2_reg[-3]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(25);
\DERIV_CALC|dx1_2_reg[-2]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(26);
\DERIV_CALC|dx1_2_reg[-1]\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(27);
\DERIV_CALC|dx1_2_reg\(0) <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(28);
\DERIV_CALC|dx1_2_reg\(1) <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(29);
\DERIV_CALC|dx1_2_reg\(2) <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(30);
\DERIV_CALC|dx1_2_reg\(3) <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(31);
\DERIV_CALC|dx1_2_reg\(4) <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(32);
\DERIV_CALC|dx1_2_reg\(5) <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(33);
\DERIV_CALC|dx1_2_reg\(6) <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(34);
\DERIV_CALC|dx1_2_reg\(7) <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(35);
\DERIV_CALC|dx1_2_next\(8) <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(36);
\DERIV_CALC|dx1_2_next\(9) <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(37);
\DERIV_CALC|dx1_2_next\(10) <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(38);
\DERIV_CALC|Mult1~8\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(39);
\DERIV_CALC|Mult1~9\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(40);
\DERIV_CALC|Mult1~10\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(41);
\DERIV_CALC|Mult1~11\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(42);
\DERIV_CALC|Mult1~12\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(43);
\DERIV_CALC|Mult1~13\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(44);
\DERIV_CALC|Mult1~14\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(45);
\DERIV_CALC|Mult1~15\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(46);
\DERIV_CALC|Mult1~16\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(47);
\DERIV_CALC|Mult1~17\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(48);
\DERIV_CALC|Mult1~18\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(49);
\DERIV_CALC|Mult1~19\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(50);
\DERIV_CALC|Mult1~20\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(51);
\DERIV_CALC|Mult1~21\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(52);
\DERIV_CALC|Mult1~22\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(53);
\DERIV_CALC|Mult1~23\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(54);
\DERIV_CALC|Mult1~24\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(55);
\DERIV_CALC|Mult1~25\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(56);
\DERIV_CALC|Mult1~26\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(57);
\DERIV_CALC|Mult1~27\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(58);
\DERIV_CALC|Mult1~28\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(59);
\DERIV_CALC|Mult1~29\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(60);
\DERIV_CALC|Mult1~30\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(61);
\DERIV_CALC|Mult1~31\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(62);
\DERIV_CALC|Mult1~32\ <= \DERIV_CALC|Mult1~mac_RESULTA_bus\(63);
\DERIV_CALC|ALT_INV_dx2_2_reg[6]~DUPLICATE_q\ <= NOT \DERIV_CALC|dx2_2_reg[6]~DUPLICATE_q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[2]~DUPLICATE_q\ <= NOT \DERIV_CALC|dx2_2_reg[2]~DUPLICATE_q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[1]~DUPLICATE_q\ <= NOT \DERIV_CALC|dx2_2_reg[1]~DUPLICATE_q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[0]~DUPLICATE_q\ <= NOT \DERIV_CALC|dx2_2_reg[0]~DUPLICATE_q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-3]~DUPLICATE_q\ <= NOT \DERIV_CALC|dx2_2_reg[-3]~DUPLICATE_q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-6]~DUPLICATE_q\ <= NOT \DERIV_CALC|dx2_2_reg[-6]~DUPLICATE_q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-9]~DUPLICATE_q\ <= NOT \DERIV_CALC|dx2_2_reg[-9]~DUPLICATE_q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-14]~DUPLICATE_q\ <= NOT \DERIV_CALC|dx2_2_reg[-14]~DUPLICATE_q\;
\ALT_INV_mul_reg[2][7]~DUPLICATE_q\ <= NOT \mul_reg[2][7]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][18]~DUPLICATE_q\ <= NOT \var_main_reg[0][18]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][17]~DUPLICATE_q\ <= NOT \var_main_reg[0][17]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][16]~DUPLICATE_q\ <= NOT \var_main_reg[0][16]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][15]~DUPLICATE_q\ <= NOT \var_main_reg[0][15]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][13]~DUPLICATE_q\ <= NOT \var_main_reg[0][13]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][11]~DUPLICATE_q\ <= NOT \var_main_reg[0][11]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][10]~DUPLICATE_q\ <= NOT \var_main_reg[0][10]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][5]~DUPLICATE_q\ <= NOT \var_main_reg[0][5]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][4]~DUPLICATE_q\ <= NOT \var_main_reg[0][4]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][2]~DUPLICATE_q\ <= NOT \var_main_reg[0][2]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][1]~DUPLICATE_q\ <= NOT \var_main_reg[0][1]~DUPLICATE_q\;
\ALT_INV_var_main_reg[1][12]~_Duplicate_3DUPLICATE_q\ <= NOT \var_main_reg[1][12]~_Duplicate_3DUPLICATE_q\;
\ALT_INV_var_main_reg[1][11]~_Duplicate_3DUPLICATE_q\ <= NOT \var_main_reg[1][11]~_Duplicate_3DUPLICATE_q\;
\ALT_INV_var_main_reg[2][15]~_Duplicate_2DUPLICATE_q\ <= NOT \var_main_reg[2][15]~_Duplicate_2DUPLICATE_q\;
\ALT_INV_var_main_reg[2][4]~_Duplicate_2DUPLICATE_q\ <= NOT \var_main_reg[2][4]~_Duplicate_2DUPLICATE_q\;
\ALT_INV_rst~inputCLKENA0_outclk\ <= NOT \rst~inputCLKENA0_outclk\;
\DERIV_CALC|ALT_INV_dx1_3_reg\(4) <= NOT \DERIV_CALC|dx1_3_reg\(4);
\DERIV_CALC|ALT_INV_dx1_3_reg\(3) <= NOT \DERIV_CALC|dx1_3_reg\(3);
\DERIV_CALC|ALT_INV_dx1_3_reg\(1) <= NOT \DERIV_CALC|dx1_3_reg\(1);
\DERIV_CALC|ALT_INV_dx1_3_reg[-1]~q\ <= NOT \DERIV_CALC|dx1_3_reg[-1]~q\;
\DERIV_CALC|ALT_INV_dx1_3_reg[-5]~q\ <= NOT \DERIV_CALC|dx1_3_reg[-5]~q\;
\DERIV_CALC|ALT_INV_dx1_3_reg[-9]~q\ <= NOT \DERIV_CALC|dx1_3_reg[-9]~q\;
\DERIV_CALC|ALT_INV_dx1_3_reg[-10]~q\ <= NOT \DERIV_CALC|dx1_3_reg[-10]~q\;
\DERIV_CALC|ALT_INV_dx1_3_reg[-11]~q\ <= NOT \DERIV_CALC|dx1_3_reg[-11]~q\;
\DERIV_CALC|ALT_INV_dx1_3_reg[-14]~q\ <= NOT \DERIV_CALC|dx1_3_reg[-14]~q\;
\DERIV_CALC|ALT_INV_dz1_2_reg\(7) <= NOT \DERIV_CALC|dz1_2_reg\(7);
\DERIV_CALC|ALT_INV_dz1_2_reg\(6) <= NOT \DERIV_CALC|dz1_2_reg\(6);
\DERIV_CALC|ALT_INV_dz1_2_reg\(5) <= NOT \DERIV_CALC|dz1_2_reg\(5);
\DERIV_CALC|ALT_INV_dz1_2_reg\(4) <= NOT \DERIV_CALC|dz1_2_reg\(4);
\DERIV_CALC|ALT_INV_dz1_2_reg\(3) <= NOT \DERIV_CALC|dz1_2_reg\(3);
\DERIV_CALC|ALT_INV_dz1_2_reg\(2) <= NOT \DERIV_CALC|dz1_2_reg\(2);
\DERIV_CALC|ALT_INV_dz1_2_reg\(1) <= NOT \DERIV_CALC|dz1_2_reg\(1);
\DERIV_CALC|ALT_INV_dz1_2_reg\(0) <= NOT \DERIV_CALC|dz1_2_reg\(0);
\DERIV_CALC|ALT_INV_dz1_2_reg[-1]~q\ <= NOT \DERIV_CALC|dz1_2_reg[-1]~q\;
\DERIV_CALC|ALT_INV_dz1_2_reg[-2]~q\ <= NOT \DERIV_CALC|dz1_2_reg[-2]~q\;
\DERIV_CALC|ALT_INV_dz1_2_reg[-3]~q\ <= NOT \DERIV_CALC|dz1_2_reg[-3]~q\;
\DERIV_CALC|ALT_INV_dz1_2_reg[-4]~q\ <= NOT \DERIV_CALC|dz1_2_reg[-4]~q\;
\DERIV_CALC|ALT_INV_dz1_2_reg[-5]~q\ <= NOT \DERIV_CALC|dz1_2_reg[-5]~q\;
\DERIV_CALC|ALT_INV_dz1_2_reg[-6]~q\ <= NOT \DERIV_CALC|dz1_2_reg[-6]~q\;
\DERIV_CALC|ALT_INV_dz1_2_reg[-7]~q\ <= NOT \DERIV_CALC|dz1_2_reg[-7]~q\;
\DERIV_CALC|ALT_INV_dz1_2_reg[-8]~q\ <= NOT \DERIV_CALC|dz1_2_reg[-8]~q\;
\DERIV_CALC|ALT_INV_dz1_2_reg[-9]~q\ <= NOT \DERIV_CALC|dz1_2_reg[-9]~q\;
\DERIV_CALC|ALT_INV_dz1_2_reg[-10]~q\ <= NOT \DERIV_CALC|dz1_2_reg[-10]~q\;
\DERIV_CALC|ALT_INV_dz1_2_reg[-11]~q\ <= NOT \DERIV_CALC|dz1_2_reg[-11]~q\;
\DERIV_CALC|ALT_INV_dz1_2_reg[-12]~q\ <= NOT \DERIV_CALC|dz1_2_reg[-12]~q\;
\DERIV_CALC|ALT_INV_dz1_2_reg[-13]~q\ <= NOT \DERIV_CALC|dz1_2_reg[-13]~q\;
\DERIV_CALC|ALT_INV_dz1_2_reg[-14]~q\ <= NOT \DERIV_CALC|dz1_2_reg[-14]~q\;
\DERIV_CALC|ALT_INV_dx2_1_reg\(7) <= NOT \DERIV_CALC|dx2_1_reg\(7);
\DERIV_CALC|ALT_INV_dx2_1_reg\(6) <= NOT \DERIV_CALC|dx2_1_reg\(6);
\DERIV_CALC|ALT_INV_dx2_1_reg\(5) <= NOT \DERIV_CALC|dx2_1_reg\(5);
\DERIV_CALC|ALT_INV_dx2_1_reg\(4) <= NOT \DERIV_CALC|dx2_1_reg\(4);
\DERIV_CALC|ALT_INV_dx2_1_reg\(3) <= NOT \DERIV_CALC|dx2_1_reg\(3);
\DERIV_CALC|ALT_INV_dx2_1_reg\(2) <= NOT \DERIV_CALC|dx2_1_reg\(2);
\DERIV_CALC|ALT_INV_dx2_1_reg\(1) <= NOT \DERIV_CALC|dx2_1_reg\(1);
\DERIV_CALC|ALT_INV_dx2_1_reg\(0) <= NOT \DERIV_CALC|dx2_1_reg\(0);
\DERIV_CALC|ALT_INV_dx2_1_reg[-1]~q\ <= NOT \DERIV_CALC|dx2_1_reg[-1]~q\;
\DERIV_CALC|ALT_INV_dx2_1_reg[-2]~q\ <= NOT \DERIV_CALC|dx2_1_reg[-2]~q\;
\DERIV_CALC|ALT_INV_dx2_1_reg[-3]~q\ <= NOT \DERIV_CALC|dx2_1_reg[-3]~q\;
\DERIV_CALC|ALT_INV_dx2_1_reg[-4]~q\ <= NOT \DERIV_CALC|dx2_1_reg[-4]~q\;
\DERIV_CALC|ALT_INV_dx2_1_reg[-5]~q\ <= NOT \DERIV_CALC|dx2_1_reg[-5]~q\;
\DERIV_CALC|ALT_INV_dx2_1_reg[-6]~q\ <= NOT \DERIV_CALC|dx2_1_reg[-6]~q\;
\DERIV_CALC|ALT_INV_dx2_1_reg[-7]~q\ <= NOT \DERIV_CALC|dx2_1_reg[-7]~q\;
\DERIV_CALC|ALT_INV_dx2_1_reg[-8]~q\ <= NOT \DERIV_CALC|dx2_1_reg[-8]~q\;
\DERIV_CALC|ALT_INV_dx2_1_reg[-9]~q\ <= NOT \DERIV_CALC|dx2_1_reg[-9]~q\;
\DERIV_CALC|ALT_INV_dx2_1_reg[-10]~q\ <= NOT \DERIV_CALC|dx2_1_reg[-10]~q\;
\DERIV_CALC|ALT_INV_dx2_1_reg[-11]~q\ <= NOT \DERIV_CALC|dx2_1_reg[-11]~q\;
\DERIV_CALC|ALT_INV_dx2_1_reg[-12]~q\ <= NOT \DERIV_CALC|dx2_1_reg[-12]~q\;
\DERIV_CALC|ALT_INV_dx2_1_reg[-13]~q\ <= NOT \DERIV_CALC|dx2_1_reg[-13]~q\;
\DERIV_CALC|ALT_INV_dx2_1_reg[-14]~q\ <= NOT \DERIV_CALC|dx2_1_reg[-14]~q\;
\DERIV_CALC|ALT_INV_dy2_1_reg\(7) <= NOT \DERIV_CALC|dy2_1_reg\(7);
\DERIV_CALC|ALT_INV_dx2_2_reg\(7) <= NOT \DERIV_CALC|dx2_2_reg\(7);
\DERIV_CALC|ALT_INV_dy2_1_reg\(6) <= NOT \DERIV_CALC|dy2_1_reg\(6);
\DERIV_CALC|ALT_INV_dx2_2_reg\(6) <= NOT \DERIV_CALC|dx2_2_reg\(6);
\DERIV_CALC|ALT_INV_dy2_1_reg\(5) <= NOT \DERIV_CALC|dy2_1_reg\(5);
\DERIV_CALC|ALT_INV_dx2_2_reg\(5) <= NOT \DERIV_CALC|dx2_2_reg\(5);
\DERIV_CALC|ALT_INV_dy2_1_reg\(4) <= NOT \DERIV_CALC|dy2_1_reg\(4);
\DERIV_CALC|ALT_INV_dx2_2_reg\(4) <= NOT \DERIV_CALC|dx2_2_reg\(4);
\DERIV_CALC|ALT_INV_dy2_1_reg\(3) <= NOT \DERIV_CALC|dy2_1_reg\(3);
\DERIV_CALC|ALT_INV_dx2_2_reg\(3) <= NOT \DERIV_CALC|dx2_2_reg\(3);
\DERIV_CALC|ALT_INV_dy2_1_reg\(2) <= NOT \DERIV_CALC|dy2_1_reg\(2);
\DERIV_CALC|ALT_INV_dx2_2_reg\(2) <= NOT \DERIV_CALC|dx2_2_reg\(2);
\DERIV_CALC|ALT_INV_dy2_1_reg\(1) <= NOT \DERIV_CALC|dy2_1_reg\(1);
\DERIV_CALC|ALT_INV_dx2_2_reg\(1) <= NOT \DERIV_CALC|dx2_2_reg\(1);
\DERIV_CALC|ALT_INV_dy2_1_reg\(0) <= NOT \DERIV_CALC|dy2_1_reg\(0);
\DERIV_CALC|ALT_INV_dx2_2_reg\(0) <= NOT \DERIV_CALC|dx2_2_reg\(0);
\DERIV_CALC|ALT_INV_dy2_1_reg[-1]~q\ <= NOT \DERIV_CALC|dy2_1_reg[-1]~q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-1]~q\ <= NOT \DERIV_CALC|dx2_2_reg[-1]~q\;
\DERIV_CALC|ALT_INV_dy2_1_reg[-2]~q\ <= NOT \DERIV_CALC|dy2_1_reg[-2]~q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-2]~q\ <= NOT \DERIV_CALC|dx2_2_reg[-2]~q\;
\DERIV_CALC|ALT_INV_dy2_1_reg[-3]~q\ <= NOT \DERIV_CALC|dy2_1_reg[-3]~q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-3]~q\ <= NOT \DERIV_CALC|dx2_2_reg[-3]~q\;
\DERIV_CALC|ALT_INV_dy2_1_reg[-4]~q\ <= NOT \DERIV_CALC|dy2_1_reg[-4]~q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-4]~q\ <= NOT \DERIV_CALC|dx2_2_reg[-4]~q\;
\DERIV_CALC|ALT_INV_dy2_1_reg[-5]~q\ <= NOT \DERIV_CALC|dy2_1_reg[-5]~q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-5]~q\ <= NOT \DERIV_CALC|dx2_2_reg[-5]~q\;
\DERIV_CALC|ALT_INV_dy2_1_reg[-6]~q\ <= NOT \DERIV_CALC|dy2_1_reg[-6]~q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-6]~q\ <= NOT \DERIV_CALC|dx2_2_reg[-6]~q\;
\DERIV_CALC|ALT_INV_dy2_1_reg[-7]~q\ <= NOT \DERIV_CALC|dy2_1_reg[-7]~q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-7]~q\ <= NOT \DERIV_CALC|dx2_2_reg[-7]~q\;
\DERIV_CALC|ALT_INV_dy2_1_reg[-8]~q\ <= NOT \DERIV_CALC|dy2_1_reg[-8]~q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-8]~q\ <= NOT \DERIV_CALC|dx2_2_reg[-8]~q\;
\DERIV_CALC|ALT_INV_dy2_1_reg[-9]~q\ <= NOT \DERIV_CALC|dy2_1_reg[-9]~q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-9]~q\ <= NOT \DERIV_CALC|dx2_2_reg[-9]~q\;
\DERIV_CALC|ALT_INV_dy2_1_reg[-10]~q\ <= NOT \DERIV_CALC|dy2_1_reg[-10]~q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-10]~q\ <= NOT \DERIV_CALC|dx2_2_reg[-10]~q\;
\DERIV_CALC|ALT_INV_dy2_1_reg[-11]~q\ <= NOT \DERIV_CALC|dy2_1_reg[-11]~q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-11]~q\ <= NOT \DERIV_CALC|dx2_2_reg[-11]~q\;
\DERIV_CALC|ALT_INV_dy2_1_reg[-12]~q\ <= NOT \DERIV_CALC|dy2_1_reg[-12]~q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-12]~q\ <= NOT \DERIV_CALC|dx2_2_reg[-12]~q\;
\DERIV_CALC|ALT_INV_dy2_1_reg[-13]~q\ <= NOT \DERIV_CALC|dy2_1_reg[-13]~q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-13]~q\ <= NOT \DERIV_CALC|dx2_2_reg[-13]~q\;
\DERIV_CALC|ALT_INV_dy2_1_reg[-14]~q\ <= NOT \DERIV_CALC|dy2_1_reg[-14]~q\;
\DERIV_CALC|ALT_INV_dx2_2_reg[-14]~q\ <= NOT \DERIV_CALC|dx2_2_reg[-14]~q\;
\DERIV_CALC|ALT_INV_dz2_1_reg\(4) <= NOT \DERIV_CALC|dz2_1_reg\(4);
\DERIV_CALC|ALT_INV_dz2_1_reg[-2]~q\ <= NOT \DERIV_CALC|dz2_1_reg[-2]~q\;
\DERIV_CALC|ALT_INV_dz2_1_reg[-3]~q\ <= NOT \DERIV_CALC|dz2_1_reg[-3]~q\;
\DERIV_CALC|ALT_INV_dz2_1_reg[-8]~q\ <= NOT \DERIV_CALC|dz2_1_reg[-8]~q\;
\DERIV_CALC|ALT_INV_dz2_1_reg[-9]~q\ <= NOT \DERIV_CALC|dz2_1_reg[-9]~q\;
\DERIV_CALC|ALT_INV_dz2_1_reg[-11]~q\ <= NOT \DERIV_CALC|dz2_1_reg[-11]~q\;
\DERIV_CALC|ALT_INV_dz2_1_reg[-14]~q\ <= NOT \DERIV_CALC|dz2_1_reg[-14]~q\;
\ALT_INV_mul_reg[0][7]~q\ <= NOT \mul_reg[0][7]~q\;
\ALT_INV_mul_reg[0][-4]~q\ <= NOT \mul_reg[0][-4]~q\;
\ALT_INV_mul_reg[0][-5]~q\ <= NOT \mul_reg[0][-5]~q\;
\ALT_INV_mul_reg[0][-6]~q\ <= NOT \mul_reg[0][-6]~q\;
\ALT_INV_mul_reg[0][-7]~q\ <= NOT \mul_reg[0][-7]~q\;
\ALT_INV_mul_reg[0][-8]~q\ <= NOT \mul_reg[0][-8]~q\;
\ALT_INV_mul_reg[0][-9]~q\ <= NOT \mul_reg[0][-9]~q\;
\ALT_INV_mul_reg[0][-10]~q\ <= NOT \mul_reg[0][-10]~q\;
\ALT_INV_mul_reg[0][-11]~q\ <= NOT \mul_reg[0][-11]~q\;
\ALT_INV_mul_reg[0][-12]~q\ <= NOT \mul_reg[0][-12]~q\;
\ALT_INV_mul_reg[0][-13]~q\ <= NOT \mul_reg[0][-13]~q\;
\ALT_INV_mul_reg[0][-14]~q\ <= NOT \mul_reg[0][-14]~q\;
\ALT_INV_mul_reg[1][7]~q\ <= NOT \mul_reg[1][7]~q\;
\ALT_INV_mul_reg[1][-4]~q\ <= NOT \mul_reg[1][-4]~q\;
\ALT_INV_mul_reg[1][-5]~q\ <= NOT \mul_reg[1][-5]~q\;
\ALT_INV_mul_reg[1][-6]~q\ <= NOT \mul_reg[1][-6]~q\;
\ALT_INV_mul_reg[1][-7]~q\ <= NOT \mul_reg[1][-7]~q\;
\ALT_INV_mul_reg[1][-8]~q\ <= NOT \mul_reg[1][-8]~q\;
\ALT_INV_mul_reg[1][-9]~q\ <= NOT \mul_reg[1][-9]~q\;
\ALT_INV_mul_reg[1][-10]~q\ <= NOT \mul_reg[1][-10]~q\;
\ALT_INV_mul_reg[1][-11]~q\ <= NOT \mul_reg[1][-11]~q\;
\ALT_INV_mul_reg[1][-12]~q\ <= NOT \mul_reg[1][-12]~q\;
\ALT_INV_mul_reg[1][-13]~q\ <= NOT \mul_reg[1][-13]~q\;
\ALT_INV_mul_reg[1][-14]~q\ <= NOT \mul_reg[1][-14]~q\;
\ALT_INV_mul_reg[2][7]~q\ <= NOT \mul_reg[2][7]~q\;
\ALT_INV_mul_reg[2][-4]~q\ <= NOT \mul_reg[2][-4]~q\;
\ALT_INV_mul_reg[2][-5]~q\ <= NOT \mul_reg[2][-5]~q\;
\ALT_INV_mul_reg[2][-6]~q\ <= NOT \mul_reg[2][-6]~q\;
\ALT_INV_mul_reg[2][-7]~q\ <= NOT \mul_reg[2][-7]~q\;
\ALT_INV_mul_reg[2][-8]~q\ <= NOT \mul_reg[2][-8]~q\;
\ALT_INV_mul_reg[2][-9]~q\ <= NOT \mul_reg[2][-9]~q\;
\ALT_INV_mul_reg[2][-10]~q\ <= NOT \mul_reg[2][-10]~q\;
\ALT_INV_mul_reg[2][-11]~q\ <= NOT \mul_reg[2][-11]~q\;
\ALT_INV_mul_reg[2][-12]~q\ <= NOT \mul_reg[2][-12]~q\;
\ALT_INV_mul_reg[2][-13]~q\ <= NOT \mul_reg[2][-13]~q\;
\ALT_INV_mul_reg[2][-14]~q\ <= NOT \mul_reg[2][-14]~q\;
\DERIV_CALC|ALT_INV_dx3_1_reg\(6) <= NOT \DERIV_CALC|dx3_1_reg\(6);
\DERIV_CALC|ALT_INV_dx3_1_reg\(5) <= NOT \DERIV_CALC|dx3_1_reg\(5);
\DERIV_CALC|ALT_INV_dx3_1_reg\(4) <= NOT \DERIV_CALC|dx3_1_reg\(4);
\DERIV_CALC|ALT_INV_dx3_1_reg\(2) <= NOT \DERIV_CALC|dx3_1_reg\(2);
\DERIV_CALC|ALT_INV_dx3_1_reg\(0) <= NOT \DERIV_CALC|dx3_1_reg\(0);
\DERIV_CALC|ALT_INV_dx3_1_reg[-3]~q\ <= NOT \DERIV_CALC|dx3_1_reg[-3]~q\;
\DERIV_CALC|ALT_INV_dx3_1_reg[-4]~q\ <= NOT \DERIV_CALC|dx3_1_reg[-4]~q\;
\DERIV_CALC|ALT_INV_dx3_1_reg[-6]~q\ <= NOT \DERIV_CALC|dx3_1_reg[-6]~q\;
\DERIV_CALC|ALT_INV_dx3_1_reg[-8]~q\ <= NOT \DERIV_CALC|dx3_1_reg[-8]~q\;
\DERIV_CALC|ALT_INV_dx3_1_reg[-10]~q\ <= NOT \DERIV_CALC|dx3_1_reg[-10]~q\;
\DERIV_CALC|ALT_INV_dx3_1_reg[-11]~q\ <= NOT \DERIV_CALC|dx3_1_reg[-11]~q\;
\DERIV_CALC|ALT_INV_dx3_1_reg[-12]~q\ <= NOT \DERIV_CALC|dx3_1_reg[-12]~q\;
\DERIV_CALC|ALT_INV_dx3_1_reg[-13]~q\ <= NOT \DERIV_CALC|dx3_1_reg[-13]~q\;
\DERIV_CALC|ALT_INV_dy3_1_reg\(7) <= NOT \DERIV_CALC|dy3_1_reg\(7);
\DERIV_CALC|ALT_INV_dy3_1_reg\(4) <= NOT \DERIV_CALC|dy3_1_reg\(4);
\DERIV_CALC|ALT_INV_dy3_1_reg\(0) <= NOT \DERIV_CALC|dy3_1_reg\(0);
\DERIV_CALC|ALT_INV_dy3_1_reg[-4]~q\ <= NOT \DERIV_CALC|dy3_1_reg[-4]~q\;
\DERIV_CALC|ALT_INV_dy3_1_reg[-7]~q\ <= NOT \DERIV_CALC|dy3_1_reg[-7]~q\;
\DERIV_CALC|ALT_INV_dy3_1_reg[-8]~q\ <= NOT \DERIV_CALC|dy3_1_reg[-8]~q\;
\DERIV_CALC|ALT_INV_dy3_1_reg[-10]~q\ <= NOT \DERIV_CALC|dy3_1_reg[-10]~q\;
\DERIV_CALC|ALT_INV_dy3_1_reg[-11]~q\ <= NOT \DERIV_CALC|dy3_1_reg[-11]~q\;
\DERIV_CALC|ALT_INV_dy3_1_reg[-14]~q\ <= NOT \DERIV_CALC|dy3_1_reg[-14]~q\;
\DERIV_CALC|ALT_INV_dz3_1_reg\(4) <= NOT \DERIV_CALC|dz3_1_reg\(4);
\DERIV_CALC|ALT_INV_dz3_1_reg[-1]~q\ <= NOT \DERIV_CALC|dz3_1_reg[-1]~q\;
\DERIV_CALC|ALT_INV_dz3_1_reg[-4]~q\ <= NOT \DERIV_CALC|dz3_1_reg[-4]~q\;
\DERIV_CALC|ALT_INV_dz3_1_reg[-10]~q\ <= NOT \DERIV_CALC|dz3_1_reg[-10]~q\;
\DERIV_CALC|ALT_INV_dz3_1_reg[-11]~q\ <= NOT \DERIV_CALC|dz3_1_reg[-11]~q\;
\DERIV_CALC|ALT_INV_dx4_1_reg\(6) <= NOT \DERIV_CALC|dx4_1_reg\(6);
\DERIV_CALC|ALT_INV_dx4_1_reg\(0) <= NOT \DERIV_CALC|dx4_1_reg\(0);
\DERIV_CALC|ALT_INV_dx4_1_reg[-2]~q\ <= NOT \DERIV_CALC|dx4_1_reg[-2]~q\;
\DERIV_CALC|ALT_INV_dx4_1_reg[-3]~q\ <= NOT \DERIV_CALC|dx4_1_reg[-3]~q\;
\DERIV_CALC|ALT_INV_dy4_1_reg\(6) <= NOT \DERIV_CALC|dy4_1_reg\(6);
\DERIV_CALC|ALT_INV_dy4_1_reg\(5) <= NOT \DERIV_CALC|dy4_1_reg\(5);
\DERIV_CALC|ALT_INV_dy4_1_reg\(3) <= NOT \DERIV_CALC|dy4_1_reg\(3);
\DERIV_CALC|ALT_INV_dy4_1_reg\(2) <= NOT \DERIV_CALC|dy4_1_reg\(2);
\DERIV_CALC|ALT_INV_dy4_1_reg\(0) <= NOT \DERIV_CALC|dy4_1_reg\(0);
\DERIV_CALC|ALT_INV_dy4_1_reg[-2]~q\ <= NOT \DERIV_CALC|dy4_1_reg[-2]~q\;
\DERIV_CALC|ALT_INV_dy4_1_reg[-3]~q\ <= NOT \DERIV_CALC|dy4_1_reg[-3]~q\;
\DERIV_CALC|ALT_INV_dy4_1_reg[-4]~q\ <= NOT \DERIV_CALC|dy4_1_reg[-4]~q\;
\DERIV_CALC|ALT_INV_dz4_1_reg\(5) <= NOT \DERIV_CALC|dz4_1_reg\(5);
\DERIV_CALC|ALT_INV_dz4_1_reg\(4) <= NOT \DERIV_CALC|dz4_1_reg\(4);
\DERIV_CALC|ALT_INV_dz4_1_reg\(3) <= NOT \DERIV_CALC|dz4_1_reg\(3);
\DERIV_CALC|ALT_INV_dz4_1_reg\(2) <= NOT \DERIV_CALC|dz4_1_reg\(2);
\DERIV_CALC|ALT_INV_dz4_1_reg\(1) <= NOT \DERIV_CALC|dz4_1_reg\(1);
\DERIV_CALC|ALT_INV_dz4_1_reg\(0) <= NOT \DERIV_CALC|dz4_1_reg\(0);
\DERIV_CALC|ALT_INV_dz4_1_reg[-1]~q\ <= NOT \DERIV_CALC|dz4_1_reg[-1]~q\;
\DERIV_CALC|ALT_INV_dz4_1_reg[-2]~q\ <= NOT \DERIV_CALC|dz4_1_reg[-2]~q\;
\DERIV_CALC|ALT_INV_dz4_1_reg[-4]~q\ <= NOT \DERIV_CALC|dz4_1_reg[-4]~q\;
\ALT_INV_var_main_reg[0][21]~q\ <= NOT \var_main_reg[0][21]~q\;
\ALT_INV_var_main_reg[0][20]~q\ <= NOT \var_main_reg[0][20]~q\;
\ALT_INV_var_main_reg[0][19]~q\ <= NOT \var_main_reg[0][19]~q\;
\ALT_INV_var_main_reg[0][14]~q\ <= NOT \var_main_reg[0][14]~q\;
\ALT_INV_var_main_reg[0][12]~q\ <= NOT \var_main_reg[0][12]~q\;
\ALT_INV_var_main_reg[0][10]~q\ <= NOT \var_main_reg[0][10]~q\;
\ALT_INV_var_main_reg[0][9]~q\ <= NOT \var_main_reg[0][9]~q\;
\ALT_INV_var_main_reg[0][8]~q\ <= NOT \var_main_reg[0][8]~q\;
\ALT_INV_var_main_reg[0][7]~q\ <= NOT \var_main_reg[0][7]~q\;
\ALT_INV_var_main_reg[0][6]~q\ <= NOT \var_main_reg[0][6]~q\;
\ALT_INV_var_main_reg[0][5]~q\ <= NOT \var_main_reg[0][5]~q\;
\ALT_INV_var_main_reg[0][3]~q\ <= NOT \var_main_reg[0][3]~q\;
\ALT_INV_var_main_reg[0][0]~q\ <= NOT \var_main_reg[0][0]~q\;
\ALT_INV_var_main_reg[1][21]~_Duplicate_3_q\ <= NOT \var_main_reg[1][21]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][20]~_Duplicate_3_q\ <= NOT \var_main_reg[1][20]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][19]~_Duplicate_3_q\ <= NOT \var_main_reg[1][19]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][18]~_Duplicate_3_q\ <= NOT \var_main_reg[1][18]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][17]~_Duplicate_3_q\ <= NOT \var_main_reg[1][17]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][16]~_Duplicate_3_q\ <= NOT \var_main_reg[1][16]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][15]~_Duplicate_3_q\ <= NOT \var_main_reg[1][15]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][14]~_Duplicate_3_q\ <= NOT \var_main_reg[1][14]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][13]~_Duplicate_3_q\ <= NOT \var_main_reg[1][13]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][10]~_Duplicate_3_q\ <= NOT \var_main_reg[1][10]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][9]~_Duplicate_3_q\ <= NOT \var_main_reg[1][9]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][8]~_Duplicate_3_q\ <= NOT \var_main_reg[1][8]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][7]~_Duplicate_3_q\ <= NOT \var_main_reg[1][7]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][6]~_Duplicate_3_q\ <= NOT \var_main_reg[1][6]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][5]~_Duplicate_3_q\ <= NOT \var_main_reg[1][5]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][4]~_Duplicate_3_q\ <= NOT \var_main_reg[1][4]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][3]~_Duplicate_3_q\ <= NOT \var_main_reg[1][3]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][2]~_Duplicate_3_q\ <= NOT \var_main_reg[1][2]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][1]~_Duplicate_3_q\ <= NOT \var_main_reg[1][1]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[1][0]~_Duplicate_3_q\ <= NOT \var_main_reg[1][0]~_Duplicate_3_q\;
\ALT_INV_var_main_reg[2][21]~_Duplicate_2_q\ <= NOT \var_main_reg[2][21]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][20]~_Duplicate_2_q\ <= NOT \var_main_reg[2][20]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][19]~_Duplicate_2_q\ <= NOT \var_main_reg[2][19]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][18]~_Duplicate_2_q\ <= NOT \var_main_reg[2][18]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][17]~_Duplicate_2_q\ <= NOT \var_main_reg[2][17]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][16]~_Duplicate_2_q\ <= NOT \var_main_reg[2][16]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][14]~_Duplicate_2_q\ <= NOT \var_main_reg[2][14]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][13]~_Duplicate_2_q\ <= NOT \var_main_reg[2][13]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][12]~_Duplicate_2_q\ <= NOT \var_main_reg[2][12]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][11]~_Duplicate_2_q\ <= NOT \var_main_reg[2][11]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][10]~_Duplicate_2_q\ <= NOT \var_main_reg[2][10]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][9]~_Duplicate_2_q\ <= NOT \var_main_reg[2][9]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][8]~_Duplicate_2_q\ <= NOT \var_main_reg[2][8]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][7]~_Duplicate_2_q\ <= NOT \var_main_reg[2][7]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][6]~_Duplicate_2_q\ <= NOT \var_main_reg[2][6]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][5]~_Duplicate_2_q\ <= NOT \var_main_reg[2][5]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][3]~_Duplicate_2_q\ <= NOT \var_main_reg[2][3]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][2]~_Duplicate_2_q\ <= NOT \var_main_reg[2][2]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][1]~_Duplicate_2_q\ <= NOT \var_main_reg[2][1]~_Duplicate_2_q\;
\ALT_INV_var_main_reg[2][0]~_Duplicate_2_q\ <= NOT \var_main_reg[2][0]~_Duplicate_2_q\;
\DERIV_CALC|ALT_INV_dx1_2_reg\(7) <= NOT \DERIV_CALC|dx1_2_reg\(7);
\DERIV_CALC|ALT_INV_dx1_2_reg\(6) <= NOT \DERIV_CALC|dx1_2_reg\(6);
\DERIV_CALC|ALT_INV_dx1_2_reg\(5) <= NOT \DERIV_CALC|dx1_2_reg\(5);
\DERIV_CALC|ALT_INV_dx1_2_reg\(4) <= NOT \DERIV_CALC|dx1_2_reg\(4);
\DERIV_CALC|ALT_INV_dx1_2_reg\(3) <= NOT \DERIV_CALC|dx1_2_reg\(3);
\DERIV_CALC|ALT_INV_dx1_2_reg\(2) <= NOT \DERIV_CALC|dx1_2_reg\(2);
\DERIV_CALC|ALT_INV_dx1_2_reg\(1) <= NOT \DERIV_CALC|dx1_2_reg\(1);
\DERIV_CALC|ALT_INV_dx1_2_reg\(0) <= NOT \DERIV_CALC|dx1_2_reg\(0);
\DERIV_CALC|ALT_INV_dx1_2_reg[-1]\ <= NOT \DERIV_CALC|dx1_2_reg[-1]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-2]\ <= NOT \DERIV_CALC|dx1_2_reg[-2]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-3]\ <= NOT \DERIV_CALC|dx1_2_reg[-3]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-4]\ <= NOT \DERIV_CALC|dx1_2_reg[-4]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-5]\ <= NOT \DERIV_CALC|dx1_2_reg[-5]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-6]\ <= NOT \DERIV_CALC|dx1_2_reg[-6]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-7]\ <= NOT \DERIV_CALC|dx1_2_reg[-7]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-8]\ <= NOT \DERIV_CALC|dx1_2_reg[-8]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-9]\ <= NOT \DERIV_CALC|dx1_2_reg[-9]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-10]\ <= NOT \DERIV_CALC|dx1_2_reg[-10]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-11]\ <= NOT \DERIV_CALC|dx1_2_reg[-11]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-12]\ <= NOT \DERIV_CALC|dx1_2_reg[-12]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-13]\ <= NOT \DERIV_CALC|dx1_2_reg[-13]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-14]\ <= NOT \DERIV_CALC|dx1_2_reg[-14]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-15]\ <= NOT \DERIV_CALC|dx1_2_reg[-15]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-16]\ <= NOT \DERIV_CALC|dx1_2_reg[-16]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-17]\ <= NOT \DERIV_CALC|dx1_2_reg[-17]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-18]\ <= NOT \DERIV_CALC|dx1_2_reg[-18]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-19]\ <= NOT \DERIV_CALC|dx1_2_reg[-19]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-20]\ <= NOT \DERIV_CALC|dx1_2_reg[-20]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-21]\ <= NOT \DERIV_CALC|dx1_2_reg[-21]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-22]\ <= NOT \DERIV_CALC|dx1_2_reg[-22]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-23]\ <= NOT \DERIV_CALC|dx1_2_reg[-23]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-24]\ <= NOT \DERIV_CALC|dx1_2_reg[-24]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-25]\ <= NOT \DERIV_CALC|dx1_2_reg[-25]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-26]\ <= NOT \DERIV_CALC|dx1_2_reg[-26]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-27]\ <= NOT \DERIV_CALC|dx1_2_reg[-27]\;
\DERIV_CALC|ALT_INV_dx1_2_reg[-28]\ <= NOT \DERIV_CALC|dx1_2_reg[-28]\;
\DERIV_CALC|ALT_INV_dx1_1_reg\(7) <= NOT \DERIV_CALC|dx1_1_reg\(7);
\DERIV_CALC|ALT_INV_dx1_1_reg\(6) <= NOT \DERIV_CALC|dx1_1_reg\(6);
\DERIV_CALC|ALT_INV_dx1_1_reg\(5) <= NOT \DERIV_CALC|dx1_1_reg\(5);
\DERIV_CALC|ALT_INV_dx1_1_reg\(4) <= NOT \DERIV_CALC|dx1_1_reg\(4);
\DERIV_CALC|ALT_INV_dx1_1_reg\(3) <= NOT \DERIV_CALC|dx1_1_reg\(3);
\DERIV_CALC|ALT_INV_dx1_1_reg\(2) <= NOT \DERIV_CALC|dx1_1_reg\(2);
\DERIV_CALC|ALT_INV_dx1_1_reg\(1) <= NOT \DERIV_CALC|dx1_1_reg\(1);
\DERIV_CALC|ALT_INV_dx1_1_reg\(0) <= NOT \DERIV_CALC|dx1_1_reg\(0);
\DERIV_CALC|ALT_INV_dx1_1_reg[-1]\ <= NOT \DERIV_CALC|dx1_1_reg[-1]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-2]\ <= NOT \DERIV_CALC|dx1_1_reg[-2]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-3]\ <= NOT \DERIV_CALC|dx1_1_reg[-3]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-4]\ <= NOT \DERIV_CALC|dx1_1_reg[-4]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-5]\ <= NOT \DERIV_CALC|dx1_1_reg[-5]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-6]\ <= NOT \DERIV_CALC|dx1_1_reg[-6]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-7]\ <= NOT \DERIV_CALC|dx1_1_reg[-7]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-8]\ <= NOT \DERIV_CALC|dx1_1_reg[-8]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-9]\ <= NOT \DERIV_CALC|dx1_1_reg[-9]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-10]\ <= NOT \DERIV_CALC|dx1_1_reg[-10]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-11]\ <= NOT \DERIV_CALC|dx1_1_reg[-11]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-12]\ <= NOT \DERIV_CALC|dx1_1_reg[-12]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-13]\ <= NOT \DERIV_CALC|dx1_1_reg[-13]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-14]\ <= NOT \DERIV_CALC|dx1_1_reg[-14]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-15]\ <= NOT \DERIV_CALC|dx1_1_reg[-15]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-16]\ <= NOT \DERIV_CALC|dx1_1_reg[-16]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-17]\ <= NOT \DERIV_CALC|dx1_1_reg[-17]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-18]\ <= NOT \DERIV_CALC|dx1_1_reg[-18]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-19]\ <= NOT \DERIV_CALC|dx1_1_reg[-19]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-20]\ <= NOT \DERIV_CALC|dx1_1_reg[-20]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-21]\ <= NOT \DERIV_CALC|dx1_1_reg[-21]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-22]\ <= NOT \DERIV_CALC|dx1_1_reg[-22]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-23]\ <= NOT \DERIV_CALC|dx1_1_reg[-23]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-24]\ <= NOT \DERIV_CALC|dx1_1_reg[-24]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-25]\ <= NOT \DERIV_CALC|dx1_1_reg[-25]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-26]\ <= NOT \DERIV_CALC|dx1_1_reg[-26]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-27]\ <= NOT \DERIV_CALC|dx1_1_reg[-27]\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-28]\ <= NOT \DERIV_CALC|dx1_1_reg[-28]\;
\DERIV_CALC|ALT_INV_dy1_2_reg\(7) <= NOT \DERIV_CALC|dy1_2_reg\(7);
\DERIV_CALC|ALT_INV_dy1_2_reg\(6) <= NOT \DERIV_CALC|dy1_2_reg\(6);
\DERIV_CALC|ALT_INV_dy1_2_reg\(5) <= NOT \DERIV_CALC|dy1_2_reg\(5);
\DERIV_CALC|ALT_INV_dy1_2_reg\(4) <= NOT \DERIV_CALC|dy1_2_reg\(4);
\DERIV_CALC|ALT_INV_dy1_2_reg\(3) <= NOT \DERIV_CALC|dy1_2_reg\(3);
\DERIV_CALC|ALT_INV_dy1_2_reg\(2) <= NOT \DERIV_CALC|dy1_2_reg\(2);
\DERIV_CALC|ALT_INV_dy1_2_reg\(1) <= NOT \DERIV_CALC|dy1_2_reg\(1);
\DERIV_CALC|ALT_INV_dy1_2_reg\(0) <= NOT \DERIV_CALC|dy1_2_reg\(0);
\DERIV_CALC|ALT_INV_dy1_2_reg[-1]\ <= NOT \DERIV_CALC|dy1_2_reg[-1]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-2]\ <= NOT \DERIV_CALC|dy1_2_reg[-2]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-3]\ <= NOT \DERIV_CALC|dy1_2_reg[-3]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-4]\ <= NOT \DERIV_CALC|dy1_2_reg[-4]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-5]\ <= NOT \DERIV_CALC|dy1_2_reg[-5]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-6]\ <= NOT \DERIV_CALC|dy1_2_reg[-6]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-7]\ <= NOT \DERIV_CALC|dy1_2_reg[-7]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-8]\ <= NOT \DERIV_CALC|dy1_2_reg[-8]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-9]\ <= NOT \DERIV_CALC|dy1_2_reg[-9]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-10]\ <= NOT \DERIV_CALC|dy1_2_reg[-10]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-11]\ <= NOT \DERIV_CALC|dy1_2_reg[-11]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-12]\ <= NOT \DERIV_CALC|dy1_2_reg[-12]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-13]\ <= NOT \DERIV_CALC|dy1_2_reg[-13]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-14]\ <= NOT \DERIV_CALC|dy1_2_reg[-14]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-15]\ <= NOT \DERIV_CALC|dy1_2_reg[-15]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-16]\ <= NOT \DERIV_CALC|dy1_2_reg[-16]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-17]\ <= NOT \DERIV_CALC|dy1_2_reg[-17]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-18]\ <= NOT \DERIV_CALC|dy1_2_reg[-18]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-19]\ <= NOT \DERIV_CALC|dy1_2_reg[-19]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-20]\ <= NOT \DERIV_CALC|dy1_2_reg[-20]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-21]\ <= NOT \DERIV_CALC|dy1_2_reg[-21]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-22]\ <= NOT \DERIV_CALC|dy1_2_reg[-22]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-23]\ <= NOT \DERIV_CALC|dy1_2_reg[-23]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-24]\ <= NOT \DERIV_CALC|dy1_2_reg[-24]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-25]\ <= NOT \DERIV_CALC|dy1_2_reg[-25]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-26]\ <= NOT \DERIV_CALC|dy1_2_reg[-26]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-27]\ <= NOT \DERIV_CALC|dy1_2_reg[-27]\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-28]\ <= NOT \DERIV_CALC|dy1_2_reg[-28]\;
\DERIV_CALC|ALT_INV_dy1_1_reg\(7) <= NOT \DERIV_CALC|dy1_1_reg\(7);
\DERIV_CALC|ALT_INV_dy1_1_reg\(6) <= NOT \DERIV_CALC|dy1_1_reg\(6);
\DERIV_CALC|ALT_INV_dy1_1_reg\(5) <= NOT \DERIV_CALC|dy1_1_reg\(5);
\DERIV_CALC|ALT_INV_dy1_1_reg\(4) <= NOT \DERIV_CALC|dy1_1_reg\(4);
\DERIV_CALC|ALT_INV_dy1_1_reg\(3) <= NOT \DERIV_CALC|dy1_1_reg\(3);
\DERIV_CALC|ALT_INV_dy1_1_reg\(2) <= NOT \DERIV_CALC|dy1_1_reg\(2);
\DERIV_CALC|ALT_INV_dy1_1_reg\(1) <= NOT \DERIV_CALC|dy1_1_reg\(1);
\DERIV_CALC|ALT_INV_dy1_1_reg\(0) <= NOT \DERIV_CALC|dy1_1_reg\(0);
\DERIV_CALC|ALT_INV_dy1_1_reg[-1]\ <= NOT \DERIV_CALC|dy1_1_reg[-1]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-2]\ <= NOT \DERIV_CALC|dy1_1_reg[-2]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-3]\ <= NOT \DERIV_CALC|dy1_1_reg[-3]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-4]\ <= NOT \DERIV_CALC|dy1_1_reg[-4]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-5]\ <= NOT \DERIV_CALC|dy1_1_reg[-5]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-6]\ <= NOT \DERIV_CALC|dy1_1_reg[-6]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-7]\ <= NOT \DERIV_CALC|dy1_1_reg[-7]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-8]\ <= NOT \DERIV_CALC|dy1_1_reg[-8]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-9]\ <= NOT \DERIV_CALC|dy1_1_reg[-9]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-10]\ <= NOT \DERIV_CALC|dy1_1_reg[-10]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-11]\ <= NOT \DERIV_CALC|dy1_1_reg[-11]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-12]\ <= NOT \DERIV_CALC|dy1_1_reg[-12]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-13]\ <= NOT \DERIV_CALC|dy1_1_reg[-13]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-14]\ <= NOT \DERIV_CALC|dy1_1_reg[-14]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-15]\ <= NOT \DERIV_CALC|dy1_1_reg[-15]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-16]\ <= NOT \DERIV_CALC|dy1_1_reg[-16]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-17]\ <= NOT \DERIV_CALC|dy1_1_reg[-17]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-18]\ <= NOT \DERIV_CALC|dy1_1_reg[-18]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-19]\ <= NOT \DERIV_CALC|dy1_1_reg[-19]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-20]\ <= NOT \DERIV_CALC|dy1_1_reg[-20]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-21]\ <= NOT \DERIV_CALC|dy1_1_reg[-21]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-22]\ <= NOT \DERIV_CALC|dy1_1_reg[-22]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-23]\ <= NOT \DERIV_CALC|dy1_1_reg[-23]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-24]\ <= NOT \DERIV_CALC|dy1_1_reg[-24]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-25]\ <= NOT \DERIV_CALC|dy1_1_reg[-25]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-26]\ <= NOT \DERIV_CALC|dy1_1_reg[-26]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-27]\ <= NOT \DERIV_CALC|dy1_1_reg[-27]\;
\DERIV_CALC|ALT_INV_dy1_1_reg[-28]\ <= NOT \DERIV_CALC|dy1_1_reg[-28]\;
\DERIV_CALC|ALT_INV_dz1_1_reg\(7) <= NOT \DERIV_CALC|dz1_1_reg\(7);
\DERIV_CALC|ALT_INV_dz1_1_reg\(6) <= NOT \DERIV_CALC|dz1_1_reg\(6);
\DERIV_CALC|ALT_INV_dz1_1_reg\(5) <= NOT \DERIV_CALC|dz1_1_reg\(5);
\DERIV_CALC|ALT_INV_dz1_1_reg\(4) <= NOT \DERIV_CALC|dz1_1_reg\(4);
\DERIV_CALC|ALT_INV_dz1_1_reg\(3) <= NOT \DERIV_CALC|dz1_1_reg\(3);
\DERIV_CALC|ALT_INV_dz1_1_reg\(2) <= NOT \DERIV_CALC|dz1_1_reg\(2);
\DERIV_CALC|ALT_INV_dz1_1_reg\(1) <= NOT \DERIV_CALC|dz1_1_reg\(1);
\DERIV_CALC|ALT_INV_dz1_1_reg\(0) <= NOT \DERIV_CALC|dz1_1_reg\(0);
\DERIV_CALC|ALT_INV_dz1_1_reg[-1]\ <= NOT \DERIV_CALC|dz1_1_reg[-1]\;
\DERIV_CALC|ALT_INV_dz1_1_reg[-2]\ <= NOT \DERIV_CALC|dz1_1_reg[-2]\;
\DERIV_CALC|ALT_INV_dz1_1_reg[-3]\ <= NOT \DERIV_CALC|dz1_1_reg[-3]\;
\DERIV_CALC|ALT_INV_dz1_1_reg[-4]\ <= NOT \DERIV_CALC|dz1_1_reg[-4]\;
\DERIV_CALC|ALT_INV_dz1_1_reg[-5]\ <= NOT \DERIV_CALC|dz1_1_reg[-5]\;
\DERIV_CALC|ALT_INV_dz1_1_reg[-6]\ <= NOT \DERIV_CALC|dz1_1_reg[-6]\;
\DERIV_CALC|ALT_INV_dz1_1_reg[-7]\ <= NOT \DERIV_CALC|dz1_1_reg[-7]\;
\DERIV_CALC|ALT_INV_dz1_1_reg[-8]\ <= NOT \DERIV_CALC|dz1_1_reg[-8]\;
\DERIV_CALC|ALT_INV_dz1_1_reg[-9]\ <= NOT \DERIV_CALC|dz1_1_reg[-9]\;
\DERIV_CALC|ALT_INV_dz1_1_reg[-10]\ <= NOT \DERIV_CALC|dz1_1_reg[-10]\;
\DERIV_CALC|ALT_INV_dz1_1_reg[-11]\ <= NOT \DERIV_CALC|dz1_1_reg[-11]\;
\DERIV_CALC|ALT_INV_dz1_1_reg[-12]\ <= NOT \DERIV_CALC|dz1_1_reg[-12]\;
\DERIV_CALC|ALT_INV_dz1_1_reg[-13]\ <= NOT \DERIV_CALC|dz1_1_reg[-13]\;
\DERIV_CALC|ALT_INV_dz1_1_reg[-14]\ <= NOT \DERIV_CALC|dz1_1_reg[-14]\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add2~61_sumout\ <= NOT \Add2~61_sumout\;
\ALT_INV_Add2~57_sumout\ <= NOT \Add2~57_sumout\;
\ALT_INV_Add2~53_sumout\ <= NOT \Add2~53_sumout\;
\ALT_INV_Add2~45_sumout\ <= NOT \Add2~45_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a21\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a21\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a20~portadataout\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20~portadataout\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a19\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a19\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a17\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a17\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a15\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14~portadataout\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14~portadataout\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a13\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12~portadataout\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12~portadataout\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a11\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8~portadataout\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8~portadataout\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a9\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6~portadataout\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6~portadataout\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a7\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4~portadataout\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a5\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2~portadataout\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a3\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0~portadataout\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a1\;

-- Location: IOOBUF_X89_Y11_N79
\o_tdata[2][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][0]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(0));

-- Location: IOOBUF_X62_Y0_N2
\o_tdata[2][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][1]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(1));

-- Location: IOOBUF_X64_Y0_N53
\o_tdata[2][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][2]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(2));

-- Location: IOOBUF_X82_Y0_N76
\o_tdata[2][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][3]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(3));

-- Location: IOOBUF_X74_Y0_N93
\o_tdata[2][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][4]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(4));

-- Location: IOOBUF_X72_Y0_N36
\o_tdata[2][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][5]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(5));

-- Location: IOOBUF_X89_Y9_N39
\o_tdata[2][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][6]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(6));

-- Location: IOOBUF_X20_Y81_N19
\o_tdata[2][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][7]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(7));

-- Location: IOOBUF_X16_Y0_N36
\o_tdata[2][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][8]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(8));

-- Location: IOOBUF_X18_Y0_N76
\o_tdata[2][9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][9]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(9));

-- Location: IOOBUF_X60_Y0_N19
\o_tdata[2][10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][10]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(10));

-- Location: IOOBUF_X16_Y0_N2
\o_tdata[2][11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][11]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(11));

-- Location: IOOBUF_X26_Y0_N42
\o_tdata[2][12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][12]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(12));

-- Location: IOOBUF_X24_Y0_N19
\o_tdata[2][13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][13]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(13));

-- Location: IOOBUF_X50_Y0_N76
\o_tdata[2][14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][14]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(14));

-- Location: IOOBUF_X10_Y0_N93
\o_tdata[2][15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][15]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(15));

-- Location: IOOBUF_X14_Y0_N19
\o_tdata[2][16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][16]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(16));

-- Location: IOOBUF_X68_Y0_N53
\o_tdata[2][17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][17]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(17));

-- Location: IOOBUF_X16_Y0_N53
\o_tdata[2][18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][18]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(18));

-- Location: IOOBUF_X80_Y0_N19
\o_tdata[2][19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][19]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(19));

-- Location: IOOBUF_X70_Y0_N19
\o_tdata[2][20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][20]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(20));

-- Location: IOOBUF_X6_Y0_N53
\o_tdata[2][21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][21]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(21));

-- Location: IOOBUF_X66_Y0_N93
\o_tdata[1][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][0]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(0));

-- Location: IOOBUF_X38_Y0_N2
\o_tdata[1][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][1]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(1));

-- Location: IOOBUF_X89_Y8_N22
\o_tdata[1][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][2]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(2));

-- Location: IOOBUF_X64_Y0_N2
\o_tdata[1][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][3]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(3));

-- Location: IOOBUF_X72_Y0_N53
\o_tdata[1][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][4]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(4));

-- Location: IOOBUF_X56_Y0_N36
\o_tdata[1][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][5]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(5));

-- Location: IOOBUF_X4_Y0_N36
\o_tdata[1][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][6]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(6));

-- Location: IOOBUF_X89_Y13_N39
\o_tdata[1][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][7]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(7));

-- Location: IOOBUF_X74_Y0_N42
\o_tdata[1][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][8]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(8));

-- Location: IOOBUF_X66_Y0_N59
\o_tdata[1][9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][9]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(9));

-- Location: IOOBUF_X12_Y0_N2
\o_tdata[1][10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][10]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(10));

-- Location: IOOBUF_X22_Y0_N19
\o_tdata[1][11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][11]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(11));

-- Location: IOOBUF_X52_Y0_N2
\o_tdata[1][12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][12]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(12));

-- Location: IOOBUF_X20_Y0_N19
\o_tdata[1][13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][13]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(13));

-- Location: IOOBUF_X20_Y0_N53
\o_tdata[1][14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][14]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(14));

-- Location: IOOBUF_X76_Y0_N53
\o_tdata[1][15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][15]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(15));

-- Location: IOOBUF_X89_Y8_N5
\o_tdata[1][16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][16]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(16));

-- Location: IOOBUF_X89_Y8_N56
\o_tdata[1][17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][17]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(17));

-- Location: IOOBUF_X52_Y0_N36
\o_tdata[1][18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][18]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(18));

-- Location: IOOBUF_X22_Y0_N53
\o_tdata[1][19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][19]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(19));

-- Location: IOOBUF_X4_Y0_N19
\o_tdata[1][20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][20]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(20));

-- Location: IOOBUF_X22_Y0_N2
\o_tdata[1][21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][21]~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(21));

-- Location: IOOBUF_X28_Y0_N53
\o_tdata[0][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][0]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(0));

-- Location: IOOBUF_X89_Y6_N5
\o_tdata[0][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][1]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(1));

-- Location: IOOBUF_X89_Y4_N62
\o_tdata[0][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][2]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(2));

-- Location: IOOBUF_X28_Y0_N36
\o_tdata[0][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][3]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(3));

-- Location: IOOBUF_X28_Y0_N19
\o_tdata[0][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][4]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(4));

-- Location: IOOBUF_X32_Y0_N36
\o_tdata[0][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][5]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(5));

-- Location: IOOBUF_X89_Y4_N79
\o_tdata[0][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][6]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(6));

-- Location: IOOBUF_X56_Y0_N53
\o_tdata[0][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][7]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(7));

-- Location: IOOBUF_X36_Y0_N19
\o_tdata[0][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][8]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(8));

-- Location: IOOBUF_X52_Y0_N19
\o_tdata[0][9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][9]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(9));

-- Location: IOOBUF_X89_Y15_N22
\o_tdata[0][10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][10]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(10));

-- Location: IOOBUF_X58_Y0_N93
\o_tdata[0][11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][11]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(11));

-- Location: IOOBUF_X30_Y0_N2
\o_tdata[0][12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][12]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(12));

-- Location: IOOBUF_X34_Y0_N42
\o_tdata[0][13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][13]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(13));

-- Location: IOOBUF_X38_Y0_N19
\o_tdata[0][14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][14]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(14));

-- Location: IOOBUF_X54_Y0_N2
\o_tdata[0][15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][15]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(15));

-- Location: IOOBUF_X89_Y15_N56
\o_tdata[0][16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][16]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(16));

-- Location: IOOBUF_X60_Y0_N2
\o_tdata[0][17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][17]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(17));

-- Location: IOOBUF_X36_Y0_N36
\o_tdata[0][18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][18]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(18));

-- Location: IOOBUF_X28_Y0_N2
\o_tdata[0][19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][19]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(19));

-- Location: IOOBUF_X36_Y0_N53
\o_tdata[0][20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][20]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(20));

-- Location: IOOBUF_X50_Y0_N59
\o_tdata[0][21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][21]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(21));

-- Location: IOOBUF_X16_Y0_N19
\o_addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][8]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_addr(0));

-- Location: IOOBUF_X12_Y0_N53
\o_addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][9]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_addr(1));

-- Location: IOOBUF_X60_Y0_N53
\o_addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][10]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_addr(2));

-- Location: IOOBUF_X20_Y0_N2
\o_addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][11]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_addr(3));

-- Location: IOOBUF_X14_Y0_N36
\o_addr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][12]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_addr(4));

-- Location: IOOBUF_X14_Y0_N2
\o_addr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][13]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_addr(5));

-- Location: IOOBUF_X50_Y0_N93
\o_addr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][14]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_addr(6));

-- Location: IOOBUF_X10_Y0_N42
\o_addr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][15]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_addr(7));

-- Location: IOOBUF_X14_Y0_N53
\o_addr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][16]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_addr(8));

-- Location: IOOBUF_X76_Y0_N36
\o_addr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][17]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_addr(9));

-- Location: IOOBUF_X26_Y0_N93
\o_addr[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][18]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_addr(10));

-- Location: IOOBUF_X84_Y0_N2
\o_addr[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_var_main_reg[2][19]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_o_addr(11));

-- Location: IOOBUF_X76_Y0_N19
\o_d_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out(0));

-- Location: IOOBUF_X86_Y0_N36
\o_d_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => ww_o_d_out(1));

-- Location: IOOBUF_X82_Y0_N59
\o_d_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out(2));

-- Location: IOOBUF_X88_Y0_N3
\o_d_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => ww_o_d_out(3));

-- Location: IOOBUF_X74_Y0_N76
\o_d_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out(4));

-- Location: IOOBUF_X89_Y4_N96
\o_d_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => ww_o_d_out(5));

-- Location: IOOBUF_X89_Y9_N5
\o_d_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out(6));

-- Location: IOOBUF_X80_Y0_N53
\o_d_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => ww_o_d_out(7));

-- Location: IOOBUF_X4_Y0_N53
\o_d_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out(8));

-- Location: IOOBUF_X70_Y0_N2
\o_d_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => ww_o_d_out(9));

-- Location: IOOBUF_X89_Y11_N62
\o_d_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out(10));

-- Location: IOOBUF_X88_Y0_N20
\o_d_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => ww_o_d_out(11));

-- Location: IOOBUF_X62_Y0_N19
\o_d_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out(12));

-- Location: IOOBUF_X86_Y0_N53
\o_d_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => ww_o_d_out(13));

-- Location: IOOBUF_X89_Y11_N45
\o_d_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out(14));

-- Location: IOOBUF_X70_Y0_N53
\o_d_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => ww_o_d_out(15));

-- Location: IOOBUF_X89_Y16_N39
\o_d_out[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out(16));

-- Location: IOOBUF_X66_Y0_N42
\o_d_out[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => ww_o_d_out(17));

-- Location: IOOBUF_X82_Y0_N93
\o_d_out[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out(18));

-- Location: IOOBUF_X68_Y0_N2
\o_d_out[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => ww_o_d_out(19));

-- Location: IOOBUF_X2_Y0_N59
\o_d_out[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out(20));

-- Location: IOOBUF_X70_Y0_N36
\o_d_out[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => ww_o_d_out(21));

-- Location: IOOBUF_X80_Y0_N2
\o_d_out_sfi[-14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi_neg_14);

-- Location: IOOBUF_X86_Y0_N2
\o_d_out_sfi[-13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi_neg_13);

-- Location: IOOBUF_X82_Y0_N42
\o_d_out_sfi[-12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi_neg_12);

-- Location: IOOBUF_X78_Y0_N36
\o_d_out_sfi[-11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi_neg_11);

-- Location: IOOBUF_X72_Y0_N19
\o_d_out_sfi[-10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi_neg_10);

-- Location: IOOBUF_X89_Y4_N45
\o_d_out_sfi[-9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi_neg_9);

-- Location: IOOBUF_X89_Y9_N22
\o_d_out_sfi[-8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi_neg_8);

-- Location: IOOBUF_X80_Y0_N36
\o_d_out_sfi[-7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi_neg_7);

-- Location: IOOBUF_X2_Y0_N42
\o_d_out_sfi[-6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi_neg_6);

-- Location: IOOBUF_X84_Y0_N36
\o_d_out_sfi[-5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi_neg_5);

-- Location: IOOBUF_X89_Y13_N5
\o_d_out_sfi[-4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi_neg_4);

-- Location: IOOBUF_X84_Y0_N53
\o_d_out_sfi[-3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi_neg_3);

-- Location: IOOBUF_X58_Y0_N76
\o_d_out_sfi[-2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi_neg_2);

-- Location: IOOBUF_X86_Y0_N19
\o_d_out_sfi[-1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi_neg_1);

-- Location: IOOBUF_X89_Y11_N96
\o_d_out_sfi[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi(0));

-- Location: IOOBUF_X78_Y0_N19
\o_d_out_sfi[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi(1));

-- Location: IOOBUF_X89_Y16_N5
\o_d_out_sfi[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi(2));

-- Location: IOOBUF_X66_Y0_N76
\o_d_out_sfi[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi(3));

-- Location: IOOBUF_X84_Y0_N19
\o_d_out_sfi[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi(4));

-- Location: IOOBUF_X72_Y0_N2
\o_d_out_sfi[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi(5));

-- Location: IOOBUF_X2_Y0_N93
\o_d_out_sfi[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20~portadataout\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi(6));

-- Location: IOOBUF_X78_Y0_N53
\o_d_out_sfi[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => ww_o_d_out_sfi(7));

-- Location: IOOBUF_X32_Y0_N19
\o_derivatives_aslv[2][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg[-14]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(0));

-- Location: IOOBUF_X62_Y0_N53
\o_derivatives_aslv[2][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg[-13]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(1));

-- Location: IOOBUF_X24_Y0_N53
\o_derivatives_aslv[2][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg[-12]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(2));

-- Location: IOOBUF_X36_Y0_N2
\o_derivatives_aslv[2][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg[-11]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(3));

-- Location: IOOBUF_X68_Y0_N36
\o_derivatives_aslv[2][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg[-10]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(4));

-- Location: IOOBUF_X58_Y0_N59
\o_derivatives_aslv[2][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg[-9]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(5));

-- Location: IOOBUF_X30_Y0_N19
\o_derivatives_aslv[2][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg[-8]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(6));

-- Location: IOOBUF_X34_Y0_N76
\o_derivatives_aslv[2][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg[-7]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(7));

-- Location: IOOBUF_X22_Y0_N36
\o_derivatives_aslv[2][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg[-6]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(8));

-- Location: IOOBUF_X32_Y0_N2
\o_derivatives_aslv[2][9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg[-5]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(9));

-- Location: IOOBUF_X89_Y13_N22
\o_derivatives_aslv[2][10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg[-4]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(10));

-- Location: IOOBUF_X8_Y0_N36
\o_derivatives_aslv[2][11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg[-3]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(11));

-- Location: IOOBUF_X89_Y8_N39
\o_derivatives_aslv[2][12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg[-2]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(12));

-- Location: IOOBUF_X64_Y0_N36
\o_derivatives_aslv[2][13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg[-1]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(13));

-- Location: IOOBUF_X89_Y9_N56
\o_derivatives_aslv[2][14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg\(0),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(14));

-- Location: IOOBUF_X88_Y0_N37
\o_derivatives_aslv[2][15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg\(1),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(15));

-- Location: IOOBUF_X6_Y0_N19
\o_derivatives_aslv[2][16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg\(2),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(16));

-- Location: IOOBUF_X54_Y0_N53
\o_derivatives_aslv[2][17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg\(3),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(17));

-- Location: IOOBUF_X62_Y0_N36
\o_derivatives_aslv[2][18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg\(4),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(18));

-- Location: IOOBUF_X78_Y0_N2
\o_derivatives_aslv[2][19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg\(5),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(19));

-- Location: IOOBUF_X26_Y0_N76
\o_derivatives_aslv[2][20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg\(6),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(20));

-- Location: IOOBUF_X89_Y6_N56
\o_derivatives_aslv[2][21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz4_1_reg\(7),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(21));

-- Location: IOOBUF_X6_Y0_N2
\o_derivatives_aslv[1][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg[-14]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(0));

-- Location: IOOBUF_X38_Y0_N53
\o_derivatives_aslv[1][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg[-13]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(1));

-- Location: IOOBUF_X8_Y0_N19
\o_derivatives_aslv[1][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg[-12]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(2));

-- Location: IOOBUF_X32_Y0_N53
\o_derivatives_aslv[1][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg[-11]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(3));

-- Location: IOOBUF_X12_Y0_N19
\o_derivatives_aslv[1][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg[-10]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(4));

-- Location: IOOBUF_X18_Y0_N93
\o_derivatives_aslv[1][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg[-9]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(5));

-- Location: IOOBUF_X68_Y0_N19
\o_derivatives_aslv[1][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg[-8]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(6));

-- Location: IOOBUF_X38_Y0_N36
\o_derivatives_aslv[1][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg[-7]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(7));

-- Location: IOOBUF_X12_Y0_N36
\o_derivatives_aslv[1][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg[-6]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(8));

-- Location: IOOBUF_X6_Y0_N36
\o_derivatives_aslv[1][9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg[-5]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(9));

-- Location: IOOBUF_X89_Y13_N56
\o_derivatives_aslv[1][10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg[-4]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(10));

-- Location: IOOBUF_X60_Y0_N36
\o_derivatives_aslv[1][11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg[-3]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(11));

-- Location: IOOBUF_X10_Y0_N59
\o_derivatives_aslv[1][12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg[-2]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(12));

-- Location: IOOBUF_X8_Y0_N53
\o_derivatives_aslv[1][13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg[-1]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(13));

-- Location: IOOBUF_X64_Y0_N19
\o_derivatives_aslv[1][14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg\(0),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(14));

-- Location: IOOBUF_X20_Y0_N36
\o_derivatives_aslv[1][15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg\(1),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(15));

-- Location: IOOBUF_X4_Y0_N2
\o_derivatives_aslv[1][16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg\(2),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(16));

-- Location: IOOBUF_X2_Y0_N76
\o_derivatives_aslv[1][17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg\(3),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(17));

-- Location: IOOBUF_X18_Y0_N42
\o_derivatives_aslv[1][18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg\(4),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(18));

-- Location: IOOBUF_X18_Y0_N59
\o_derivatives_aslv[1][19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg\(5),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(19));

-- Location: IOOBUF_X40_Y0_N19
\o_derivatives_aslv[1][20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg\(6),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(20));

-- Location: IOOBUF_X54_Y0_N19
\o_derivatives_aslv[1][21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy4_1_reg\(7),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(21));

-- Location: IOOBUF_X34_Y0_N59
\o_derivatives_aslv[0][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg[-14]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(0));

-- Location: IOOBUF_X89_Y6_N39
\o_derivatives_aslv[0][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg[-13]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(1));

-- Location: IOOBUF_X10_Y0_N76
\o_derivatives_aslv[0][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg[-12]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(2));

-- Location: IOOBUF_X40_Y0_N53
\o_derivatives_aslv[0][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg[-11]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(3));

-- Location: IOOBUF_X8_Y0_N2
\o_derivatives_aslv[0][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg[-10]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(4));

-- Location: IOOBUF_X56_Y0_N2
\o_derivatives_aslv[0][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg[-9]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(5));

-- Location: IOOBUF_X50_Y0_N42
\o_derivatives_aslv[0][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg[-8]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(6));

-- Location: IOOBUF_X34_Y0_N93
\o_derivatives_aslv[0][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg[-7]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(7));

-- Location: IOOBUF_X89_Y6_N22
\o_derivatives_aslv[0][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg[-6]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(8));

-- Location: IOOBUF_X40_Y0_N2
\o_derivatives_aslv[0][9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg[-5]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(9));

-- Location: IOOBUF_X40_Y0_N36
\o_derivatives_aslv[0][10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg[-4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(10));

-- Location: IOOBUF_X54_Y0_N36
\o_derivatives_aslv[0][11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg[-3]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(11));

-- Location: IOOBUF_X58_Y0_N42
\o_derivatives_aslv[0][12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg[-2]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(12));

-- Location: IOOBUF_X52_Y0_N53
\o_derivatives_aslv[0][13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg[-1]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(13));

-- Location: IOOBUF_X30_Y0_N53
\o_derivatives_aslv[0][14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg\(0),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(14));

-- Location: IOOBUF_X30_Y0_N36
\o_derivatives_aslv[0][15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg\(1),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(15));

-- Location: IOOBUF_X24_Y0_N36
\o_derivatives_aslv[0][16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg\(2),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(16));

-- Location: IOOBUF_X26_Y81_N59
\o_derivatives_aslv[0][17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(17));

-- Location: IOOBUF_X56_Y0_N19
\o_derivatives_aslv[0][18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg\(4),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(18));

-- Location: IOOBUF_X74_Y0_N59
\o_derivatives_aslv[0][19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg\(5),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(19));

-- Location: IOOBUF_X24_Y0_N2
\o_derivatives_aslv[0][20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg\(6),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(20));

-- Location: IOOBUF_X26_Y0_N59
\o_derivatives_aslv[0][21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx4_1_reg\(7),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(21));

-- Location: IOIBUF_X89_Y23_N4
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G11
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y23_N21
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G9
\rst~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \rst~input_o\,
	outclk => \rst~inputCLKENA0_outclk\);

-- Location: FF_X21_Y5_N32
\var_main_reg[1][0]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][0]~_Duplicate_3_q\);

-- Location: FF_X21_Y7_N35
\var_main_reg[2][1]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][1]~_Duplicate_2_q\);

-- Location: FF_X21_Y5_N35
\var_main_reg[1][1]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][1]~_Duplicate_3_q\);

-- Location: FF_X21_Y7_N38
\var_main_reg[2][2]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][2]~_Duplicate_2_q\);

-- Location: FF_X21_Y5_N38
\var_main_reg[1][2]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][2]~_Duplicate_3_q\);

-- Location: MLABCELL_X25_Y3_N6
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \var_main_reg[0][12]~q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \var_main_reg[0][12]~q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul_reg[0][7]~q\,
	datac => \ALT_INV_var_main_reg[0][12]~q\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: MLABCELL_X25_Y3_N9
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \var_main_reg[0][13]~DUPLICATE_q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \var_main_reg[0][13]~DUPLICATE_q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul_reg[0][7]~q\,
	datac => \ALT_INV_var_main_reg[0][13]~DUPLICATE_q\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X25_Y3_N11
\var_main_reg[0][13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][13]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y3_N12
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \mul_reg[0][7]~q\ ) + ( \var_main_reg[0][14]~q\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \mul_reg[0][7]~q\ ) + ( \var_main_reg[0][14]~q\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul_reg[0][7]~q\,
	dataf => \ALT_INV_var_main_reg[0][14]~q\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X25_Y3_N14
\var_main_reg[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][14]~q\);

-- Location: MLABCELL_X25_Y3_N15
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \var_main_reg[0][15]~DUPLICATE_q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( \var_main_reg[0][15]~DUPLICATE_q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul_reg[0][7]~q\,
	datac => \ALT_INV_var_main_reg[0][15]~DUPLICATE_q\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X25_Y3_N17
\var_main_reg[0][15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][15]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y3_N18
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \var_main_reg[0][16]~DUPLICATE_q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( \var_main_reg[0][16]~DUPLICATE_q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul_reg[0][7]~q\,
	datac => \ALT_INV_var_main_reg[0][16]~DUPLICATE_q\,
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X25_Y3_N20
\var_main_reg[0][16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][16]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y3_N21
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \var_main_reg[0][17]~DUPLICATE_q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( \var_main_reg[0][17]~DUPLICATE_q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[0][17]~DUPLICATE_q\,
	datab => \ALT_INV_mul_reg[0][7]~q\,
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X25_Y3_N23
\var_main_reg[0][17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][17]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y3_N24
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \var_main_reg[0][18]~DUPLICATE_q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( \var_main_reg[0][18]~DUPLICATE_q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul_reg[0][7]~q\,
	datac => \ALT_INV_var_main_reg[0][18]~DUPLICATE_q\,
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X25_Y3_N26
\var_main_reg[0][18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][18]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y3_N27
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \var_main_reg[0][19]~q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( \var_main_reg[0][19]~q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[0][19]~q\,
	datab => \ALT_INV_mul_reg[0][7]~q\,
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X25_Y3_N29
\var_main_reg[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][19]~q\);

-- Location: MLABCELL_X25_Y3_N30
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \var_main_reg[0][20]~q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( \var_main_reg[0][20]~q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul_reg[0][7]~q\,
	datac => \ALT_INV_var_main_reg[0][20]~q\,
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X25_Y3_N31
\var_main_reg[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][20]~q\);

-- Location: MLABCELL_X25_Y3_N57
\DERIV_CALC|dx1_3_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_3_reg[6]~feeder_combout\ = ( \var_main_reg[0][20]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[0][20]~q\,
	combout => \DERIV_CALC|dx1_3_reg[6]~feeder_combout\);

-- Location: FF_X25_Y3_N59
\DERIV_CALC|dx1_3_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_3_reg[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg\(6));

-- Location: FF_X18_Y3_N55
\DERIV_CALC|dx2_2_reg[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg\(6),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[6]~DUPLICATE_q\);

-- Location: FF_X21_Y7_N41
\var_main_reg[2][3]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][3]~_Duplicate_2_q\);

-- Location: FF_X21_Y5_N41
\var_main_reg[1][3]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][3]~_Duplicate_3_q\);

-- Location: FF_X21_Y5_N44
\var_main_reg[1][4]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][4]~_Duplicate_3_q\);

-- Location: MLABCELL_X25_Y3_N54
\DERIV_CALC|dx1_3_reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_3_reg[1]~feeder_combout\ = ( \var_main_reg[0][15]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[0][15]~DUPLICATE_q\,
	combout => \DERIV_CALC|dx1_3_reg[1]~feeder_combout\);

-- Location: FF_X25_Y3_N56
\DERIV_CALC|dx1_3_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_3_reg[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg\(1));

-- Location: LABCELL_X19_Y5_N39
\DERIV_CALC|dx2_2_reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_2_reg[1]~feeder_combout\ = ( \DERIV_CALC|dx1_3_reg\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx1_3_reg\(1),
	combout => \DERIV_CALC|dx2_2_reg[1]~feeder_combout\);

-- Location: FF_X19_Y5_N41
\DERIV_CALC|dx2_2_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_2_reg[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg\(1));

-- Location: FF_X21_Y7_N47
\var_main_reg[2][5]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][5]~_Duplicate_2_q\);

-- Location: FF_X21_Y5_N50
\var_main_reg[1][6]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][6]~_Duplicate_3_q\);

-- Location: FF_X21_Y7_N50
\var_main_reg[2][6]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][6]~_Duplicate_2_q\);

-- Location: FF_X21_Y6_N50
\mul_reg[2][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz4_1_reg\(7),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[2][7]~DUPLICATE_q\);

-- Location: FF_X21_Y7_N53
\var_main_reg[2][7]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][7]~_Duplicate_2_q\);

-- Location: MLABCELL_X21_Y7_N27
\var_main_reg[2][4]~_Duplicate_2feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \var_main_reg[2][4]~_Duplicate_2feeder_combout\ = ( \Add2~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~17_sumout\,
	combout => \var_main_reg[2][4]~_Duplicate_2feeder_combout\);

-- Location: FF_X21_Y7_N29
\var_main_reg[2][4]~_Duplicate_2DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \var_main_reg[2][4]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][4]~_Duplicate_2DUPLICATE_q\);

-- Location: MLABCELL_X21_Y7_N30
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \var_main_reg[2][0]~_Duplicate_2_q\ ) + ( \mul_reg[2][-14]~q\ ) + ( !VCC ))
-- \Add2~2\ = CARRY(( \var_main_reg[2][0]~_Duplicate_2_q\ ) + ( \mul_reg[2][-14]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[2][0]~_Duplicate_2_q\,
	datac => \ALT_INV_mul_reg[2][-14]~q\,
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: MLABCELL_X21_Y7_N33
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( \var_main_reg[2][1]~_Duplicate_2_q\ ) + ( \mul_reg[2][-13]~q\ ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( \var_main_reg[2][1]~_Duplicate_2_q\ ) + ( \mul_reg[2][-13]~q\ ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[2][1]~_Duplicate_2_q\,
	datac => \ALT_INV_mul_reg[2][-13]~q\,
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: MLABCELL_X21_Y7_N36
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( \mul_reg[2][-12]~q\ ) + ( \var_main_reg[2][2]~_Duplicate_2_q\ ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( \mul_reg[2][-12]~q\ ) + ( \var_main_reg[2][2]~_Duplicate_2_q\ ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[2][2]~_Duplicate_2_q\,
	datad => \ALT_INV_mul_reg[2][-12]~q\,
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: MLABCELL_X21_Y7_N39
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( \mul_reg[2][-11]~q\ ) + ( \var_main_reg[2][3]~_Duplicate_2_q\ ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( \mul_reg[2][-11]~q\ ) + ( \var_main_reg[2][3]~_Duplicate_2_q\ ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[2][3]~_Duplicate_2_q\,
	datad => \ALT_INV_mul_reg[2][-11]~q\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: MLABCELL_X21_Y7_N42
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( \var_main_reg[2][4]~_Duplicate_2DUPLICATE_q\ ) + ( \mul_reg[2][-10]~q\ ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( \var_main_reg[2][4]~_Duplicate_2DUPLICATE_q\ ) + ( \mul_reg[2][-10]~q\ ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul_reg[2][-10]~q\,
	datac => \ALT_INV_var_main_reg[2][4]~_Duplicate_2DUPLICATE_q\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: MLABCELL_X21_Y7_N45
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( \var_main_reg[2][5]~_Duplicate_2_q\ ) + ( \mul_reg[2][-9]~q\ ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( \var_main_reg[2][5]~_Duplicate_2_q\ ) + ( \mul_reg[2][-9]~q\ ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[2][5]~_Duplicate_2_q\,
	datac => \ALT_INV_mul_reg[2][-9]~q\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: MLABCELL_X21_Y7_N48
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( \var_main_reg[2][6]~_Duplicate_2_q\ ) + ( \mul_reg[2][-8]~q\ ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( \var_main_reg[2][6]~_Duplicate_2_q\ ) + ( \mul_reg[2][-8]~q\ ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[2][6]~_Duplicate_2_q\,
	datab => \ALT_INV_mul_reg[2][-8]~q\,
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: MLABCELL_X21_Y7_N51
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( \mul_reg[2][-7]~q\ ) + ( \var_main_reg[2][7]~_Duplicate_2_q\ ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( \mul_reg[2][-7]~q\ ) + ( \var_main_reg[2][7]~_Duplicate_2_q\ ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_mul_reg[2][-7]~q\,
	dataf => \ALT_INV_var_main_reg[2][7]~_Duplicate_2_q\,
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: MLABCELL_X21_Y6_N39
\var_main_reg[2][13]~_Duplicate_2feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \var_main_reg[2][13]~_Duplicate_2feeder_combout\ = ( \Add2~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~53_sumout\,
	combout => \var_main_reg[2][13]~_Duplicate_2feeder_combout\);

-- Location: FF_X21_Y6_N41
\var_main_reg[2][13]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \var_main_reg[2][13]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][13]~_Duplicate_2_q\);

-- Location: MLABCELL_X21_Y6_N6
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( \var_main_reg[2][12]~_Duplicate_2_q\ ) + ( \mul_reg[2][7]~DUPLICATE_q\ ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( \var_main_reg[2][12]~_Duplicate_2_q\ ) + ( \mul_reg[2][7]~DUPLICATE_q\ ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[2][12]~_Duplicate_2_q\,
	datac => \ALT_INV_mul_reg[2][7]~DUPLICATE_q\,
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: MLABCELL_X21_Y6_N9
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][13]~_Duplicate_2_q\ ) + ( \Add2~50\ ))
-- \Add2~54\ = CARRY(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][13]~_Duplicate_2_q\ ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[2][13]~_Duplicate_2_q\,
	datad => \ALT_INV_mul_reg[2][7]~q\,
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: MLABCELL_X21_Y6_N42
\var_main_reg[2][14]~_Duplicate_2feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \var_main_reg[2][14]~_Duplicate_2feeder_combout\ = ( \Add2~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~57_sumout\,
	combout => \var_main_reg[2][14]~_Duplicate_2feeder_combout\);

-- Location: FF_X21_Y6_N43
\var_main_reg[2][14]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \var_main_reg[2][14]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][14]~_Duplicate_2_q\);

-- Location: MLABCELL_X21_Y6_N12
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( \var_main_reg[2][14]~_Duplicate_2_q\ ) + ( \mul_reg[2][7]~DUPLICATE_q\ ) + ( \Add2~54\ ))
-- \Add2~58\ = CARRY(( \var_main_reg[2][14]~_Duplicate_2_q\ ) + ( \mul_reg[2][7]~DUPLICATE_q\ ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[2][14]~_Duplicate_2_q\,
	datac => \ALT_INV_mul_reg[2][7]~DUPLICATE_q\,
	cin => \Add2~54\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: MLABCELL_X21_Y6_N45
\var_main_reg[2][15]~_Duplicate_2feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \var_main_reg[2][15]~_Duplicate_2feeder_combout\ = ( \Add2~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~61_sumout\,
	combout => \var_main_reg[2][15]~_Duplicate_2feeder_combout\);

-- Location: FF_X21_Y6_N47
\var_main_reg[2][15]~_Duplicate_2DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \var_main_reg[2][15]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][15]~_Duplicate_2DUPLICATE_q\);

-- Location: MLABCELL_X21_Y6_N15
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][15]~_Duplicate_2DUPLICATE_q\ ) + ( \Add2~58\ ))
-- \Add2~62\ = CARRY(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][15]~_Duplicate_2DUPLICATE_q\ ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[2][15]~_Duplicate_2DUPLICATE_q\,
	datad => \ALT_INV_mul_reg[2][7]~q\,
	cin => \Add2~58\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: FF_X21_Y6_N20
\var_main_reg[2][16]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~65_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][16]~_Duplicate_2_q\);

-- Location: MLABCELL_X21_Y6_N18
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][16]~_Duplicate_2_q\ ) + ( \Add2~62\ ))
-- \Add2~66\ = CARRY(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][16]~_Duplicate_2_q\ ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[2][16]~_Duplicate_2_q\,
	datad => \ALT_INV_mul_reg[2][7]~q\,
	cin => \Add2~62\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: FF_X21_Y6_N23
\var_main_reg[2][17]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~69_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][17]~_Duplicate_2_q\);

-- Location: MLABCELL_X21_Y6_N21
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][17]~_Duplicate_2_q\ ) + ( \Add2~66\ ))
-- \Add2~70\ = CARRY(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][17]~_Duplicate_2_q\ ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[2][17]~_Duplicate_2_q\,
	datad => \ALT_INV_mul_reg[2][7]~q\,
	cin => \Add2~66\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: FF_X21_Y6_N26
\var_main_reg[2][18]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~73_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][18]~_Duplicate_2_q\);

-- Location: MLABCELL_X21_Y6_N24
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][18]~_Duplicate_2_q\ ) + ( \Add2~70\ ))
-- \Add2~74\ = CARRY(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][18]~_Duplicate_2_q\ ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[2][18]~_Duplicate_2_q\,
	datad => \ALT_INV_mul_reg[2][7]~q\,
	cin => \Add2~70\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: FF_X21_Y6_N29
\var_main_reg[2][19]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~77_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][19]~_Duplicate_2_q\);

-- Location: MLABCELL_X21_Y6_N27
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][19]~_Duplicate_2_q\ ) + ( \Add2~74\ ))
-- \Add2~78\ = CARRY(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][19]~_Duplicate_2_q\ ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[2][19]~_Duplicate_2_q\,
	datad => \ALT_INV_mul_reg[2][7]~q\,
	cin => \Add2~74\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: FF_X21_Y6_N32
\var_main_reg[2][20]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~81_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][20]~_Duplicate_2_q\);

-- Location: MLABCELL_X21_Y6_N30
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][20]~_Duplicate_2_q\ ) + ( \Add2~78\ ))
-- \Add2~82\ = CARRY(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][20]~_Duplicate_2_q\ ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[2][20]~_Duplicate_2_q\,
	datad => \ALT_INV_mul_reg[2][7]~q\,
	cin => \Add2~78\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: FF_X21_Y6_N35
\var_main_reg[2][21]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~85_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][21]~_Duplicate_2_q\);

-- Location: MLABCELL_X21_Y6_N33
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][21]~_Duplicate_2_q\ ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[2][21]~_Duplicate_2_q\,
	datad => \ALT_INV_mul_reg[2][7]~q\,
	cin => \Add2~82\,
	sumout => \Add2~85_sumout\);

-- Location: DSP_X20_Y4_N0
\DERIV_CALC|Mult3~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 27,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 17,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m27x27",
	output_clock => "0",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \DERIV_CALC|Mult3~mac_ACLR_bus\,
	clk => \DERIV_CALC|Mult3~mac_CLK_bus\,
	ena => \DERIV_CALC|Mult3~mac_ENA_bus\,
	ax => \DERIV_CALC|Mult3~mac_AX_bus\,
	ay => \DERIV_CALC|Mult3~mac_AY_bus\,
	resulta => \DERIV_CALC|Mult3~mac_RESULTA_bus\);

-- Location: FF_X21_Y5_N56
\var_main_reg[1][8]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][8]~_Duplicate_3_q\);

-- Location: FF_X21_Y5_N59
\var_main_reg[1][9]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][9]~_Duplicate_3_q\);

-- Location: FF_X18_Y3_N56
\DERIV_CALC|dx2_2_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg\(6),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg\(6));

-- Location: MLABCELL_X21_Y4_N54
\var_main_reg[1][12]~_Duplicate_3feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \var_main_reg[1][12]~_Duplicate_3feeder_combout\ = ( \Add1~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~49_sumout\,
	combout => \var_main_reg[1][12]~_Duplicate_3feeder_combout\);

-- Location: FF_X21_Y4_N56
\var_main_reg[1][12]~_Duplicate_3DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \var_main_reg[1][12]~_Duplicate_3feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][12]~_Duplicate_3DUPLICATE_q\);

-- Location: FF_X21_Y4_N59
\var_main_reg[1][11]~_Duplicate_3DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~45_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][11]~_Duplicate_3DUPLICATE_q\);

-- Location: FF_X21_Y4_N38
\var_main_reg[1][10]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~41_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][10]~_Duplicate_3_q\);

-- Location: FF_X21_Y5_N53
\var_main_reg[1][7]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][7]~_Duplicate_3_q\);

-- Location: FF_X21_Y5_N47
\var_main_reg[1][5]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][5]~_Duplicate_3_q\);

-- Location: MLABCELL_X21_Y5_N30
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \var_main_reg[1][0]~_Duplicate_3_q\ ) + ( \mul_reg[1][-14]~q\ ) + ( !VCC ))
-- \Add1~2\ = CARRY(( \var_main_reg[1][0]~_Duplicate_3_q\ ) + ( \mul_reg[1][-14]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[1][0]~_Duplicate_3_q\,
	datac => \ALT_INV_mul_reg[1][-14]~q\,
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: MLABCELL_X21_Y5_N33
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \mul_reg[1][-13]~q\ ) + ( \var_main_reg[1][1]~_Duplicate_3_q\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( \mul_reg[1][-13]~q\ ) + ( \var_main_reg[1][1]~_Duplicate_3_q\ ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[1][1]~_Duplicate_3_q\,
	datad => \ALT_INV_mul_reg[1][-13]~q\,
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: MLABCELL_X21_Y5_N36
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \mul_reg[1][-12]~q\ ) + ( \var_main_reg[1][2]~_Duplicate_3_q\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( \mul_reg[1][-12]~q\ ) + ( \var_main_reg[1][2]~_Duplicate_3_q\ ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[1][2]~_Duplicate_3_q\,
	datad => \ALT_INV_mul_reg[1][-12]~q\,
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: MLABCELL_X21_Y5_N39
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \var_main_reg[1][3]~_Duplicate_3_q\ ) + ( \mul_reg[1][-11]~q\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( \var_main_reg[1][3]~_Duplicate_3_q\ ) + ( \mul_reg[1][-11]~q\ ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[1][3]~_Duplicate_3_q\,
	datac => \ALT_INV_mul_reg[1][-11]~q\,
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: MLABCELL_X21_Y5_N42
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \mul_reg[1][-10]~q\ ) + ( \var_main_reg[1][4]~_Duplicate_3_q\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( \mul_reg[1][-10]~q\ ) + ( \var_main_reg[1][4]~_Duplicate_3_q\ ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[1][4]~_Duplicate_3_q\,
	datad => \ALT_INV_mul_reg[1][-10]~q\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: MLABCELL_X21_Y5_N45
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \var_main_reg[1][5]~_Duplicate_3_q\ ) + ( \mul_reg[1][-9]~q\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( \var_main_reg[1][5]~_Duplicate_3_q\ ) + ( \mul_reg[1][-9]~q\ ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mul_reg[1][-9]~q\,
	datad => \ALT_INV_var_main_reg[1][5]~_Duplicate_3_q\,
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: MLABCELL_X21_Y5_N48
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \mul_reg[1][-8]~q\ ) + ( \var_main_reg[1][6]~_Duplicate_3_q\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( \mul_reg[1][-8]~q\ ) + ( \var_main_reg[1][6]~_Duplicate_3_q\ ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[1][6]~_Duplicate_3_q\,
	datad => \ALT_INV_mul_reg[1][-8]~q\,
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: MLABCELL_X21_Y5_N51
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \var_main_reg[1][7]~_Duplicate_3_q\ ) + ( \mul_reg[1][-7]~q\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( \var_main_reg[1][7]~_Duplicate_3_q\ ) + ( \mul_reg[1][-7]~q\ ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mul_reg[1][-7]~q\,
	datad => \ALT_INV_var_main_reg[1][7]~_Duplicate_3_q\,
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: MLABCELL_X21_Y5_N54
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \var_main_reg[1][8]~_Duplicate_3_q\ ) + ( \mul_reg[1][-6]~q\ ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( \var_main_reg[1][8]~_Duplicate_3_q\ ) + ( \mul_reg[1][-6]~q\ ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[1][8]~_Duplicate_3_q\,
	datac => \ALT_INV_mul_reg[1][-6]~q\,
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: MLABCELL_X21_Y5_N57
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \mul_reg[1][-5]~q\ ) + ( \var_main_reg[1][9]~_Duplicate_3_q\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( \mul_reg[1][-5]~q\ ) + ( \var_main_reg[1][9]~_Duplicate_3_q\ ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[1][9]~_Duplicate_3_q\,
	datad => \ALT_INV_mul_reg[1][-5]~q\,
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: MLABCELL_X21_Y4_N0
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \var_main_reg[1][10]~_Duplicate_3_q\ ) + ( \mul_reg[1][-4]~q\ ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( \var_main_reg[1][10]~_Duplicate_3_q\ ) + ( \mul_reg[1][-4]~q\ ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul_reg[1][-4]~q\,
	datac => \ALT_INV_var_main_reg[1][10]~_Duplicate_3_q\,
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: MLABCELL_X21_Y4_N3
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \var_main_reg[1][11]~_Duplicate_3DUPLICATE_q\ ) + ( \mul_reg[1][7]~q\ ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( \var_main_reg[1][11]~_Duplicate_3DUPLICATE_q\ ) + ( \mul_reg[1][7]~q\ ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mul_reg[1][7]~q\,
	datad => \ALT_INV_var_main_reg[1][11]~_Duplicate_3DUPLICATE_q\,
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: MLABCELL_X21_Y4_N6
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][12]~_Duplicate_3DUPLICATE_q\ ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][12]~_Duplicate_3DUPLICATE_q\ ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[1][12]~_Duplicate_3DUPLICATE_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X21_Y4_N11
\var_main_reg[1][13]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][13]~_Duplicate_3_q\);

-- Location: MLABCELL_X21_Y4_N9
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][13]~_Duplicate_3_q\ ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][13]~_Duplicate_3_q\ ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[1][13]~_Duplicate_3_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X21_Y4_N14
\var_main_reg[1][14]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][14]~_Duplicate_3_q\);

-- Location: MLABCELL_X21_Y4_N12
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][14]~_Duplicate_3_q\ ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][14]~_Duplicate_3_q\ ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[1][14]~_Duplicate_3_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~54\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X21_Y4_N17
\var_main_reg[1][15]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][15]~_Duplicate_3_q\);

-- Location: MLABCELL_X21_Y4_N15
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][15]~_Duplicate_3_q\ ) + ( \Add1~58\ ))
-- \Add1~62\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][15]~_Duplicate_3_q\ ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[1][15]~_Duplicate_3_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X21_Y4_N20
\var_main_reg[1][16]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][16]~_Duplicate_3_q\);

-- Location: MLABCELL_X21_Y4_N18
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][16]~_Duplicate_3_q\ ) + ( \Add1~62\ ))
-- \Add1~66\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][16]~_Duplicate_3_q\ ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[1][16]~_Duplicate_3_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~62\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X21_Y4_N23
\var_main_reg[1][17]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][17]~_Duplicate_3_q\);

-- Location: MLABCELL_X21_Y4_N21
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][17]~_Duplicate_3_q\ ) + ( \Add1~66\ ))
-- \Add1~70\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][17]~_Duplicate_3_q\ ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[1][17]~_Duplicate_3_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~66\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X21_Y4_N26
\var_main_reg[1][18]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][18]~_Duplicate_3_q\);

-- Location: MLABCELL_X21_Y4_N24
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][18]~_Duplicate_3_q\ ) + ( \Add1~70\ ))
-- \Add1~74\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][18]~_Duplicate_3_q\ ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[1][18]~_Duplicate_3_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~70\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X21_Y4_N29
\var_main_reg[1][19]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][19]~_Duplicate_3_q\);

-- Location: MLABCELL_X21_Y4_N27
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][19]~_Duplicate_3_q\ ) + ( \Add1~74\ ))
-- \Add1~78\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][19]~_Duplicate_3_q\ ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[1][19]~_Duplicate_3_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~74\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X21_Y4_N32
\var_main_reg[1][20]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][20]~_Duplicate_3_q\);

-- Location: MLABCELL_X21_Y4_N30
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][20]~_Duplicate_3_q\ ) + ( \Add1~78\ ))
-- \Add1~82\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][20]~_Duplicate_3_q\ ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[1][20]~_Duplicate_3_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~78\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X21_Y4_N35
\var_main_reg[1][21]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][21]~_Duplicate_3_q\);

-- Location: MLABCELL_X21_Y4_N33
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][21]~_Duplicate_3_q\ ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[1][21]~_Duplicate_3_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~82\,
	sumout => \Add1~85_sumout\);

-- Location: DSP_X20_Y6_N0
\DERIV_CALC|Mult2~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 27,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 16,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m27x27",
	output_clock => "0",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \DERIV_CALC|Mult2~mac_ACLR_bus\,
	clk => \DERIV_CALC|Mult2~mac_CLK_bus\,
	ena => \DERIV_CALC|Mult2~mac_ENA_bus\,
	ax => \DERIV_CALC|Mult2~mac_AX_bus\,
	ay => \DERIV_CALC|Mult2~mac_AY_bus\,
	resulta => \DERIV_CALC|Mult2~mac_RESULTA_bus\);

-- Location: LABCELL_X19_Y4_N0
\DERIV_CALC|Add2~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~142_cout\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-28]\ $ (!\DERIV_CALC|dy1_1_reg[-28]\) ) + ( !VCC ) + ( !VCC ))
-- \DERIV_CALC|Add2~143\ = SHARE((!\DERIV_CALC|dy1_2_reg[-28]\) # (\DERIV_CALC|dy1_1_reg[-28]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-28]\,
	datad => \DERIV_CALC|ALT_INV_dy1_1_reg[-28]\,
	cin => GND,
	sharein => GND,
	cout => \DERIV_CALC|Add2~142_cout\,
	shareout => \DERIV_CALC|Add2~143\);

-- Location: LABCELL_X19_Y4_N3
\DERIV_CALC|Add2~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~138_cout\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-27]\ $ (\DERIV_CALC|dy1_1_reg[-27]\) ) + ( \DERIV_CALC|Add2~143\ ) + ( \DERIV_CALC|Add2~142_cout\ ))
-- \DERIV_CALC|Add2~139\ = SHARE((!\DERIV_CALC|dy1_2_reg[-27]\ & \DERIV_CALC|dy1_1_reg[-27]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-27]\,
	datad => \DERIV_CALC|ALT_INV_dy1_1_reg[-27]\,
	cin => \DERIV_CALC|Add2~142_cout\,
	sharein => \DERIV_CALC|Add2~143\,
	cout => \DERIV_CALC|Add2~138_cout\,
	shareout => \DERIV_CALC|Add2~139\);

-- Location: LABCELL_X19_Y4_N6
\DERIV_CALC|Add2~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~134_cout\ = CARRY(( !\DERIV_CALC|dy1_1_reg[-26]\ $ (\DERIV_CALC|dy1_2_reg[-26]\) ) + ( \DERIV_CALC|Add2~139\ ) + ( \DERIV_CALC|Add2~138_cout\ ))
-- \DERIV_CALC|Add2~135\ = SHARE((\DERIV_CALC|dy1_1_reg[-26]\ & !\DERIV_CALC|dy1_2_reg[-26]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dy1_1_reg[-26]\,
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-26]\,
	cin => \DERIV_CALC|Add2~138_cout\,
	sharein => \DERIV_CALC|Add2~139\,
	cout => \DERIV_CALC|Add2~134_cout\,
	shareout => \DERIV_CALC|Add2~135\);

-- Location: LABCELL_X19_Y4_N9
\DERIV_CALC|Add2~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~130_cout\ = CARRY(( !\DERIV_CALC|dy1_1_reg[-25]\ $ (\DERIV_CALC|dy1_2_reg[-25]\) ) + ( \DERIV_CALC|Add2~135\ ) + ( \DERIV_CALC|Add2~134_cout\ ))
-- \DERIV_CALC|Add2~131\ = SHARE((\DERIV_CALC|dy1_1_reg[-25]\ & !\DERIV_CALC|dy1_2_reg[-25]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_1_reg[-25]\,
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg[-25]\,
	cin => \DERIV_CALC|Add2~134_cout\,
	sharein => \DERIV_CALC|Add2~135\,
	cout => \DERIV_CALC|Add2~130_cout\,
	shareout => \DERIV_CALC|Add2~131\);

-- Location: LABCELL_X19_Y4_N12
\DERIV_CALC|Add2~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~126_cout\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-24]\ $ (\DERIV_CALC|dy1_1_reg[-24]\) ) + ( \DERIV_CALC|Add2~131\ ) + ( \DERIV_CALC|Add2~130_cout\ ))
-- \DERIV_CALC|Add2~127\ = SHARE((!\DERIV_CALC|dy1_2_reg[-24]\ & \DERIV_CALC|dy1_1_reg[-24]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-24]\,
	datad => \DERIV_CALC|ALT_INV_dy1_1_reg[-24]\,
	cin => \DERIV_CALC|Add2~130_cout\,
	sharein => \DERIV_CALC|Add2~131\,
	cout => \DERIV_CALC|Add2~126_cout\,
	shareout => \DERIV_CALC|Add2~127\);

-- Location: LABCELL_X19_Y4_N15
\DERIV_CALC|Add2~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~122_cout\ = CARRY(( !\DERIV_CALC|dy1_1_reg[-23]\ $ (\DERIV_CALC|dy1_2_reg[-23]\) ) + ( \DERIV_CALC|Add2~127\ ) + ( \DERIV_CALC|Add2~126_cout\ ))
-- \DERIV_CALC|Add2~123\ = SHARE((\DERIV_CALC|dy1_1_reg[-23]\ & !\DERIV_CALC|dy1_2_reg[-23]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_1_reg[-23]\,
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg[-23]\,
	cin => \DERIV_CALC|Add2~126_cout\,
	sharein => \DERIV_CALC|Add2~127\,
	cout => \DERIV_CALC|Add2~122_cout\,
	shareout => \DERIV_CALC|Add2~123\);

-- Location: LABCELL_X19_Y4_N18
\DERIV_CALC|Add2~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~118_cout\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-22]\ $ (\DERIV_CALC|dy1_1_reg[-22]\) ) + ( \DERIV_CALC|Add2~123\ ) + ( \DERIV_CALC|Add2~122_cout\ ))
-- \DERIV_CALC|Add2~119\ = SHARE((!\DERIV_CALC|dy1_2_reg[-22]\ & \DERIV_CALC|dy1_1_reg[-22]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-22]\,
	datad => \DERIV_CALC|ALT_INV_dy1_1_reg[-22]\,
	cin => \DERIV_CALC|Add2~122_cout\,
	sharein => \DERIV_CALC|Add2~123\,
	cout => \DERIV_CALC|Add2~118_cout\,
	shareout => \DERIV_CALC|Add2~119\);

-- Location: LABCELL_X19_Y4_N21
\DERIV_CALC|Add2~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~114_cout\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-21]\ $ (\DERIV_CALC|dy1_1_reg[-21]\) ) + ( \DERIV_CALC|Add2~119\ ) + ( \DERIV_CALC|Add2~118_cout\ ))
-- \DERIV_CALC|Add2~115\ = SHARE((!\DERIV_CALC|dy1_2_reg[-21]\ & \DERIV_CALC|dy1_1_reg[-21]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-21]\,
	datad => \DERIV_CALC|ALT_INV_dy1_1_reg[-21]\,
	cin => \DERIV_CALC|Add2~118_cout\,
	sharein => \DERIV_CALC|Add2~119\,
	cout => \DERIV_CALC|Add2~114_cout\,
	shareout => \DERIV_CALC|Add2~115\);

-- Location: LABCELL_X19_Y4_N24
\DERIV_CALC|Add2~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~110_cout\ = CARRY(( !\DERIV_CALC|dy1_1_reg[-20]\ $ (\DERIV_CALC|dy1_2_reg[-20]\) ) + ( \DERIV_CALC|Add2~115\ ) + ( \DERIV_CALC|Add2~114_cout\ ))
-- \DERIV_CALC|Add2~111\ = SHARE((\DERIV_CALC|dy1_1_reg[-20]\ & !\DERIV_CALC|dy1_2_reg[-20]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dy1_1_reg[-20]\,
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-20]\,
	cin => \DERIV_CALC|Add2~114_cout\,
	sharein => \DERIV_CALC|Add2~115\,
	cout => \DERIV_CALC|Add2~110_cout\,
	shareout => \DERIV_CALC|Add2~111\);

-- Location: LABCELL_X19_Y4_N27
\DERIV_CALC|Add2~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~106_cout\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-19]\ $ (\DERIV_CALC|dy1_1_reg[-19]\) ) + ( \DERIV_CALC|Add2~111\ ) + ( \DERIV_CALC|Add2~110_cout\ ))
-- \DERIV_CALC|Add2~107\ = SHARE((!\DERIV_CALC|dy1_2_reg[-19]\ & \DERIV_CALC|dy1_1_reg[-19]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-19]\,
	datad => \DERIV_CALC|ALT_INV_dy1_1_reg[-19]\,
	cin => \DERIV_CALC|Add2~110_cout\,
	sharein => \DERIV_CALC|Add2~111\,
	cout => \DERIV_CALC|Add2~106_cout\,
	shareout => \DERIV_CALC|Add2~107\);

-- Location: LABCELL_X19_Y4_N30
\DERIV_CALC|Add2~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~102_cout\ = CARRY(( !\DERIV_CALC|dy1_1_reg[-18]\ $ (\DERIV_CALC|dy1_2_reg[-18]\) ) + ( \DERIV_CALC|Add2~107\ ) + ( \DERIV_CALC|Add2~106_cout\ ))
-- \DERIV_CALC|Add2~103\ = SHARE((\DERIV_CALC|dy1_1_reg[-18]\ & !\DERIV_CALC|dy1_2_reg[-18]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dy1_1_reg[-18]\,
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-18]\,
	cin => \DERIV_CALC|Add2~106_cout\,
	sharein => \DERIV_CALC|Add2~107\,
	cout => \DERIV_CALC|Add2~102_cout\,
	shareout => \DERIV_CALC|Add2~103\);

-- Location: LABCELL_X19_Y4_N33
\DERIV_CALC|Add2~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~98_cout\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-17]\ $ (\DERIV_CALC|dy1_1_reg[-17]\) ) + ( \DERIV_CALC|Add2~103\ ) + ( \DERIV_CALC|Add2~102_cout\ ))
-- \DERIV_CALC|Add2~99\ = SHARE((!\DERIV_CALC|dy1_2_reg[-17]\ & \DERIV_CALC|dy1_1_reg[-17]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dy1_2_reg[-17]\,
	datac => \DERIV_CALC|ALT_INV_dy1_1_reg[-17]\,
	cin => \DERIV_CALC|Add2~102_cout\,
	sharein => \DERIV_CALC|Add2~103\,
	cout => \DERIV_CALC|Add2~98_cout\,
	shareout => \DERIV_CALC|Add2~99\);

-- Location: LABCELL_X19_Y4_N36
\DERIV_CALC|Add2~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~94_cout\ = CARRY(( !\DERIV_CALC|dy1_1_reg[-16]\ $ (\DERIV_CALC|dy1_2_reg[-16]\) ) + ( \DERIV_CALC|Add2~99\ ) + ( \DERIV_CALC|Add2~98_cout\ ))
-- \DERIV_CALC|Add2~95\ = SHARE((\DERIV_CALC|dy1_1_reg[-16]\ & !\DERIV_CALC|dy1_2_reg[-16]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_1_reg[-16]\,
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg[-16]\,
	cin => \DERIV_CALC|Add2~98_cout\,
	sharein => \DERIV_CALC|Add2~99\,
	cout => \DERIV_CALC|Add2~94_cout\,
	shareout => \DERIV_CALC|Add2~95\);

-- Location: LABCELL_X19_Y4_N39
\DERIV_CALC|Add2~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~90_cout\ = CARRY(( !\DERIV_CALC|dy1_1_reg[-15]\ $ (\DERIV_CALC|dy1_2_reg[-15]\) ) + ( \DERIV_CALC|Add2~95\ ) + ( \DERIV_CALC|Add2~94_cout\ ))
-- \DERIV_CALC|Add2~91\ = SHARE((\DERIV_CALC|dy1_1_reg[-15]\ & !\DERIV_CALC|dy1_2_reg[-15]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dy1_1_reg[-15]\,
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-15]\,
	cin => \DERIV_CALC|Add2~94_cout\,
	sharein => \DERIV_CALC|Add2~95\,
	cout => \DERIV_CALC|Add2~90_cout\,
	shareout => \DERIV_CALC|Add2~91\);

-- Location: LABCELL_X19_Y4_N42
\DERIV_CALC|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~1_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg[-14]\ $ (\DERIV_CALC|dy1_1_reg[-14]\) ) + ( \DERIV_CALC|Add2~91\ ) + ( \DERIV_CALC|Add2~90_cout\ ))
-- \DERIV_CALC|Add2~2\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-14]\ $ (\DERIV_CALC|dy1_1_reg[-14]\) ) + ( \DERIV_CALC|Add2~91\ ) + ( \DERIV_CALC|Add2~90_cout\ ))
-- \DERIV_CALC|Add2~3\ = SHARE((!\DERIV_CALC|dy1_2_reg[-14]\ & \DERIV_CALC|dy1_1_reg[-14]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-14]\,
	datad => \DERIV_CALC|ALT_INV_dy1_1_reg[-14]\,
	cin => \DERIV_CALC|Add2~90_cout\,
	sharein => \DERIV_CALC|Add2~91\,
	sumout => \DERIV_CALC|Add2~1_sumout\,
	cout => \DERIV_CALC|Add2~2\,
	shareout => \DERIV_CALC|Add2~3\);

-- Location: LABCELL_X19_Y4_N45
\DERIV_CALC|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~5_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg[-13]\ $ (\DERIV_CALC|dy1_1_reg[-13]\) ) + ( \DERIV_CALC|Add2~3\ ) + ( \DERIV_CALC|Add2~2\ ))
-- \DERIV_CALC|Add2~6\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-13]\ $ (\DERIV_CALC|dy1_1_reg[-13]\) ) + ( \DERIV_CALC|Add2~3\ ) + ( \DERIV_CALC|Add2~2\ ))
-- \DERIV_CALC|Add2~7\ = SHARE((!\DERIV_CALC|dy1_2_reg[-13]\ & \DERIV_CALC|dy1_1_reg[-13]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-13]\,
	datad => \DERIV_CALC|ALT_INV_dy1_1_reg[-13]\,
	cin => \DERIV_CALC|Add2~2\,
	sharein => \DERIV_CALC|Add2~3\,
	sumout => \DERIV_CALC|Add2~5_sumout\,
	cout => \DERIV_CALC|Add2~6\,
	shareout => \DERIV_CALC|Add2~7\);

-- Location: LABCELL_X19_Y4_N48
\DERIV_CALC|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~9_sumout\ = SUM(( !\DERIV_CALC|dy1_1_reg[-12]\ $ (\DERIV_CALC|dy1_2_reg[-12]\) ) + ( \DERIV_CALC|Add2~7\ ) + ( \DERIV_CALC|Add2~6\ ))
-- \DERIV_CALC|Add2~10\ = CARRY(( !\DERIV_CALC|dy1_1_reg[-12]\ $ (\DERIV_CALC|dy1_2_reg[-12]\) ) + ( \DERIV_CALC|Add2~7\ ) + ( \DERIV_CALC|Add2~6\ ))
-- \DERIV_CALC|Add2~11\ = SHARE((\DERIV_CALC|dy1_1_reg[-12]\ & !\DERIV_CALC|dy1_2_reg[-12]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_1_reg[-12]\,
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg[-12]\,
	cin => \DERIV_CALC|Add2~6\,
	sharein => \DERIV_CALC|Add2~7\,
	sumout => \DERIV_CALC|Add2~9_sumout\,
	cout => \DERIV_CALC|Add2~10\,
	shareout => \DERIV_CALC|Add2~11\);

-- Location: LABCELL_X19_Y4_N51
\DERIV_CALC|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~13_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg[-11]\ $ (\DERIV_CALC|dy1_1_reg[-11]\) ) + ( \DERIV_CALC|Add2~11\ ) + ( \DERIV_CALC|Add2~10\ ))
-- \DERIV_CALC|Add2~14\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-11]\ $ (\DERIV_CALC|dy1_1_reg[-11]\) ) + ( \DERIV_CALC|Add2~11\ ) + ( \DERIV_CALC|Add2~10\ ))
-- \DERIV_CALC|Add2~15\ = SHARE((!\DERIV_CALC|dy1_2_reg[-11]\ & \DERIV_CALC|dy1_1_reg[-11]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-11]\,
	datad => \DERIV_CALC|ALT_INV_dy1_1_reg[-11]\,
	cin => \DERIV_CALC|Add2~10\,
	sharein => \DERIV_CALC|Add2~11\,
	sumout => \DERIV_CALC|Add2~13_sumout\,
	cout => \DERIV_CALC|Add2~14\,
	shareout => \DERIV_CALC|Add2~15\);

-- Location: LABCELL_X19_Y4_N54
\DERIV_CALC|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~17_sumout\ = SUM(( !\DERIV_CALC|dy1_1_reg[-10]\ $ (\DERIV_CALC|dy1_2_reg[-10]\) ) + ( \DERIV_CALC|Add2~15\ ) + ( \DERIV_CALC|Add2~14\ ))
-- \DERIV_CALC|Add2~18\ = CARRY(( !\DERIV_CALC|dy1_1_reg[-10]\ $ (\DERIV_CALC|dy1_2_reg[-10]\) ) + ( \DERIV_CALC|Add2~15\ ) + ( \DERIV_CALC|Add2~14\ ))
-- \DERIV_CALC|Add2~19\ = SHARE((\DERIV_CALC|dy1_1_reg[-10]\ & !\DERIV_CALC|dy1_2_reg[-10]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dy1_1_reg[-10]\,
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-10]\,
	cin => \DERIV_CALC|Add2~14\,
	sharein => \DERIV_CALC|Add2~15\,
	sumout => \DERIV_CALC|Add2~17_sumout\,
	cout => \DERIV_CALC|Add2~18\,
	shareout => \DERIV_CALC|Add2~19\);

-- Location: LABCELL_X19_Y4_N57
\DERIV_CALC|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~21_sumout\ = SUM(( !\DERIV_CALC|dy1_1_reg[-9]\ $ (\DERIV_CALC|dy1_2_reg[-9]\) ) + ( \DERIV_CALC|Add2~19\ ) + ( \DERIV_CALC|Add2~18\ ))
-- \DERIV_CALC|Add2~22\ = CARRY(( !\DERIV_CALC|dy1_1_reg[-9]\ $ (\DERIV_CALC|dy1_2_reg[-9]\) ) + ( \DERIV_CALC|Add2~19\ ) + ( \DERIV_CALC|Add2~18\ ))
-- \DERIV_CALC|Add2~23\ = SHARE((\DERIV_CALC|dy1_1_reg[-9]\ & !\DERIV_CALC|dy1_2_reg[-9]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_1_reg[-9]\,
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg[-9]\,
	cin => \DERIV_CALC|Add2~18\,
	sharein => \DERIV_CALC|Add2~19\,
	sumout => \DERIV_CALC|Add2~21_sumout\,
	cout => \DERIV_CALC|Add2~22\,
	shareout => \DERIV_CALC|Add2~23\);

-- Location: LABCELL_X19_Y3_N0
\DERIV_CALC|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~25_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg[-8]\ $ (\DERIV_CALC|dy1_1_reg[-8]\) ) + ( \DERIV_CALC|Add2~23\ ) + ( \DERIV_CALC|Add2~22\ ))
-- \DERIV_CALC|Add2~26\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-8]\ $ (\DERIV_CALC|dy1_1_reg[-8]\) ) + ( \DERIV_CALC|Add2~23\ ) + ( \DERIV_CALC|Add2~22\ ))
-- \DERIV_CALC|Add2~27\ = SHARE((!\DERIV_CALC|dy1_2_reg[-8]\ & \DERIV_CALC|dy1_1_reg[-8]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-8]\,
	datad => \DERIV_CALC|ALT_INV_dy1_1_reg[-8]\,
	cin => \DERIV_CALC|Add2~22\,
	sharein => \DERIV_CALC|Add2~23\,
	sumout => \DERIV_CALC|Add2~25_sumout\,
	cout => \DERIV_CALC|Add2~26\,
	shareout => \DERIV_CALC|Add2~27\);

-- Location: LABCELL_X19_Y3_N3
\DERIV_CALC|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~29_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg[-7]\ $ (\DERIV_CALC|dy1_1_reg[-7]\) ) + ( \DERIV_CALC|Add2~27\ ) + ( \DERIV_CALC|Add2~26\ ))
-- \DERIV_CALC|Add2~30\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-7]\ $ (\DERIV_CALC|dy1_1_reg[-7]\) ) + ( \DERIV_CALC|Add2~27\ ) + ( \DERIV_CALC|Add2~26\ ))
-- \DERIV_CALC|Add2~31\ = SHARE((!\DERIV_CALC|dy1_2_reg[-7]\ & \DERIV_CALC|dy1_1_reg[-7]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dy1_2_reg[-7]\,
	datad => \DERIV_CALC|ALT_INV_dy1_1_reg[-7]\,
	cin => \DERIV_CALC|Add2~26\,
	sharein => \DERIV_CALC|Add2~27\,
	sumout => \DERIV_CALC|Add2~29_sumout\,
	cout => \DERIV_CALC|Add2~30\,
	shareout => \DERIV_CALC|Add2~31\);

-- Location: LABCELL_X19_Y3_N6
\DERIV_CALC|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~33_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg[-6]\ $ (\DERIV_CALC|dy1_1_reg[-6]\) ) + ( \DERIV_CALC|Add2~31\ ) + ( \DERIV_CALC|Add2~30\ ))
-- \DERIV_CALC|Add2~34\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-6]\ $ (\DERIV_CALC|dy1_1_reg[-6]\) ) + ( \DERIV_CALC|Add2~31\ ) + ( \DERIV_CALC|Add2~30\ ))
-- \DERIV_CALC|Add2~35\ = SHARE((!\DERIV_CALC|dy1_2_reg[-6]\ & \DERIV_CALC|dy1_1_reg[-6]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dy1_2_reg[-6]\,
	datad => \DERIV_CALC|ALT_INV_dy1_1_reg[-6]\,
	cin => \DERIV_CALC|Add2~30\,
	sharein => \DERIV_CALC|Add2~31\,
	sumout => \DERIV_CALC|Add2~33_sumout\,
	cout => \DERIV_CALC|Add2~34\,
	shareout => \DERIV_CALC|Add2~35\);

-- Location: LABCELL_X19_Y3_N9
\DERIV_CALC|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~37_sumout\ = SUM(( !\DERIV_CALC|dy1_1_reg[-5]\ $ (\DERIV_CALC|dy1_2_reg[-5]\) ) + ( \DERIV_CALC|Add2~35\ ) + ( \DERIV_CALC|Add2~34\ ))
-- \DERIV_CALC|Add2~38\ = CARRY(( !\DERIV_CALC|dy1_1_reg[-5]\ $ (\DERIV_CALC|dy1_2_reg[-5]\) ) + ( \DERIV_CALC|Add2~35\ ) + ( \DERIV_CALC|Add2~34\ ))
-- \DERIV_CALC|Add2~39\ = SHARE((\DERIV_CALC|dy1_1_reg[-5]\ & !\DERIV_CALC|dy1_2_reg[-5]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dy1_1_reg[-5]\,
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-5]\,
	cin => \DERIV_CALC|Add2~34\,
	sharein => \DERIV_CALC|Add2~35\,
	sumout => \DERIV_CALC|Add2~37_sumout\,
	cout => \DERIV_CALC|Add2~38\,
	shareout => \DERIV_CALC|Add2~39\);

-- Location: LABCELL_X19_Y3_N12
\DERIV_CALC|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~41_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg[-4]\ $ (\DERIV_CALC|dy1_1_reg[-4]\) ) + ( \DERIV_CALC|Add2~39\ ) + ( \DERIV_CALC|Add2~38\ ))
-- \DERIV_CALC|Add2~42\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-4]\ $ (\DERIV_CALC|dy1_1_reg[-4]\) ) + ( \DERIV_CALC|Add2~39\ ) + ( \DERIV_CALC|Add2~38\ ))
-- \DERIV_CALC|Add2~43\ = SHARE((!\DERIV_CALC|dy1_2_reg[-4]\ & \DERIV_CALC|dy1_1_reg[-4]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-4]\,
	datad => \DERIV_CALC|ALT_INV_dy1_1_reg[-4]\,
	cin => \DERIV_CALC|Add2~38\,
	sharein => \DERIV_CALC|Add2~39\,
	sumout => \DERIV_CALC|Add2~41_sumout\,
	cout => \DERIV_CALC|Add2~42\,
	shareout => \DERIV_CALC|Add2~43\);

-- Location: LABCELL_X19_Y3_N15
\DERIV_CALC|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~45_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg[-3]\ $ (\DERIV_CALC|dy1_1_reg[-3]\) ) + ( \DERIV_CALC|Add2~43\ ) + ( \DERIV_CALC|Add2~42\ ))
-- \DERIV_CALC|Add2~46\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-3]\ $ (\DERIV_CALC|dy1_1_reg[-3]\) ) + ( \DERIV_CALC|Add2~43\ ) + ( \DERIV_CALC|Add2~42\ ))
-- \DERIV_CALC|Add2~47\ = SHARE((!\DERIV_CALC|dy1_2_reg[-3]\ & \DERIV_CALC|dy1_1_reg[-3]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dy1_2_reg[-3]\,
	datac => \DERIV_CALC|ALT_INV_dy1_1_reg[-3]\,
	cin => \DERIV_CALC|Add2~42\,
	sharein => \DERIV_CALC|Add2~43\,
	sumout => \DERIV_CALC|Add2~45_sumout\,
	cout => \DERIV_CALC|Add2~46\,
	shareout => \DERIV_CALC|Add2~47\);

-- Location: LABCELL_X19_Y3_N18
\DERIV_CALC|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~49_sumout\ = SUM(( !\DERIV_CALC|dy1_1_reg[-2]\ $ (\DERIV_CALC|dy1_2_reg[-2]\) ) + ( \DERIV_CALC|Add2~47\ ) + ( \DERIV_CALC|Add2~46\ ))
-- \DERIV_CALC|Add2~50\ = CARRY(( !\DERIV_CALC|dy1_1_reg[-2]\ $ (\DERIV_CALC|dy1_2_reg[-2]\) ) + ( \DERIV_CALC|Add2~47\ ) + ( \DERIV_CALC|Add2~46\ ))
-- \DERIV_CALC|Add2~51\ = SHARE((\DERIV_CALC|dy1_1_reg[-2]\ & !\DERIV_CALC|dy1_2_reg[-2]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_1_reg[-2]\,
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg[-2]\,
	cin => \DERIV_CALC|Add2~46\,
	sharein => \DERIV_CALC|Add2~47\,
	sumout => \DERIV_CALC|Add2~49_sumout\,
	cout => \DERIV_CALC|Add2~50\,
	shareout => \DERIV_CALC|Add2~51\);

-- Location: LABCELL_X19_Y3_N21
\DERIV_CALC|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~53_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg[-1]\ $ (\DERIV_CALC|dy1_1_reg[-1]\) ) + ( \DERIV_CALC|Add2~51\ ) + ( \DERIV_CALC|Add2~50\ ))
-- \DERIV_CALC|Add2~54\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-1]\ $ (\DERIV_CALC|dy1_1_reg[-1]\) ) + ( \DERIV_CALC|Add2~51\ ) + ( \DERIV_CALC|Add2~50\ ))
-- \DERIV_CALC|Add2~55\ = SHARE((!\DERIV_CALC|dy1_2_reg[-1]\ & \DERIV_CALC|dy1_1_reg[-1]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-1]\,
	datad => \DERIV_CALC|ALT_INV_dy1_1_reg[-1]\,
	cin => \DERIV_CALC|Add2~50\,
	sharein => \DERIV_CALC|Add2~51\,
	sumout => \DERIV_CALC|Add2~53_sumout\,
	cout => \DERIV_CALC|Add2~54\,
	shareout => \DERIV_CALC|Add2~55\);

-- Location: LABCELL_X19_Y3_N24
\DERIV_CALC|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~57_sumout\ = SUM(( !\DERIV_CALC|dy1_1_reg\(0) $ (\DERIV_CALC|dy1_2_reg\(0)) ) + ( \DERIV_CALC|Add2~55\ ) + ( \DERIV_CALC|Add2~54\ ))
-- \DERIV_CALC|Add2~58\ = CARRY(( !\DERIV_CALC|dy1_1_reg\(0) $ (\DERIV_CALC|dy1_2_reg\(0)) ) + ( \DERIV_CALC|Add2~55\ ) + ( \DERIV_CALC|Add2~54\ ))
-- \DERIV_CALC|Add2~59\ = SHARE((\DERIV_CALC|dy1_1_reg\(0) & !\DERIV_CALC|dy1_2_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_1_reg\(0),
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg\(0),
	cin => \DERIV_CALC|Add2~54\,
	sharein => \DERIV_CALC|Add2~55\,
	sumout => \DERIV_CALC|Add2~57_sumout\,
	cout => \DERIV_CALC|Add2~58\,
	shareout => \DERIV_CALC|Add2~59\);

-- Location: LABCELL_X19_Y3_N27
\DERIV_CALC|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~61_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg\(1) $ (\DERIV_CALC|dy1_1_reg\(1)) ) + ( \DERIV_CALC|Add2~59\ ) + ( \DERIV_CALC|Add2~58\ ))
-- \DERIV_CALC|Add2~62\ = CARRY(( !\DERIV_CALC|dy1_2_reg\(1) $ (\DERIV_CALC|dy1_1_reg\(1)) ) + ( \DERIV_CALC|Add2~59\ ) + ( \DERIV_CALC|Add2~58\ ))
-- \DERIV_CALC|Add2~63\ = SHARE((!\DERIV_CALC|dy1_2_reg\(1) & \DERIV_CALC|dy1_1_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg\(1),
	datad => \DERIV_CALC|ALT_INV_dy1_1_reg\(1),
	cin => \DERIV_CALC|Add2~58\,
	sharein => \DERIV_CALC|Add2~59\,
	sumout => \DERIV_CALC|Add2~61_sumout\,
	cout => \DERIV_CALC|Add2~62\,
	shareout => \DERIV_CALC|Add2~63\);

-- Location: LABCELL_X19_Y3_N30
\DERIV_CALC|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~65_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg\(2) $ (\DERIV_CALC|dy1_1_reg\(2)) ) + ( \DERIV_CALC|Add2~63\ ) + ( \DERIV_CALC|Add2~62\ ))
-- \DERIV_CALC|Add2~66\ = CARRY(( !\DERIV_CALC|dy1_2_reg\(2) $ (\DERIV_CALC|dy1_1_reg\(2)) ) + ( \DERIV_CALC|Add2~63\ ) + ( \DERIV_CALC|Add2~62\ ))
-- \DERIV_CALC|Add2~67\ = SHARE((!\DERIV_CALC|dy1_2_reg\(2) & \DERIV_CALC|dy1_1_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg\(2),
	datad => \DERIV_CALC|ALT_INV_dy1_1_reg\(2),
	cin => \DERIV_CALC|Add2~62\,
	sharein => \DERIV_CALC|Add2~63\,
	sumout => \DERIV_CALC|Add2~65_sumout\,
	cout => \DERIV_CALC|Add2~66\,
	shareout => \DERIV_CALC|Add2~67\);

-- Location: LABCELL_X19_Y3_N33
\DERIV_CALC|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~69_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg\(3) $ (\DERIV_CALC|dy1_1_reg\(3)) ) + ( \DERIV_CALC|Add2~67\ ) + ( \DERIV_CALC|Add2~66\ ))
-- \DERIV_CALC|Add2~70\ = CARRY(( !\DERIV_CALC|dy1_2_reg\(3) $ (\DERIV_CALC|dy1_1_reg\(3)) ) + ( \DERIV_CALC|Add2~67\ ) + ( \DERIV_CALC|Add2~66\ ))
-- \DERIV_CALC|Add2~71\ = SHARE((!\DERIV_CALC|dy1_2_reg\(3) & \DERIV_CALC|dy1_1_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dy1_2_reg\(3),
	datac => \DERIV_CALC|ALT_INV_dy1_1_reg\(3),
	cin => \DERIV_CALC|Add2~66\,
	sharein => \DERIV_CALC|Add2~67\,
	sumout => \DERIV_CALC|Add2~69_sumout\,
	cout => \DERIV_CALC|Add2~70\,
	shareout => \DERIV_CALC|Add2~71\);

-- Location: LABCELL_X19_Y3_N36
\DERIV_CALC|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~73_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg\(4) $ (\DERIV_CALC|dy1_1_reg\(4)) ) + ( \DERIV_CALC|Add2~71\ ) + ( \DERIV_CALC|Add2~70\ ))
-- \DERIV_CALC|Add2~74\ = CARRY(( !\DERIV_CALC|dy1_2_reg\(4) $ (\DERIV_CALC|dy1_1_reg\(4)) ) + ( \DERIV_CALC|Add2~71\ ) + ( \DERIV_CALC|Add2~70\ ))
-- \DERIV_CALC|Add2~75\ = SHARE((!\DERIV_CALC|dy1_2_reg\(4) & \DERIV_CALC|dy1_1_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dy1_2_reg\(4),
	datac => \DERIV_CALC|ALT_INV_dy1_1_reg\(4),
	cin => \DERIV_CALC|Add2~70\,
	sharein => \DERIV_CALC|Add2~71\,
	sumout => \DERIV_CALC|Add2~73_sumout\,
	cout => \DERIV_CALC|Add2~74\,
	shareout => \DERIV_CALC|Add2~75\);

-- Location: LABCELL_X19_Y3_N39
\DERIV_CALC|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~77_sumout\ = SUM(( !\DERIV_CALC|dy1_1_reg\(5) $ (\DERIV_CALC|dy1_2_reg\(5)) ) + ( \DERIV_CALC|Add2~75\ ) + ( \DERIV_CALC|Add2~74\ ))
-- \DERIV_CALC|Add2~78\ = CARRY(( !\DERIV_CALC|dy1_1_reg\(5) $ (\DERIV_CALC|dy1_2_reg\(5)) ) + ( \DERIV_CALC|Add2~75\ ) + ( \DERIV_CALC|Add2~74\ ))
-- \DERIV_CALC|Add2~79\ = SHARE((\DERIV_CALC|dy1_1_reg\(5) & !\DERIV_CALC|dy1_2_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dy1_1_reg\(5),
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg\(5),
	cin => \DERIV_CALC|Add2~74\,
	sharein => \DERIV_CALC|Add2~75\,
	sumout => \DERIV_CALC|Add2~77_sumout\,
	cout => \DERIV_CALC|Add2~78\,
	shareout => \DERIV_CALC|Add2~79\);

-- Location: LABCELL_X19_Y3_N42
\DERIV_CALC|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~81_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg\(6) $ (\DERIV_CALC|dy1_1_reg\(6)) ) + ( \DERIV_CALC|Add2~79\ ) + ( \DERIV_CALC|Add2~78\ ))
-- \DERIV_CALC|Add2~82\ = CARRY(( !\DERIV_CALC|dy1_2_reg\(6) $ (\DERIV_CALC|dy1_1_reg\(6)) ) + ( \DERIV_CALC|Add2~79\ ) + ( \DERIV_CALC|Add2~78\ ))
-- \DERIV_CALC|Add2~83\ = SHARE((!\DERIV_CALC|dy1_2_reg\(6) & \DERIV_CALC|dy1_1_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg\(6),
	datad => \DERIV_CALC|ALT_INV_dy1_1_reg\(6),
	cin => \DERIV_CALC|Add2~78\,
	sharein => \DERIV_CALC|Add2~79\,
	sumout => \DERIV_CALC|Add2~81_sumout\,
	cout => \DERIV_CALC|Add2~82\,
	shareout => \DERIV_CALC|Add2~83\);

-- Location: LABCELL_X19_Y3_N45
\DERIV_CALC|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~85_sumout\ = SUM(( !\DERIV_CALC|dy1_1_reg\(7) $ (\DERIV_CALC|dy1_2_reg\(7)) ) + ( \DERIV_CALC|Add2~83\ ) + ( \DERIV_CALC|Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dy1_1_reg\(7),
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg\(7),
	cin => \DERIV_CALC|Add2~82\,
	sharein => \DERIV_CALC|Add2~83\,
	sumout => \DERIV_CALC|Add2~85_sumout\);

-- Location: FF_X19_Y3_N47
\DERIV_CALC|dy2_1_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~85_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg\(7));

-- Location: MLABCELL_X25_Y3_N33
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \var_main_reg[0][21]~q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[0][21]~q\,
	datab => \ALT_INV_mul_reg[0][7]~q\,
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\);

-- Location: FF_X25_Y3_N35
\var_main_reg[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][21]~q\);

-- Location: FF_X19_Y4_N11
\DERIV_CALC|dx1_3_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[0][21]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg\(7));

-- Location: FF_X19_Y4_N4
\DERIV_CALC|dx2_2_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg\(7),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg\(7));

-- Location: LABCELL_X29_Y4_N15
\DERIV_CALC|dx1_3_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_3_reg[5]~feeder_combout\ = ( \var_main_reg[0][19]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[0][19]~q\,
	combout => \DERIV_CALC|dx1_3_reg[5]~feeder_combout\);

-- Location: FF_X29_Y4_N17
\DERIV_CALC|dx1_3_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_3_reg[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg\(5));

-- Location: FF_X29_Y4_N7
\DERIV_CALC|dx2_2_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg\(5),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg\(5));

-- Location: MLABCELL_X25_Y3_N42
\DERIV_CALC|dx1_3_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_3_reg[4]~feeder_combout\ = ( \var_main_reg[0][18]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[0][18]~DUPLICATE_q\,
	combout => \DERIV_CALC|dx1_3_reg[4]~feeder_combout\);

-- Location: FF_X25_Y3_N43
\DERIV_CALC|dx1_3_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_3_reg[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg\(4));

-- Location: LABCELL_X24_Y3_N54
\DERIV_CALC|dx2_2_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_2_reg[4]~feeder_combout\ = \DERIV_CALC|dx1_3_reg\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_3_reg\(4),
	combout => \DERIV_CALC|dx2_2_reg[4]~feeder_combout\);

-- Location: FF_X24_Y3_N55
\DERIV_CALC|dx2_2_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_2_reg[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg\(4));

-- Location: FF_X25_Y3_N22
\var_main_reg[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][17]~q\);

-- Location: FF_X25_Y8_N25
\DERIV_CALC|dx1_3_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[0][17]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg\(3));

-- Location: LABCELL_X24_Y8_N0
\DERIV_CALC|dx2_2_reg[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_2_reg[3]~feeder_combout\ = \DERIV_CALC|dx1_3_reg\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_3_reg\(3),
	combout => \DERIV_CALC|dx2_2_reg[3]~feeder_combout\);

-- Location: FF_X24_Y8_N1
\DERIV_CALC|dx2_2_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_2_reg[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg\(3));

-- Location: FF_X25_Y3_N19
\var_main_reg[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][16]~q\);

-- Location: FF_X25_Y5_N46
\DERIV_CALC|dx1_3_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[0][16]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg\(2));

-- Location: FF_X19_Y5_N43
\DERIV_CALC|dx2_2_reg[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg\(2),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[2]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y3_N39
\DERIV_CALC|dx1_3_reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_3_reg[0]~feeder_combout\ = ( \var_main_reg[0][14]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[0][14]~q\,
	combout => \DERIV_CALC|dx1_3_reg[0]~feeder_combout\);

-- Location: FF_X25_Y3_N40
\DERIV_CALC|dx1_3_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_3_reg[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg\(0));

-- Location: FF_X19_Y5_N50
\DERIV_CALC|dx2_2_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg\(0),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg\(0));

-- Location: MLABCELL_X25_Y3_N48
\DERIV_CALC|dx1_3_reg[-1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_3_reg[-1]~feeder_combout\ = ( \var_main_reg[0][13]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[0][13]~DUPLICATE_q\,
	combout => \DERIV_CALC|dx1_3_reg[-1]~feeder_combout\);

-- Location: FF_X25_Y3_N50
\DERIV_CALC|dx1_3_reg[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_3_reg[-1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg[-1]~q\);

-- Location: LABCELL_X19_Y5_N54
\DERIV_CALC|dx2_2_reg[-1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_2_reg[-1]~feeder_combout\ = ( \DERIV_CALC|dx1_3_reg[-1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx1_3_reg[-1]~q\,
	combout => \DERIV_CALC|dx2_2_reg[-1]~feeder_combout\);

-- Location: FF_X19_Y5_N56
\DERIV_CALC|dx2_2_reg[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_2_reg[-1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-1]~q\);

-- Location: FF_X19_Y3_N19
\DERIV_CALC|dy2_1_reg[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~49_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg[-2]~q\);

-- Location: FF_X19_Y3_N17
\DERIV_CALC|dy2_1_reg[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~45_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg[-3]~q\);

-- Location: FF_X25_Y3_N2
\var_main_reg[0][10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][10]~DUPLICATE_q\);

-- Location: DSP_X20_Y8_N0
\DERIV_CALC|Mult1~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 27,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 17,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m27x27",
	output_clock => "0",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \DERIV_CALC|Mult1~mac_ACLR_bus\,
	clk => \DERIV_CALC|Mult1~mac_CLK_bus\,
	ena => \DERIV_CALC|Mult1~mac_ENA_bus\,
	ax => \DERIV_CALC|Mult1~mac_AX_bus\,
	ay => \DERIV_CALC|Mult1~mac_AY_bus\,
	resulta => \DERIV_CALC|Mult1~mac_RESULTA_bus\);

-- Location: DSP_X20_Y10_N0
\DERIV_CALC|Mult0~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 27,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 17,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m27x27",
	output_clock => "0",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \DERIV_CALC|Mult0~mac_ACLR_bus\,
	clk => \DERIV_CALC|Mult0~mac_CLK_bus\,
	ena => \DERIV_CALC|Mult0~mac_ENA_bus\,
	ax => \DERIV_CALC|Mult0~mac_AX_bus\,
	ay => \DERIV_CALC|Mult0~mac_AY_bus\,
	resulta => \DERIV_CALC|Mult0~mac_RESULTA_bus\);

-- Location: LABCELL_X19_Y10_N0
\DERIV_CALC|Add0~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~142_cout\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-28]\ $ (!\DERIV_CALC|dx1_2_reg[-28]\) ) + ( !VCC ) + ( !VCC ))
-- \DERIV_CALC|Add0~143\ = SHARE((!\DERIV_CALC|dx1_2_reg[-28]\) # (\DERIV_CALC|dx1_1_reg[-28]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-28]\,
	datad => \DERIV_CALC|ALT_INV_dx1_2_reg[-28]\,
	cin => GND,
	sharein => GND,
	cout => \DERIV_CALC|Add0~142_cout\,
	shareout => \DERIV_CALC|Add0~143\);

-- Location: LABCELL_X19_Y10_N3
\DERIV_CALC|Add0~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~138_cout\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-27]\ $ (\DERIV_CALC|dx1_2_reg[-27]\) ) + ( \DERIV_CALC|Add0~143\ ) + ( \DERIV_CALC|Add0~142_cout\ ))
-- \DERIV_CALC|Add0~139\ = SHARE((\DERIV_CALC|dx1_1_reg[-27]\ & !\DERIV_CALC|dx1_2_reg[-27]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_1_reg[-27]\,
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg[-27]\,
	cin => \DERIV_CALC|Add0~142_cout\,
	sharein => \DERIV_CALC|Add0~143\,
	cout => \DERIV_CALC|Add0~138_cout\,
	shareout => \DERIV_CALC|Add0~139\);

-- Location: LABCELL_X19_Y10_N6
\DERIV_CALC|Add0~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~134_cout\ = CARRY(( !\DERIV_CALC|dx1_2_reg[-26]\ $ (\DERIV_CALC|dx1_1_reg[-26]\) ) + ( \DERIV_CALC|Add0~139\ ) + ( \DERIV_CALC|Add0~138_cout\ ))
-- \DERIV_CALC|Add0~135\ = SHARE((!\DERIV_CALC|dx1_2_reg[-26]\ & \DERIV_CALC|dx1_1_reg[-26]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_2_reg[-26]\,
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-26]\,
	cin => \DERIV_CALC|Add0~138_cout\,
	sharein => \DERIV_CALC|Add0~139\,
	cout => \DERIV_CALC|Add0~134_cout\,
	shareout => \DERIV_CALC|Add0~135\);

-- Location: LABCELL_X19_Y10_N9
\DERIV_CALC|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~130_cout\ = CARRY(( !\DERIV_CALC|dx1_2_reg[-25]\ $ (\DERIV_CALC|dx1_1_reg[-25]\) ) + ( \DERIV_CALC|Add0~135\ ) + ( \DERIV_CALC|Add0~134_cout\ ))
-- \DERIV_CALC|Add0~131\ = SHARE((!\DERIV_CALC|dx1_2_reg[-25]\ & \DERIV_CALC|dx1_1_reg[-25]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg[-25]\,
	datad => \DERIV_CALC|ALT_INV_dx1_1_reg[-25]\,
	cin => \DERIV_CALC|Add0~134_cout\,
	sharein => \DERIV_CALC|Add0~135\,
	cout => \DERIV_CALC|Add0~130_cout\,
	shareout => \DERIV_CALC|Add0~131\);

-- Location: LABCELL_X19_Y10_N12
\DERIV_CALC|Add0~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~126_cout\ = CARRY(( !\DERIV_CALC|dx1_2_reg[-24]\ $ (\DERIV_CALC|dx1_1_reg[-24]\) ) + ( \DERIV_CALC|Add0~131\ ) + ( \DERIV_CALC|Add0~130_cout\ ))
-- \DERIV_CALC|Add0~127\ = SHARE((!\DERIV_CALC|dx1_2_reg[-24]\ & \DERIV_CALC|dx1_1_reg[-24]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg[-24]\,
	datad => \DERIV_CALC|ALT_INV_dx1_1_reg[-24]\,
	cin => \DERIV_CALC|Add0~130_cout\,
	sharein => \DERIV_CALC|Add0~131\,
	cout => \DERIV_CALC|Add0~126_cout\,
	shareout => \DERIV_CALC|Add0~127\);

-- Location: LABCELL_X19_Y10_N15
\DERIV_CALC|Add0~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~122_cout\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-23]\ $ (\DERIV_CALC|dx1_2_reg[-23]\) ) + ( \DERIV_CALC|Add0~127\ ) + ( \DERIV_CALC|Add0~126_cout\ ))
-- \DERIV_CALC|Add0~123\ = SHARE((\DERIV_CALC|dx1_1_reg[-23]\ & !\DERIV_CALC|dx1_2_reg[-23]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_1_reg[-23]\,
	datad => \DERIV_CALC|ALT_INV_dx1_2_reg[-23]\,
	cin => \DERIV_CALC|Add0~126_cout\,
	sharein => \DERIV_CALC|Add0~127\,
	cout => \DERIV_CALC|Add0~122_cout\,
	shareout => \DERIV_CALC|Add0~123\);

-- Location: LABCELL_X19_Y10_N18
\DERIV_CALC|Add0~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~118_cout\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-22]\ $ (\DERIV_CALC|dx1_2_reg[-22]\) ) + ( \DERIV_CALC|Add0~123\ ) + ( \DERIV_CALC|Add0~122_cout\ ))
-- \DERIV_CALC|Add0~119\ = SHARE((\DERIV_CALC|dx1_1_reg[-22]\ & !\DERIV_CALC|dx1_2_reg[-22]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_1_reg[-22]\,
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg[-22]\,
	cin => \DERIV_CALC|Add0~122_cout\,
	sharein => \DERIV_CALC|Add0~123\,
	cout => \DERIV_CALC|Add0~118_cout\,
	shareout => \DERIV_CALC|Add0~119\);

-- Location: LABCELL_X19_Y10_N21
\DERIV_CALC|Add0~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~114_cout\ = CARRY(( !\DERIV_CALC|dx1_2_reg[-21]\ $ (\DERIV_CALC|dx1_1_reg[-21]\) ) + ( \DERIV_CALC|Add0~119\ ) + ( \DERIV_CALC|Add0~118_cout\ ))
-- \DERIV_CALC|Add0~115\ = SHARE((!\DERIV_CALC|dx1_2_reg[-21]\ & \DERIV_CALC|dx1_1_reg[-21]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx1_2_reg[-21]\,
	datad => \DERIV_CALC|ALT_INV_dx1_1_reg[-21]\,
	cin => \DERIV_CALC|Add0~118_cout\,
	sharein => \DERIV_CALC|Add0~119\,
	cout => \DERIV_CALC|Add0~114_cout\,
	shareout => \DERIV_CALC|Add0~115\);

-- Location: LABCELL_X19_Y10_N24
\DERIV_CALC|Add0~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~110_cout\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-20]\ $ (\DERIV_CALC|dx1_2_reg[-20]\) ) + ( \DERIV_CALC|Add0~115\ ) + ( \DERIV_CALC|Add0~114_cout\ ))
-- \DERIV_CALC|Add0~111\ = SHARE((\DERIV_CALC|dx1_1_reg[-20]\ & !\DERIV_CALC|dx1_2_reg[-20]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-20]\,
	datad => \DERIV_CALC|ALT_INV_dx1_2_reg[-20]\,
	cin => \DERIV_CALC|Add0~114_cout\,
	sharein => \DERIV_CALC|Add0~115\,
	cout => \DERIV_CALC|Add0~110_cout\,
	shareout => \DERIV_CALC|Add0~111\);

-- Location: LABCELL_X19_Y10_N27
\DERIV_CALC|Add0~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~106_cout\ = CARRY(( !\DERIV_CALC|dx1_2_reg[-19]\ $ (\DERIV_CALC|dx1_1_reg[-19]\) ) + ( \DERIV_CALC|Add0~111\ ) + ( \DERIV_CALC|Add0~110_cout\ ))
-- \DERIV_CALC|Add0~107\ = SHARE((!\DERIV_CALC|dx1_2_reg[-19]\ & \DERIV_CALC|dx1_1_reg[-19]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg[-19]\,
	datad => \DERIV_CALC|ALT_INV_dx1_1_reg[-19]\,
	cin => \DERIV_CALC|Add0~110_cout\,
	sharein => \DERIV_CALC|Add0~111\,
	cout => \DERIV_CALC|Add0~106_cout\,
	shareout => \DERIV_CALC|Add0~107\);

-- Location: LABCELL_X19_Y10_N30
\DERIV_CALC|Add0~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~102_cout\ = CARRY(( !\DERIV_CALC|dx1_2_reg[-18]\ $ (\DERIV_CALC|dx1_1_reg[-18]\) ) + ( \DERIV_CALC|Add0~107\ ) + ( \DERIV_CALC|Add0~106_cout\ ))
-- \DERIV_CALC|Add0~103\ = SHARE((!\DERIV_CALC|dx1_2_reg[-18]\ & \DERIV_CALC|dx1_1_reg[-18]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg[-18]\,
	datad => \DERIV_CALC|ALT_INV_dx1_1_reg[-18]\,
	cin => \DERIV_CALC|Add0~106_cout\,
	sharein => \DERIV_CALC|Add0~107\,
	cout => \DERIV_CALC|Add0~102_cout\,
	shareout => \DERIV_CALC|Add0~103\);

-- Location: LABCELL_X19_Y10_N33
\DERIV_CALC|Add0~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~98_cout\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-17]\ $ (\DERIV_CALC|dx1_2_reg[-17]\) ) + ( \DERIV_CALC|Add0~103\ ) + ( \DERIV_CALC|Add0~102_cout\ ))
-- \DERIV_CALC|Add0~99\ = SHARE((\DERIV_CALC|dx1_1_reg[-17]\ & !\DERIV_CALC|dx1_2_reg[-17]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx1_1_reg[-17]\,
	datad => \DERIV_CALC|ALT_INV_dx1_2_reg[-17]\,
	cin => \DERIV_CALC|Add0~102_cout\,
	sharein => \DERIV_CALC|Add0~103\,
	cout => \DERIV_CALC|Add0~98_cout\,
	shareout => \DERIV_CALC|Add0~99\);

-- Location: LABCELL_X19_Y10_N36
\DERIV_CALC|Add0~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~94_cout\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-16]\ $ (\DERIV_CALC|dx1_2_reg[-16]\) ) + ( \DERIV_CALC|Add0~99\ ) + ( \DERIV_CALC|Add0~98_cout\ ))
-- \DERIV_CALC|Add0~95\ = SHARE((\DERIV_CALC|dx1_1_reg[-16]\ & !\DERIV_CALC|dx1_2_reg[-16]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-16]\,
	datad => \DERIV_CALC|ALT_INV_dx1_2_reg[-16]\,
	cin => \DERIV_CALC|Add0~98_cout\,
	sharein => \DERIV_CALC|Add0~99\,
	cout => \DERIV_CALC|Add0~94_cout\,
	shareout => \DERIV_CALC|Add0~95\);

-- Location: LABCELL_X19_Y10_N39
\DERIV_CALC|Add0~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~90_cout\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-15]\ $ (\DERIV_CALC|dx1_2_reg[-15]\) ) + ( \DERIV_CALC|Add0~95\ ) + ( \DERIV_CALC|Add0~94_cout\ ))
-- \DERIV_CALC|Add0~91\ = SHARE((\DERIV_CALC|dx1_1_reg[-15]\ & !\DERIV_CALC|dx1_2_reg[-15]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_1_reg[-15]\,
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg[-15]\,
	cin => \DERIV_CALC|Add0~94_cout\,
	sharein => \DERIV_CALC|Add0~95\,
	cout => \DERIV_CALC|Add0~90_cout\,
	shareout => \DERIV_CALC|Add0~91\);

-- Location: LABCELL_X19_Y10_N42
\DERIV_CALC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~1_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg[-14]\ $ (\DERIV_CALC|dx1_2_reg[-14]\) ) + ( \DERIV_CALC|Add0~91\ ) + ( \DERIV_CALC|Add0~90_cout\ ))
-- \DERIV_CALC|Add0~2\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-14]\ $ (\DERIV_CALC|dx1_2_reg[-14]\) ) + ( \DERIV_CALC|Add0~91\ ) + ( \DERIV_CALC|Add0~90_cout\ ))
-- \DERIV_CALC|Add0~3\ = SHARE((\DERIV_CALC|dx1_1_reg[-14]\ & !\DERIV_CALC|dx1_2_reg[-14]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx1_1_reg[-14]\,
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg[-14]\,
	cin => \DERIV_CALC|Add0~90_cout\,
	sharein => \DERIV_CALC|Add0~91\,
	sumout => \DERIV_CALC|Add0~1_sumout\,
	cout => \DERIV_CALC|Add0~2\,
	shareout => \DERIV_CALC|Add0~3\);

-- Location: LABCELL_X19_Y10_N45
\DERIV_CALC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~5_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg[-13]\ $ (\DERIV_CALC|dx1_2_reg[-13]\) ) + ( \DERIV_CALC|Add0~3\ ) + ( \DERIV_CALC|Add0~2\ ))
-- \DERIV_CALC|Add0~6\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-13]\ $ (\DERIV_CALC|dx1_2_reg[-13]\) ) + ( \DERIV_CALC|Add0~3\ ) + ( \DERIV_CALC|Add0~2\ ))
-- \DERIV_CALC|Add0~7\ = SHARE((\DERIV_CALC|dx1_1_reg[-13]\ & !\DERIV_CALC|dx1_2_reg[-13]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-13]\,
	datad => \DERIV_CALC|ALT_INV_dx1_2_reg[-13]\,
	cin => \DERIV_CALC|Add0~2\,
	sharein => \DERIV_CALC|Add0~3\,
	sumout => \DERIV_CALC|Add0~5_sumout\,
	cout => \DERIV_CALC|Add0~6\,
	shareout => \DERIV_CALC|Add0~7\);

-- Location: LABCELL_X19_Y10_N48
\DERIV_CALC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~9_sumout\ = SUM(( !\DERIV_CALC|dx1_2_reg[-12]\ $ (\DERIV_CALC|dx1_1_reg[-12]\) ) + ( \DERIV_CALC|Add0~7\ ) + ( \DERIV_CALC|Add0~6\ ))
-- \DERIV_CALC|Add0~10\ = CARRY(( !\DERIV_CALC|dx1_2_reg[-12]\ $ (\DERIV_CALC|dx1_1_reg[-12]\) ) + ( \DERIV_CALC|Add0~7\ ) + ( \DERIV_CALC|Add0~6\ ))
-- \DERIV_CALC|Add0~11\ = SHARE((!\DERIV_CALC|dx1_2_reg[-12]\ & \DERIV_CALC|dx1_1_reg[-12]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg[-12]\,
	datad => \DERIV_CALC|ALT_INV_dx1_1_reg[-12]\,
	cin => \DERIV_CALC|Add0~6\,
	sharein => \DERIV_CALC|Add0~7\,
	sumout => \DERIV_CALC|Add0~9_sumout\,
	cout => \DERIV_CALC|Add0~10\,
	shareout => \DERIV_CALC|Add0~11\);

-- Location: LABCELL_X19_Y10_N51
\DERIV_CALC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~13_sumout\ = SUM(( !\DERIV_CALC|dx1_2_reg[-11]\ $ (\DERIV_CALC|dx1_1_reg[-11]\) ) + ( \DERIV_CALC|Add0~11\ ) + ( \DERIV_CALC|Add0~10\ ))
-- \DERIV_CALC|Add0~14\ = CARRY(( !\DERIV_CALC|dx1_2_reg[-11]\ $ (\DERIV_CALC|dx1_1_reg[-11]\) ) + ( \DERIV_CALC|Add0~11\ ) + ( \DERIV_CALC|Add0~10\ ))
-- \DERIV_CALC|Add0~15\ = SHARE((!\DERIV_CALC|dx1_2_reg[-11]\ & \DERIV_CALC|dx1_1_reg[-11]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg[-11]\,
	datad => \DERIV_CALC|ALT_INV_dx1_1_reg[-11]\,
	cin => \DERIV_CALC|Add0~10\,
	sharein => \DERIV_CALC|Add0~11\,
	sumout => \DERIV_CALC|Add0~13_sumout\,
	cout => \DERIV_CALC|Add0~14\,
	shareout => \DERIV_CALC|Add0~15\);

-- Location: LABCELL_X19_Y10_N54
\DERIV_CALC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~17_sumout\ = SUM(( !\DERIV_CALC|dx1_2_reg[-10]\ $ (\DERIV_CALC|dx1_1_reg[-10]\) ) + ( \DERIV_CALC|Add0~15\ ) + ( \DERIV_CALC|Add0~14\ ))
-- \DERIV_CALC|Add0~18\ = CARRY(( !\DERIV_CALC|dx1_2_reg[-10]\ $ (\DERIV_CALC|dx1_1_reg[-10]\) ) + ( \DERIV_CALC|Add0~15\ ) + ( \DERIV_CALC|Add0~14\ ))
-- \DERIV_CALC|Add0~19\ = SHARE((!\DERIV_CALC|dx1_2_reg[-10]\ & \DERIV_CALC|dx1_1_reg[-10]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg[-10]\,
	datad => \DERIV_CALC|ALT_INV_dx1_1_reg[-10]\,
	cin => \DERIV_CALC|Add0~14\,
	sharein => \DERIV_CALC|Add0~15\,
	sumout => \DERIV_CALC|Add0~17_sumout\,
	cout => \DERIV_CALC|Add0~18\,
	shareout => \DERIV_CALC|Add0~19\);

-- Location: LABCELL_X19_Y10_N57
\DERIV_CALC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~21_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg[-9]\ $ (\DERIV_CALC|dx1_2_reg[-9]\) ) + ( \DERIV_CALC|Add0~19\ ) + ( \DERIV_CALC|Add0~18\ ))
-- \DERIV_CALC|Add0~22\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-9]\ $ (\DERIV_CALC|dx1_2_reg[-9]\) ) + ( \DERIV_CALC|Add0~19\ ) + ( \DERIV_CALC|Add0~18\ ))
-- \DERIV_CALC|Add0~23\ = SHARE((\DERIV_CALC|dx1_1_reg[-9]\ & !\DERIV_CALC|dx1_2_reg[-9]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx1_1_reg[-9]\,
	datad => \DERIV_CALC|ALT_INV_dx1_2_reg[-9]\,
	cin => \DERIV_CALC|Add0~18\,
	sharein => \DERIV_CALC|Add0~19\,
	sumout => \DERIV_CALC|Add0~21_sumout\,
	cout => \DERIV_CALC|Add0~22\,
	shareout => \DERIV_CALC|Add0~23\);

-- Location: LABCELL_X19_Y9_N0
\DERIV_CALC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~25_sumout\ = SUM(( !\DERIV_CALC|dx1_2_reg[-8]\ $ (\DERIV_CALC|dx1_1_reg[-8]\) ) + ( \DERIV_CALC|Add0~23\ ) + ( \DERIV_CALC|Add0~22\ ))
-- \DERIV_CALC|Add0~26\ = CARRY(( !\DERIV_CALC|dx1_2_reg[-8]\ $ (\DERIV_CALC|dx1_1_reg[-8]\) ) + ( \DERIV_CALC|Add0~23\ ) + ( \DERIV_CALC|Add0~22\ ))
-- \DERIV_CALC|Add0~27\ = SHARE((!\DERIV_CALC|dx1_2_reg[-8]\ & \DERIV_CALC|dx1_1_reg[-8]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_2_reg[-8]\,
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-8]\,
	cin => \DERIV_CALC|Add0~22\,
	sharein => \DERIV_CALC|Add0~23\,
	sumout => \DERIV_CALC|Add0~25_sumout\,
	cout => \DERIV_CALC|Add0~26\,
	shareout => \DERIV_CALC|Add0~27\);

-- Location: LABCELL_X19_Y9_N3
\DERIV_CALC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~29_sumout\ = SUM(( !\DERIV_CALC|dx1_2_reg[-7]\ $ (\DERIV_CALC|dx1_1_reg[-7]\) ) + ( \DERIV_CALC|Add0~27\ ) + ( \DERIV_CALC|Add0~26\ ))
-- \DERIV_CALC|Add0~30\ = CARRY(( !\DERIV_CALC|dx1_2_reg[-7]\ $ (\DERIV_CALC|dx1_1_reg[-7]\) ) + ( \DERIV_CALC|Add0~27\ ) + ( \DERIV_CALC|Add0~26\ ))
-- \DERIV_CALC|Add0~31\ = SHARE((!\DERIV_CALC|dx1_2_reg[-7]\ & \DERIV_CALC|dx1_1_reg[-7]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx1_2_reg[-7]\,
	datad => \DERIV_CALC|ALT_INV_dx1_1_reg[-7]\,
	cin => \DERIV_CALC|Add0~26\,
	sharein => \DERIV_CALC|Add0~27\,
	sumout => \DERIV_CALC|Add0~29_sumout\,
	cout => \DERIV_CALC|Add0~30\,
	shareout => \DERIV_CALC|Add0~31\);

-- Location: LABCELL_X19_Y9_N6
\DERIV_CALC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~33_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg[-6]\ $ (\DERIV_CALC|dx1_2_reg[-6]\) ) + ( \DERIV_CALC|Add0~31\ ) + ( \DERIV_CALC|Add0~30\ ))
-- \DERIV_CALC|Add0~34\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-6]\ $ (\DERIV_CALC|dx1_2_reg[-6]\) ) + ( \DERIV_CALC|Add0~31\ ) + ( \DERIV_CALC|Add0~30\ ))
-- \DERIV_CALC|Add0~35\ = SHARE((\DERIV_CALC|dx1_1_reg[-6]\ & !\DERIV_CALC|dx1_2_reg[-6]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-6]\,
	datad => \DERIV_CALC|ALT_INV_dx1_2_reg[-6]\,
	cin => \DERIV_CALC|Add0~30\,
	sharein => \DERIV_CALC|Add0~31\,
	sumout => \DERIV_CALC|Add0~33_sumout\,
	cout => \DERIV_CALC|Add0~34\,
	shareout => \DERIV_CALC|Add0~35\);

-- Location: LABCELL_X19_Y9_N9
\DERIV_CALC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~37_sumout\ = SUM(( !\DERIV_CALC|dx1_2_reg[-5]\ $ (\DERIV_CALC|dx1_1_reg[-5]\) ) + ( \DERIV_CALC|Add0~35\ ) + ( \DERIV_CALC|Add0~34\ ))
-- \DERIV_CALC|Add0~38\ = CARRY(( !\DERIV_CALC|dx1_2_reg[-5]\ $ (\DERIV_CALC|dx1_1_reg[-5]\) ) + ( \DERIV_CALC|Add0~35\ ) + ( \DERIV_CALC|Add0~34\ ))
-- \DERIV_CALC|Add0~39\ = SHARE((!\DERIV_CALC|dx1_2_reg[-5]\ & \DERIV_CALC|dx1_1_reg[-5]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg[-5]\,
	datad => \DERIV_CALC|ALT_INV_dx1_1_reg[-5]\,
	cin => \DERIV_CALC|Add0~34\,
	sharein => \DERIV_CALC|Add0~35\,
	sumout => \DERIV_CALC|Add0~37_sumout\,
	cout => \DERIV_CALC|Add0~38\,
	shareout => \DERIV_CALC|Add0~39\);

-- Location: LABCELL_X19_Y9_N12
\DERIV_CALC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~41_sumout\ = SUM(( !\DERIV_CALC|dx1_2_reg[-4]\ $ (\DERIV_CALC|dx1_1_reg[-4]\) ) + ( \DERIV_CALC|Add0~39\ ) + ( \DERIV_CALC|Add0~38\ ))
-- \DERIV_CALC|Add0~42\ = CARRY(( !\DERIV_CALC|dx1_2_reg[-4]\ $ (\DERIV_CALC|dx1_1_reg[-4]\) ) + ( \DERIV_CALC|Add0~39\ ) + ( \DERIV_CALC|Add0~38\ ))
-- \DERIV_CALC|Add0~43\ = SHARE((!\DERIV_CALC|dx1_2_reg[-4]\ & \DERIV_CALC|dx1_1_reg[-4]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_2_reg[-4]\,
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-4]\,
	cin => \DERIV_CALC|Add0~38\,
	sharein => \DERIV_CALC|Add0~39\,
	sumout => \DERIV_CALC|Add0~41_sumout\,
	cout => \DERIV_CALC|Add0~42\,
	shareout => \DERIV_CALC|Add0~43\);

-- Location: LABCELL_X19_Y9_N15
\DERIV_CALC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~45_sumout\ = SUM(( !\DERIV_CALC|dx1_2_reg[-3]\ $ (\DERIV_CALC|dx1_1_reg[-3]\) ) + ( \DERIV_CALC|Add0~43\ ) + ( \DERIV_CALC|Add0~42\ ))
-- \DERIV_CALC|Add0~46\ = CARRY(( !\DERIV_CALC|dx1_2_reg[-3]\ $ (\DERIV_CALC|dx1_1_reg[-3]\) ) + ( \DERIV_CALC|Add0~43\ ) + ( \DERIV_CALC|Add0~42\ ))
-- \DERIV_CALC|Add0~47\ = SHARE((!\DERIV_CALC|dx1_2_reg[-3]\ & \DERIV_CALC|dx1_1_reg[-3]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg[-3]\,
	datad => \DERIV_CALC|ALT_INV_dx1_1_reg[-3]\,
	cin => \DERIV_CALC|Add0~42\,
	sharein => \DERIV_CALC|Add0~43\,
	sumout => \DERIV_CALC|Add0~45_sumout\,
	cout => \DERIV_CALC|Add0~46\,
	shareout => \DERIV_CALC|Add0~47\);

-- Location: LABCELL_X19_Y9_N18
\DERIV_CALC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~49_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg[-2]\ $ (\DERIV_CALC|dx1_2_reg[-2]\) ) + ( \DERIV_CALC|Add0~47\ ) + ( \DERIV_CALC|Add0~46\ ))
-- \DERIV_CALC|Add0~50\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-2]\ $ (\DERIV_CALC|dx1_2_reg[-2]\) ) + ( \DERIV_CALC|Add0~47\ ) + ( \DERIV_CALC|Add0~46\ ))
-- \DERIV_CALC|Add0~51\ = SHARE((\DERIV_CALC|dx1_1_reg[-2]\ & !\DERIV_CALC|dx1_2_reg[-2]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-2]\,
	datad => \DERIV_CALC|ALT_INV_dx1_2_reg[-2]\,
	cin => \DERIV_CALC|Add0~46\,
	sharein => \DERIV_CALC|Add0~47\,
	sumout => \DERIV_CALC|Add0~49_sumout\,
	cout => \DERIV_CALC|Add0~50\,
	shareout => \DERIV_CALC|Add0~51\);

-- Location: LABCELL_X19_Y9_N21
\DERIV_CALC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~53_sumout\ = SUM(( !\DERIV_CALC|dx1_2_reg[-1]\ $ (\DERIV_CALC|dx1_1_reg[-1]\) ) + ( \DERIV_CALC|Add0~51\ ) + ( \DERIV_CALC|Add0~50\ ))
-- \DERIV_CALC|Add0~54\ = CARRY(( !\DERIV_CALC|dx1_2_reg[-1]\ $ (\DERIV_CALC|dx1_1_reg[-1]\) ) + ( \DERIV_CALC|Add0~51\ ) + ( \DERIV_CALC|Add0~50\ ))
-- \DERIV_CALC|Add0~55\ = SHARE((!\DERIV_CALC|dx1_2_reg[-1]\ & \DERIV_CALC|dx1_1_reg[-1]\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx1_2_reg[-1]\,
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-1]\,
	cin => \DERIV_CALC|Add0~50\,
	sharein => \DERIV_CALC|Add0~51\,
	sumout => \DERIV_CALC|Add0~53_sumout\,
	cout => \DERIV_CALC|Add0~54\,
	shareout => \DERIV_CALC|Add0~55\);

-- Location: LABCELL_X19_Y9_N24
\DERIV_CALC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~57_sumout\ = SUM(( !\DERIV_CALC|dx1_2_reg\(0) $ (\DERIV_CALC|dx1_1_reg\(0)) ) + ( \DERIV_CALC|Add0~55\ ) + ( \DERIV_CALC|Add0~54\ ))
-- \DERIV_CALC|Add0~58\ = CARRY(( !\DERIV_CALC|dx1_2_reg\(0) $ (\DERIV_CALC|dx1_1_reg\(0)) ) + ( \DERIV_CALC|Add0~55\ ) + ( \DERIV_CALC|Add0~54\ ))
-- \DERIV_CALC|Add0~59\ = SHARE((!\DERIV_CALC|dx1_2_reg\(0) & \DERIV_CALC|dx1_1_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg\(0),
	datad => \DERIV_CALC|ALT_INV_dx1_1_reg\(0),
	cin => \DERIV_CALC|Add0~54\,
	sharein => \DERIV_CALC|Add0~55\,
	sumout => \DERIV_CALC|Add0~57_sumout\,
	cout => \DERIV_CALC|Add0~58\,
	shareout => \DERIV_CALC|Add0~59\);

-- Location: LABCELL_X19_Y9_N27
\DERIV_CALC|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~61_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg\(1) $ (\DERIV_CALC|dx1_2_reg\(1)) ) + ( \DERIV_CALC|Add0~59\ ) + ( \DERIV_CALC|Add0~58\ ))
-- \DERIV_CALC|Add0~62\ = CARRY(( !\DERIV_CALC|dx1_1_reg\(1) $ (\DERIV_CALC|dx1_2_reg\(1)) ) + ( \DERIV_CALC|Add0~59\ ) + ( \DERIV_CALC|Add0~58\ ))
-- \DERIV_CALC|Add0~63\ = SHARE((\DERIV_CALC|dx1_1_reg\(1) & !\DERIV_CALC|dx1_2_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx1_1_reg\(1),
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg\(1),
	cin => \DERIV_CALC|Add0~58\,
	sharein => \DERIV_CALC|Add0~59\,
	sumout => \DERIV_CALC|Add0~61_sumout\,
	cout => \DERIV_CALC|Add0~62\,
	shareout => \DERIV_CALC|Add0~63\);

-- Location: LABCELL_X19_Y9_N30
\DERIV_CALC|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~65_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg\(2) $ (\DERIV_CALC|dx1_2_reg\(2)) ) + ( \DERIV_CALC|Add0~63\ ) + ( \DERIV_CALC|Add0~62\ ))
-- \DERIV_CALC|Add0~66\ = CARRY(( !\DERIV_CALC|dx1_1_reg\(2) $ (\DERIV_CALC|dx1_2_reg\(2)) ) + ( \DERIV_CALC|Add0~63\ ) + ( \DERIV_CALC|Add0~62\ ))
-- \DERIV_CALC|Add0~67\ = SHARE((\DERIV_CALC|dx1_1_reg\(2) & !\DERIV_CALC|dx1_2_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg\(2),
	datad => \DERIV_CALC|ALT_INV_dx1_2_reg\(2),
	cin => \DERIV_CALC|Add0~62\,
	sharein => \DERIV_CALC|Add0~63\,
	sumout => \DERIV_CALC|Add0~65_sumout\,
	cout => \DERIV_CALC|Add0~66\,
	shareout => \DERIV_CALC|Add0~67\);

-- Location: LABCELL_X19_Y9_N33
\DERIV_CALC|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~69_sumout\ = SUM(( !\DERIV_CALC|dx1_2_reg\(3) $ (\DERIV_CALC|dx1_1_reg\(3)) ) + ( \DERIV_CALC|Add0~67\ ) + ( \DERIV_CALC|Add0~66\ ))
-- \DERIV_CALC|Add0~70\ = CARRY(( !\DERIV_CALC|dx1_2_reg\(3) $ (\DERIV_CALC|dx1_1_reg\(3)) ) + ( \DERIV_CALC|Add0~67\ ) + ( \DERIV_CALC|Add0~66\ ))
-- \DERIV_CALC|Add0~71\ = SHARE((!\DERIV_CALC|dx1_2_reg\(3) & \DERIV_CALC|dx1_1_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_2_reg\(3),
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg\(3),
	cin => \DERIV_CALC|Add0~66\,
	sharein => \DERIV_CALC|Add0~67\,
	sumout => \DERIV_CALC|Add0~69_sumout\,
	cout => \DERIV_CALC|Add0~70\,
	shareout => \DERIV_CALC|Add0~71\);

-- Location: LABCELL_X19_Y9_N36
\DERIV_CALC|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~73_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg\(4) $ (\DERIV_CALC|dx1_2_reg\(4)) ) + ( \DERIV_CALC|Add0~71\ ) + ( \DERIV_CALC|Add0~70\ ))
-- \DERIV_CALC|Add0~74\ = CARRY(( !\DERIV_CALC|dx1_1_reg\(4) $ (\DERIV_CALC|dx1_2_reg\(4)) ) + ( \DERIV_CALC|Add0~71\ ) + ( \DERIV_CALC|Add0~70\ ))
-- \DERIV_CALC|Add0~75\ = SHARE((\DERIV_CALC|dx1_1_reg\(4) & !\DERIV_CALC|dx1_2_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_1_reg\(4),
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg\(4),
	cin => \DERIV_CALC|Add0~70\,
	sharein => \DERIV_CALC|Add0~71\,
	sumout => \DERIV_CALC|Add0~73_sumout\,
	cout => \DERIV_CALC|Add0~74\,
	shareout => \DERIV_CALC|Add0~75\);

-- Location: LABCELL_X19_Y9_N39
\DERIV_CALC|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~77_sumout\ = SUM(( !\DERIV_CALC|dx1_2_reg\(5) $ (\DERIV_CALC|dx1_1_reg\(5)) ) + ( \DERIV_CALC|Add0~75\ ) + ( \DERIV_CALC|Add0~74\ ))
-- \DERIV_CALC|Add0~78\ = CARRY(( !\DERIV_CALC|dx1_2_reg\(5) $ (\DERIV_CALC|dx1_1_reg\(5)) ) + ( \DERIV_CALC|Add0~75\ ) + ( \DERIV_CALC|Add0~74\ ))
-- \DERIV_CALC|Add0~79\ = SHARE((!\DERIV_CALC|dx1_2_reg\(5) & \DERIV_CALC|dx1_1_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg\(5),
	datad => \DERIV_CALC|ALT_INV_dx1_1_reg\(5),
	cin => \DERIV_CALC|Add0~74\,
	sharein => \DERIV_CALC|Add0~75\,
	sumout => \DERIV_CALC|Add0~77_sumout\,
	cout => \DERIV_CALC|Add0~78\,
	shareout => \DERIV_CALC|Add0~79\);

-- Location: FF_X19_Y9_N41
\DERIV_CALC|dx2_1_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~77_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg\(5));

-- Location: FF_X19_Y9_N37
\DERIV_CALC|dx2_1_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~73_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg\(4));

-- Location: FF_X19_Y9_N34
\DERIV_CALC|dx2_1_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~69_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg\(3));

-- Location: FF_X19_Y5_N44
\DERIV_CALC|dx2_2_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg\(2),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg\(2));

-- Location: FF_X19_Y9_N32
\DERIV_CALC|dx2_1_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~65_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg\(2));

-- Location: FF_X19_Y9_N28
\DERIV_CALC|dx2_1_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~61_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg\(1));

-- Location: FF_X19_Y5_N40
\DERIV_CALC|dx2_2_reg[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_2_reg[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[1]~DUPLICATE_q\);

-- Location: FF_X19_Y5_N49
\DERIV_CALC|dx2_2_reg[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg\(0),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[0]~DUPLICATE_q\);

-- Location: FF_X19_Y9_N26
\DERIV_CALC|dx2_1_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~57_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg\(0));

-- Location: FF_X19_Y9_N22
\DERIV_CALC|dx2_1_reg[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~53_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-1]~q\);

-- Location: FF_X19_Y9_N20
\DERIV_CALC|dx2_1_reg[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~49_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-2]~q\);

-- Location: FF_X18_Y3_N46
\DERIV_CALC|dx2_2_reg[-3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg[-3]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-3]~DUPLICATE_q\);

-- Location: FF_X19_Y9_N17
\DERIV_CALC|dx2_1_reg[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~45_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-3]~q\);

-- Location: FF_X19_Y9_N14
\DERIV_CALC|dx2_1_reg[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~41_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-4]~q\);

-- Location: FF_X19_Y9_N11
\DERIV_CALC|dx2_1_reg[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~37_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-5]~q\);

-- Location: FF_X19_Y9_N7
\DERIV_CALC|dx2_1_reg[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~33_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-6]~q\);

-- Location: LABCELL_X19_Y5_N21
\DERIV_CALC|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~69_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg\(3) $ (\DERIV_CALC|dx2_1_reg\(3)) ) + ( \DERIV_CALC|Add1~67\ ) + ( \DERIV_CALC|Add1~66\ ))
-- \DERIV_CALC|Add1~70\ = CARRY(( !\DERIV_CALC|dx2_2_reg\(3) $ (\DERIV_CALC|dx2_1_reg\(3)) ) + ( \DERIV_CALC|Add1~67\ ) + ( \DERIV_CALC|Add1~66\ ))
-- \DERIV_CALC|Add1~71\ = SHARE((!\DERIV_CALC|dx2_2_reg\(3) & \DERIV_CALC|dx2_1_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx2_2_reg\(3),
	datad => \DERIV_CALC|ALT_INV_dx2_1_reg\(3),
	cin => \DERIV_CALC|Add1~66\,
	sharein => \DERIV_CALC|Add1~67\,
	sumout => \DERIV_CALC|Add1~69_sumout\,
	cout => \DERIV_CALC|Add1~70\,
	shareout => \DERIV_CALC|Add1~71\);

-- Location: FF_X19_Y5_N22
\DERIV_CALC|dx3_1_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~69_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg\(3));

-- Location: FF_X24_Y4_N29
\DERIV_CALC|dx4_1_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx3_1_reg\(3),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg\(3));

-- Location: FF_X24_Y4_N25
\mul_reg[0][-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx4_1_reg\(3),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-7]~q\);

-- Location: LABCELL_X19_Y5_N18
\DERIV_CALC|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~65_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg\(2) $ (\DERIV_CALC|dx2_1_reg\(2)) ) + ( \DERIV_CALC|Add1~63\ ) + ( \DERIV_CALC|Add1~62\ ))
-- \DERIV_CALC|Add1~66\ = CARRY(( !\DERIV_CALC|dx2_2_reg\(2) $ (\DERIV_CALC|dx2_1_reg\(2)) ) + ( \DERIV_CALC|Add1~63\ ) + ( \DERIV_CALC|Add1~62\ ))
-- \DERIV_CALC|Add1~67\ = SHARE((!\DERIV_CALC|dx2_2_reg\(2) & \DERIV_CALC|dx2_1_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx2_2_reg\(2),
	datac => \DERIV_CALC|ALT_INV_dx2_1_reg\(2),
	cin => \DERIV_CALC|Add1~62\,
	sharein => \DERIV_CALC|Add1~63\,
	sumout => \DERIV_CALC|Add1~65_sumout\,
	cout => \DERIV_CALC|Add1~66\,
	shareout => \DERIV_CALC|Add1~67\);

-- Location: FF_X19_Y5_N20
\DERIV_CALC|dx3_1_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~65_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg\(2));

-- Location: LABCELL_X24_Y3_N18
\DERIV_CALC|dx4_1_reg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx4_1_reg[2]~feeder_combout\ = ( \DERIV_CALC|dx3_1_reg\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx3_1_reg\(2),
	combout => \DERIV_CALC|dx4_1_reg[2]~feeder_combout\);

-- Location: FF_X24_Y3_N19
\DERIV_CALC|dx4_1_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx4_1_reg[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg\(2));

-- Location: FF_X25_Y4_N23
\mul_reg[0][-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx4_1_reg\(2),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-8]~q\);

-- Location: LABCELL_X19_Y5_N15
\DERIV_CALC|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~61_sumout\ = SUM(( !\DERIV_CALC|dx2_1_reg\(1) $ (\DERIV_CALC|dx2_2_reg[1]~DUPLICATE_q\) ) + ( \DERIV_CALC|Add1~59\ ) + ( \DERIV_CALC|Add1~58\ ))
-- \DERIV_CALC|Add1~62\ = CARRY(( !\DERIV_CALC|dx2_1_reg\(1) $ (\DERIV_CALC|dx2_2_reg[1]~DUPLICATE_q\) ) + ( \DERIV_CALC|Add1~59\ ) + ( \DERIV_CALC|Add1~58\ ))
-- \DERIV_CALC|Add1~63\ = SHARE((\DERIV_CALC|dx2_1_reg\(1) & !\DERIV_CALC|dx2_2_reg[1]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx2_1_reg\(1),
	datad => \DERIV_CALC|ALT_INV_dx2_2_reg[1]~DUPLICATE_q\,
	cin => \DERIV_CALC|Add1~58\,
	sharein => \DERIV_CALC|Add1~59\,
	sumout => \DERIV_CALC|Add1~61_sumout\,
	cout => \DERIV_CALC|Add1~62\,
	shareout => \DERIV_CALC|Add1~63\);

-- Location: FF_X19_Y5_N17
\DERIV_CALC|dx3_1_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~61_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg\(1));

-- Location: FF_X24_Y4_N55
\DERIV_CALC|dx4_1_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx3_1_reg\(1),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg\(1));

-- Location: FF_X24_Y4_N58
\mul_reg[0][-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx4_1_reg\(1),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-9]~q\);

-- Location: LABCELL_X19_Y5_N12
\DERIV_CALC|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~57_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg[0]~DUPLICATE_q\ $ (\DERIV_CALC|dx2_1_reg\(0)) ) + ( \DERIV_CALC|Add1~55\ ) + ( \DERIV_CALC|Add1~54\ ))
-- \DERIV_CALC|Add1~58\ = CARRY(( !\DERIV_CALC|dx2_2_reg[0]~DUPLICATE_q\ $ (\DERIV_CALC|dx2_1_reg\(0)) ) + ( \DERIV_CALC|Add1~55\ ) + ( \DERIV_CALC|Add1~54\ ))
-- \DERIV_CALC|Add1~59\ = SHARE((!\DERIV_CALC|dx2_2_reg[0]~DUPLICATE_q\ & \DERIV_CALC|dx2_1_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx2_2_reg[0]~DUPLICATE_q\,
	datac => \DERIV_CALC|ALT_INV_dx2_1_reg\(0),
	cin => \DERIV_CALC|Add1~54\,
	sharein => \DERIV_CALC|Add1~55\,
	sumout => \DERIV_CALC|Add1~57_sumout\,
	cout => \DERIV_CALC|Add1~58\,
	shareout => \DERIV_CALC|Add1~59\);

-- Location: FF_X19_Y5_N14
\DERIV_CALC|dx3_1_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~57_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg\(0));

-- Location: MLABCELL_X25_Y4_N27
\DERIV_CALC|dx4_1_reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx4_1_reg[0]~feeder_combout\ = ( \DERIV_CALC|dx3_1_reg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx3_1_reg\(0),
	combout => \DERIV_CALC|dx4_1_reg[0]~feeder_combout\);

-- Location: FF_X25_Y4_N28
\DERIV_CALC|dx4_1_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx4_1_reg[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg\(0));

-- Location: MLABCELL_X25_Y4_N3
\mul_reg[0][-10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[0][-10]~feeder_combout\ = ( \DERIV_CALC|dx4_1_reg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx4_1_reg\(0),
	combout => \mul_reg[0][-10]~feeder_combout\);

-- Location: FF_X25_Y4_N5
\mul_reg[0][-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[0][-10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-10]~q\);

-- Location: LABCELL_X19_Y5_N9
\DERIV_CALC|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~53_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg[-1]~q\ $ (\DERIV_CALC|dx2_1_reg[-1]~q\) ) + ( \DERIV_CALC|Add1~51\ ) + ( \DERIV_CALC|Add1~50\ ))
-- \DERIV_CALC|Add1~54\ = CARRY(( !\DERIV_CALC|dx2_2_reg[-1]~q\ $ (\DERIV_CALC|dx2_1_reg[-1]~q\) ) + ( \DERIV_CALC|Add1~51\ ) + ( \DERIV_CALC|Add1~50\ ))
-- \DERIV_CALC|Add1~55\ = SHARE((!\DERIV_CALC|dx2_2_reg[-1]~q\ & \DERIV_CALC|dx2_1_reg[-1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx2_2_reg[-1]~q\,
	datad => \DERIV_CALC|ALT_INV_dx2_1_reg[-1]~q\,
	cin => \DERIV_CALC|Add1~50\,
	sharein => \DERIV_CALC|Add1~51\,
	sumout => \DERIV_CALC|Add1~53_sumout\,
	cout => \DERIV_CALC|Add1~54\,
	shareout => \DERIV_CALC|Add1~55\);

-- Location: FF_X19_Y5_N10
\DERIV_CALC|dx3_1_reg[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~53_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg[-1]~q\);

-- Location: FF_X24_Y5_N49
\DERIV_CALC|dx4_1_reg[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx3_1_reg[-1]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg[-1]~q\);

-- Location: FF_X25_Y4_N8
\mul_reg[0][-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx4_1_reg[-1]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-11]~q\);

-- Location: LABCELL_X19_Y5_N6
\DERIV_CALC|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~49_sumout\ = SUM(( !\DERIV_CALC|dx2_1_reg[-2]~q\ $ (\DERIV_CALC|dx2_2_reg[-2]~q\) ) + ( \DERIV_CALC|Add1~47\ ) + ( \DERIV_CALC|Add1~46\ ))
-- \DERIV_CALC|Add1~50\ = CARRY(( !\DERIV_CALC|dx2_1_reg[-2]~q\ $ (\DERIV_CALC|dx2_2_reg[-2]~q\) ) + ( \DERIV_CALC|Add1~47\ ) + ( \DERIV_CALC|Add1~46\ ))
-- \DERIV_CALC|Add1~51\ = SHARE((\DERIV_CALC|dx2_1_reg[-2]~q\ & !\DERIV_CALC|dx2_2_reg[-2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx2_1_reg[-2]~q\,
	datac => \DERIV_CALC|ALT_INV_dx2_2_reg[-2]~q\,
	cin => \DERIV_CALC|Add1~46\,
	sharein => \DERIV_CALC|Add1~47\,
	sumout => \DERIV_CALC|Add1~49_sumout\,
	cout => \DERIV_CALC|Add1~50\,
	shareout => \DERIV_CALC|Add1~51\);

-- Location: FF_X19_Y5_N8
\DERIV_CALC|dx3_1_reg[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~49_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg[-2]~q\);

-- Location: FF_X24_Y4_N16
\DERIV_CALC|dx4_1_reg[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx3_1_reg[-2]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg[-2]~q\);

-- Location: LABCELL_X24_Y4_N12
\mul_reg[0][-12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[0][-12]~feeder_combout\ = ( \DERIV_CALC|dx4_1_reg[-2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx4_1_reg[-2]~q\,
	combout => \mul_reg[0][-12]~feeder_combout\);

-- Location: FF_X24_Y4_N13
\mul_reg[0][-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[0][-12]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-12]~q\);

-- Location: LABCELL_X19_Y5_N3
\DERIV_CALC|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~45_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg[-3]~DUPLICATE_q\ $ (\DERIV_CALC|dx2_1_reg[-3]~q\) ) + ( \DERIV_CALC|Add1~43\ ) + ( \DERIV_CALC|Add1~42\ ))
-- \DERIV_CALC|Add1~46\ = CARRY(( !\DERIV_CALC|dx2_2_reg[-3]~DUPLICATE_q\ $ (\DERIV_CALC|dx2_1_reg[-3]~q\) ) + ( \DERIV_CALC|Add1~43\ ) + ( \DERIV_CALC|Add1~42\ ))
-- \DERIV_CALC|Add1~47\ = SHARE((!\DERIV_CALC|dx2_2_reg[-3]~DUPLICATE_q\ & \DERIV_CALC|dx2_1_reg[-3]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx2_2_reg[-3]~DUPLICATE_q\,
	datad => \DERIV_CALC|ALT_INV_dx2_1_reg[-3]~q\,
	cin => \DERIV_CALC|Add1~42\,
	sharein => \DERIV_CALC|Add1~43\,
	sumout => \DERIV_CALC|Add1~45_sumout\,
	cout => \DERIV_CALC|Add1~46\,
	shareout => \DERIV_CALC|Add1~47\);

-- Location: FF_X19_Y5_N4
\DERIV_CALC|dx3_1_reg[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~45_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg[-3]~q\);

-- Location: LABCELL_X19_Y5_N36
\DERIV_CALC|dx4_1_reg[-3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx4_1_reg[-3]~feeder_combout\ = ( \DERIV_CALC|dx3_1_reg[-3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx3_1_reg[-3]~q\,
	combout => \DERIV_CALC|dx4_1_reg[-3]~feeder_combout\);

-- Location: FF_X19_Y5_N38
\DERIV_CALC|dx4_1_reg[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx4_1_reg[-3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg[-3]~q\);

-- Location: LABCELL_X24_Y4_N33
\mul_reg[0][-13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[0][-13]~feeder_combout\ = ( \DERIV_CALC|dx4_1_reg[-3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx4_1_reg[-3]~q\,
	combout => \mul_reg[0][-13]~feeder_combout\);

-- Location: FF_X24_Y4_N34
\mul_reg[0][-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[0][-13]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-13]~q\);

-- Location: LABCELL_X19_Y5_N0
\DERIV_CALC|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~41_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg[-4]~q\ $ (\DERIV_CALC|dx2_1_reg[-4]~q\) ) + ( \DERIV_CALC|Add1~39\ ) + ( \DERIV_CALC|Add1~38\ ))
-- \DERIV_CALC|Add1~42\ = CARRY(( !\DERIV_CALC|dx2_2_reg[-4]~q\ $ (\DERIV_CALC|dx2_1_reg[-4]~q\) ) + ( \DERIV_CALC|Add1~39\ ) + ( \DERIV_CALC|Add1~38\ ))
-- \DERIV_CALC|Add1~43\ = SHARE((!\DERIV_CALC|dx2_2_reg[-4]~q\ & \DERIV_CALC|dx2_1_reg[-4]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx2_2_reg[-4]~q\,
	datac => \DERIV_CALC|ALT_INV_dx2_1_reg[-4]~q\,
	cin => \DERIV_CALC|Add1~38\,
	sharein => \DERIV_CALC|Add1~39\,
	sumout => \DERIV_CALC|Add1~41_sumout\,
	cout => \DERIV_CALC|Add1~42\,
	shareout => \DERIV_CALC|Add1~43\);

-- Location: FF_X19_Y5_N1
\DERIV_CALC|dx3_1_reg[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~41_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg[-4]~q\);

-- Location: MLABCELL_X28_Y4_N36
\DERIV_CALC|dx4_1_reg[-4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx4_1_reg[-4]~feeder_combout\ = ( \DERIV_CALC|dx3_1_reg[-4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx3_1_reg[-4]~q\,
	combout => \DERIV_CALC|dx4_1_reg[-4]~feeder_combout\);

-- Location: FF_X28_Y4_N38
\DERIV_CALC|dx4_1_reg[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx4_1_reg[-4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg[-4]~q\);

-- Location: FF_X28_Y4_N58
\mul_reg[0][-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx4_1_reg[-4]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-14]~q\);

-- Location: MLABCELL_X25_Y4_N30
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \mul_reg[0][-14]~q\ ) + ( \var_main_reg[0][0]~q\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \mul_reg[0][-14]~q\ ) + ( \var_main_reg[0][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[0][0]~q\,
	datad => \ALT_INV_mul_reg[0][-14]~q\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X25_Y4_N31
\var_main_reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][0]~q\);

-- Location: MLABCELL_X25_Y4_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \var_main_reg[0][1]~DUPLICATE_q\ ) + ( \mul_reg[0][-13]~q\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \var_main_reg[0][1]~DUPLICATE_q\ ) + ( \mul_reg[0][-13]~q\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[0][1]~DUPLICATE_q\,
	datab => \ALT_INV_mul_reg[0][-13]~q\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X25_Y4_N35
\var_main_reg[0][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][1]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y4_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \var_main_reg[0][2]~DUPLICATE_q\ ) + ( \mul_reg[0][-12]~q\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \var_main_reg[0][2]~DUPLICATE_q\ ) + ( \mul_reg[0][-12]~q\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul_reg[0][-12]~q\,
	datac => \ALT_INV_var_main_reg[0][2]~DUPLICATE_q\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X25_Y4_N38
\var_main_reg[0][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][2]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y4_N39
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \var_main_reg[0][3]~q\ ) + ( \mul_reg[0][-11]~q\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \var_main_reg[0][3]~q\ ) + ( \mul_reg[0][-11]~q\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mul_reg[0][-11]~q\,
	datad => \ALT_INV_var_main_reg[0][3]~q\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X25_Y4_N40
\var_main_reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][3]~q\);

-- Location: MLABCELL_X25_Y4_N42
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \mul_reg[0][-10]~q\ ) + ( \var_main_reg[0][4]~DUPLICATE_q\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \mul_reg[0][-10]~q\ ) + ( \var_main_reg[0][4]~DUPLICATE_q\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[0][4]~DUPLICATE_q\,
	datad => \ALT_INV_mul_reg[0][-10]~q\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X25_Y4_N44
\var_main_reg[0][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][4]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y4_N45
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \var_main_reg[0][5]~DUPLICATE_q\ ) + ( \mul_reg[0][-9]~q\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \var_main_reg[0][5]~DUPLICATE_q\ ) + ( \mul_reg[0][-9]~q\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul_reg[0][-9]~q\,
	datac => \ALT_INV_var_main_reg[0][5]~DUPLICATE_q\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X25_Y4_N47
\var_main_reg[0][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][5]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y4_N48
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \mul_reg[0][-8]~q\ ) + ( \var_main_reg[0][6]~q\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \mul_reg[0][-8]~q\ ) + ( \var_main_reg[0][6]~q\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[0][6]~q\,
	datad => \ALT_INV_mul_reg[0][-8]~q\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X25_Y4_N50
\var_main_reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][6]~q\);

-- Location: MLABCELL_X25_Y4_N51
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \var_main_reg[0][7]~q\ ) + ( \mul_reg[0][-7]~q\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \var_main_reg[0][7]~q\ ) + ( \mul_reg[0][-7]~q\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul_reg[0][-7]~q\,
	datac => \ALT_INV_var_main_reg[0][7]~q\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X25_Y4_N52
\var_main_reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][7]~q\);

-- Location: MLABCELL_X25_Y4_N54
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \var_main_reg[0][8]~q\ ) + ( \mul_reg[0][-6]~q\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \var_main_reg[0][8]~q\ ) + ( \mul_reg[0][-6]~q\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mul_reg[0][-6]~q\,
	datad => \ALT_INV_var_main_reg[0][8]~q\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X25_Y4_N55
\var_main_reg[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][8]~q\);

-- Location: FF_X25_Y4_N10
\DERIV_CALC|dx1_3_reg[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[0][8]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg[-6]~q\);

-- Location: FF_X18_Y4_N22
\DERIV_CALC|dx2_2_reg[-6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg[-6]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-6]~DUPLICATE_q\);

-- Location: FF_X19_Y9_N5
\DERIV_CALC|dx2_1_reg[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~29_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-7]~q\);

-- Location: FF_X25_Y4_N26
\DERIV_CALC|dx1_3_reg[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[0][7]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg[-7]~q\);

-- Location: FF_X19_Y6_N5
\DERIV_CALC|dx2_2_reg[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg[-7]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-7]~q\);

-- Location: FF_X25_Y4_N19
\DERIV_CALC|dx1_3_reg[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[0][6]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg[-8]~q\);

-- Location: FF_X19_Y4_N38
\DERIV_CALC|dx2_2_reg[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg[-8]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-8]~q\);

-- Location: FF_X19_Y9_N1
\DERIV_CALC|dx2_1_reg[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~25_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-8]~q\);

-- Location: FF_X19_Y10_N59
\DERIV_CALC|dx2_1_reg[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~21_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-9]~q\);

-- Location: FF_X25_Y4_N46
\var_main_reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][5]~q\);

-- Location: LABCELL_X27_Y4_N33
\DERIV_CALC|dx1_3_reg[-9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_3_reg[-9]~feeder_combout\ = ( \var_main_reg[0][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[0][5]~q\,
	combout => \DERIV_CALC|dx1_3_reg[-9]~feeder_combout\);

-- Location: FF_X27_Y4_N34
\DERIV_CALC|dx1_3_reg[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_3_reg[-9]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg[-9]~q\);

-- Location: LABCELL_X18_Y4_N3
\DERIV_CALC|dx2_2_reg[-9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_2_reg[-9]~feeder_combout\ = ( \DERIV_CALC|dx1_3_reg[-9]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx1_3_reg[-9]~q\,
	combout => \DERIV_CALC|dx2_2_reg[-9]~feeder_combout\);

-- Location: FF_X18_Y4_N4
\DERIV_CALC|dx2_2_reg[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_2_reg[-9]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-9]~q\);

-- Location: FF_X19_Y10_N55
\DERIV_CALC|dx2_1_reg[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~17_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-10]~q\);

-- Location: MLABCELL_X25_Y4_N15
\DERIV_CALC|dx1_3_reg[-10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_3_reg[-10]~feeder_combout\ = ( \var_main_reg[0][4]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[0][4]~DUPLICATE_q\,
	combout => \DERIV_CALC|dx1_3_reg[-10]~feeder_combout\);

-- Location: FF_X25_Y4_N16
\DERIV_CALC|dx1_3_reg[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_3_reg[-10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg[-10]~q\);

-- Location: LABCELL_X19_Y6_N0
\DERIV_CALC|dx2_2_reg[-10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_2_reg[-10]~feeder_combout\ = ( \DERIV_CALC|dx1_3_reg[-10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx1_3_reg[-10]~q\,
	combout => \DERIV_CALC|dx2_2_reg[-10]~feeder_combout\);

-- Location: FF_X19_Y6_N2
\DERIV_CALC|dx2_2_reg[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_2_reg[-10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-10]~q\);

-- Location: FF_X22_Y4_N1
\DERIV_CALC|dx1_3_reg[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[0][3]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg[-11]~q\);

-- Location: LABCELL_X18_Y4_N27
\DERIV_CALC|dx2_2_reg[-11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_2_reg[-11]~feeder_combout\ = ( \DERIV_CALC|dx1_3_reg[-11]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx1_3_reg[-11]~q\,
	combout => \DERIV_CALC|dx2_2_reg[-11]~feeder_combout\);

-- Location: FF_X18_Y4_N28
\DERIV_CALC|dx2_2_reg[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_2_reg[-11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-11]~q\);

-- Location: FF_X19_Y10_N53
\DERIV_CALC|dx2_1_reg[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~13_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-11]~q\);

-- Location: FF_X19_Y10_N50
\DERIV_CALC|dx2_1_reg[-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~9_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-12]~q\);

-- Location: FF_X25_Y4_N2
\DERIV_CALC|dx1_3_reg[-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[0][2]~DUPLICATE_q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg[-12]~q\);

-- Location: FF_X19_Y6_N23
\DERIV_CALC|dx2_2_reg[-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg[-12]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-12]~q\);

-- Location: FF_X19_Y10_N47
\DERIV_CALC|dx2_1_reg[-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~5_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-13]~q\);

-- Location: MLABCELL_X25_Y4_N12
\DERIV_CALC|dx1_3_reg[-13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_3_reg[-13]~feeder_combout\ = \var_main_reg[0][1]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[0][1]~DUPLICATE_q\,
	combout => \DERIV_CALC|dx1_3_reg[-13]~feeder_combout\);

-- Location: FF_X25_Y4_N13
\DERIV_CALC|dx1_3_reg[-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_3_reg[-13]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg[-13]~q\);

-- Location: FF_X18_Y4_N2
\DERIV_CALC|dx2_2_reg[-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg[-13]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-13]~q\);

-- Location: FF_X24_Y4_N47
\DERIV_CALC|dx1_3_reg[-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[0][0]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg[-14]~q\);

-- Location: LABCELL_X18_Y4_N18
\DERIV_CALC|dx2_2_reg[-14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_2_reg[-14]~feeder_combout\ = ( \DERIV_CALC|dx1_3_reg[-14]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx1_3_reg[-14]~q\,
	combout => \DERIV_CALC|dx2_2_reg[-14]~feeder_combout\);

-- Location: FF_X18_Y4_N19
\DERIV_CALC|dx2_2_reg[-14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_2_reg[-14]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-14]~DUPLICATE_q\);

-- Location: FF_X19_Y10_N44
\DERIV_CALC|dx2_1_reg[-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~1_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-14]~q\);

-- Location: LABCELL_X19_Y6_N30
\DERIV_CALC|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~1_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg[-14]~DUPLICATE_q\ $ (!\DERIV_CALC|dx2_1_reg[-14]~q\) ) + ( !VCC ) + ( !VCC ))
-- \DERIV_CALC|Add1~2\ = CARRY(( !\DERIV_CALC|dx2_2_reg[-14]~DUPLICATE_q\ $ (!\DERIV_CALC|dx2_1_reg[-14]~q\) ) + ( !VCC ) + ( !VCC ))
-- \DERIV_CALC|Add1~3\ = SHARE((!\DERIV_CALC|dx2_2_reg[-14]~DUPLICATE_q\) # (\DERIV_CALC|dx2_1_reg[-14]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001111111100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx2_2_reg[-14]~DUPLICATE_q\,
	datad => \DERIV_CALC|ALT_INV_dx2_1_reg[-14]~q\,
	cin => GND,
	sharein => GND,
	sumout => \DERIV_CALC|Add1~1_sumout\,
	cout => \DERIV_CALC|Add1~2\,
	shareout => \DERIV_CALC|Add1~3\);

-- Location: LABCELL_X19_Y6_N33
\DERIV_CALC|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~5_sumout\ = SUM(( !\DERIV_CALC|dx2_1_reg[-13]~q\ $ (\DERIV_CALC|dx2_2_reg[-13]~q\) ) + ( \DERIV_CALC|Add1~3\ ) + ( \DERIV_CALC|Add1~2\ ))
-- \DERIV_CALC|Add1~6\ = CARRY(( !\DERIV_CALC|dx2_1_reg[-13]~q\ $ (\DERIV_CALC|dx2_2_reg[-13]~q\) ) + ( \DERIV_CALC|Add1~3\ ) + ( \DERIV_CALC|Add1~2\ ))
-- \DERIV_CALC|Add1~7\ = SHARE((\DERIV_CALC|dx2_1_reg[-13]~q\ & !\DERIV_CALC|dx2_2_reg[-13]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx2_1_reg[-13]~q\,
	datad => \DERIV_CALC|ALT_INV_dx2_2_reg[-13]~q\,
	cin => \DERIV_CALC|Add1~2\,
	sharein => \DERIV_CALC|Add1~3\,
	sumout => \DERIV_CALC|Add1~5_sumout\,
	cout => \DERIV_CALC|Add1~6\,
	shareout => \DERIV_CALC|Add1~7\);

-- Location: LABCELL_X19_Y6_N36
\DERIV_CALC|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~9_sumout\ = SUM(( !\DERIV_CALC|dx2_1_reg[-12]~q\ $ (\DERIV_CALC|dx2_2_reg[-12]~q\) ) + ( \DERIV_CALC|Add1~7\ ) + ( \DERIV_CALC|Add1~6\ ))
-- \DERIV_CALC|Add1~10\ = CARRY(( !\DERIV_CALC|dx2_1_reg[-12]~q\ $ (\DERIV_CALC|dx2_2_reg[-12]~q\) ) + ( \DERIV_CALC|Add1~7\ ) + ( \DERIV_CALC|Add1~6\ ))
-- \DERIV_CALC|Add1~11\ = SHARE((\DERIV_CALC|dx2_1_reg[-12]~q\ & !\DERIV_CALC|dx2_2_reg[-12]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx2_1_reg[-12]~q\,
	datad => \DERIV_CALC|ALT_INV_dx2_2_reg[-12]~q\,
	cin => \DERIV_CALC|Add1~6\,
	sharein => \DERIV_CALC|Add1~7\,
	sumout => \DERIV_CALC|Add1~9_sumout\,
	cout => \DERIV_CALC|Add1~10\,
	shareout => \DERIV_CALC|Add1~11\);

-- Location: LABCELL_X19_Y6_N39
\DERIV_CALC|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~13_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg[-11]~q\ $ (\DERIV_CALC|dx2_1_reg[-11]~q\) ) + ( \DERIV_CALC|Add1~11\ ) + ( \DERIV_CALC|Add1~10\ ))
-- \DERIV_CALC|Add1~14\ = CARRY(( !\DERIV_CALC|dx2_2_reg[-11]~q\ $ (\DERIV_CALC|dx2_1_reg[-11]~q\) ) + ( \DERIV_CALC|Add1~11\ ) + ( \DERIV_CALC|Add1~10\ ))
-- \DERIV_CALC|Add1~15\ = SHARE((!\DERIV_CALC|dx2_2_reg[-11]~q\ & \DERIV_CALC|dx2_1_reg[-11]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx2_2_reg[-11]~q\,
	datac => \DERIV_CALC|ALT_INV_dx2_1_reg[-11]~q\,
	cin => \DERIV_CALC|Add1~10\,
	sharein => \DERIV_CALC|Add1~11\,
	sumout => \DERIV_CALC|Add1~13_sumout\,
	cout => \DERIV_CALC|Add1~14\,
	shareout => \DERIV_CALC|Add1~15\);

-- Location: LABCELL_X19_Y6_N42
\DERIV_CALC|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~17_sumout\ = SUM(( !\DERIV_CALC|dx2_1_reg[-10]~q\ $ (\DERIV_CALC|dx2_2_reg[-10]~q\) ) + ( \DERIV_CALC|Add1~15\ ) + ( \DERIV_CALC|Add1~14\ ))
-- \DERIV_CALC|Add1~18\ = CARRY(( !\DERIV_CALC|dx2_1_reg[-10]~q\ $ (\DERIV_CALC|dx2_2_reg[-10]~q\) ) + ( \DERIV_CALC|Add1~15\ ) + ( \DERIV_CALC|Add1~14\ ))
-- \DERIV_CALC|Add1~19\ = SHARE((\DERIV_CALC|dx2_1_reg[-10]~q\ & !\DERIV_CALC|dx2_2_reg[-10]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx2_1_reg[-10]~q\,
	datad => \DERIV_CALC|ALT_INV_dx2_2_reg[-10]~q\,
	cin => \DERIV_CALC|Add1~14\,
	sharein => \DERIV_CALC|Add1~15\,
	sumout => \DERIV_CALC|Add1~17_sumout\,
	cout => \DERIV_CALC|Add1~18\,
	shareout => \DERIV_CALC|Add1~19\);

-- Location: LABCELL_X19_Y6_N45
\DERIV_CALC|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~21_sumout\ = SUM(( !\DERIV_CALC|dx2_1_reg[-9]~q\ $ (\DERIV_CALC|dx2_2_reg[-9]~q\) ) + ( \DERIV_CALC|Add1~19\ ) + ( \DERIV_CALC|Add1~18\ ))
-- \DERIV_CALC|Add1~22\ = CARRY(( !\DERIV_CALC|dx2_1_reg[-9]~q\ $ (\DERIV_CALC|dx2_2_reg[-9]~q\) ) + ( \DERIV_CALC|Add1~19\ ) + ( \DERIV_CALC|Add1~18\ ))
-- \DERIV_CALC|Add1~23\ = SHARE((\DERIV_CALC|dx2_1_reg[-9]~q\ & !\DERIV_CALC|dx2_2_reg[-9]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx2_1_reg[-9]~q\,
	datac => \DERIV_CALC|ALT_INV_dx2_2_reg[-9]~q\,
	cin => \DERIV_CALC|Add1~18\,
	sharein => \DERIV_CALC|Add1~19\,
	sumout => \DERIV_CALC|Add1~21_sumout\,
	cout => \DERIV_CALC|Add1~22\,
	shareout => \DERIV_CALC|Add1~23\);

-- Location: LABCELL_X19_Y6_N48
\DERIV_CALC|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~25_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg[-8]~q\ $ (\DERIV_CALC|dx2_1_reg[-8]~q\) ) + ( \DERIV_CALC|Add1~23\ ) + ( \DERIV_CALC|Add1~22\ ))
-- \DERIV_CALC|Add1~26\ = CARRY(( !\DERIV_CALC|dx2_2_reg[-8]~q\ $ (\DERIV_CALC|dx2_1_reg[-8]~q\) ) + ( \DERIV_CALC|Add1~23\ ) + ( \DERIV_CALC|Add1~22\ ))
-- \DERIV_CALC|Add1~27\ = SHARE((!\DERIV_CALC|dx2_2_reg[-8]~q\ & \DERIV_CALC|dx2_1_reg[-8]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx2_2_reg[-8]~q\,
	datad => \DERIV_CALC|ALT_INV_dx2_1_reg[-8]~q\,
	cin => \DERIV_CALC|Add1~22\,
	sharein => \DERIV_CALC|Add1~23\,
	sumout => \DERIV_CALC|Add1~25_sumout\,
	cout => \DERIV_CALC|Add1~26\,
	shareout => \DERIV_CALC|Add1~27\);

-- Location: LABCELL_X19_Y6_N51
\DERIV_CALC|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~29_sumout\ = SUM(( !\DERIV_CALC|dx2_1_reg[-7]~q\ $ (\DERIV_CALC|dx2_2_reg[-7]~q\) ) + ( \DERIV_CALC|Add1~27\ ) + ( \DERIV_CALC|Add1~26\ ))
-- \DERIV_CALC|Add1~30\ = CARRY(( !\DERIV_CALC|dx2_1_reg[-7]~q\ $ (\DERIV_CALC|dx2_2_reg[-7]~q\) ) + ( \DERIV_CALC|Add1~27\ ) + ( \DERIV_CALC|Add1~26\ ))
-- \DERIV_CALC|Add1~31\ = SHARE((\DERIV_CALC|dx2_1_reg[-7]~q\ & !\DERIV_CALC|dx2_2_reg[-7]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx2_1_reg[-7]~q\,
	datad => \DERIV_CALC|ALT_INV_dx2_2_reg[-7]~q\,
	cin => \DERIV_CALC|Add1~26\,
	sharein => \DERIV_CALC|Add1~27\,
	sumout => \DERIV_CALC|Add1~29_sumout\,
	cout => \DERIV_CALC|Add1~30\,
	shareout => \DERIV_CALC|Add1~31\);

-- Location: LABCELL_X19_Y6_N54
\DERIV_CALC|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~33_sumout\ = SUM(( !\DERIV_CALC|dx2_1_reg[-6]~q\ $ (\DERIV_CALC|dx2_2_reg[-6]~DUPLICATE_q\) ) + ( \DERIV_CALC|Add1~31\ ) + ( \DERIV_CALC|Add1~30\ ))
-- \DERIV_CALC|Add1~34\ = CARRY(( !\DERIV_CALC|dx2_1_reg[-6]~q\ $ (\DERIV_CALC|dx2_2_reg[-6]~DUPLICATE_q\) ) + ( \DERIV_CALC|Add1~31\ ) + ( \DERIV_CALC|Add1~30\ ))
-- \DERIV_CALC|Add1~35\ = SHARE((\DERIV_CALC|dx2_1_reg[-6]~q\ & !\DERIV_CALC|dx2_2_reg[-6]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx2_1_reg[-6]~q\,
	datad => \DERIV_CALC|ALT_INV_dx2_2_reg[-6]~DUPLICATE_q\,
	cin => \DERIV_CALC|Add1~30\,
	sharein => \DERIV_CALC|Add1~31\,
	sumout => \DERIV_CALC|Add1~33_sumout\,
	cout => \DERIV_CALC|Add1~34\,
	shareout => \DERIV_CALC|Add1~35\);

-- Location: LABCELL_X19_Y6_N57
\DERIV_CALC|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~37_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg[-5]~q\ $ (\DERIV_CALC|dx2_1_reg[-5]~q\) ) + ( \DERIV_CALC|Add1~35\ ) + ( \DERIV_CALC|Add1~34\ ))
-- \DERIV_CALC|Add1~38\ = CARRY(( !\DERIV_CALC|dx2_2_reg[-5]~q\ $ (\DERIV_CALC|dx2_1_reg[-5]~q\) ) + ( \DERIV_CALC|Add1~35\ ) + ( \DERIV_CALC|Add1~34\ ))
-- \DERIV_CALC|Add1~39\ = SHARE((!\DERIV_CALC|dx2_2_reg[-5]~q\ & \DERIV_CALC|dx2_1_reg[-5]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx2_2_reg[-5]~q\,
	datac => \DERIV_CALC|ALT_INV_dx2_1_reg[-5]~q\,
	cin => \DERIV_CALC|Add1~34\,
	sharein => \DERIV_CALC|Add1~35\,
	sumout => \DERIV_CALC|Add1~37_sumout\,
	cout => \DERIV_CALC|Add1~38\,
	shareout => \DERIV_CALC|Add1~39\);

-- Location: LABCELL_X19_Y5_N24
\DERIV_CALC|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~73_sumout\ = SUM(( !\DERIV_CALC|dx2_1_reg\(4) $ (\DERIV_CALC|dx2_2_reg\(4)) ) + ( \DERIV_CALC|Add1~71\ ) + ( \DERIV_CALC|Add1~70\ ))
-- \DERIV_CALC|Add1~74\ = CARRY(( !\DERIV_CALC|dx2_1_reg\(4) $ (\DERIV_CALC|dx2_2_reg\(4)) ) + ( \DERIV_CALC|Add1~71\ ) + ( \DERIV_CALC|Add1~70\ ))
-- \DERIV_CALC|Add1~75\ = SHARE((\DERIV_CALC|dx2_1_reg\(4) & !\DERIV_CALC|dx2_2_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx2_1_reg\(4),
	datad => \DERIV_CALC|ALT_INV_dx2_2_reg\(4),
	cin => \DERIV_CALC|Add1~70\,
	sharein => \DERIV_CALC|Add1~71\,
	sumout => \DERIV_CALC|Add1~73_sumout\,
	cout => \DERIV_CALC|Add1~74\,
	shareout => \DERIV_CALC|Add1~75\);

-- Location: FF_X19_Y5_N25
\DERIV_CALC|dx3_1_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~73_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg\(4));

-- Location: LABCELL_X24_Y4_N9
\DERIV_CALC|dx4_1_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx4_1_reg[4]~feeder_combout\ = ( \DERIV_CALC|dx3_1_reg\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx3_1_reg\(4),
	combout => \DERIV_CALC|dx4_1_reg[4]~feeder_combout\);

-- Location: FF_X24_Y4_N10
\DERIV_CALC|dx4_1_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx4_1_reg[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg\(4));

-- Location: FF_X24_Y4_N7
\mul_reg[0][-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx4_1_reg\(4),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-6]~q\);

-- Location: MLABCELL_X25_Y4_N57
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \var_main_reg[0][9]~q\ ) + ( \mul_reg[0][-5]~q\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \var_main_reg[0][9]~q\ ) + ( \mul_reg[0][-5]~q\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul_reg[0][-5]~q\,
	datac => \ALT_INV_var_main_reg[0][9]~q\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X25_Y4_N59
\var_main_reg[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][9]~q\);

-- Location: FF_X24_Y6_N4
\DERIV_CALC|dx1_3_reg[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[0][9]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg[-5]~q\);

-- Location: LABCELL_X19_Y6_N6
\DERIV_CALC|dx2_2_reg[-5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_2_reg[-5]~feeder_combout\ = ( \DERIV_CALC|dx1_3_reg[-5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx1_3_reg[-5]~q\,
	combout => \DERIV_CALC|dx2_2_reg[-5]~feeder_combout\);

-- Location: FF_X19_Y6_N8
\DERIV_CALC|dx2_2_reg[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_2_reg[-5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-5]~q\);

-- Location: LABCELL_X19_Y5_N27
\DERIV_CALC|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~77_sumout\ = SUM(( !\DERIV_CALC|dx2_1_reg\(5) $ (\DERIV_CALC|dx2_2_reg\(5)) ) + ( \DERIV_CALC|Add1~75\ ) + ( \DERIV_CALC|Add1~74\ ))
-- \DERIV_CALC|Add1~78\ = CARRY(( !\DERIV_CALC|dx2_1_reg\(5) $ (\DERIV_CALC|dx2_2_reg\(5)) ) + ( \DERIV_CALC|Add1~75\ ) + ( \DERIV_CALC|Add1~74\ ))
-- \DERIV_CALC|Add1~79\ = SHARE((\DERIV_CALC|dx2_1_reg\(5) & !\DERIV_CALC|dx2_2_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx2_1_reg\(5),
	datac => \DERIV_CALC|ALT_INV_dx2_2_reg\(5),
	cin => \DERIV_CALC|Add1~74\,
	sharein => \DERIV_CALC|Add1~75\,
	sumout => \DERIV_CALC|Add1~77_sumout\,
	cout => \DERIV_CALC|Add1~78\,
	shareout => \DERIV_CALC|Add1~79\);

-- Location: FF_X19_Y5_N29
\DERIV_CALC|dx3_1_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~77_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg\(5));

-- Location: LABCELL_X24_Y4_N0
\DERIV_CALC|dx4_1_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx4_1_reg[5]~feeder_combout\ = ( \DERIV_CALC|dx3_1_reg\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx3_1_reg\(5),
	combout => \DERIV_CALC|dx4_1_reg[5]~feeder_combout\);

-- Location: FF_X24_Y4_N1
\DERIV_CALC|dx4_1_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx4_1_reg[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg\(5));

-- Location: FF_X24_Y4_N40
\mul_reg[0][-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx4_1_reg\(5),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-5]~q\);

-- Location: MLABCELL_X25_Y3_N0
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \var_main_reg[0][10]~DUPLICATE_q\ ) + ( \mul_reg[0][-4]~q\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \var_main_reg[0][10]~DUPLICATE_q\ ) + ( \mul_reg[0][-4]~q\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul_reg[0][-4]~q\,
	datac => \ALT_INV_var_main_reg[0][10]~DUPLICATE_q\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X25_Y3_N1
\var_main_reg[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][10]~q\);

-- Location: MLABCELL_X25_Y5_N15
\DERIV_CALC|dx1_3_reg[-4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_3_reg[-4]~feeder_combout\ = ( \var_main_reg[0][10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[0][10]~q\,
	combout => \DERIV_CALC|dx1_3_reg[-4]~feeder_combout\);

-- Location: FF_X25_Y5_N16
\DERIV_CALC|dx1_3_reg[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_3_reg[-4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg[-4]~q\);

-- Location: FF_X19_Y5_N59
\DERIV_CALC|dx2_2_reg[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg[-4]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-4]~q\);

-- Location: FF_X19_Y3_N10
\DERIV_CALC|dy2_1_reg[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~37_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg[-5]~q\);

-- Location: FF_X19_Y3_N7
\DERIV_CALC|dy2_1_reg[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~33_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg[-6]~q\);

-- Location: FF_X18_Y4_N23
\DERIV_CALC|dx2_2_reg[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg[-6]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-6]~q\);

-- Location: FF_X19_Y3_N5
\DERIV_CALC|dy2_1_reg[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~29_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg[-7]~q\);

-- Location: FF_X19_Y3_N1
\DERIV_CALC|dy2_1_reg[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~25_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg[-8]~q\);

-- Location: FF_X19_Y4_N59
\DERIV_CALC|dy2_1_reg[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~21_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg[-9]~q\);

-- Location: FF_X18_Y4_N5
\DERIV_CALC|dx2_2_reg[-9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_2_reg[-9]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-9]~DUPLICATE_q\);

-- Location: FF_X19_Y4_N56
\DERIV_CALC|dy2_1_reg[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~17_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg[-10]~q\);

-- Location: FF_X19_Y4_N53
\DERIV_CALC|dy2_1_reg[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~13_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg[-11]~q\);

-- Location: FF_X19_Y4_N50
\DERIV_CALC|dy2_1_reg[-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~9_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg[-12]~q\);

-- Location: FF_X19_Y4_N47
\DERIV_CALC|dy2_1_reg[-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~5_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg[-13]~q\);

-- Location: FF_X18_Y4_N20
\DERIV_CALC|dx2_2_reg[-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_2_reg[-14]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-14]~q\);

-- Location: FF_X19_Y4_N44
\DERIV_CALC|dy2_1_reg[-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~1_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg[-14]~q\);

-- Location: LABCELL_X18_Y4_N30
\DERIV_CALC|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~1_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg[-14]~q\ $ (!\DERIV_CALC|dy2_1_reg[-14]~q\) ) + ( !VCC ) + ( !VCC ))
-- \DERIV_CALC|Add3~2\ = CARRY(( !\DERIV_CALC|dx2_2_reg[-14]~q\ $ (!\DERIV_CALC|dy2_1_reg[-14]~q\) ) + ( !VCC ) + ( !VCC ))
-- \DERIV_CALC|Add3~3\ = SHARE((!\DERIV_CALC|dx2_2_reg[-14]~q\) # (\DERIV_CALC|dy2_1_reg[-14]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx2_2_reg[-14]~q\,
	datad => \DERIV_CALC|ALT_INV_dy2_1_reg[-14]~q\,
	cin => GND,
	sharein => GND,
	sumout => \DERIV_CALC|Add3~1_sumout\,
	cout => \DERIV_CALC|Add3~2\,
	shareout => \DERIV_CALC|Add3~3\);

-- Location: LABCELL_X18_Y4_N33
\DERIV_CALC|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~5_sumout\ = SUM(( !\DERIV_CALC|dy2_1_reg[-13]~q\ $ (\DERIV_CALC|dx2_2_reg[-13]~q\) ) + ( \DERIV_CALC|Add3~3\ ) + ( \DERIV_CALC|Add3~2\ ))
-- \DERIV_CALC|Add3~6\ = CARRY(( !\DERIV_CALC|dy2_1_reg[-13]~q\ $ (\DERIV_CALC|dx2_2_reg[-13]~q\) ) + ( \DERIV_CALC|Add3~3\ ) + ( \DERIV_CALC|Add3~2\ ))
-- \DERIV_CALC|Add3~7\ = SHARE((\DERIV_CALC|dy2_1_reg[-13]~q\ & !\DERIV_CALC|dx2_2_reg[-13]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dy2_1_reg[-13]~q\,
	datad => \DERIV_CALC|ALT_INV_dx2_2_reg[-13]~q\,
	cin => \DERIV_CALC|Add3~2\,
	sharein => \DERIV_CALC|Add3~3\,
	sumout => \DERIV_CALC|Add3~5_sumout\,
	cout => \DERIV_CALC|Add3~6\,
	shareout => \DERIV_CALC|Add3~7\);

-- Location: LABCELL_X18_Y4_N36
\DERIV_CALC|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~9_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg[-12]~q\ $ (\DERIV_CALC|dy2_1_reg[-12]~q\) ) + ( \DERIV_CALC|Add3~7\ ) + ( \DERIV_CALC|Add3~6\ ))
-- \DERIV_CALC|Add3~10\ = CARRY(( !\DERIV_CALC|dx2_2_reg[-12]~q\ $ (\DERIV_CALC|dy2_1_reg[-12]~q\) ) + ( \DERIV_CALC|Add3~7\ ) + ( \DERIV_CALC|Add3~6\ ))
-- \DERIV_CALC|Add3~11\ = SHARE((!\DERIV_CALC|dx2_2_reg[-12]~q\ & \DERIV_CALC|dy2_1_reg[-12]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx2_2_reg[-12]~q\,
	datad => \DERIV_CALC|ALT_INV_dy2_1_reg[-12]~q\,
	cin => \DERIV_CALC|Add3~6\,
	sharein => \DERIV_CALC|Add3~7\,
	sumout => \DERIV_CALC|Add3~9_sumout\,
	cout => \DERIV_CALC|Add3~10\,
	shareout => \DERIV_CALC|Add3~11\);

-- Location: LABCELL_X18_Y4_N39
\DERIV_CALC|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~13_sumout\ = SUM(( !\DERIV_CALC|dy2_1_reg[-11]~q\ $ (\DERIV_CALC|dx2_2_reg[-11]~q\) ) + ( \DERIV_CALC|Add3~11\ ) + ( \DERIV_CALC|Add3~10\ ))
-- \DERIV_CALC|Add3~14\ = CARRY(( !\DERIV_CALC|dy2_1_reg[-11]~q\ $ (\DERIV_CALC|dx2_2_reg[-11]~q\) ) + ( \DERIV_CALC|Add3~11\ ) + ( \DERIV_CALC|Add3~10\ ))
-- \DERIV_CALC|Add3~15\ = SHARE((\DERIV_CALC|dy2_1_reg[-11]~q\ & !\DERIV_CALC|dx2_2_reg[-11]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dy2_1_reg[-11]~q\,
	datac => \DERIV_CALC|ALT_INV_dx2_2_reg[-11]~q\,
	cin => \DERIV_CALC|Add3~10\,
	sharein => \DERIV_CALC|Add3~11\,
	sumout => \DERIV_CALC|Add3~13_sumout\,
	cout => \DERIV_CALC|Add3~14\,
	shareout => \DERIV_CALC|Add3~15\);

-- Location: LABCELL_X18_Y4_N42
\DERIV_CALC|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~17_sumout\ = SUM(( !\DERIV_CALC|dy2_1_reg[-10]~q\ $ (\DERIV_CALC|dx2_2_reg[-10]~q\) ) + ( \DERIV_CALC|Add3~15\ ) + ( \DERIV_CALC|Add3~14\ ))
-- \DERIV_CALC|Add3~18\ = CARRY(( !\DERIV_CALC|dy2_1_reg[-10]~q\ $ (\DERIV_CALC|dx2_2_reg[-10]~q\) ) + ( \DERIV_CALC|Add3~15\ ) + ( \DERIV_CALC|Add3~14\ ))
-- \DERIV_CALC|Add3~19\ = SHARE((\DERIV_CALC|dy2_1_reg[-10]~q\ & !\DERIV_CALC|dx2_2_reg[-10]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dy2_1_reg[-10]~q\,
	datac => \DERIV_CALC|ALT_INV_dx2_2_reg[-10]~q\,
	cin => \DERIV_CALC|Add3~14\,
	sharein => \DERIV_CALC|Add3~15\,
	sumout => \DERIV_CALC|Add3~17_sumout\,
	cout => \DERIV_CALC|Add3~18\,
	shareout => \DERIV_CALC|Add3~19\);

-- Location: LABCELL_X18_Y4_N45
\DERIV_CALC|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~21_sumout\ = SUM(( !\DERIV_CALC|dy2_1_reg[-9]~q\ $ (\DERIV_CALC|dx2_2_reg[-9]~DUPLICATE_q\) ) + ( \DERIV_CALC|Add3~19\ ) + ( \DERIV_CALC|Add3~18\ ))
-- \DERIV_CALC|Add3~22\ = CARRY(( !\DERIV_CALC|dy2_1_reg[-9]~q\ $ (\DERIV_CALC|dx2_2_reg[-9]~DUPLICATE_q\) ) + ( \DERIV_CALC|Add3~19\ ) + ( \DERIV_CALC|Add3~18\ ))
-- \DERIV_CALC|Add3~23\ = SHARE((\DERIV_CALC|dy2_1_reg[-9]~q\ & !\DERIV_CALC|dx2_2_reg[-9]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy2_1_reg[-9]~q\,
	datad => \DERIV_CALC|ALT_INV_dx2_2_reg[-9]~DUPLICATE_q\,
	cin => \DERIV_CALC|Add3~18\,
	sharein => \DERIV_CALC|Add3~19\,
	sumout => \DERIV_CALC|Add3~21_sumout\,
	cout => \DERIV_CALC|Add3~22\,
	shareout => \DERIV_CALC|Add3~23\);

-- Location: LABCELL_X18_Y4_N48
\DERIV_CALC|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~25_sumout\ = SUM(( !\DERIV_CALC|dy2_1_reg[-8]~q\ $ (\DERIV_CALC|dx2_2_reg[-8]~q\) ) + ( \DERIV_CALC|Add3~23\ ) + ( \DERIV_CALC|Add3~22\ ))
-- \DERIV_CALC|Add3~26\ = CARRY(( !\DERIV_CALC|dy2_1_reg[-8]~q\ $ (\DERIV_CALC|dx2_2_reg[-8]~q\) ) + ( \DERIV_CALC|Add3~23\ ) + ( \DERIV_CALC|Add3~22\ ))
-- \DERIV_CALC|Add3~27\ = SHARE((\DERIV_CALC|dy2_1_reg[-8]~q\ & !\DERIV_CALC|dx2_2_reg[-8]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy2_1_reg[-8]~q\,
	datad => \DERIV_CALC|ALT_INV_dx2_2_reg[-8]~q\,
	cin => \DERIV_CALC|Add3~22\,
	sharein => \DERIV_CALC|Add3~23\,
	sumout => \DERIV_CALC|Add3~25_sumout\,
	cout => \DERIV_CALC|Add3~26\,
	shareout => \DERIV_CALC|Add3~27\);

-- Location: LABCELL_X18_Y4_N51
\DERIV_CALC|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~29_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg[-7]~q\ $ (\DERIV_CALC|dy2_1_reg[-7]~q\) ) + ( \DERIV_CALC|Add3~27\ ) + ( \DERIV_CALC|Add3~26\ ))
-- \DERIV_CALC|Add3~30\ = CARRY(( !\DERIV_CALC|dx2_2_reg[-7]~q\ $ (\DERIV_CALC|dy2_1_reg[-7]~q\) ) + ( \DERIV_CALC|Add3~27\ ) + ( \DERIV_CALC|Add3~26\ ))
-- \DERIV_CALC|Add3~31\ = SHARE((!\DERIV_CALC|dx2_2_reg[-7]~q\ & \DERIV_CALC|dy2_1_reg[-7]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx2_2_reg[-7]~q\,
	datad => \DERIV_CALC|ALT_INV_dy2_1_reg[-7]~q\,
	cin => \DERIV_CALC|Add3~26\,
	sharein => \DERIV_CALC|Add3~27\,
	sumout => \DERIV_CALC|Add3~29_sumout\,
	cout => \DERIV_CALC|Add3~30\,
	shareout => \DERIV_CALC|Add3~31\);

-- Location: LABCELL_X18_Y4_N54
\DERIV_CALC|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~33_sumout\ = SUM(( !\DERIV_CALC|dy2_1_reg[-6]~q\ $ (\DERIV_CALC|dx2_2_reg[-6]~q\) ) + ( \DERIV_CALC|Add3~31\ ) + ( \DERIV_CALC|Add3~30\ ))
-- \DERIV_CALC|Add3~34\ = CARRY(( !\DERIV_CALC|dy2_1_reg[-6]~q\ $ (\DERIV_CALC|dx2_2_reg[-6]~q\) ) + ( \DERIV_CALC|Add3~31\ ) + ( \DERIV_CALC|Add3~30\ ))
-- \DERIV_CALC|Add3~35\ = SHARE((\DERIV_CALC|dy2_1_reg[-6]~q\ & !\DERIV_CALC|dx2_2_reg[-6]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy2_1_reg[-6]~q\,
	datad => \DERIV_CALC|ALT_INV_dx2_2_reg[-6]~q\,
	cin => \DERIV_CALC|Add3~30\,
	sharein => \DERIV_CALC|Add3~31\,
	sumout => \DERIV_CALC|Add3~33_sumout\,
	cout => \DERIV_CALC|Add3~34\,
	shareout => \DERIV_CALC|Add3~35\);

-- Location: LABCELL_X18_Y4_N57
\DERIV_CALC|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~37_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg[-5]~q\ $ (\DERIV_CALC|dy2_1_reg[-5]~q\) ) + ( \DERIV_CALC|Add3~35\ ) + ( \DERIV_CALC|Add3~34\ ))
-- \DERIV_CALC|Add3~38\ = CARRY(( !\DERIV_CALC|dx2_2_reg[-5]~q\ $ (\DERIV_CALC|dy2_1_reg[-5]~q\) ) + ( \DERIV_CALC|Add3~35\ ) + ( \DERIV_CALC|Add3~34\ ))
-- \DERIV_CALC|Add3~39\ = SHARE((!\DERIV_CALC|dx2_2_reg[-5]~q\ & \DERIV_CALC|dy2_1_reg[-5]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx2_2_reg[-5]~q\,
	datad => \DERIV_CALC|ALT_INV_dy2_1_reg[-5]~q\,
	cin => \DERIV_CALC|Add3~34\,
	sharein => \DERIV_CALC|Add3~35\,
	sumout => \DERIV_CALC|Add3~37_sumout\,
	cout => \DERIV_CALC|Add3~38\,
	shareout => \DERIV_CALC|Add3~39\);

-- Location: LABCELL_X18_Y3_N0
\DERIV_CALC|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~41_sumout\ = SUM(( !\DERIV_CALC|dy2_1_reg[-4]~q\ $ (\DERIV_CALC|dx2_2_reg[-4]~q\) ) + ( \DERIV_CALC|Add3~39\ ) + ( \DERIV_CALC|Add3~38\ ))
-- \DERIV_CALC|Add3~42\ = CARRY(( !\DERIV_CALC|dy2_1_reg[-4]~q\ $ (\DERIV_CALC|dx2_2_reg[-4]~q\) ) + ( \DERIV_CALC|Add3~39\ ) + ( \DERIV_CALC|Add3~38\ ))
-- \DERIV_CALC|Add3~43\ = SHARE((\DERIV_CALC|dy2_1_reg[-4]~q\ & !\DERIV_CALC|dx2_2_reg[-4]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dy2_1_reg[-4]~q\,
	datad => \DERIV_CALC|ALT_INV_dx2_2_reg[-4]~q\,
	cin => \DERIV_CALC|Add3~38\,
	sharein => \DERIV_CALC|Add3~39\,
	sumout => \DERIV_CALC|Add3~41_sumout\,
	cout => \DERIV_CALC|Add3~42\,
	shareout => \DERIV_CALC|Add3~43\);

-- Location: LABCELL_X18_Y3_N3
\DERIV_CALC|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~45_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg[-3]~q\ $ (\DERIV_CALC|dy2_1_reg[-3]~q\) ) + ( \DERIV_CALC|Add3~43\ ) + ( \DERIV_CALC|Add3~42\ ))
-- \DERIV_CALC|Add3~46\ = CARRY(( !\DERIV_CALC|dx2_2_reg[-3]~q\ $ (\DERIV_CALC|dy2_1_reg[-3]~q\) ) + ( \DERIV_CALC|Add3~43\ ) + ( \DERIV_CALC|Add3~42\ ))
-- \DERIV_CALC|Add3~47\ = SHARE((!\DERIV_CALC|dx2_2_reg[-3]~q\ & \DERIV_CALC|dy2_1_reg[-3]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx2_2_reg[-3]~q\,
	datad => \DERIV_CALC|ALT_INV_dy2_1_reg[-3]~q\,
	cin => \DERIV_CALC|Add3~42\,
	sharein => \DERIV_CALC|Add3~43\,
	sumout => \DERIV_CALC|Add3~45_sumout\,
	cout => \DERIV_CALC|Add3~46\,
	shareout => \DERIV_CALC|Add3~47\);

-- Location: LABCELL_X18_Y3_N6
\DERIV_CALC|Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~49_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg[-2]~q\ $ (\DERIV_CALC|dy2_1_reg[-2]~q\) ) + ( \DERIV_CALC|Add3~47\ ) + ( \DERIV_CALC|Add3~46\ ))
-- \DERIV_CALC|Add3~50\ = CARRY(( !\DERIV_CALC|dx2_2_reg[-2]~q\ $ (\DERIV_CALC|dy2_1_reg[-2]~q\) ) + ( \DERIV_CALC|Add3~47\ ) + ( \DERIV_CALC|Add3~46\ ))
-- \DERIV_CALC|Add3~51\ = SHARE((!\DERIV_CALC|dx2_2_reg[-2]~q\ & \DERIV_CALC|dy2_1_reg[-2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx2_2_reg[-2]~q\,
	datad => \DERIV_CALC|ALT_INV_dy2_1_reg[-2]~q\,
	cin => \DERIV_CALC|Add3~46\,
	sharein => \DERIV_CALC|Add3~47\,
	sumout => \DERIV_CALC|Add3~49_sumout\,
	cout => \DERIV_CALC|Add3~50\,
	shareout => \DERIV_CALC|Add3~51\);

-- Location: LABCELL_X18_Y3_N9
\DERIV_CALC|Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~53_sumout\ = SUM(( !\DERIV_CALC|dy2_1_reg[-1]~q\ $ (\DERIV_CALC|dx2_2_reg[-1]~q\) ) + ( \DERIV_CALC|Add3~51\ ) + ( \DERIV_CALC|Add3~50\ ))
-- \DERIV_CALC|Add3~54\ = CARRY(( !\DERIV_CALC|dy2_1_reg[-1]~q\ $ (\DERIV_CALC|dx2_2_reg[-1]~q\) ) + ( \DERIV_CALC|Add3~51\ ) + ( \DERIV_CALC|Add3~50\ ))
-- \DERIV_CALC|Add3~55\ = SHARE((\DERIV_CALC|dy2_1_reg[-1]~q\ & !\DERIV_CALC|dx2_2_reg[-1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dy2_1_reg[-1]~q\,
	datad => \DERIV_CALC|ALT_INV_dx2_2_reg[-1]~q\,
	cin => \DERIV_CALC|Add3~50\,
	sharein => \DERIV_CALC|Add3~51\,
	sumout => \DERIV_CALC|Add3~53_sumout\,
	cout => \DERIV_CALC|Add3~54\,
	shareout => \DERIV_CALC|Add3~55\);

-- Location: LABCELL_X18_Y3_N12
\DERIV_CALC|Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~57_sumout\ = SUM(( !\DERIV_CALC|dy2_1_reg\(0) $ (\DERIV_CALC|dx2_2_reg\(0)) ) + ( \DERIV_CALC|Add3~55\ ) + ( \DERIV_CALC|Add3~54\ ))
-- \DERIV_CALC|Add3~58\ = CARRY(( !\DERIV_CALC|dy2_1_reg\(0) $ (\DERIV_CALC|dx2_2_reg\(0)) ) + ( \DERIV_CALC|Add3~55\ ) + ( \DERIV_CALC|Add3~54\ ))
-- \DERIV_CALC|Add3~59\ = SHARE((\DERIV_CALC|dy2_1_reg\(0) & !\DERIV_CALC|dx2_2_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dy2_1_reg\(0),
	datac => \DERIV_CALC|ALT_INV_dx2_2_reg\(0),
	cin => \DERIV_CALC|Add3~54\,
	sharein => \DERIV_CALC|Add3~55\,
	sumout => \DERIV_CALC|Add3~57_sumout\,
	cout => \DERIV_CALC|Add3~58\,
	shareout => \DERIV_CALC|Add3~59\);

-- Location: LABCELL_X18_Y3_N15
\DERIV_CALC|Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~61_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg\(1) $ (\DERIV_CALC|dy2_1_reg\(1)) ) + ( \DERIV_CALC|Add3~59\ ) + ( \DERIV_CALC|Add3~58\ ))
-- \DERIV_CALC|Add3~62\ = CARRY(( !\DERIV_CALC|dx2_2_reg\(1) $ (\DERIV_CALC|dy2_1_reg\(1)) ) + ( \DERIV_CALC|Add3~59\ ) + ( \DERIV_CALC|Add3~58\ ))
-- \DERIV_CALC|Add3~63\ = SHARE((!\DERIV_CALC|dx2_2_reg\(1) & \DERIV_CALC|dy2_1_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx2_2_reg\(1),
	datad => \DERIV_CALC|ALT_INV_dy2_1_reg\(1),
	cin => \DERIV_CALC|Add3~58\,
	sharein => \DERIV_CALC|Add3~59\,
	sumout => \DERIV_CALC|Add3~61_sumout\,
	cout => \DERIV_CALC|Add3~62\,
	shareout => \DERIV_CALC|Add3~63\);

-- Location: LABCELL_X18_Y3_N18
\DERIV_CALC|Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~65_sumout\ = SUM(( !\DERIV_CALC|dy2_1_reg\(2) $ (\DERIV_CALC|dx2_2_reg[2]~DUPLICATE_q\) ) + ( \DERIV_CALC|Add3~63\ ) + ( \DERIV_CALC|Add3~62\ ))
-- \DERIV_CALC|Add3~66\ = CARRY(( !\DERIV_CALC|dy2_1_reg\(2) $ (\DERIV_CALC|dx2_2_reg[2]~DUPLICATE_q\) ) + ( \DERIV_CALC|Add3~63\ ) + ( \DERIV_CALC|Add3~62\ ))
-- \DERIV_CALC|Add3~67\ = SHARE((\DERIV_CALC|dy2_1_reg\(2) & !\DERIV_CALC|dx2_2_reg[2]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy2_1_reg\(2),
	datad => \DERIV_CALC|ALT_INV_dx2_2_reg[2]~DUPLICATE_q\,
	cin => \DERIV_CALC|Add3~62\,
	sharein => \DERIV_CALC|Add3~63\,
	sumout => \DERIV_CALC|Add3~65_sumout\,
	cout => \DERIV_CALC|Add3~66\,
	shareout => \DERIV_CALC|Add3~67\);

-- Location: LABCELL_X18_Y3_N21
\DERIV_CALC|Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~69_sumout\ = SUM(( !\DERIV_CALC|dy2_1_reg\(3) $ (\DERIV_CALC|dx2_2_reg\(3)) ) + ( \DERIV_CALC|Add3~67\ ) + ( \DERIV_CALC|Add3~66\ ))
-- \DERIV_CALC|Add3~70\ = CARRY(( !\DERIV_CALC|dy2_1_reg\(3) $ (\DERIV_CALC|dx2_2_reg\(3)) ) + ( \DERIV_CALC|Add3~67\ ) + ( \DERIV_CALC|Add3~66\ ))
-- \DERIV_CALC|Add3~71\ = SHARE((\DERIV_CALC|dy2_1_reg\(3) & !\DERIV_CALC|dx2_2_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dy2_1_reg\(3),
	datac => \DERIV_CALC|ALT_INV_dx2_2_reg\(3),
	cin => \DERIV_CALC|Add3~66\,
	sharein => \DERIV_CALC|Add3~67\,
	sumout => \DERIV_CALC|Add3~69_sumout\,
	cout => \DERIV_CALC|Add3~70\,
	shareout => \DERIV_CALC|Add3~71\);

-- Location: LABCELL_X18_Y3_N24
\DERIV_CALC|Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~73_sumout\ = SUM(( !\DERIV_CALC|dy2_1_reg\(4) $ (\DERIV_CALC|dx2_2_reg\(4)) ) + ( \DERIV_CALC|Add3~71\ ) + ( \DERIV_CALC|Add3~70\ ))
-- \DERIV_CALC|Add3~74\ = CARRY(( !\DERIV_CALC|dy2_1_reg\(4) $ (\DERIV_CALC|dx2_2_reg\(4)) ) + ( \DERIV_CALC|Add3~71\ ) + ( \DERIV_CALC|Add3~70\ ))
-- \DERIV_CALC|Add3~75\ = SHARE((\DERIV_CALC|dy2_1_reg\(4) & !\DERIV_CALC|dx2_2_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dy2_1_reg\(4),
	datac => \DERIV_CALC|ALT_INV_dx2_2_reg\(4),
	cin => \DERIV_CALC|Add3~70\,
	sharein => \DERIV_CALC|Add3~71\,
	sumout => \DERIV_CALC|Add3~73_sumout\,
	cout => \DERIV_CALC|Add3~74\,
	shareout => \DERIV_CALC|Add3~75\);

-- Location: LABCELL_X18_Y3_N27
\DERIV_CALC|Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~77_sumout\ = SUM(( !\DERIV_CALC|dy2_1_reg\(5) $ (\DERIV_CALC|dx2_2_reg\(5)) ) + ( \DERIV_CALC|Add3~75\ ) + ( \DERIV_CALC|Add3~74\ ))
-- \DERIV_CALC|Add3~78\ = CARRY(( !\DERIV_CALC|dy2_1_reg\(5) $ (\DERIV_CALC|dx2_2_reg\(5)) ) + ( \DERIV_CALC|Add3~75\ ) + ( \DERIV_CALC|Add3~74\ ))
-- \DERIV_CALC|Add3~79\ = SHARE((\DERIV_CALC|dy2_1_reg\(5) & !\DERIV_CALC|dx2_2_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy2_1_reg\(5),
	datad => \DERIV_CALC|ALT_INV_dx2_2_reg\(5),
	cin => \DERIV_CALC|Add3~74\,
	sharein => \DERIV_CALC|Add3~75\,
	sumout => \DERIV_CALC|Add3~77_sumout\,
	cout => \DERIV_CALC|Add3~78\,
	shareout => \DERIV_CALC|Add3~79\);

-- Location: LABCELL_X18_Y3_N30
\DERIV_CALC|Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~81_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg\(6) $ (\DERIV_CALC|dy2_1_reg\(6)) ) + ( \DERIV_CALC|Add3~79\ ) + ( \DERIV_CALC|Add3~78\ ))
-- \DERIV_CALC|Add3~82\ = CARRY(( !\DERIV_CALC|dx2_2_reg\(6) $ (\DERIV_CALC|dy2_1_reg\(6)) ) + ( \DERIV_CALC|Add3~79\ ) + ( \DERIV_CALC|Add3~78\ ))
-- \DERIV_CALC|Add3~83\ = SHARE((!\DERIV_CALC|dx2_2_reg\(6) & \DERIV_CALC|dy2_1_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx2_2_reg\(6),
	datad => \DERIV_CALC|ALT_INV_dy2_1_reg\(6),
	cin => \DERIV_CALC|Add3~78\,
	sharein => \DERIV_CALC|Add3~79\,
	sumout => \DERIV_CALC|Add3~81_sumout\,
	cout => \DERIV_CALC|Add3~82\,
	shareout => \DERIV_CALC|Add3~83\);

-- Location: LABCELL_X18_Y3_N33
\DERIV_CALC|Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add3~85_sumout\ = SUM(( !\DERIV_CALC|dy2_1_reg\(7) $ (\DERIV_CALC|dx2_2_reg\(7)) ) + ( \DERIV_CALC|Add3~83\ ) + ( \DERIV_CALC|Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dy2_1_reg\(7),
	datac => \DERIV_CALC|ALT_INV_dx2_2_reg\(7),
	cin => \DERIV_CALC|Add3~82\,
	sharein => \DERIV_CALC|Add3~83\,
	sumout => \DERIV_CALC|Add3~85_sumout\);

-- Location: FF_X18_Y3_N34
\DERIV_CALC|dy3_1_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~85_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg\(7));

-- Location: MLABCELL_X21_Y3_N27
\DERIV_CALC|dy4_1_reg[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dy4_1_reg[7]~feeder_combout\ = ( \DERIV_CALC|dy3_1_reg\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy3_1_reg\(7),
	combout => \DERIV_CALC|dy4_1_reg[7]~feeder_combout\);

-- Location: FF_X21_Y3_N28
\DERIV_CALC|dy4_1_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dy4_1_reg[7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg\(7));

-- Location: FF_X21_Y4_N49
\mul_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy4_1_reg\(7),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][7]~q\);

-- Location: FF_X19_Y3_N44
\DERIV_CALC|dy2_1_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~81_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg\(6));

-- Location: FF_X18_Y3_N31
\DERIV_CALC|dy3_1_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~81_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg\(6));

-- Location: FF_X21_Y3_N19
\DERIV_CALC|dy4_1_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy3_1_reg\(6),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg\(6));

-- Location: MLABCELL_X21_Y4_N39
\mul_reg[1][-4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[1][-4]~feeder_combout\ = ( \DERIV_CALC|dy4_1_reg\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy4_1_reg\(6),
	combout => \mul_reg[1][-4]~feeder_combout\);

-- Location: FF_X21_Y4_N41
\mul_reg[1][-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[1][-4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][-4]~q\);

-- Location: FF_X19_Y3_N40
\DERIV_CALC|dy2_1_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~77_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg\(5));

-- Location: FF_X18_Y3_N29
\DERIV_CALC|dy3_1_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~77_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg\(5));

-- Location: FF_X18_Y3_N52
\DERIV_CALC|dy4_1_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy3_1_reg\(5),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg\(5));

-- Location: MLABCELL_X21_Y5_N0
\mul_reg[1][-5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[1][-5]~feeder_combout\ = ( \DERIV_CALC|dy4_1_reg\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy4_1_reg\(5),
	combout => \mul_reg[1][-5]~feeder_combout\);

-- Location: FF_X21_Y5_N2
\mul_reg[1][-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[1][-5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][-5]~q\);

-- Location: FF_X19_Y3_N38
\DERIV_CALC|dy2_1_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~73_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg\(4));

-- Location: FF_X18_Y3_N26
\DERIV_CALC|dy3_1_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~73_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg\(4));

-- Location: LABCELL_X18_Y3_N36
\DERIV_CALC|dy4_1_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dy4_1_reg[4]~feeder_combout\ = \DERIV_CALC|dy3_1_reg\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy3_1_reg\(4),
	combout => \DERIV_CALC|dy4_1_reg[4]~feeder_combout\);

-- Location: FF_X18_Y3_N37
\DERIV_CALC|dy4_1_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dy4_1_reg[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg\(4));

-- Location: FF_X21_Y5_N20
\mul_reg[1][-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy4_1_reg\(4),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][-6]~q\);

-- Location: FF_X19_Y3_N35
\DERIV_CALC|dy2_1_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~69_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg\(3));

-- Location: FF_X18_Y3_N23
\DERIV_CALC|dy3_1_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~69_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg\(3));

-- Location: FF_X17_Y3_N28
\DERIV_CALC|dy4_1_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy3_1_reg\(3),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg\(3));

-- Location: MLABCELL_X21_Y5_N6
\mul_reg[1][-7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[1][-7]~feeder_combout\ = ( \DERIV_CALC|dy4_1_reg\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy4_1_reg\(3),
	combout => \mul_reg[1][-7]~feeder_combout\);

-- Location: FF_X21_Y5_N8
\mul_reg[1][-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[1][-7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][-7]~q\);

-- Location: DSP_X20_Y2_N0
\DERIV_CALC|Mult4~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 27,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 17,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m27x27",
	output_clock => "0",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \DERIV_CALC|Mult4~8_ACLR_bus\,
	clk => \DERIV_CALC|Mult4~8_CLK_bus\,
	ena => \DERIV_CALC|Mult4~8_ENA_bus\,
	ax => \DERIV_CALC|Mult4~8_AX_bus\,
	ay => \DERIV_CALC|Mult4~8_AY_bus\,
	resulta => \DERIV_CALC|Mult4~8_RESULTA_bus\);

-- Location: FF_X21_Y6_N46
\var_main_reg[2][15]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \var_main_reg[2][15]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][15]~_Duplicate_2_q\);

-- Location: MLABCELL_X21_Y6_N54
\var_main_reg[2][19]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \var_main_reg[2][19]~_wirecell_combout\ = !\var_main_reg[2][19]~_Duplicate_2_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[2][19]~_Duplicate_2_q\,
	combout => \var_main_reg[2][19]~_wirecell_combout\);

-- Location: M10K_X14_Y4_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "55555555555555555555555555555555555555555555555555555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555555555555555555555555555555555555555555555555555555555555555555555555555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init2 => "AAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000055555555AAAAAAAABFFFFFFFC",
	mem_init1 => "00000000555555556AAAAAAABFFFFFFFF00000000555555556AAAAAAABFFFFFFFF00000000555555556AAAAAAABFFFFFFFF00000000555555556AAAAAAABFFFFFFFF00000000555555556AAAAAAABFFFFFFFF00000000555555556AAAAAAABFFFFFFFF00000000555555556AAAAAAABFFFFFFFF00000000555555556AAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Heaviside_memory_66243ee0.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_RC2:DERIV_CALC|Heaviside_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_hrd1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 22,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: MLABCELL_X15_Y1_N48
\DERIV_CALC|dz1_2_reg[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[3]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a17\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a17\,
	combout => \DERIV_CALC|dz1_2_reg[3]~feeder_combout\);

-- Location: FF_X15_Y1_N49
\DERIV_CALC|dz1_2_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg\(3));

-- Location: M10K_X26_Y1_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "5555555555555555556AAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000055555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000055555555555555555555556AAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000155555555555555555555556AAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000055555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000155555555555555555555556AAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFF",
	mem_init2 => "FFFFFFFFFFC000000000000000000000055555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000055555555555555555555556AAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000155555555555555555555556AAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000055555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000155555555555555555555556AAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFC00000000000055AAFF0055AAFF00156ABFC0156ABFC",
	mem_init1 => "0055AAFF0055AAFFC0156ABFC0156ABFF0055AAFF0055AAFFC0156ABFC0156ABFF0055AAFF0055AABFC0156ABFC0156AAFF0055AAFF0055AABFC0156ABFC0156AAFF0055AAFF00556ABFC0156ABFC0155AAFF0055AAFF00556ABFC0156ABFC0155AAFF0055AAFF00156ABFC0156ABFC0055AAFF0055AAFF00156ABFC0156ABFC0055AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Heaviside_memory_66243ee0.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_RC2:DERIV_CALC|Heaviside_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_hrd1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 22,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LABCELL_X27_Y1_N3
\DERIV_CALC|dz1_2_reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[0]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14~portadataout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14~portadataout\,
	combout => \DERIV_CALC|dz1_2_reg[0]~feeder_combout\);

-- Location: FF_X27_Y1_N4
\DERIV_CALC|dz1_2_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg\(0));

-- Location: M10K_X26_Y4_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0155555AAAAAAFFFFFC00000155555AAAAABFFFFFC00000555555AAAAABFFFFFC00000555555AAAAABFFFFF000000555556AAAAABFFFFF000000555556AAAAABFFFFF000000555556AAAAAFFFFFF000001555556AAAAAFFFFFF000001555556AAAAAFFFFFC00000155555AAAAAAFFFFFC00000155555AAAAAAFFFFFC00000155555AAAAABFFFFFC00000555555AAAAABFFFFFC00000555555AAAAABFFFFF000000555556AAAAABFFFFF000000555556AAAAABFFFFF000001555556AAAAAFFFFFF000001555556AAAAAFFFFFF000001555556AAAAAFFFFFC00000155555AAAAAAFFFFFC00000155555AAAAAAFFFFFC00000555555AAAAABFFFFFC00000555555A",
	mem_init2 => "AAAABFFFFFC00000555555AAAAABFFFFF000000555556AAAAABFFFFF000000555556AAAAABFFFFF000001555556AAAAAFFFFFF000001555556AAAAAFFFFFF000001555556AAAAAFFFFFC00000155555AAAAAAFFFFFC00000155555AAAAAAFFFFFC00000555555AAAAABFFFFFC00000555555AAAAABFFFFFC00000555555AAAAABFFFFF000000555556AAAAABFFFFF000000555556AAAAABFFFFF000001555556AAAAAFFFFFF000001555556AAAAAFFFFFF000001555556AAAAAFFFFFC00000155555AAAAAAFFFFFC00000155555AAAAAAFFFFFC00000555555AAAAABFFFFFC00000555555AAAAABFFFFFC00000555556B1B1B1B1B1B1B1B16C6C6C6C6C6C6C6C",
	mem_init1 => "1B1B1B1B1B1B1B1BC6C6C6C6C6C6C6C6B1B1B1B1B1B1B1B16C6C6C6C6C6C6C6C1B1B1B1B1B1B1B1BC6C6C6C6C6C6C6C6B1B1B1B1B1B1B1B16C6C6C6C6C6C6C6C1B1B1B1B1B1B1B1BC6C6C6C6C6C6C6C6B1B1B1B1B1B1B1B16C6C6C6C6C6C6C6C1B1B1B1B1B1B1B1BC6C6C6C6C6C6C6C6B1B1B1B1B1B1B1B16C6C6C6C6C6C6C6C1B1B1B1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Heaviside_memory_66243ee0.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_RC2:DERIV_CALC|Heaviside_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_hrd1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 22,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: MLABCELL_X25_Y1_N15
\DERIV_CALC|dz1_2_reg[-2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[-2]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12~portadataout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12~portadataout\,
	combout => \DERIV_CALC|dz1_2_reg[-2]~feeder_combout\);

-- Location: FF_X25_Y1_N16
\DERIV_CALC|dz1_2_reg[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[-2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg[-2]~q\);

-- Location: M10K_X14_Y5_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FC05ABF015ABF056AFC056AFC15ABF015ABC056AFC056BF015ABF016AFC056AFC05ABF015ABF056AFC056AF015ABF015ABC056AFC056BF015ABF016AFC056AFC15ABF015ABF056AFC056AF015ABF015AFC056AFC05ABF015ABF016AFC056AFC15ABF015ABC056AFC056BF015ABF015AFC056AFC05ABF015ABF056AFC056AFC15ABF015ABC056AFC056BF015ABF016AFC056AFC05ABF015ABF056AFC056AF015ABF015AFC056AFC056BF015ABF016AFC056AFC15ABF015ABC056AFC056AF015ABF015AFC056AFC05ABF015ABF016AFC056AFC15ABF015ABC056AFC056BF015ABF015AFC056AFC05ABF015ABF056AFC056AF015ABF015ABC056AFC056BF015ABF0",
	mem_init2 => "16AFC056AFC15ABF015ABF056AFC056AF015ABF015AFC056AFC056BF015ABF016AFC056AFC15ABF015ABC056AFC056AF015ABF015AFC056AFC05ABF015ABF056AFC056AFC15ABF015ABC056AFC056BF015ABF016AFC056AFC05ABF015ABF056AFC056AF015ABF015ABC056AFC056BF015ABF016AFC056AFC15ABF015ABF056AFC056AF015ABF015AFC056AFC05ABF015ABF016AFC056AFC15ABF015ABC056AFC056BF015ABF015AFC056AFC05ABF015ABF056AFC056AFC15ABF015ABC056AFC056BF015ABF016AFC056AFC05ABF015ABF056AFC056AF015ABF015AFC056AFC056BF015ABF016AFC056AFC15ABF015ABCFFFFAAAA55550000FFFFAAAA55550000",
	mem_init1 => "FFFFAAAA55550000FFFFAAAA55550000FFFFAAAA55550000FFFFAAAA55550000FFFFAAAA55550000FFFFAAAA55550000FFFFAAAA55550000FFFFAAAA55550000FFFFAAAA55550000FFFFAAAA55550000FFFFAAAA55550000FFFFAAAA55550000FFFFAAAA55550000FFFFAAAA55550000FFFFAAAA55550000FFFFAAAA55550000FFFFAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Heaviside_memory_66243ee0.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_RC2:DERIV_CALC|Heaviside_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_hrd1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 22,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LABCELL_X16_Y1_N12
\DERIV_CALC|dz1_2_reg[-3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[-3]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a11\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	combout => \DERIV_CALC|dz1_2_reg[-3]~feeder_combout\);

-- Location: FF_X16_Y1_N13
\DERIV_CALC|dz1_2_reg[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[-3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg[-3]~q\);

-- Location: FF_X13_Y5_N28
\DERIV_CALC|dz1_2_reg[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10~portadataout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg[-4]~q\);

-- Location: M10K_X14_Y2_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "2DB61871CB2DB61871C72CB6D861C72CB6D861C72CB6D861C72CB6D861871CB2DB61871CB2DB61871CB2DB61871CB2DB6D861C72CB6D861C72CB6D861C72CB6D861C72CB2DB61871CB2DB61871CB2DB61871CB2DB61871C72CB6D861C72CB6D861C72CB6D861C72CB6D861871CB2DB61871CB2DB61871CB2DB61871CB2DB6D861C72CB6D861C72CB6D861C72CB6D861C72CB2DB61871CB2DB61871CB2DB61871CB2DB61871C72CB6D861C72CB6D861C72CB6D861C72CB6D861871CB2DB61871CB2DB61871CB2DB61871CB2DB6D861C72CB6D861C72CB6D861C72CB6D861C72CB2DB61871CB2DB61871CB2DB61871CB2DB61871C72CB6D861C72CB6D861C72CB6",
	mem_init2 => "D861C72CB6D861871CB2DB61871CB2DB61871CB2DB61871CB2DB6D861C72CB6D861C72CB6D861C72CB6D861C72CB2DB61871CB2DB61871CB2DB61871CB2DB61871C72CB6D861C72CB6D861C72CB6D861C72CB6D861871CB2DB61871CB2DB61871CB2DB61871CB2DB6D861C72CB6D861C72CB6D861C72CB6D861C72CB2DB61871CB2DB61871CB2DB61871CB2DB61871C72CB6D861C72CB6D861C72CB6D861C72CB6D861871CB2DB61871CB2DB61871CB2DB61871CB2DB6D861C72CB6D861C72CB6D861C72CB6D861C72CB2DB61871CB2DB61871CB2DB61871CB2DB61871C72CB6D861C72CB6D861C72CB6D861C72CB6D8FA50FA50FA50FA50FA50FA50FA50FA50",
	mem_init1 => "FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FA50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Heaviside_memory_66243ee0.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_RC2:DERIV_CALC|Heaviside_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_hrd1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 22,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LABCELL_X24_Y2_N9
\DERIV_CALC|dz1_2_reg[-5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[-5]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a9\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	combout => \DERIV_CALC|dz1_2_reg[-5]~feeder_combout\);

-- Location: FF_X24_Y2_N10
\DERIV_CALC|dz1_2_reg[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[-5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg[-5]~q\);

-- Location: MLABCELL_X21_Y2_N54
\DERIV_CALC|dz1_2_reg[-6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[-6]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8~portadataout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8~portadataout\,
	combout => \DERIV_CALC|dz1_2_reg[-6]~feeder_combout\);

-- Location: FF_X21_Y2_N56
\DERIV_CALC|dz1_2_reg[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[-6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg[-6]~q\);

-- Location: M10K_X26_Y6_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761",
	mem_init2 => "D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C872DCB72DCB62D8B62D8B61D8761D8721C8721C888888888888888888888888888888888",
	mem_init1 => "888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Heaviside_memory_66243ee0.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_RC2:DERIV_CALC|Heaviside_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_hrd1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 22,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LABCELL_X27_Y2_N0
\DERIV_CALC|dz1_2_reg[-7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[-7]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a7\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \DERIV_CALC|dz1_2_reg[-7]~feeder_combout\);

-- Location: FF_X27_Y2_N1
\DERIV_CALC|dz1_2_reg[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[-7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg[-7]~q\);

-- Location: MLABCELL_X25_Y2_N15
\DERIV_CALC|dz1_2_reg[-8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[-8]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6~portadataout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6~portadataout\,
	combout => \DERIV_CALC|dz1_2_reg[-8]~feeder_combout\);

-- Location: FF_X25_Y2_N16
\DERIV_CALC|dz1_2_reg[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[-8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg[-8]~q\);

-- Location: M10K_X26_Y5_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "89D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D27",
	mem_init2 => "48DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D2348DE2749D2378DE2748D23789D2748DE3789D23400000000000000000000000000000000",
	mem_init1 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Heaviside_memory_66243ee0.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_RC2:DERIV_CALC|Heaviside_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_hrd1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 22,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LABCELL_X27_Y2_N9
\DERIV_CALC|dz1_2_reg[-9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[-9]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a5\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	combout => \DERIV_CALC|dz1_2_reg[-9]~feeder_combout\);

-- Location: FF_X27_Y2_N11
\DERIV_CALC|dz1_2_reg[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[-9]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg[-9]~q\);

-- Location: MLABCELL_X25_Y2_N18
\DERIV_CALC|dz1_2_reg[-10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[-10]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4~portadataout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	combout => \DERIV_CALC|dz1_2_reg[-10]~feeder_combout\);

-- Location: FF_X25_Y2_N19
\DERIV_CALC|dz1_2_reg[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[-10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg[-10]~q\);

-- Location: M10K_X14_Y3_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "2DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61",
	mem_init2 => "C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D861CB6D871CB61872CB61872DB61C72D861CB2D800000000000000000000000000000000",
	mem_init1 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Heaviside_memory_66243ee0.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_RC2:DERIV_CALC|Heaviside_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_hrd1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 22,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: MLABCELL_X21_Y2_N42
\DERIV_CALC|dz1_2_reg[-11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[-11]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a3\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \DERIV_CALC|dz1_2_reg[-11]~feeder_combout\);

-- Location: FF_X21_Y2_N44
\DERIV_CALC|dz1_2_reg[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[-11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg[-11]~q\);

-- Location: MLABCELL_X21_Y2_N36
\DERIV_CALC|dz1_2_reg[-12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[-12]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2~portadataout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	combout => \DERIV_CALC|dz1_2_reg[-12]~feeder_combout\);

-- Location: FF_X21_Y2_N38
\DERIV_CALC|dz1_2_reg[-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[-12]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg[-12]~q\);

-- Location: M10K_X26_Y2_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD88772",
	mem_init2 => "2DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD8B7621DC8B7621DC8B762DD887722DD887722DD800000000000000000000000000000000",
	mem_init1 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Heaviside_memory_66243ee0.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_RC2:DERIV_CALC|Heaviside_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_hrd1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 22,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X27_Y2_N15
\DERIV_CALC|dz1_2_reg[-13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[-13]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a1\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \DERIV_CALC|dz1_2_reg[-13]~feeder_combout\);

-- Location: FF_X27_Y2_N17
\DERIV_CALC|dz1_2_reg[-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[-13]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg[-13]~q\);

-- Location: MLABCELL_X21_Y2_N57
\DERIV_CALC|dz1_2_reg[-14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[-14]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	combout => \DERIV_CALC|dz1_2_reg[-14]~feeder_combout\);

-- Location: FF_X21_Y2_N59
\DERIV_CALC|dz1_2_reg[-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[-14]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg[-14]~q\);

-- Location: MLABCELL_X21_Y2_N0
\DERIV_CALC|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~1_sumout\ = SUM(( \DERIV_CALC|dz1_2_reg[-14]~q\ ) + ( \DERIV_CALC|dz1_1_reg[-14]\ ) + ( !VCC ))
-- \DERIV_CALC|Add4~2\ = CARRY(( \DERIV_CALC|dz1_2_reg[-14]~q\ ) + ( \DERIV_CALC|dz1_1_reg[-14]\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg[-14]\,
	datad => \DERIV_CALC|ALT_INV_dz1_2_reg[-14]~q\,
	cin => GND,
	sumout => \DERIV_CALC|Add4~1_sumout\,
	cout => \DERIV_CALC|Add4~2\);

-- Location: MLABCELL_X21_Y2_N3
\DERIV_CALC|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~5_sumout\ = SUM(( \DERIV_CALC|dz1_2_reg[-13]~q\ ) + ( \DERIV_CALC|dz1_1_reg[-13]\ ) + ( \DERIV_CALC|Add4~2\ ))
-- \DERIV_CALC|Add4~6\ = CARRY(( \DERIV_CALC|dz1_2_reg[-13]~q\ ) + ( \DERIV_CALC|dz1_1_reg[-13]\ ) + ( \DERIV_CALC|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg[-13]\,
	datad => \DERIV_CALC|ALT_INV_dz1_2_reg[-13]~q\,
	cin => \DERIV_CALC|Add4~2\,
	sumout => \DERIV_CALC|Add4~5_sumout\,
	cout => \DERIV_CALC|Add4~6\);

-- Location: MLABCELL_X21_Y2_N6
\DERIV_CALC|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~9_sumout\ = SUM(( \DERIV_CALC|dz1_1_reg[-12]\ ) + ( \DERIV_CALC|dz1_2_reg[-12]~q\ ) + ( \DERIV_CALC|Add4~6\ ))
-- \DERIV_CALC|Add4~10\ = CARRY(( \DERIV_CALC|dz1_1_reg[-12]\ ) + ( \DERIV_CALC|dz1_2_reg[-12]~q\ ) + ( \DERIV_CALC|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_2_reg[-12]~q\,
	datad => \DERIV_CALC|ALT_INV_dz1_1_reg[-12]\,
	cin => \DERIV_CALC|Add4~6\,
	sumout => \DERIV_CALC|Add4~9_sumout\,
	cout => \DERIV_CALC|Add4~10\);

-- Location: MLABCELL_X21_Y2_N9
\DERIV_CALC|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~13_sumout\ = SUM(( \DERIV_CALC|dz1_1_reg[-11]\ ) + ( \DERIV_CALC|dz1_2_reg[-11]~q\ ) + ( \DERIV_CALC|Add4~10\ ))
-- \DERIV_CALC|Add4~14\ = CARRY(( \DERIV_CALC|dz1_1_reg[-11]\ ) + ( \DERIV_CALC|dz1_2_reg[-11]~q\ ) + ( \DERIV_CALC|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_2_reg[-11]~q\,
	datad => \DERIV_CALC|ALT_INV_dz1_1_reg[-11]\,
	cin => \DERIV_CALC|Add4~10\,
	sumout => \DERIV_CALC|Add4~13_sumout\,
	cout => \DERIV_CALC|Add4~14\);

-- Location: MLABCELL_X21_Y2_N12
\DERIV_CALC|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~17_sumout\ = SUM(( \DERIV_CALC|dz1_1_reg[-10]\ ) + ( \DERIV_CALC|dz1_2_reg[-10]~q\ ) + ( \DERIV_CALC|Add4~14\ ))
-- \DERIV_CALC|Add4~18\ = CARRY(( \DERIV_CALC|dz1_1_reg[-10]\ ) + ( \DERIV_CALC|dz1_2_reg[-10]~q\ ) + ( \DERIV_CALC|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_2_reg[-10]~q\,
	datad => \DERIV_CALC|ALT_INV_dz1_1_reg[-10]\,
	cin => \DERIV_CALC|Add4~14\,
	sumout => \DERIV_CALC|Add4~17_sumout\,
	cout => \DERIV_CALC|Add4~18\);

-- Location: MLABCELL_X21_Y2_N15
\DERIV_CALC|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~21_sumout\ = SUM(( \DERIV_CALC|dz1_1_reg[-9]\ ) + ( \DERIV_CALC|dz1_2_reg[-9]~q\ ) + ( \DERIV_CALC|Add4~18\ ))
-- \DERIV_CALC|Add4~22\ = CARRY(( \DERIV_CALC|dz1_1_reg[-9]\ ) + ( \DERIV_CALC|dz1_2_reg[-9]~q\ ) + ( \DERIV_CALC|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_2_reg[-9]~q\,
	datad => \DERIV_CALC|ALT_INV_dz1_1_reg[-9]\,
	cin => \DERIV_CALC|Add4~18\,
	sumout => \DERIV_CALC|Add4~21_sumout\,
	cout => \DERIV_CALC|Add4~22\);

-- Location: MLABCELL_X21_Y2_N18
\DERIV_CALC|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~25_sumout\ = SUM(( \DERIV_CALC|dz1_2_reg[-8]~q\ ) + ( \DERIV_CALC|dz1_1_reg[-8]\ ) + ( \DERIV_CALC|Add4~22\ ))
-- \DERIV_CALC|Add4~26\ = CARRY(( \DERIV_CALC|dz1_2_reg[-8]~q\ ) + ( \DERIV_CALC|dz1_1_reg[-8]\ ) + ( \DERIV_CALC|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg[-8]\,
	datad => \DERIV_CALC|ALT_INV_dz1_2_reg[-8]~q\,
	cin => \DERIV_CALC|Add4~22\,
	sumout => \DERIV_CALC|Add4~25_sumout\,
	cout => \DERIV_CALC|Add4~26\);

-- Location: MLABCELL_X21_Y2_N21
\DERIV_CALC|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~29_sumout\ = SUM(( \DERIV_CALC|dz1_1_reg[-7]\ ) + ( \DERIV_CALC|dz1_2_reg[-7]~q\ ) + ( \DERIV_CALC|Add4~26\ ))
-- \DERIV_CALC|Add4~30\ = CARRY(( \DERIV_CALC|dz1_1_reg[-7]\ ) + ( \DERIV_CALC|dz1_2_reg[-7]~q\ ) + ( \DERIV_CALC|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dz1_2_reg[-7]~q\,
	datad => \DERIV_CALC|ALT_INV_dz1_1_reg[-7]\,
	cin => \DERIV_CALC|Add4~26\,
	sumout => \DERIV_CALC|Add4~29_sumout\,
	cout => \DERIV_CALC|Add4~30\);

-- Location: MLABCELL_X21_Y2_N24
\DERIV_CALC|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~33_sumout\ = SUM(( \DERIV_CALC|dz1_2_reg[-6]~q\ ) + ( \DERIV_CALC|dz1_1_reg[-6]\ ) + ( \DERIV_CALC|Add4~30\ ))
-- \DERIV_CALC|Add4~34\ = CARRY(( \DERIV_CALC|dz1_2_reg[-6]~q\ ) + ( \DERIV_CALC|dz1_1_reg[-6]\ ) + ( \DERIV_CALC|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dz1_1_reg[-6]\,
	datac => \DERIV_CALC|ALT_INV_dz1_2_reg[-6]~q\,
	cin => \DERIV_CALC|Add4~30\,
	sumout => \DERIV_CALC|Add4~33_sumout\,
	cout => \DERIV_CALC|Add4~34\);

-- Location: MLABCELL_X21_Y2_N27
\DERIV_CALC|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~37_sumout\ = SUM(( \DERIV_CALC|dz1_2_reg[-5]~q\ ) + ( \DERIV_CALC|dz1_1_reg[-5]\ ) + ( \DERIV_CALC|Add4~34\ ))
-- \DERIV_CALC|Add4~38\ = CARRY(( \DERIV_CALC|dz1_2_reg[-5]~q\ ) + ( \DERIV_CALC|dz1_1_reg[-5]\ ) + ( \DERIV_CALC|Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg[-5]\,
	datad => \DERIV_CALC|ALT_INV_dz1_2_reg[-5]~q\,
	cin => \DERIV_CALC|Add4~34\,
	sumout => \DERIV_CALC|Add4~37_sumout\,
	cout => \DERIV_CALC|Add4~38\);

-- Location: MLABCELL_X21_Y1_N0
\DERIV_CALC|Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~41_sumout\ = SUM(( \DERIV_CALC|dz1_2_reg[-4]~q\ ) + ( \DERIV_CALC|dz1_1_reg[-4]\ ) + ( \DERIV_CALC|Add4~38\ ))
-- \DERIV_CALC|Add4~42\ = CARRY(( \DERIV_CALC|dz1_2_reg[-4]~q\ ) + ( \DERIV_CALC|dz1_1_reg[-4]\ ) + ( \DERIV_CALC|Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg[-4]\,
	datad => \DERIV_CALC|ALT_INV_dz1_2_reg[-4]~q\,
	cin => \DERIV_CALC|Add4~38\,
	sumout => \DERIV_CALC|Add4~41_sumout\,
	cout => \DERIV_CALC|Add4~42\);

-- Location: MLABCELL_X21_Y1_N3
\DERIV_CALC|Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~45_sumout\ = SUM(( \DERIV_CALC|dz1_2_reg[-3]~q\ ) + ( \DERIV_CALC|dz1_1_reg[-3]\ ) + ( \DERIV_CALC|Add4~42\ ))
-- \DERIV_CALC|Add4~46\ = CARRY(( \DERIV_CALC|dz1_2_reg[-3]~q\ ) + ( \DERIV_CALC|dz1_1_reg[-3]\ ) + ( \DERIV_CALC|Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg[-3]\,
	datad => \DERIV_CALC|ALT_INV_dz1_2_reg[-3]~q\,
	cin => \DERIV_CALC|Add4~42\,
	sumout => \DERIV_CALC|Add4~45_sumout\,
	cout => \DERIV_CALC|Add4~46\);

-- Location: MLABCELL_X21_Y1_N6
\DERIV_CALC|Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~49_sumout\ = SUM(( \DERIV_CALC|dz1_2_reg[-2]~q\ ) + ( \DERIV_CALC|dz1_1_reg[-2]\ ) + ( \DERIV_CALC|Add4~46\ ))
-- \DERIV_CALC|Add4~50\ = CARRY(( \DERIV_CALC|dz1_2_reg[-2]~q\ ) + ( \DERIV_CALC|dz1_1_reg[-2]\ ) + ( \DERIV_CALC|Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg[-2]\,
	datad => \DERIV_CALC|ALT_INV_dz1_2_reg[-2]~q\,
	cin => \DERIV_CALC|Add4~46\,
	sumout => \DERIV_CALC|Add4~49_sumout\,
	cout => \DERIV_CALC|Add4~50\);

-- Location: MLABCELL_X21_Y1_N9
\DERIV_CALC|Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~53_sumout\ = SUM(( \DERIV_CALC|dz1_1_reg[-1]\ ) + ( \DERIV_CALC|dz1_2_reg[-1]~q\ ) + ( \DERIV_CALC|Add4~50\ ))
-- \DERIV_CALC|Add4~54\ = CARRY(( \DERIV_CALC|dz1_1_reg[-1]\ ) + ( \DERIV_CALC|dz1_2_reg[-1]~q\ ) + ( \DERIV_CALC|Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_2_reg[-1]~q\,
	datad => \DERIV_CALC|ALT_INV_dz1_1_reg[-1]\,
	cin => \DERIV_CALC|Add4~50\,
	sumout => \DERIV_CALC|Add4~53_sumout\,
	cout => \DERIV_CALC|Add4~54\);

-- Location: MLABCELL_X21_Y1_N12
\DERIV_CALC|Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~57_sumout\ = SUM(( \DERIV_CALC|dz1_2_reg\(0) ) + ( \DERIV_CALC|dz1_1_reg\(0) ) + ( \DERIV_CALC|Add4~54\ ))
-- \DERIV_CALC|Add4~58\ = CARRY(( \DERIV_CALC|dz1_2_reg\(0) ) + ( \DERIV_CALC|dz1_1_reg\(0) ) + ( \DERIV_CALC|Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg\(0),
	datad => \DERIV_CALC|ALT_INV_dz1_2_reg\(0),
	cin => \DERIV_CALC|Add4~54\,
	sumout => \DERIV_CALC|Add4~57_sumout\,
	cout => \DERIV_CALC|Add4~58\);

-- Location: MLABCELL_X21_Y1_N15
\DERIV_CALC|Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~61_sumout\ = SUM(( \DERIV_CALC|dz1_2_reg\(1) ) + ( \DERIV_CALC|dz1_1_reg\(1) ) + ( \DERIV_CALC|Add4~58\ ))
-- \DERIV_CALC|Add4~62\ = CARRY(( \DERIV_CALC|dz1_2_reg\(1) ) + ( \DERIV_CALC|dz1_1_reg\(1) ) + ( \DERIV_CALC|Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dz1_2_reg\(1),
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg\(1),
	cin => \DERIV_CALC|Add4~58\,
	sumout => \DERIV_CALC|Add4~61_sumout\,
	cout => \DERIV_CALC|Add4~62\);

-- Location: MLABCELL_X21_Y1_N18
\DERIV_CALC|Add4~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~65_sumout\ = SUM(( \DERIV_CALC|dz1_1_reg\(2) ) + ( \DERIV_CALC|dz1_2_reg\(2) ) + ( \DERIV_CALC|Add4~62\ ))
-- \DERIV_CALC|Add4~66\ = CARRY(( \DERIV_CALC|dz1_1_reg\(2) ) + ( \DERIV_CALC|dz1_2_reg\(2) ) + ( \DERIV_CALC|Add4~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_2_reg\(2),
	datad => \DERIV_CALC|ALT_INV_dz1_1_reg\(2),
	cin => \DERIV_CALC|Add4~62\,
	sumout => \DERIV_CALC|Add4~65_sumout\,
	cout => \DERIV_CALC|Add4~66\);

-- Location: MLABCELL_X21_Y1_N21
\DERIV_CALC|Add4~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~69_sumout\ = SUM(( \DERIV_CALC|dz1_2_reg\(3) ) + ( \DERIV_CALC|dz1_1_reg\(3) ) + ( \DERIV_CALC|Add4~66\ ))
-- \DERIV_CALC|Add4~70\ = CARRY(( \DERIV_CALC|dz1_2_reg\(3) ) + ( \DERIV_CALC|dz1_1_reg\(3) ) + ( \DERIV_CALC|Add4~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg\(3),
	datad => \DERIV_CALC|ALT_INV_dz1_2_reg\(3),
	cin => \DERIV_CALC|Add4~66\,
	sumout => \DERIV_CALC|Add4~69_sumout\,
	cout => \DERIV_CALC|Add4~70\);

-- Location: FF_X21_Y1_N22
\DERIV_CALC|dz2_1_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~69_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg\(3));

-- Location: FF_X22_Y3_N8
\DERIV_CALC|dz3_1_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz2_1_reg\(3),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg\(3));

-- Location: FF_X22_Y3_N16
\DERIV_CALC|dz4_1_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz3_1_reg\(3),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg\(3));

-- Location: MLABCELL_X21_Y7_N21
\mul_reg[2][-7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[2][-7]~feeder_combout\ = ( \DERIV_CALC|dz4_1_reg\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz4_1_reg\(3),
	combout => \mul_reg[2][-7]~feeder_combout\);

-- Location: FF_X21_Y7_N23
\mul_reg[2][-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[2][-7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[2][-7]~q\);

-- Location: MLABCELL_X21_Y7_N54
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( \var_main_reg[2][8]~_Duplicate_2_q\ ) + ( \mul_reg[2][-6]~q\ ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( \var_main_reg[2][8]~_Duplicate_2_q\ ) + ( \mul_reg[2][-6]~q\ ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mul_reg[2][-6]~q\,
	datad => \ALT_INV_var_main_reg[2][8]~_Duplicate_2_q\,
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: MLABCELL_X21_Y7_N57
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( \mul_reg[2][-5]~q\ ) + ( \var_main_reg[2][9]~_Duplicate_2_q\ ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( \mul_reg[2][-5]~q\ ) + ( \var_main_reg[2][9]~_Duplicate_2_q\ ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[2][9]~_Duplicate_2_q\,
	datad => \ALT_INV_mul_reg[2][-5]~q\,
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: MLABCELL_X21_Y6_N0
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( \var_main_reg[2][10]~_Duplicate_2_q\ ) + ( \mul_reg[2][-4]~q\ ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( \var_main_reg[2][10]~_Duplicate_2_q\ ) + ( \mul_reg[2][-4]~q\ ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[2][10]~_Duplicate_2_q\,
	datac => \ALT_INV_mul_reg[2][-4]~q\,
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: MLABCELL_X21_Y6_N3
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( \var_main_reg[2][11]~_Duplicate_2_q\ ) + ( \mul_reg[2][7]~q\ ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( \var_main_reg[2][11]~_Duplicate_2_q\ ) + ( \mul_reg[2][7]~q\ ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mul_reg[2][7]~q\,
	datad => \ALT_INV_var_main_reg[2][11]~_Duplicate_2_q\,
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X21_Y6_N14
\var_main_reg[2][12]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add2~49_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][12]~_Duplicate_2_q\);

-- Location: M10K_X14_Y1_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init0 => "55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Heaviside_memory_66243ee0.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_RC2:DERIV_CALC|Heaviside_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_hrd1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 22,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: MLABCELL_X21_Y1_N39
\DERIV_CALC|dz1_2_reg[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[7]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a21\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a21\,
	combout => \DERIV_CALC|dz1_2_reg[7]~feeder_combout\);

-- Location: FF_X21_Y1_N41
\DERIV_CALC|dz1_2_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg\(7));

-- Location: M10K_X26_Y3_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init2 => "555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC",
	mem_init1 => "000000000000000000000000000000000555555555555555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000555555555555555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Heaviside_memory_66243ee0.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_RC2:DERIV_CALC|Heaviside_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_hrd1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 22,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: LABCELL_X22_Y1_N27
\DERIV_CALC|dz1_2_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[5]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a19\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a19\,
	combout => \DERIV_CALC|dz1_2_reg[5]~feeder_combout\);

-- Location: FF_X22_Y1_N28
\DERIV_CALC|dz1_2_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg\(5));

-- Location: FF_X25_Y1_N22
\DERIV_CALC|dz1_2_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18~portadataout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg\(4));

-- Location: MLABCELL_X21_Y1_N24
\DERIV_CALC|Add4~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~73_sumout\ = SUM(( \DERIV_CALC|dz1_2_reg\(4) ) + ( \DERIV_CALC|dz1_1_reg\(4) ) + ( \DERIV_CALC|Add4~70\ ))
-- \DERIV_CALC|Add4~74\ = CARRY(( \DERIV_CALC|dz1_2_reg\(4) ) + ( \DERIV_CALC|dz1_1_reg\(4) ) + ( \DERIV_CALC|Add4~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dz1_1_reg\(4),
	datad => \DERIV_CALC|ALT_INV_dz1_2_reg\(4),
	cin => \DERIV_CALC|Add4~70\,
	sumout => \DERIV_CALC|Add4~73_sumout\,
	cout => \DERIV_CALC|Add4~74\);

-- Location: MLABCELL_X21_Y1_N27
\DERIV_CALC|Add4~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~77_sumout\ = SUM(( \DERIV_CALC|dz1_1_reg\(5) ) + ( \DERIV_CALC|dz1_2_reg\(5) ) + ( \DERIV_CALC|Add4~74\ ))
-- \DERIV_CALC|Add4~78\ = CARRY(( \DERIV_CALC|dz1_1_reg\(5) ) + ( \DERIV_CALC|dz1_2_reg\(5) ) + ( \DERIV_CALC|Add4~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg\(5),
	dataf => \DERIV_CALC|ALT_INV_dz1_2_reg\(5),
	cin => \DERIV_CALC|Add4~74\,
	sumout => \DERIV_CALC|Add4~77_sumout\,
	cout => \DERIV_CALC|Add4~78\);

-- Location: MLABCELL_X21_Y1_N30
\DERIV_CALC|Add4~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~81_sumout\ = SUM(( \DERIV_CALC|dz1_1_reg\(6) ) + ( \DERIV_CALC|dz1_2_reg\(6) ) + ( \DERIV_CALC|Add4~78\ ))
-- \DERIV_CALC|Add4~82\ = CARRY(( \DERIV_CALC|dz1_1_reg\(6) ) + ( \DERIV_CALC|dz1_2_reg\(6) ) + ( \DERIV_CALC|Add4~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_2_reg\(6),
	datad => \DERIV_CALC|ALT_INV_dz1_1_reg\(6),
	cin => \DERIV_CALC|Add4~78\,
	sumout => \DERIV_CALC|Add4~81_sumout\,
	cout => \DERIV_CALC|Add4~82\);

-- Location: MLABCELL_X21_Y1_N33
\DERIV_CALC|Add4~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add4~85_sumout\ = SUM(( \DERIV_CALC|dz1_2_reg\(7) ) + ( \DERIV_CALC|dz1_1_reg\(7) ) + ( \DERIV_CALC|Add4~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dz1_2_reg\(7),
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg\(7),
	cin => \DERIV_CALC|Add4~82\,
	sumout => \DERIV_CALC|Add4~85_sumout\);

-- Location: FF_X21_Y1_N34
\DERIV_CALC|dz2_1_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~85_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg\(7));

-- Location: FF_X21_Y6_N8
\DERIV_CALC|dz3_1_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz2_1_reg\(7),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg\(7));

-- Location: FF_X21_Y6_N17
\DERIV_CALC|dz4_1_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz3_1_reg\(7),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg\(7));

-- Location: FF_X21_Y6_N49
\mul_reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz4_1_reg\(7),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[2][7]~q\);

-- Location: MLABCELL_X21_Y6_N36
\var_main_reg[2][11]~_Duplicate_2feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \var_main_reg[2][11]~_Duplicate_2feeder_combout\ = ( \Add2~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~45_sumout\,
	combout => \var_main_reg[2][11]~_Duplicate_2feeder_combout\);

-- Location: FF_X21_Y6_N38
\var_main_reg[2][11]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \var_main_reg[2][11]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][11]~_Duplicate_2_q\);

-- Location: MLABCELL_X15_Y1_N9
\DERIV_CALC|dz1_2_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[6]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20~portadataout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a20~portadataout\,
	combout => \DERIV_CALC|dz1_2_reg[6]~feeder_combout\);

-- Location: FF_X15_Y1_N10
\DERIV_CALC|dz1_2_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg\(6));

-- Location: FF_X21_Y1_N31
\DERIV_CALC|dz2_1_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~81_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg\(6));

-- Location: FF_X21_Y6_N4
\DERIV_CALC|dz3_1_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz2_1_reg\(6),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg\(6));

-- Location: FF_X21_Y6_N11
\DERIV_CALC|dz4_1_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz3_1_reg\(6),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg\(6));

-- Location: FF_X21_Y6_N53
\mul_reg[2][-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz4_1_reg\(6),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[2][-4]~q\);

-- Location: FF_X21_Y6_N2
\var_main_reg[2][10]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][10]~_Duplicate_2_q\);

-- Location: FF_X21_Y4_N1
\DERIV_CALC|dz1_2_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16~portadataout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg\(2));

-- Location: FF_X21_Y1_N20
\DERIV_CALC|dz2_1_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~65_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg\(2));

-- Location: FF_X15_Y3_N11
\DERIV_CALC|dz3_1_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz2_1_reg\(2),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg\(2));

-- Location: FF_X15_Y3_N13
\DERIV_CALC|dz4_1_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz3_1_reg\(2),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg\(2));

-- Location: MLABCELL_X21_Y7_N9
\mul_reg[2][-8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[2][-8]~feeder_combout\ = ( \DERIV_CALC|dz4_1_reg\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz4_1_reg\(2),
	combout => \mul_reg[2][-8]~feeder_combout\);

-- Location: FF_X21_Y7_N11
\mul_reg[2][-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[2][-8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[2][-8]~q\);

-- Location: FF_X19_Y3_N32
\DERIV_CALC|dy2_1_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~65_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg\(2));

-- Location: FF_X18_Y3_N20
\DERIV_CALC|dy3_1_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~65_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg\(2));

-- Location: FF_X18_Y3_N58
\DERIV_CALC|dy4_1_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy3_1_reg\(2),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg\(2));

-- Location: MLABCELL_X21_Y5_N3
\mul_reg[1][-8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[1][-8]~feeder_combout\ = ( \DERIV_CALC|dy4_1_reg\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy4_1_reg\(2),
	combout => \mul_reg[1][-8]~feeder_combout\);

-- Location: FF_X21_Y5_N5
\mul_reg[1][-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[1][-8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][-8]~q\);

-- Location: FF_X21_Y1_N29
\DERIV_CALC|dz2_1_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~77_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg\(5));

-- Location: FF_X21_Y1_N53
\DERIV_CALC|dz3_1_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz2_1_reg\(5),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg\(5));

-- Location: FF_X21_Y1_N49
\DERIV_CALC|dz4_1_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz3_1_reg\(5),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg\(5));

-- Location: MLABCELL_X21_Y7_N3
\mul_reg[2][-5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[2][-5]~feeder_combout\ = ( \DERIV_CALC|dz4_1_reg\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz4_1_reg\(5),
	combout => \mul_reg[2][-5]~feeder_combout\);

-- Location: FF_X21_Y7_N5
\mul_reg[2][-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[2][-5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[2][-5]~q\);

-- Location: FF_X21_Y7_N59
\var_main_reg[2][9]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~37_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][9]~_Duplicate_2_q\);

-- Location: LABCELL_X19_Y1_N12
\DERIV_CALC|dz1_2_reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[1]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a15\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	combout => \DERIV_CALC|dz1_2_reg[1]~feeder_combout\);

-- Location: FF_X19_Y1_N14
\DERIV_CALC|dz1_2_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg\(1));

-- Location: FF_X21_Y1_N16
\DERIV_CALC|dz2_1_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~61_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg\(1));

-- Location: FF_X22_Y1_N8
\DERIV_CALC|dz3_1_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz2_1_reg\(1),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg\(1));

-- Location: FF_X22_Y1_N14
\DERIV_CALC|dz4_1_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz3_1_reg\(1),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg\(1));

-- Location: MLABCELL_X21_Y7_N12
\mul_reg[2][-9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[2][-9]~feeder_combout\ = ( \DERIV_CALC|dz4_1_reg\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz4_1_reg\(1),
	combout => \mul_reg[2][-9]~feeder_combout\);

-- Location: FF_X21_Y7_N14
\mul_reg[2][-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[2][-9]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[2][-9]~q\);

-- Location: FF_X19_Y3_N28
\DERIV_CALC|dy2_1_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~61_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg\(1));

-- Location: FF_X18_Y3_N17
\DERIV_CALC|dy3_1_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~61_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg\(1));

-- Location: FF_X18_Y3_N40
\DERIV_CALC|dy4_1_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy3_1_reg\(1),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg\(1));

-- Location: FF_X21_Y5_N17
\mul_reg[1][-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy4_1_reg\(1),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][-9]~q\);

-- Location: FF_X19_Y3_N26
\DERIV_CALC|dy2_1_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~57_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg\(0));

-- Location: FF_X18_Y3_N13
\DERIV_CALC|dy3_1_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~57_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg\(0));

-- Location: LABCELL_X19_Y3_N57
\DERIV_CALC|dy4_1_reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dy4_1_reg[0]~feeder_combout\ = ( \DERIV_CALC|dy3_1_reg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy3_1_reg\(0),
	combout => \DERIV_CALC|dy4_1_reg[0]~feeder_combout\);

-- Location: FF_X19_Y3_N58
\DERIV_CALC|dy4_1_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dy4_1_reg[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg\(0));

-- Location: MLABCELL_X21_Y5_N21
\mul_reg[1][-10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[1][-10]~feeder_combout\ = ( \DERIV_CALC|dy4_1_reg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy4_1_reg\(0),
	combout => \mul_reg[1][-10]~feeder_combout\);

-- Location: FF_X21_Y5_N23
\mul_reg[1][-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[1][-10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][-10]~q\);

-- Location: FF_X21_Y1_N14
\DERIV_CALC|dz2_1_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~57_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg\(0));

-- Location: FF_X21_Y1_N58
\DERIV_CALC|dz3_1_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz2_1_reg\(0),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg\(0));

-- Location: FF_X21_Y7_N44
\DERIV_CALC|dz4_1_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz3_1_reg\(0),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg\(0));

-- Location: MLABCELL_X21_Y7_N24
\mul_reg[2][-10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[2][-10]~feeder_combout\ = ( \DERIV_CALC|dz4_1_reg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz4_1_reg\(0),
	combout => \mul_reg[2][-10]~feeder_combout\);

-- Location: FF_X21_Y7_N26
\mul_reg[2][-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[2][-10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[2][-10]~q\);

-- Location: FF_X19_Y3_N23
\DERIV_CALC|dy2_1_reg[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~53_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg[-1]~q\);

-- Location: FF_X18_Y3_N11
\DERIV_CALC|dy3_1_reg[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~53_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg[-1]~q\);

-- Location: FF_X18_Y3_N44
\DERIV_CALC|dy4_1_reg[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy3_1_reg[-1]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg[-1]~q\);

-- Location: FF_X21_Y5_N14
\mul_reg[1][-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy4_1_reg[-1]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][-11]~q\);

-- Location: FF_X21_Y1_N25
\DERIV_CALC|dz2_1_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~73_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg\(4));

-- Location: LABCELL_X24_Y2_N15
\DERIV_CALC|dz3_1_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz3_1_reg[4]~feeder_combout\ = ( \DERIV_CALC|dz2_1_reg\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz2_1_reg\(4),
	combout => \DERIV_CALC|dz3_1_reg[4]~feeder_combout\);

-- Location: FF_X24_Y2_N17
\DERIV_CALC|dz3_1_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz3_1_reg[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg\(4));

-- Location: LABCELL_X24_Y2_N12
\DERIV_CALC|dz4_1_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz4_1_reg[4]~feeder_combout\ = \DERIV_CALC|dz3_1_reg\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dz3_1_reg\(4),
	combout => \DERIV_CALC|dz4_1_reg[4]~feeder_combout\);

-- Location: FF_X24_Y2_N13
\DERIV_CALC|dz4_1_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz4_1_reg[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg\(4));

-- Location: MLABCELL_X21_Y7_N0
\mul_reg[2][-6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[2][-6]~feeder_combout\ = ( \DERIV_CALC|dz4_1_reg\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz4_1_reg\(4),
	combout => \mul_reg[2][-6]~feeder_combout\);

-- Location: FF_X21_Y7_N2
\mul_reg[2][-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[2][-6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[2][-6]~q\);

-- Location: FF_X21_Y7_N56
\var_main_reg[2][8]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][8]~_Duplicate_2_q\);

-- Location: LABCELL_X24_Y1_N0
\DERIV_CALC|dz1_2_reg[-1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz1_2_reg[-1]~feeder_combout\ = ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a13\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \DERIV_CALC|dz1_2_reg[-1]~feeder_combout\);

-- Location: FF_X24_Y1_N1
\DERIV_CALC|dz1_2_reg[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz1_2_reg[-1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz1_2_reg[-1]~q\);

-- Location: FF_X21_Y1_N10
\DERIV_CALC|dz2_1_reg[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~53_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg[-1]~q\);

-- Location: FF_X25_Y2_N35
\DERIV_CALC|dz3_1_reg[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz2_1_reg[-1]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg[-1]~q\);

-- Location: MLABCELL_X25_Y2_N30
\DERIV_CALC|dz4_1_reg[-1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz4_1_reg[-1]~feeder_combout\ = \DERIV_CALC|dz3_1_reg[-1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz3_1_reg[-1]~q\,
	combout => \DERIV_CALC|dz4_1_reg[-1]~feeder_combout\);

-- Location: FF_X25_Y2_N31
\DERIV_CALC|dz4_1_reg[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz4_1_reg[-1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg[-1]~q\);

-- Location: LABCELL_X22_Y7_N0
\mul_reg[2][-11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[2][-11]~feeder_combout\ = ( \DERIV_CALC|dz4_1_reg[-1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz4_1_reg[-1]~q\,
	combout => \mul_reg[2][-11]~feeder_combout\);

-- Location: FF_X22_Y7_N2
\mul_reg[2][-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[2][-11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[2][-11]~q\);

-- Location: LABCELL_X19_Y9_N42
\DERIV_CALC|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~81_sumout\ = SUM(( !\DERIV_CALC|dx1_2_reg\(6) $ (\DERIV_CALC|dx1_1_reg\(6)) ) + ( \DERIV_CALC|Add0~79\ ) + ( \DERIV_CALC|Add0~78\ ))
-- \DERIV_CALC|Add0~82\ = CARRY(( !\DERIV_CALC|dx1_2_reg\(6) $ (\DERIV_CALC|dx1_1_reg\(6)) ) + ( \DERIV_CALC|Add0~79\ ) + ( \DERIV_CALC|Add0~78\ ))
-- \DERIV_CALC|Add0~83\ = SHARE((!\DERIV_CALC|dx1_2_reg\(6) & \DERIV_CALC|dx1_1_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_2_reg\(6),
	datad => \DERIV_CALC|ALT_INV_dx1_1_reg\(6),
	cin => \DERIV_CALC|Add0~78\,
	sharein => \DERIV_CALC|Add0~79\,
	sumout => \DERIV_CALC|Add0~81_sumout\,
	cout => \DERIV_CALC|Add0~82\,
	shareout => \DERIV_CALC|Add0~83\);

-- Location: FF_X19_Y9_N43
\DERIV_CALC|dx2_1_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~81_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg\(6));

-- Location: LABCELL_X19_Y5_N30
\DERIV_CALC|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~81_sumout\ = SUM(( !\DERIV_CALC|dx2_2_reg[6]~DUPLICATE_q\ $ (\DERIV_CALC|dx2_1_reg\(6)) ) + ( \DERIV_CALC|Add1~79\ ) + ( \DERIV_CALC|Add1~78\ ))
-- \DERIV_CALC|Add1~82\ = CARRY(( !\DERIV_CALC|dx2_2_reg[6]~DUPLICATE_q\ $ (\DERIV_CALC|dx2_1_reg\(6)) ) + ( \DERIV_CALC|Add1~79\ ) + ( \DERIV_CALC|Add1~78\ ))
-- \DERIV_CALC|Add1~83\ = SHARE((!\DERIV_CALC|dx2_2_reg[6]~DUPLICATE_q\ & \DERIV_CALC|dx2_1_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx2_2_reg[6]~DUPLICATE_q\,
	datac => \DERIV_CALC|ALT_INV_dx2_1_reg\(6),
	cin => \DERIV_CALC|Add1~78\,
	sharein => \DERIV_CALC|Add1~79\,
	sumout => \DERIV_CALC|Add1~81_sumout\,
	cout => \DERIV_CALC|Add1~82\,
	shareout => \DERIV_CALC|Add1~83\);

-- Location: FF_X19_Y5_N31
\DERIV_CALC|dx3_1_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~81_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg\(6));

-- Location: LABCELL_X24_Y3_N15
\DERIV_CALC|dx4_1_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx4_1_reg[6]~feeder_combout\ = ( \DERIV_CALC|dx3_1_reg\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx3_1_reg\(6),
	combout => \DERIV_CALC|dx4_1_reg[6]~feeder_combout\);

-- Location: FF_X24_Y3_N16
\DERIV_CALC|dx4_1_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx4_1_reg[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg\(6));

-- Location: LABCELL_X24_Y3_N12
\mul_reg[0][-4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[0][-4]~feeder_combout\ = \DERIV_CALC|dx4_1_reg\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx4_1_reg\(6),
	combout => \mul_reg[0][-4]~feeder_combout\);

-- Location: FF_X24_Y3_N13
\mul_reg[0][-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[0][-4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-4]~q\);

-- Location: MLABCELL_X25_Y3_N3
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \var_main_reg[0][11]~DUPLICATE_q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \var_main_reg[0][11]~DUPLICATE_q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul_reg[0][7]~q\,
	datad => \ALT_INV_var_main_reg[0][11]~DUPLICATE_q\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X25_Y3_N7
\var_main_reg[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][12]~q\);

-- Location: FF_X25_Y3_N46
\DERIV_CALC|dx1_3_reg[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[0][12]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg[-2]~q\);

-- Location: FF_X19_Y5_N53
\DERIV_CALC|dx2_2_reg[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg[-2]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-2]~q\);

-- Location: FF_X18_Y3_N8
\DERIV_CALC|dy3_1_reg[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~49_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg[-2]~q\);

-- Location: FF_X18_Y3_N49
\DERIV_CALC|dy4_1_reg[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy3_1_reg[-2]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg[-2]~q\);

-- Location: MLABCELL_X21_Y5_N9
\mul_reg[1][-12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[1][-12]~feeder_combout\ = ( \DERIV_CALC|dy4_1_reg[-2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy4_1_reg[-2]~q\,
	combout => \mul_reg[1][-12]~feeder_combout\);

-- Location: FF_X21_Y5_N10
\mul_reg[1][-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[1][-12]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][-12]~q\);

-- Location: FF_X21_Y1_N7
\DERIV_CALC|dz2_1_reg[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~49_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg[-2]~q\);

-- Location: LABCELL_X23_Y3_N9
\DERIV_CALC|dz3_1_reg[-2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz3_1_reg[-2]~feeder_combout\ = ( \DERIV_CALC|dz2_1_reg[-2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz2_1_reg[-2]~q\,
	combout => \DERIV_CALC|dz3_1_reg[-2]~feeder_combout\);

-- Location: FF_X23_Y3_N11
\DERIV_CALC|dz3_1_reg[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz3_1_reg[-2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg[-2]~q\);

-- Location: FF_X23_Y3_N13
\DERIV_CALC|dz4_1_reg[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz3_1_reg[-2]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg[-2]~q\);

-- Location: MLABCELL_X21_Y7_N6
\mul_reg[2][-12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[2][-12]~feeder_combout\ = ( \DERIV_CALC|dz4_1_reg[-2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz4_1_reg[-2]~q\,
	combout => \mul_reg[2][-12]~feeder_combout\);

-- Location: FF_X21_Y7_N7
\mul_reg[2][-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[2][-12]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[2][-12]~q\);

-- Location: LABCELL_X19_Y9_N45
\DERIV_CALC|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~85_sumout\ = SUM(( !\DERIV_CALC|dx1_2_reg\(7) $ (\DERIV_CALC|dx1_1_reg\(7)) ) + ( \DERIV_CALC|Add0~83\ ) + ( \DERIV_CALC|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_2_reg\(7),
	datad => \DERIV_CALC|ALT_INV_dx1_1_reg\(7),
	cin => \DERIV_CALC|Add0~82\,
	sharein => \DERIV_CALC|Add0~83\,
	sumout => \DERIV_CALC|Add0~85_sumout\);

-- Location: FF_X19_Y9_N46
\DERIV_CALC|dx2_1_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add0~85_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg\(7));

-- Location: LABCELL_X19_Y5_N33
\DERIV_CALC|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~85_sumout\ = SUM(( !\DERIV_CALC|dx2_1_reg\(7) $ (\DERIV_CALC|dx2_2_reg\(7)) ) + ( \DERIV_CALC|Add1~83\ ) + ( \DERIV_CALC|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx2_1_reg\(7),
	datad => \DERIV_CALC|ALT_INV_dx2_2_reg\(7),
	cin => \DERIV_CALC|Add1~82\,
	sharein => \DERIV_CALC|Add1~83\,
	sumout => \DERIV_CALC|Add1~85_sumout\);

-- Location: FF_X19_Y5_N35
\DERIV_CALC|dx3_1_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~85_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg\(7));

-- Location: FF_X24_Y3_N7
\DERIV_CALC|dx4_1_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx3_1_reg\(7),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg\(7));

-- Location: FF_X24_Y3_N40
\mul_reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx4_1_reg\(7),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][7]~q\);

-- Location: FF_X25_Y3_N5
\var_main_reg[0][11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][11]~DUPLICATE_q\);

-- Location: FF_X25_Y3_N38
\DERIV_CALC|dx1_3_reg[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[0][11]~DUPLICATE_q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_3_reg[-3]~q\);

-- Location: FF_X18_Y3_N47
\DERIV_CALC|dx2_2_reg[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_3_reg[-3]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_2_reg[-3]~q\);

-- Location: FF_X18_Y3_N4
\DERIV_CALC|dy3_1_reg[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~45_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg[-3]~q\);

-- Location: FF_X21_Y3_N4
\DERIV_CALC|dy4_1_reg[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy3_1_reg[-3]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg[-3]~q\);

-- Location: MLABCELL_X21_Y5_N27
\mul_reg[1][-13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[1][-13]~feeder_combout\ = ( \DERIV_CALC|dy4_1_reg[-3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy4_1_reg[-3]~q\,
	combout => \mul_reg[1][-13]~feeder_combout\);

-- Location: FF_X21_Y5_N29
\mul_reg[1][-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[1][-13]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][-13]~q\);

-- Location: FF_X21_Y1_N4
\DERIV_CALC|dz2_1_reg[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~45_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg[-3]~q\);

-- Location: LABCELL_X17_Y1_N9
\DERIV_CALC|dz3_1_reg[-3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz3_1_reg[-3]~feeder_combout\ = ( \DERIV_CALC|dz2_1_reg[-3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz2_1_reg[-3]~q\,
	combout => \DERIV_CALC|dz3_1_reg[-3]~feeder_combout\);

-- Location: FF_X17_Y1_N11
\DERIV_CALC|dz3_1_reg[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz3_1_reg[-3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg[-3]~q\);

-- Location: FF_X17_Y1_N13
\DERIV_CALC|dz4_1_reg[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz3_1_reg[-3]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg[-3]~q\);

-- Location: FF_X21_Y7_N17
\mul_reg[2][-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz4_1_reg[-3]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[2][-13]~q\);

-- Location: FF_X19_Y3_N14
\DERIV_CALC|dy2_1_reg[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add2~41_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy2_1_reg[-4]~q\);

-- Location: FF_X18_Y3_N2
\DERIV_CALC|dy3_1_reg[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~41_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg[-4]~q\);

-- Location: LABCELL_X18_Y5_N36
\DERIV_CALC|dy4_1_reg[-4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dy4_1_reg[-4]~feeder_combout\ = ( \DERIV_CALC|dy3_1_reg[-4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy3_1_reg[-4]~q\,
	combout => \DERIV_CALC|dy4_1_reg[-4]~feeder_combout\);

-- Location: FF_X18_Y5_N37
\DERIV_CALC|dy4_1_reg[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dy4_1_reg[-4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg[-4]~q\);

-- Location: MLABCELL_X21_Y5_N24
\mul_reg[1][-14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[1][-14]~feeder_combout\ = ( \DERIV_CALC|dy4_1_reg[-4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy4_1_reg[-4]~q\,
	combout => \mul_reg[1][-14]~feeder_combout\);

-- Location: FF_X21_Y5_N26
\mul_reg[1][-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[1][-14]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][-14]~q\);

-- Location: FF_X21_Y1_N1
\DERIV_CALC|dz2_1_reg[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~41_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg[-4]~q\);

-- Location: FF_X19_Y3_N53
\DERIV_CALC|dz3_1_reg[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz2_1_reg[-4]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg[-4]~q\);

-- Location: LABCELL_X19_Y3_N48
\DERIV_CALC|dz4_1_reg[-4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz4_1_reg[-4]~feeder_combout\ = \DERIV_CALC|dz3_1_reg[-4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz3_1_reg[-4]~q\,
	combout => \DERIV_CALC|dz4_1_reg[-4]~feeder_combout\);

-- Location: FF_X19_Y3_N49
\DERIV_CALC|dz4_1_reg[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz4_1_reg[-4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg[-4]~q\);

-- Location: MLABCELL_X21_Y7_N18
\mul_reg[2][-14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[2][-14]~feeder_combout\ = ( \DERIV_CALC|dz4_1_reg[-4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz4_1_reg[-4]~q\,
	combout => \mul_reg[2][-14]~feeder_combout\);

-- Location: FF_X21_Y7_N20
\mul_reg[2][-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[2][-14]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[2][-14]~q\);

-- Location: FF_X21_Y7_N32
\var_main_reg[2][0]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][0]~_Duplicate_2_q\);

-- Location: FF_X21_Y7_N28
\var_main_reg[2][4]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \var_main_reg[2][4]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][4]~_Duplicate_2_q\);

-- Location: FF_X21_Y4_N58
\var_main_reg[1][11]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~45_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][11]~_Duplicate_3_q\);

-- Location: FF_X21_Y4_N55
\var_main_reg[1][12]~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \var_main_reg[1][12]~_Duplicate_3feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][12]~_Duplicate_3_q\);

-- Location: FF_X25_Y4_N34
\var_main_reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][1]~q\);

-- Location: FF_X25_Y4_N37
\var_main_reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][2]~q\);

-- Location: FF_X25_Y4_N43
\var_main_reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][4]~q\);

-- Location: FF_X25_Y3_N4
\var_main_reg[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][11]~q\);

-- Location: FF_X25_Y3_N10
\var_main_reg[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][13]~q\);

-- Location: FF_X25_Y3_N16
\var_main_reg[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][15]~q\);

-- Location: FF_X25_Y3_N25
\var_main_reg[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[0][18]~q\);

-- Location: FF_X21_Y2_N1
\DERIV_CALC|dz2_1_reg[-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~1_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg[-14]~q\);

-- Location: LABCELL_X27_Y2_N24
\DERIV_CALC|dz3_1_reg[-14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz3_1_reg[-14]~feeder_combout\ = \DERIV_CALC|dz2_1_reg[-14]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dz2_1_reg[-14]~q\,
	combout => \DERIV_CALC|dz3_1_reg[-14]~feeder_combout\);

-- Location: FF_X27_Y2_N26
\DERIV_CALC|dz3_1_reg[-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz3_1_reg[-14]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg[-14]~q\);

-- Location: FF_X27_Y2_N28
\DERIV_CALC|dz4_1_reg[-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz3_1_reg[-14]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg[-14]~q\);

-- Location: FF_X21_Y2_N4
\DERIV_CALC|dz2_1_reg[-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~5_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg[-13]~q\);

-- Location: FF_X24_Y3_N5
\DERIV_CALC|dz3_1_reg[-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz2_1_reg[-13]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg[-13]~q\);

-- Location: FF_X24_Y3_N1
\DERIV_CALC|dz4_1_reg[-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz3_1_reg[-13]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg[-13]~q\);

-- Location: FF_X21_Y2_N7
\DERIV_CALC|dz2_1_reg[-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~9_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg[-12]~q\);

-- Location: FF_X22_Y2_N17
\DERIV_CALC|dz3_1_reg[-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz2_1_reg[-12]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg[-12]~q\);

-- Location: FF_X22_Y2_N13
\DERIV_CALC|dz4_1_reg[-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz3_1_reg[-12]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg[-12]~q\);

-- Location: FF_X21_Y2_N10
\DERIV_CALC|dz2_1_reg[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~13_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg[-11]~q\);

-- Location: MLABCELL_X25_Y2_N51
\DERIV_CALC|dz3_1_reg[-11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz3_1_reg[-11]~feeder_combout\ = \DERIV_CALC|dz2_1_reg[-11]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz2_1_reg[-11]~q\,
	combout => \DERIV_CALC|dz3_1_reg[-11]~feeder_combout\);

-- Location: FF_X25_Y2_N52
\DERIV_CALC|dz3_1_reg[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz3_1_reg[-11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg[-11]~q\);

-- Location: LABCELL_X30_Y2_N0
\DERIV_CALC|dz4_1_reg[-11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz4_1_reg[-11]~feeder_combout\ = ( \DERIV_CALC|dz3_1_reg[-11]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz3_1_reg[-11]~q\,
	combout => \DERIV_CALC|dz4_1_reg[-11]~feeder_combout\);

-- Location: FF_X30_Y2_N1
\DERIV_CALC|dz4_1_reg[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz4_1_reg[-11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg[-11]~q\);

-- Location: FF_X21_Y2_N13
\DERIV_CALC|dz2_1_reg[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~17_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg[-10]~q\);

-- Location: FF_X28_Y2_N37
\DERIV_CALC|dz3_1_reg[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz2_1_reg[-10]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg[-10]~q\);

-- Location: LABCELL_X64_Y2_N24
\DERIV_CALC|dz4_1_reg[-10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz4_1_reg[-10]~feeder_combout\ = ( \DERIV_CALC|dz3_1_reg[-10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz3_1_reg[-10]~q\,
	combout => \DERIV_CALC|dz4_1_reg[-10]~feeder_combout\);

-- Location: FF_X64_Y2_N25
\DERIV_CALC|dz4_1_reg[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz4_1_reg[-10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg[-10]~q\);

-- Location: FF_X21_Y2_N16
\DERIV_CALC|dz2_1_reg[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~21_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg[-9]~q\);

-- Location: LABCELL_X57_Y2_N6
\DERIV_CALC|dz3_1_reg[-9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz3_1_reg[-9]~feeder_combout\ = ( \DERIV_CALC|dz2_1_reg[-9]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz2_1_reg[-9]~q\,
	combout => \DERIV_CALC|dz3_1_reg[-9]~feeder_combout\);

-- Location: FF_X57_Y2_N8
\DERIV_CALC|dz3_1_reg[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz3_1_reg[-9]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg[-9]~q\);

-- Location: FF_X57_Y2_N25
\DERIV_CALC|dz4_1_reg[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz3_1_reg[-9]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg[-9]~q\);

-- Location: FF_X21_Y2_N19
\DERIV_CALC|dz2_1_reg[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~25_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg[-8]~q\);

-- Location: MLABCELL_X25_Y2_N24
\DERIV_CALC|dz3_1_reg[-8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dz3_1_reg[-8]~feeder_combout\ = \DERIV_CALC|dz2_1_reg[-8]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz2_1_reg[-8]~q\,
	combout => \DERIV_CALC|dz3_1_reg[-8]~feeder_combout\);

-- Location: FF_X25_Y2_N26
\DERIV_CALC|dz3_1_reg[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dz3_1_reg[-8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg[-8]~q\);

-- Location: FF_X25_Y2_N28
\DERIV_CALC|dz4_1_reg[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz3_1_reg[-8]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg[-8]~q\);

-- Location: FF_X21_Y2_N22
\DERIV_CALC|dz2_1_reg[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~29_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg[-7]~q\);

-- Location: FF_X27_Y3_N37
\DERIV_CALC|dz3_1_reg[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz2_1_reg[-7]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg[-7]~q\);

-- Location: FF_X28_Y3_N1
\DERIV_CALC|dz4_1_reg[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz3_1_reg[-7]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg[-7]~q\);

-- Location: FF_X21_Y2_N25
\DERIV_CALC|dz2_1_reg[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~33_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg[-6]~q\);

-- Location: FF_X22_Y2_N26
\DERIV_CALC|dz3_1_reg[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz2_1_reg[-6]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg[-6]~q\);

-- Location: FF_X22_Y2_N44
\DERIV_CALC|dz4_1_reg[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz3_1_reg[-6]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg[-6]~q\);

-- Location: FF_X21_Y2_N28
\DERIV_CALC|dz2_1_reg[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add4~37_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz2_1_reg[-5]~q\);

-- Location: FF_X27_Y2_N32
\DERIV_CALC|dz3_1_reg[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz2_1_reg[-5]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz3_1_reg[-5]~q\);

-- Location: FF_X27_Y2_N34
\DERIV_CALC|dz4_1_reg[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz3_1_reg[-5]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dz4_1_reg[-5]~q\);

-- Location: FF_X18_Y4_N32
\DERIV_CALC|dy3_1_reg[-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~1_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg[-14]~q\);

-- Location: LABCELL_X17_Y4_N48
\DERIV_CALC|dy4_1_reg[-14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dy4_1_reg[-14]~feeder_combout\ = ( \DERIV_CALC|dy3_1_reg[-14]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy3_1_reg[-14]~q\,
	combout => \DERIV_CALC|dy4_1_reg[-14]~feeder_combout\);

-- Location: FF_X17_Y4_N49
\DERIV_CALC|dy4_1_reg[-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dy4_1_reg[-14]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg[-14]~q\);

-- Location: FF_X18_Y4_N35
\DERIV_CALC|dy3_1_reg[-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~5_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg[-13]~q\);

-- Location: FF_X18_Y4_N16
\DERIV_CALC|dy4_1_reg[-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy3_1_reg[-13]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg[-13]~q\);

-- Location: FF_X18_Y4_N38
\DERIV_CALC|dy3_1_reg[-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~9_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg[-12]~q\);

-- Location: FF_X18_Y4_N8
\DERIV_CALC|dy4_1_reg[-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy3_1_reg[-12]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg[-12]~q\);

-- Location: FF_X18_Y4_N40
\DERIV_CALC|dy3_1_reg[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~13_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg[-11]~q\);

-- Location: LABCELL_X29_Y4_N24
\DERIV_CALC|dy4_1_reg[-11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dy4_1_reg[-11]~feeder_combout\ = ( \DERIV_CALC|dy3_1_reg[-11]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy3_1_reg[-11]~q\,
	combout => \DERIV_CALC|dy4_1_reg[-11]~feeder_combout\);

-- Location: FF_X29_Y4_N25
\DERIV_CALC|dy4_1_reg[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dy4_1_reg[-11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg[-11]~q\);

-- Location: FF_X18_Y4_N44
\DERIV_CALC|dy3_1_reg[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~17_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg[-10]~q\);

-- Location: LABCELL_X18_Y4_N12
\DERIV_CALC|dy4_1_reg[-10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dy4_1_reg[-10]~feeder_combout\ = \DERIV_CALC|dy3_1_reg[-10]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dy3_1_reg[-10]~q\,
	combout => \DERIV_CALC|dy4_1_reg[-10]~feeder_combout\);

-- Location: FF_X18_Y4_N14
\DERIV_CALC|dy4_1_reg[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dy4_1_reg[-10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg[-10]~q\);

-- Location: FF_X18_Y4_N47
\DERIV_CALC|dy3_1_reg[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~21_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg[-9]~q\);

-- Location: FF_X18_Y4_N10
\DERIV_CALC|dy4_1_reg[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy3_1_reg[-9]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg[-9]~q\);

-- Location: FF_X18_Y4_N49
\DERIV_CALC|dy3_1_reg[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~25_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg[-8]~q\);

-- Location: LABCELL_X64_Y2_N57
\DERIV_CALC|dy4_1_reg[-8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dy4_1_reg[-8]~feeder_combout\ = ( \DERIV_CALC|dy3_1_reg[-8]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy3_1_reg[-8]~q\,
	combout => \DERIV_CALC|dy4_1_reg[-8]~feeder_combout\);

-- Location: FF_X64_Y2_N58
\DERIV_CALC|dy4_1_reg[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dy4_1_reg[-8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg[-8]~q\);

-- Location: FF_X18_Y4_N52
\DERIV_CALC|dy3_1_reg[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~29_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg[-7]~q\);

-- Location: LABCELL_X27_Y4_N24
\DERIV_CALC|dy4_1_reg[-7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dy4_1_reg[-7]~feeder_combout\ = ( \DERIV_CALC|dy3_1_reg[-7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy3_1_reg[-7]~q\,
	combout => \DERIV_CALC|dy4_1_reg[-7]~feeder_combout\);

-- Location: FF_X27_Y4_N25
\DERIV_CALC|dy4_1_reg[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dy4_1_reg[-7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg[-7]~q\);

-- Location: FF_X18_Y4_N56
\DERIV_CALC|dy3_1_reg[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~33_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg[-6]~q\);

-- Location: FF_X18_Y4_N26
\DERIV_CALC|dy4_1_reg[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy3_1_reg[-6]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg[-6]~q\);

-- Location: FF_X18_Y4_N59
\DERIV_CALC|dy3_1_reg[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add3~37_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy3_1_reg[-5]~q\);

-- Location: FF_X12_Y4_N16
\DERIV_CALC|dy4_1_reg[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy3_1_reg[-5]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy4_1_reg[-5]~q\);

-- Location: FF_X19_Y6_N31
\DERIV_CALC|dx3_1_reg[-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~1_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg[-14]~q\);

-- Location: FF_X28_Y4_N1
\DERIV_CALC|dx4_1_reg[-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx3_1_reg[-14]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg[-14]~q\);

-- Location: FF_X19_Y6_N34
\DERIV_CALC|dx3_1_reg[-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~5_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg[-13]~q\);

-- Location: LABCELL_X37_Y6_N51
\DERIV_CALC|dx4_1_reg[-13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx4_1_reg[-13]~feeder_combout\ = ( \DERIV_CALC|dx3_1_reg[-13]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx3_1_reg[-13]~q\,
	combout => \DERIV_CALC|dx4_1_reg[-13]~feeder_combout\);

-- Location: FF_X37_Y6_N52
\DERIV_CALC|dx4_1_reg[-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx4_1_reg[-13]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg[-13]~q\);

-- Location: FF_X19_Y6_N37
\DERIV_CALC|dx3_1_reg[-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~9_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg[-12]~q\);

-- Location: MLABCELL_X15_Y4_N3
\DERIV_CALC|dx4_1_reg[-12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx4_1_reg[-12]~feeder_combout\ = ( \DERIV_CALC|dx3_1_reg[-12]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx3_1_reg[-12]~q\,
	combout => \DERIV_CALC|dx4_1_reg[-12]~feeder_combout\);

-- Location: FF_X15_Y4_N4
\DERIV_CALC|dx4_1_reg[-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx4_1_reg[-12]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg[-12]~q\);

-- Location: FF_X19_Y6_N40
\DERIV_CALC|dx3_1_reg[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~13_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg[-11]~q\);

-- Location: MLABCELL_X28_Y4_N6
\DERIV_CALC|dx4_1_reg[-11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx4_1_reg[-11]~feeder_combout\ = ( \DERIV_CALC|dx3_1_reg[-11]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx3_1_reg[-11]~q\,
	combout => \DERIV_CALC|dx4_1_reg[-11]~feeder_combout\);

-- Location: FF_X28_Y4_N7
\DERIV_CALC|dx4_1_reg[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx4_1_reg[-11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg[-11]~q\);

-- Location: FF_X19_Y6_N44
\DERIV_CALC|dx3_1_reg[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~17_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg[-10]~q\);

-- Location: LABCELL_X13_Y2_N3
\DERIV_CALC|dx4_1_reg[-10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx4_1_reg[-10]~feeder_combout\ = ( \DERIV_CALC|dx3_1_reg[-10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx3_1_reg[-10]~q\,
	combout => \DERIV_CALC|dx4_1_reg[-10]~feeder_combout\);

-- Location: FF_X13_Y2_N4
\DERIV_CALC|dx4_1_reg[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx4_1_reg[-10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg[-10]~q\);

-- Location: FF_X19_Y6_N47
\DERIV_CALC|dx3_1_reg[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~21_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg[-9]~q\);

-- Location: FF_X19_Y6_N29
\DERIV_CALC|dx4_1_reg[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx3_1_reg[-9]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg[-9]~q\);

-- Location: FF_X19_Y6_N50
\DERIV_CALC|dx3_1_reg[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~25_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg[-8]~q\);

-- Location: MLABCELL_X28_Y4_N48
\DERIV_CALC|dx4_1_reg[-8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx4_1_reg[-8]~feeder_combout\ = ( \DERIV_CALC|dx3_1_reg[-8]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx3_1_reg[-8]~q\,
	combout => \DERIV_CALC|dx4_1_reg[-8]~feeder_combout\);

-- Location: FF_X28_Y4_N49
\DERIV_CALC|dx4_1_reg[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx4_1_reg[-8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg[-8]~q\);

-- Location: FF_X19_Y6_N53
\DERIV_CALC|dx3_1_reg[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~29_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg[-7]~q\);

-- Location: FF_X28_Y4_N46
\DERIV_CALC|dx4_1_reg[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx3_1_reg[-7]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg[-7]~q\);

-- Location: FF_X19_Y6_N55
\DERIV_CALC|dx3_1_reg[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~33_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg[-6]~q\);

-- Location: LABCELL_X37_Y6_N54
\DERIV_CALC|dx4_1_reg[-6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx4_1_reg[-6]~feeder_combout\ = ( \DERIV_CALC|dx3_1_reg[-6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx3_1_reg[-6]~q\,
	combout => \DERIV_CALC|dx4_1_reg[-6]~feeder_combout\);

-- Location: FF_X37_Y6_N55
\DERIV_CALC|dx4_1_reg[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx4_1_reg[-6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg[-6]~q\);

-- Location: FF_X19_Y6_N59
\DERIV_CALC|dx3_1_reg[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|Add1~37_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx3_1_reg[-5]~q\);

-- Location: FF_X30_Y2_N46
\DERIV_CALC|dx4_1_reg[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx3_1_reg[-5]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg[-5]~q\);

-- Location: FF_X28_Y4_N37
\DERIV_CALC|dx4_1_reg[-4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx4_1_reg[-4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg[-4]~DUPLICATE_q\);

-- Location: FF_X24_Y4_N28
\DERIV_CALC|dx4_1_reg[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx3_1_reg\(3),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx4_1_reg[3]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y21_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


