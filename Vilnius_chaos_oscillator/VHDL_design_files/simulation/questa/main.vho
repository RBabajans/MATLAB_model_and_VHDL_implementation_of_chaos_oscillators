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

-- DATE "04/21/2025 15:16:10"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE Vilnius_oscillator_data_type IS

TYPE o_tdata_21_0_type IS ARRAY (21 DOWNTO 0) OF std_logic;
TYPE o_tdata_21_0_0_2_type IS ARRAY (0 TO 2) OF o_tdata_21_0_type;
SUBTYPE o_tdata_type IS o_tdata_21_0_0_2_type;

TYPE o_derivatives_aslv_21_0_type IS ARRAY (21 DOWNTO 0) OF std_logic;
TYPE o_derivatives_aslv_21_0_0_2_type IS ARRAY (0 TO 2) OF o_derivatives_aslv_21_0_type;
SUBTYPE o_derivatives_aslv_type IS o_derivatives_aslv_21_0_0_2_type;

END Vilnius_oscillator_data_type;

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
LIBRARY WORK;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.VILNIUS_OSCILLATOR_DATA_TYPE.ALL;

ENTITY 	Vilnius_oscillator IS
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
END Vilnius_oscillator;

-- Design Ports Information
-- o_tdata[2][0]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][1]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][3]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][4]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][5]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][6]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][7]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][8]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][9]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][10]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][11]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][12]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][13]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][14]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][15]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][16]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][17]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][18]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][19]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][20]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[2][21]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][1]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][2]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][4]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][5]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][7]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][8]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][9]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][10]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][11]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][12]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][13]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][14]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][15]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][16]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][17]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][18]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][19]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][20]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[1][21]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][0]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][1]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][4]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][5]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][6]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][8]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][9]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][10]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][11]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][12]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][13]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][14]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][15]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][16]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][17]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][18]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][19]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][20]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tdata[0][21]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[0]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[1]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[2]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[3]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[4]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[5]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[6]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[7]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[8]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[9]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[10]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[11]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[0]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[1]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[2]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[4]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[5]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[6]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[7]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[8]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[9]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[10]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[11]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[12]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[14]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[15]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[16]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[17]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[18]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[19]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[20]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out[21]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-14]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-13]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-12]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-11]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-10]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-9]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-8]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-7]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-6]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-5]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-4]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-3]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-2]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[-1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[1]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[2]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[3]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[4]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[5]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[6]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_d_out_sfi[7]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][0]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][2]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][3]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][4]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][5]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][6]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][7]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][8]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][9]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][10]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][11]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][12]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][13]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][14]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][15]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][16]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][17]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][18]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][19]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][20]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[2][21]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][1]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][2]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][3]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][4]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][6]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][7]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][8]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][9]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][10]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][11]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][12]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][13]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][14]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][15]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][16]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][17]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][18]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][19]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][20]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[1][21]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][1]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][2]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][3]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][5]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][6]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][7]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][8]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][9]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][10]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][11]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][12]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][13]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][14]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][15]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][16]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][17]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][18]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][19]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][20]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_derivatives_aslv[0][21]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Vilnius_oscillator IS
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
SIGNAL \DERIV_CALC|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult0~8_AX_bus\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult0~8_AY_bus\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \DERIV_CALC|Mult0~8_resulta\ : std_logic;
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
SIGNAL \DERIV_CALC|Mult0~33\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~34\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~35\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~36\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~37\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~38\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~39\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~40\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~41\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~42\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~43\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~44\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~45\ : std_logic;
SIGNAL \DERIV_CALC|Mult0~46\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputCLKENA0_outclk\ : std_logic;
SIGNAL \var_main_reg[1][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \var_main_reg[1][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-2]~q\ : std_logic;
SIGNAL \var_main_reg[0][11]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[7]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][7]~q\ : std_logic;
SIGNAL \mul_reg[0][-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[5]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[5]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-5]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-5]~q\ : std_logic;
SIGNAL \mul_reg[0][-6]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[3]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[2]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[1]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-9]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[0]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[0]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-10]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-1]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-1]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-1]~q\ : std_logic;
SIGNAL \mul_reg[0][-11]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-2]~q\ : std_logic;
SIGNAL \mul_reg[0][-12]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-3]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-3]~DUPLICATE_q\ : std_logic;
SIGNAL \mul_reg[0][-13]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[0][-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-4]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-4]~q\ : std_logic;
SIGNAL \mul_reg[0][-14]~q\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \var_main_reg[0][0]~q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \var_main_reg[0][1]~q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \var_main_reg[0][2]~q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \var_main_reg[0][3]~q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \var_main_reg[0][4]~q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \var_main_reg[0][5]~q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \var_main_reg[0][6]~q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \var_main_reg[0][7]~q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \var_main_reg[0][8]~q\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \var_main_reg[0][9]~q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \var_main_reg[0][10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \var_main_reg[0][11]~DUPLICATE_q\ : std_logic;
SIGNAL \var_main_reg[0][12]~q\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \var_main_reg[0][12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \var_main_reg[2][12]~q\ : std_logic;
SIGNAL \var_main_reg[1][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \var_main_reg[0][13]~q\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \var_main_reg[2][13]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~50\ : std_logic;
SIGNAL \DERIV_CALC|Add0~53_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-1]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~41_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-4]~DUPLICATE_q\ : std_logic;
SIGNAL \var_main_reg[2][8]~q\ : std_logic;
SIGNAL \var_main_reg[1][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \var_main_reg[0][14]~q\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \var_main_reg[0][14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \var_main_reg[2][14]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~54\ : std_logic;
SIGNAL \DERIV_CALC|Add0~57_sumout\ : std_logic;
SIGNAL \var_main_reg[2][19]~q\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \var_main_reg[2][15]~q\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \var_main_reg[2][16]~q\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \var_main_reg[2][17]~q\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \var_main_reg[2][18]~q\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \var_main_reg[2][19]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \var_main_reg[0][15]~q\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \var_main_reg[0][16]~q\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \var_main_reg[0][17]~q\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \var_main_reg[0][18]~q\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \var_main_reg[0][19]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~58\ : std_logic;
SIGNAL \DERIV_CALC|Add0~62\ : std_logic;
SIGNAL \DERIV_CALC|Add0~66\ : std_logic;
SIGNAL \DERIV_CALC|Add0~70\ : std_logic;
SIGNAL \DERIV_CALC|Add0~74\ : std_logic;
SIGNAL \DERIV_CALC|Add0~77_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~73_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~69_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~65_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add0~61_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add1~55\ : std_logic;
SIGNAL \DERIV_CALC|Add1~58\ : std_logic;
SIGNAL \DERIV_CALC|Add1~59\ : std_logic;
SIGNAL \DERIV_CALC|Add1~62\ : std_logic;
SIGNAL \DERIV_CALC|Add1~63\ : std_logic;
SIGNAL \DERIV_CALC|Add1~66\ : std_logic;
SIGNAL \DERIV_CALC|Add1~67\ : std_logic;
SIGNAL \DERIV_CALC|Add1~70\ : std_logic;
SIGNAL \DERIV_CALC|Add1~71\ : std_logic;
SIGNAL \DERIV_CALC|Add1~74\ : std_logic;
SIGNAL \DERIV_CALC|Add1~75\ : std_logic;
SIGNAL \DERIV_CALC|Add1~77_sumout\ : std_logic;
SIGNAL \mul_reg[1][-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~73_sumout\ : std_logic;
SIGNAL \mul_reg[1][-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~69_sumout\ : std_logic;
SIGNAL \mul_reg[1][-7]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[1][-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~65_sumout\ : std_logic;
SIGNAL \mul_reg[1][-8]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[1][-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~61_sumout\ : std_logic;
SIGNAL \mul_reg[1][-9]~q\ : std_logic;
SIGNAL \var_main_reg[1][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \var_main_reg[1][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \var_main_reg[1][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \var_main_reg[1][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \var_main_reg[1][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \var_main_reg[1][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-5]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-5]~q\ : std_logic;
SIGNAL \var_main_reg[2][19]~_wirecell_combout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-1]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-2]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-3]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-5]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-6]\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-7]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-8]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-9]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-10]\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-11]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-12]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-13]\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-14]\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~2\ : std_logic;
SIGNAL \DERIV_CALC|Add2~6\ : std_logic;
SIGNAL \DERIV_CALC|Add2~10\ : std_logic;
SIGNAL \DERIV_CALC|Add2~14\ : std_logic;
SIGNAL \DERIV_CALC|Add2~18\ : std_logic;
SIGNAL \DERIV_CALC|Add2~22\ : std_logic;
SIGNAL \DERIV_CALC|Add2~26\ : std_logic;
SIGNAL \DERIV_CALC|Add2~30\ : std_logic;
SIGNAL \DERIV_CALC|Add2~34\ : std_logic;
SIGNAL \DERIV_CALC|Add2~38\ : std_logic;
SIGNAL \DERIV_CALC|Add2~42\ : std_logic;
SIGNAL \DERIV_CALC|Add2~46\ : std_logic;
SIGNAL \DERIV_CALC|Add2~50\ : std_logic;
SIGNAL \DERIV_CALC|Add2~54\ : std_logic;
SIGNAL \DERIV_CALC|Add2~58\ : std_logic;
SIGNAL \DERIV_CALC|Add2~62\ : std_logic;
SIGNAL \DERIV_CALC|Add2~66\ : std_logic;
SIGNAL \DERIV_CALC|Add2~69_sumout\ : std_logic;
SIGNAL \mul_reg[2][-7]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~65_sumout\ : std_logic;
SIGNAL \mul_reg[2][-8]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~61_sumout\ : std_logic;
SIGNAL \mul_reg[2][-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~57_sumout\ : std_logic;
SIGNAL \mul_reg[2][-10]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~53_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-1]~q\ : std_logic;
SIGNAL \mul_reg[2][-11]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~49_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-2]~q\ : std_logic;
SIGNAL \mul_reg[2][-12]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~45_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-3]~q\ : std_logic;
SIGNAL \mul_reg[2][-13]~q\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \var_main_reg[2][1]~q\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \var_main_reg[2][2]~q\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \var_main_reg[2][3]~q\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \var_main_reg[2][4]~q\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \var_main_reg[2][5]~q\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \var_main_reg[2][6]~q\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \var_main_reg[2][7]~q\ : std_logic;
SIGNAL \var_main_reg[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \var_main_reg[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \var_main_reg[2][4]~DUPLICATE_q\ : std_logic;
SIGNAL \var_main_reg[0][2]~DUPLICATE_q\ : std_logic;
SIGNAL \var_main_reg[2][2]~DUPLICATE_q\ : std_logic;
SIGNAL \var_main_reg[2][1]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~2\ : std_logic;
SIGNAL \DERIV_CALC|Add0~6\ : std_logic;
SIGNAL \DERIV_CALC|Add0~10\ : std_logic;
SIGNAL \DERIV_CALC|Add0~14\ : std_logic;
SIGNAL \DERIV_CALC|Add0~18\ : std_logic;
SIGNAL \DERIV_CALC|Add0~22\ : std_logic;
SIGNAL \DERIV_CALC|Add0~26\ : std_logic;
SIGNAL \DERIV_CALC|Add0~30\ : std_logic;
SIGNAL \DERIV_CALC|Add0~33_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~29_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-7]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~25_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~21_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-8]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-9]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-9]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~17_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~13_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-11]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~9_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~5_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-13]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~1_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-14]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-14]~q\ : std_logic;
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
SIGNAL \DERIV_CALC|Add1~54\ : std_logic;
SIGNAL \DERIV_CALC|Add1~57_sumout\ : std_logic;
SIGNAL \mul_reg[1][-10]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[1][-10]~q\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~70\ : std_logic;
SIGNAL \DERIV_CALC|Add2~73_sumout\ : std_logic;
SIGNAL \mul_reg[2][-6]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][-6]~q\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \var_main_reg[2][8]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~34\ : std_logic;
SIGNAL \DERIV_CALC|Add0~37_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~38\ : std_logic;
SIGNAL \DERIV_CALC|Add1~42\ : std_logic;
SIGNAL \DERIV_CALC|Add1~46\ : std_logic;
SIGNAL \DERIV_CALC|Add1~50\ : std_logic;
SIGNAL \DERIV_CALC|Add1~53_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-1]~q\ : std_logic;
SIGNAL \mul_reg[1][-11]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[1][-11]~q\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \DERIV_CALC|Add2~74\ : std_logic;
SIGNAL \DERIV_CALC|Add2~77_sumout\ : std_logic;
SIGNAL \mul_reg[2][-5]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][-5]~q\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \var_main_reg[2][9]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~38\ : std_logic;
SIGNAL \DERIV_CALC|Add0~42\ : std_logic;
SIGNAL \DERIV_CALC|Add0~46\ : std_logic;
SIGNAL \DERIV_CALC|Add0~49_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~49_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-2]~q\ : std_logic;
SIGNAL \mul_reg[1][-12]~q\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|Add2~78\ : std_logic;
SIGNAL \DERIV_CALC|Add2~81_sumout\ : std_logic;
SIGNAL \mul_reg[2][-4]~q\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \var_main_reg[2][10]~q\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \var_main_reg[2][11]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~45_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy1_2_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~45_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-3]~q\ : std_logic;
SIGNAL \mul_reg[1][-13]~q\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \DERIV_CALC|Add2~82\ : std_logic;
SIGNAL \DERIV_CALC|Add2~85_sumout\ : std_logic;
SIGNAL \mul_reg[2][7]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[2][7]~q\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \var_main_reg[2][20]~q\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \var_main_reg[0][20]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~78\ : std_logic;
SIGNAL \DERIV_CALC|Add0~81_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add1~78\ : std_logic;
SIGNAL \DERIV_CALC|Add1~79\ : std_logic;
SIGNAL \DERIV_CALC|Add1~81_sumout\ : std_logic;
SIGNAL \mul_reg[1][-4]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[1][-4]~q\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \var_main_reg[1][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \var_main_reg[1][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \var_main_reg[1][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \var_main_reg[1][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \var_main_reg[1][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \var_main_reg[1][16]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \var_main_reg[1][17]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \var_main_reg[1][18]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \var_main_reg[1][19]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \var_main_reg[1][20]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \var_main_reg[1][21]~_Duplicate_1_q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[7]~feeder_combout\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \var_main_reg[2][21]~q\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \var_main_reg[0][21]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add0~82\ : std_logic;
SIGNAL \DERIV_CALC|Add0~85_sumout\ : std_logic;
SIGNAL \DERIV_CALC|Add1~82\ : std_logic;
SIGNAL \DERIV_CALC|Add1~83\ : std_logic;
SIGNAL \DERIV_CALC|Add1~85_sumout\ : std_logic;
SIGNAL \mul_reg[1][7]~q\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \var_main_reg[1][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-3]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~41_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-4]~q\ : std_logic;
SIGNAL \mul_reg[1][-14]~feeder_combout\ : std_logic;
SIGNAL \mul_reg[1][-14]~q\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg[-4]\ : std_logic;
SIGNAL \DERIV_CALC|Add2~41_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-4]~q\ : std_logic;
SIGNAL \mul_reg[2][-14]~q\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \var_main_reg[2][0]~q\ : std_logic;
SIGNAL \var_main_reg[0][10]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~1_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~5_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~9_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~13_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~17_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~21_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~25_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~29_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~33_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add2~37_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-2]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[-1]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[1]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|dz2_1_reg[3]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~1_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~5_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~9_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~13_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~17_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~21_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~25_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~29_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~33_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|Add1~37_sumout\ : std_logic;
SIGNAL \DERIV_CALC|dy2_1_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-14]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-13]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-11]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-10]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-10]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx1_1_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-8]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-6]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-5]~feeder_combout\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|dx2_1_reg[7]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|dz1_1_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DERIV_CALC|dz1_1_next\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DERIV_CALC|dz2_1_reg\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \DERIV_CALC|dy2_1_reg\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \DERIV_CALC|dx2_1_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|dx1_1_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|dy1_2_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-1]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-4]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-9]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-10]~DUPLICATE_q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg[-3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_rst~inputCLKENA0_outclk\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-9]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy1_2_reg[-14]~q\ : std_logic;
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
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-3]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-5]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-6]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-7]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-8]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-10]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-11]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-12]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx1_1_reg[-13]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dx2_1_reg[-2]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dy2_1_reg[-4]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz2_1_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DERIV_CALC|ALT_INV_dz2_1_reg[-1]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_dz2_1_reg[-2]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][21]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][20]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][19]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][18]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][17]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][16]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][15]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][14]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][13]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][12]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][11]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][9]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][21]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][20]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][19]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][18]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][17]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][16]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[1][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][21]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][20]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][19]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][18]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][17]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][16]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][15]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][14]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][13]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][12]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][11]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][10]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][9]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_var_main_reg[2][0]~q\ : std_logic;
SIGNAL \DERIV_CALC|ALT_INV_Add0~1_sumout\ : std_logic;
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
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a21\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a20~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a19\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a18~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a17\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a16~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12~portadataout\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10~portadataout\ : std_logic;
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

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~q\ & \var_main_reg[2][17]~q\ & \var_main_reg[2][16]~q\ & \var_main_reg[2][15]~q\ & \var_main_reg[2][14]~q\
& \var_main_reg[2][13]~q\ & \var_main_reg[2][12]~q\ & \var_main_reg[2][11]~q\ & \var_main_reg[2][10]~q\ & \var_main_reg[2][9]~q\ & \var_main_reg[2][8]~DUPLICATE_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a1\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~q\ & \var_main_reg[2][17]~q\ & \var_main_reg[2][16]~q\ & \var_main_reg[2][15]~q\ & \var_main_reg[2][14]~q\
& \var_main_reg[2][13]~q\ & \var_main_reg[2][12]~q\ & \var_main_reg[2][11]~q\ & \var_main_reg[2][10]~q\ & \var_main_reg[2][9]~q\ & \var_main_reg[2][8]~DUPLICATE_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a3\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~q\ & \var_main_reg[2][17]~q\ & \var_main_reg[2][16]~q\ & \var_main_reg[2][15]~q\ & \var_main_reg[2][14]~q\
& \var_main_reg[2][13]~q\ & \var_main_reg[2][12]~q\ & \var_main_reg[2][11]~q\ & \var_main_reg[2][10]~q\ & \var_main_reg[2][9]~q\ & \var_main_reg[2][8]~DUPLICATE_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a5\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~q\ & \var_main_reg[2][17]~q\ & \var_main_reg[2][16]~q\ & \var_main_reg[2][15]~q\ & \var_main_reg[2][14]~q\
& \var_main_reg[2][13]~q\ & \var_main_reg[2][12]~q\ & \var_main_reg[2][11]~q\ & \var_main_reg[2][10]~q\ & \var_main_reg[2][9]~q\ & \var_main_reg[2][8]~DUPLICATE_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a7\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~q\ & \var_main_reg[2][17]~q\ & \var_main_reg[2][16]~q\ & \var_main_reg[2][15]~q\ & \var_main_reg[2][14]~q\
& \var_main_reg[2][13]~q\ & \var_main_reg[2][12]~q\ & \var_main_reg[2][11]~q\ & \var_main_reg[2][10]~q\ & \var_main_reg[2][9]~q\ & \var_main_reg[2][8]~DUPLICATE_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a9\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~q\ & \var_main_reg[2][17]~q\ & \var_main_reg[2][16]~q\ & \var_main_reg[2][15]~q\ & 
\var_main_reg[2][14]~q\ & \var_main_reg[2][13]~q\ & \var_main_reg[2][12]~q\ & \var_main_reg[2][11]~q\ & \var_main_reg[2][10]~q\ & \var_main_reg[2][9]~q\ & \var_main_reg[2][8]~DUPLICATE_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a11\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~q\ & \var_main_reg[2][17]~q\ & \var_main_reg[2][16]~q\ & \var_main_reg[2][15]~q\ & 
\var_main_reg[2][14]~q\ & \var_main_reg[2][13]~q\ & \var_main_reg[2][12]~q\ & \var_main_reg[2][11]~q\ & \var_main_reg[2][10]~q\ & \var_main_reg[2][9]~q\ & \var_main_reg[2][8]~DUPLICATE_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a13\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~q\ & \var_main_reg[2][17]~q\ & \var_main_reg[2][16]~q\ & \var_main_reg[2][15]~q\ & 
\var_main_reg[2][14]~q\ & \var_main_reg[2][13]~q\ & \var_main_reg[2][12]~q\ & \var_main_reg[2][11]~q\ & \var_main_reg[2][10]~q\ & \var_main_reg[2][9]~q\ & \var_main_reg[2][8]~DUPLICATE_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a15\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~q\ & \var_main_reg[2][17]~q\ & \var_main_reg[2][16]~q\ & \var_main_reg[2][15]~q\ & 
\var_main_reg[2][14]~q\ & \var_main_reg[2][13]~q\ & \var_main_reg[2][12]~q\ & \var_main_reg[2][11]~q\ & \var_main_reg[2][10]~q\ & \var_main_reg[2][9]~q\ & \var_main_reg[2][8]~DUPLICATE_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a17\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~q\ & \var_main_reg[2][17]~q\ & \var_main_reg[2][16]~q\ & \var_main_reg[2][15]~q\ & 
\var_main_reg[2][14]~q\ & \var_main_reg[2][13]~q\ & \var_main_reg[2][12]~q\ & \var_main_reg[2][11]~q\ & \var_main_reg[2][10]~q\ & \var_main_reg[2][9]~q\ & \var_main_reg[2][8]~DUPLICATE_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a19\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(1);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\var_main_reg[2][19]~_wirecell_combout\ & \var_main_reg[2][18]~q\ & \var_main_reg[2][17]~q\ & \var_main_reg[2][16]~q\ & \var_main_reg[2][15]~q\ & 
\var_main_reg[2][14]~q\ & \var_main_reg[2][13]~q\ & \var_main_reg[2][12]~q\ & \var_main_reg[2][11]~q\ & \var_main_reg[2][10]~q\ & \var_main_reg[2][9]~q\ & \var_main_reg[2][8]~DUPLICATE_q\);

\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20~portadataout\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a21\ <= \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\(1);

\DERIV_CALC|Mult0~8_ACLR_bus\ <= (\rst~inputCLKENA0_outclk\ & \rst~inputCLKENA0_outclk\);

\DERIV_CALC|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\DERIV_CALC|Mult0~8_ENA_bus\ <= (vcc & vcc & vcc);

\DERIV_CALC|Mult0~8_AX_bus\ <= (\Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~85_sumout\ & \Add1~81_sumout\ & \Add1~77_sumout\ & \Add1~73_sumout\ & \Add1~69_sumout\ & \Add1~65_sumout\ & 
\Add1~61_sumout\ & \Add1~57_sumout\ & \Add1~53_sumout\ & \Add1~49_sumout\ & \Add1~45_sumout\ & \Add1~41_sumout\ & \Add1~37_sumout\ & \Add1~33_sumout\ & \Add1~29_sumout\ & \Add1~25_sumout\ & \Add1~21_sumout\ & \Add1~17_sumout\ & \Add1~13_sumout\ & 
\Add1~9_sumout\ & \Add1~5_sumout\ & \Add1~1_sumout\);

\DERIV_CALC|Mult0~8_AY_bus\ <= (vcc & gnd & vcc & vcc & gnd & vcc & vcc & gnd & gnd & vcc & vcc & gnd & gnd & vcc & vcc & gnd & vcc);

\DERIV_CALC|Mult0~8_resulta\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(0);
\DERIV_CALC|Mult0~9\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(1);
\DERIV_CALC|Mult0~10\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(2);
\DERIV_CALC|Mult0~11\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(3);
\DERIV_CALC|Mult0~12\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(4);
\DERIV_CALC|Mult0~13\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(5);
\DERIV_CALC|Mult0~14\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(6);
\DERIV_CALC|Mult0~15\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(7);
\DERIV_CALC|Mult0~16\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(8);
\DERIV_CALC|Mult0~17\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(9);
\DERIV_CALC|Mult0~18\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(10);
\DERIV_CALC|Mult0~19\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(11);
\DERIV_CALC|Mult0~20\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(12);
\DERIV_CALC|Mult0~21\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(13);
\DERIV_CALC|dz1_1_reg[-14]\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(14);
\DERIV_CALC|dz1_1_reg[-13]\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(15);
\DERIV_CALC|dz1_1_reg[-12]\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(16);
\DERIV_CALC|dz1_1_reg[-11]\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(17);
\DERIV_CALC|dz1_1_reg[-10]\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(18);
\DERIV_CALC|dz1_1_reg[-9]\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(19);
\DERIV_CALC|dz1_1_reg[-8]\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(20);
\DERIV_CALC|dz1_1_reg[-7]\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(21);
\DERIV_CALC|dz1_1_reg[-6]\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(22);
\DERIV_CALC|dz1_1_reg[-5]\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(23);
\DERIV_CALC|dz1_1_reg[-4]\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(24);
\DERIV_CALC|dz1_1_reg[-3]\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(25);
\DERIV_CALC|dz1_1_reg[-2]\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(26);
\DERIV_CALC|dz1_1_reg[-1]\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(27);
\DERIV_CALC|dz1_1_reg\(0) <= \DERIV_CALC|Mult0~8_RESULTA_bus\(28);
\DERIV_CALC|dz1_1_reg\(1) <= \DERIV_CALC|Mult0~8_RESULTA_bus\(29);
\DERIV_CALC|dz1_1_reg\(2) <= \DERIV_CALC|Mult0~8_RESULTA_bus\(30);
\DERIV_CALC|dz1_1_reg\(3) <= \DERIV_CALC|Mult0~8_RESULTA_bus\(31);
\DERIV_CALC|dz1_1_reg\(4) <= \DERIV_CALC|Mult0~8_RESULTA_bus\(32);
\DERIV_CALC|dz1_1_reg\(5) <= \DERIV_CALC|Mult0~8_RESULTA_bus\(33);
\DERIV_CALC|dz1_1_reg\(6) <= \DERIV_CALC|Mult0~8_RESULTA_bus\(34);
\DERIV_CALC|dz1_1_reg\(7) <= \DERIV_CALC|Mult0~8_RESULTA_bus\(35);
\DERIV_CALC|dz1_1_next\(8) <= \DERIV_CALC|Mult0~8_RESULTA_bus\(36);
\DERIV_CALC|dz1_1_next\(9) <= \DERIV_CALC|Mult0~8_RESULTA_bus\(37);
\DERIV_CALC|dz1_1_next\(10) <= \DERIV_CALC|Mult0~8_RESULTA_bus\(38);
\DERIV_CALC|Mult0~22\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(39);
\DERIV_CALC|Mult0~23\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(40);
\DERIV_CALC|Mult0~24\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(41);
\DERIV_CALC|Mult0~25\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(42);
\DERIV_CALC|Mult0~26\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(43);
\DERIV_CALC|Mult0~27\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(44);
\DERIV_CALC|Mult0~28\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(45);
\DERIV_CALC|Mult0~29\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(46);
\DERIV_CALC|Mult0~30\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(47);
\DERIV_CALC|Mult0~31\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(48);
\DERIV_CALC|Mult0~32\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(49);
\DERIV_CALC|Mult0~33\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(50);
\DERIV_CALC|Mult0~34\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(51);
\DERIV_CALC|Mult0~35\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(52);
\DERIV_CALC|Mult0~36\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(53);
\DERIV_CALC|Mult0~37\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(54);
\DERIV_CALC|Mult0~38\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(55);
\DERIV_CALC|Mult0~39\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(56);
\DERIV_CALC|Mult0~40\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(57);
\DERIV_CALC|Mult0~41\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(58);
\DERIV_CALC|Mult0~42\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(59);
\DERIV_CALC|Mult0~43\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(60);
\DERIV_CALC|Mult0~44\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(61);
\DERIV_CALC|Mult0~45\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(62);
\DERIV_CALC|Mult0~46\ <= \DERIV_CALC|Mult0~8_RESULTA_bus\(63);
\DERIV_CALC|ALT_INV_dx1_1_reg[-1]~DUPLICATE_q\ <= NOT \DERIV_CALC|dx1_1_reg[-1]~DUPLICATE_q\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-4]~DUPLICATE_q\ <= NOT \DERIV_CALC|dx1_1_reg[-4]~DUPLICATE_q\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-9]~DUPLICATE_q\ <= NOT \DERIV_CALC|dx1_1_reg[-9]~DUPLICATE_q\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-10]~DUPLICATE_q\ <= NOT \DERIV_CALC|dx1_1_reg[-10]~DUPLICATE_q\;
\DERIV_CALC|ALT_INV_dx2_1_reg[-3]~DUPLICATE_q\ <= NOT \DERIV_CALC|dx2_1_reg[-3]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][14]~DUPLICATE_q\ <= NOT \var_main_reg[0][14]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][12]~DUPLICATE_q\ <= NOT \var_main_reg[0][12]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][11]~DUPLICATE_q\ <= NOT \var_main_reg[0][11]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][10]~DUPLICATE_q\ <= NOT \var_main_reg[0][10]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][6]~DUPLICATE_q\ <= NOT \var_main_reg[0][6]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][4]~DUPLICATE_q\ <= NOT \var_main_reg[0][4]~DUPLICATE_q\;
\ALT_INV_var_main_reg[0][2]~DUPLICATE_q\ <= NOT \var_main_reg[0][2]~DUPLICATE_q\;
\ALT_INV_var_main_reg[2][19]~DUPLICATE_q\ <= NOT \var_main_reg[2][19]~DUPLICATE_q\;
\ALT_INV_var_main_reg[2][8]~DUPLICATE_q\ <= NOT \var_main_reg[2][8]~DUPLICATE_q\;
\ALT_INV_var_main_reg[2][4]~DUPLICATE_q\ <= NOT \var_main_reg[2][4]~DUPLICATE_q\;
\ALT_INV_var_main_reg[2][2]~DUPLICATE_q\ <= NOT \var_main_reg[2][2]~DUPLICATE_q\;
\ALT_INV_var_main_reg[2][1]~DUPLICATE_q\ <= NOT \var_main_reg[2][1]~DUPLICATE_q\;
\ALT_INV_rst~inputCLKENA0_outclk\ <= NOT \rst~inputCLKENA0_outclk\;
\DERIV_CALC|ALT_INV_dy1_2_reg\(7) <= NOT \DERIV_CALC|dy1_2_reg\(7);
\DERIV_CALC|ALT_INV_dy1_2_reg\(6) <= NOT \DERIV_CALC|dy1_2_reg\(6);
\DERIV_CALC|ALT_INV_dy1_2_reg\(5) <= NOT \DERIV_CALC|dy1_2_reg\(5);
\DERIV_CALC|ALT_INV_dy1_2_reg\(4) <= NOT \DERIV_CALC|dy1_2_reg\(4);
\DERIV_CALC|ALT_INV_dy1_2_reg\(3) <= NOT \DERIV_CALC|dy1_2_reg\(3);
\DERIV_CALC|ALT_INV_dy1_2_reg\(2) <= NOT \DERIV_CALC|dy1_2_reg\(2);
\DERIV_CALC|ALT_INV_dy1_2_reg\(1) <= NOT \DERIV_CALC|dy1_2_reg\(1);
\DERIV_CALC|ALT_INV_dy1_2_reg\(0) <= NOT \DERIV_CALC|dy1_2_reg\(0);
\DERIV_CALC|ALT_INV_dy1_2_reg[-1]~q\ <= NOT \DERIV_CALC|dy1_2_reg[-1]~q\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-2]~q\ <= NOT \DERIV_CALC|dy1_2_reg[-2]~q\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-3]~q\ <= NOT \DERIV_CALC|dy1_2_reg[-3]~q\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-4]~q\ <= NOT \DERIV_CALC|dy1_2_reg[-4]~q\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-5]~q\ <= NOT \DERIV_CALC|dy1_2_reg[-5]~q\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-6]~q\ <= NOT \DERIV_CALC|dy1_2_reg[-6]~q\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-7]~q\ <= NOT \DERIV_CALC|dy1_2_reg[-7]~q\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-8]~q\ <= NOT \DERIV_CALC|dy1_2_reg[-8]~q\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-9]~q\ <= NOT \DERIV_CALC|dy1_2_reg[-9]~q\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-10]~q\ <= NOT \DERIV_CALC|dy1_2_reg[-10]~q\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-11]~q\ <= NOT \DERIV_CALC|dy1_2_reg[-11]~q\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-12]~q\ <= NOT \DERIV_CALC|dy1_2_reg[-12]~q\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-13]~q\ <= NOT \DERIV_CALC|dy1_2_reg[-13]~q\;
\DERIV_CALC|ALT_INV_dy1_2_reg[-14]~q\ <= NOT \DERIV_CALC|dy1_2_reg[-14]~q\;
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
\DERIV_CALC|ALT_INV_dx1_1_reg\(7) <= NOT \DERIV_CALC|dx1_1_reg\(7);
\DERIV_CALC|ALT_INV_dx1_1_reg\(6) <= NOT \DERIV_CALC|dx1_1_reg\(6);
\DERIV_CALC|ALT_INV_dx1_1_reg\(5) <= NOT \DERIV_CALC|dx1_1_reg\(5);
\DERIV_CALC|ALT_INV_dx1_1_reg\(4) <= NOT \DERIV_CALC|dx1_1_reg\(4);
\DERIV_CALC|ALT_INV_dx1_1_reg\(3) <= NOT \DERIV_CALC|dx1_1_reg\(3);
\DERIV_CALC|ALT_INV_dx1_1_reg\(2) <= NOT \DERIV_CALC|dx1_1_reg\(2);
\DERIV_CALC|ALT_INV_dx1_1_reg\(1) <= NOT \DERIV_CALC|dx1_1_reg\(1);
\DERIV_CALC|ALT_INV_dx1_1_reg\(0) <= NOT \DERIV_CALC|dx1_1_reg\(0);
\DERIV_CALC|ALT_INV_dx1_1_reg[-1]~q\ <= NOT \DERIV_CALC|dx1_1_reg[-1]~q\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-2]~q\ <= NOT \DERIV_CALC|dx1_1_reg[-2]~q\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-3]~q\ <= NOT \DERIV_CALC|dx1_1_reg[-3]~q\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-5]~q\ <= NOT \DERIV_CALC|dx1_1_reg[-5]~q\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-6]~q\ <= NOT \DERIV_CALC|dx1_1_reg[-6]~q\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-7]~q\ <= NOT \DERIV_CALC|dx1_1_reg[-7]~q\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-8]~q\ <= NOT \DERIV_CALC|dx1_1_reg[-8]~q\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-10]~q\ <= NOT \DERIV_CALC|dx1_1_reg[-10]~q\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-11]~q\ <= NOT \DERIV_CALC|dx1_1_reg[-11]~q\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-12]~q\ <= NOT \DERIV_CALC|dx1_1_reg[-12]~q\;
\DERIV_CALC|ALT_INV_dx1_1_reg[-13]~q\ <= NOT \DERIV_CALC|dx1_1_reg[-13]~q\;
\DERIV_CALC|ALT_INV_dx2_1_reg\(5) <= NOT \DERIV_CALC|dx2_1_reg\(5);
\DERIV_CALC|ALT_INV_dx2_1_reg\(4) <= NOT \DERIV_CALC|dx2_1_reg\(4);
\DERIV_CALC|ALT_INV_dx2_1_reg\(1) <= NOT \DERIV_CALC|dx2_1_reg\(1);
\DERIV_CALC|ALT_INV_dx2_1_reg\(0) <= NOT \DERIV_CALC|dx2_1_reg\(0);
\DERIV_CALC|ALT_INV_dx2_1_reg[-1]~q\ <= NOT \DERIV_CALC|dx2_1_reg[-1]~q\;
\DERIV_CALC|ALT_INV_dx2_1_reg[-2]~q\ <= NOT \DERIV_CALC|dx2_1_reg[-2]~q\;
\DERIV_CALC|ALT_INV_dy2_1_reg\(6) <= NOT \DERIV_CALC|dy2_1_reg\(6);
\DERIV_CALC|ALT_INV_dy2_1_reg\(3) <= NOT \DERIV_CALC|dy2_1_reg\(3);
\DERIV_CALC|ALT_INV_dy2_1_reg\(2) <= NOT \DERIV_CALC|dy2_1_reg\(2);
\DERIV_CALC|ALT_INV_dy2_1_reg\(0) <= NOT \DERIV_CALC|dy2_1_reg\(0);
\DERIV_CALC|ALT_INV_dy2_1_reg[-1]~q\ <= NOT \DERIV_CALC|dy2_1_reg[-1]~q\;
\DERIV_CALC|ALT_INV_dy2_1_reg[-4]~q\ <= NOT \DERIV_CALC|dy2_1_reg[-4]~q\;
\DERIV_CALC|ALT_INV_dz2_1_reg\(7) <= NOT \DERIV_CALC|dz2_1_reg\(7);
\DERIV_CALC|ALT_INV_dz2_1_reg\(5) <= NOT \DERIV_CALC|dz2_1_reg\(5);
\DERIV_CALC|ALT_INV_dz2_1_reg\(4) <= NOT \DERIV_CALC|dz2_1_reg\(4);
\DERIV_CALC|ALT_INV_dz2_1_reg\(3) <= NOT \DERIV_CALC|dz2_1_reg\(3);
\DERIV_CALC|ALT_INV_dz2_1_reg\(2) <= NOT \DERIV_CALC|dz2_1_reg\(2);
\DERIV_CALC|ALT_INV_dz2_1_reg\(0) <= NOT \DERIV_CALC|dz2_1_reg\(0);
\DERIV_CALC|ALT_INV_dz2_1_reg[-1]~q\ <= NOT \DERIV_CALC|dz2_1_reg[-1]~q\;
\DERIV_CALC|ALT_INV_dz2_1_reg[-2]~q\ <= NOT \DERIV_CALC|dz2_1_reg[-2]~q\;
\ALT_INV_var_main_reg[0][21]~q\ <= NOT \var_main_reg[0][21]~q\;
\ALT_INV_var_main_reg[0][20]~q\ <= NOT \var_main_reg[0][20]~q\;
\ALT_INV_var_main_reg[0][19]~q\ <= NOT \var_main_reg[0][19]~q\;
\ALT_INV_var_main_reg[0][18]~q\ <= NOT \var_main_reg[0][18]~q\;
\ALT_INV_var_main_reg[0][17]~q\ <= NOT \var_main_reg[0][17]~q\;
\ALT_INV_var_main_reg[0][16]~q\ <= NOT \var_main_reg[0][16]~q\;
\ALT_INV_var_main_reg[0][15]~q\ <= NOT \var_main_reg[0][15]~q\;
\ALT_INV_var_main_reg[0][14]~q\ <= NOT \var_main_reg[0][14]~q\;
\ALT_INV_var_main_reg[0][13]~q\ <= NOT \var_main_reg[0][13]~q\;
\ALT_INV_var_main_reg[0][12]~q\ <= NOT \var_main_reg[0][12]~q\;
\ALT_INV_var_main_reg[0][11]~q\ <= NOT \var_main_reg[0][11]~q\;
\ALT_INV_var_main_reg[0][9]~q\ <= NOT \var_main_reg[0][9]~q\;
\ALT_INV_var_main_reg[0][8]~q\ <= NOT \var_main_reg[0][8]~q\;
\ALT_INV_var_main_reg[0][7]~q\ <= NOT \var_main_reg[0][7]~q\;
\ALT_INV_var_main_reg[0][6]~q\ <= NOT \var_main_reg[0][6]~q\;
\ALT_INV_var_main_reg[0][5]~q\ <= NOT \var_main_reg[0][5]~q\;
\ALT_INV_var_main_reg[0][4]~q\ <= NOT \var_main_reg[0][4]~q\;
\ALT_INV_var_main_reg[0][3]~q\ <= NOT \var_main_reg[0][3]~q\;
\ALT_INV_var_main_reg[0][2]~q\ <= NOT \var_main_reg[0][2]~q\;
\ALT_INV_var_main_reg[0][1]~q\ <= NOT \var_main_reg[0][1]~q\;
\ALT_INV_var_main_reg[0][0]~q\ <= NOT \var_main_reg[0][0]~q\;
\ALT_INV_var_main_reg[1][21]~_Duplicate_1_q\ <= NOT \var_main_reg[1][21]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][20]~_Duplicate_1_q\ <= NOT \var_main_reg[1][20]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][19]~_Duplicate_1_q\ <= NOT \var_main_reg[1][19]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][18]~_Duplicate_1_q\ <= NOT \var_main_reg[1][18]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][17]~_Duplicate_1_q\ <= NOT \var_main_reg[1][17]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][16]~_Duplicate_1_q\ <= NOT \var_main_reg[1][16]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][15]~_Duplicate_1_q\ <= NOT \var_main_reg[1][15]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][14]~_Duplicate_1_q\ <= NOT \var_main_reg[1][14]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][13]~_Duplicate_1_q\ <= NOT \var_main_reg[1][13]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][12]~_Duplicate_1_q\ <= NOT \var_main_reg[1][12]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][11]~_Duplicate_1_q\ <= NOT \var_main_reg[1][11]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][10]~_Duplicate_1_q\ <= NOT \var_main_reg[1][10]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][9]~_Duplicate_1_q\ <= NOT \var_main_reg[1][9]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][8]~_Duplicate_1_q\ <= NOT \var_main_reg[1][8]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][7]~_Duplicate_1_q\ <= NOT \var_main_reg[1][7]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][6]~_Duplicate_1_q\ <= NOT \var_main_reg[1][6]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][5]~_Duplicate_1_q\ <= NOT \var_main_reg[1][5]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][4]~_Duplicate_1_q\ <= NOT \var_main_reg[1][4]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][3]~_Duplicate_1_q\ <= NOT \var_main_reg[1][3]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][2]~_Duplicate_1_q\ <= NOT \var_main_reg[1][2]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][1]~_Duplicate_1_q\ <= NOT \var_main_reg[1][1]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[1][0]~_Duplicate_1_q\ <= NOT \var_main_reg[1][0]~_Duplicate_1_q\;
\ALT_INV_var_main_reg[2][21]~q\ <= NOT \var_main_reg[2][21]~q\;
\ALT_INV_var_main_reg[2][20]~q\ <= NOT \var_main_reg[2][20]~q\;
\ALT_INV_var_main_reg[2][19]~q\ <= NOT \var_main_reg[2][19]~q\;
\ALT_INV_var_main_reg[2][18]~q\ <= NOT \var_main_reg[2][18]~q\;
\ALT_INV_var_main_reg[2][17]~q\ <= NOT \var_main_reg[2][17]~q\;
\ALT_INV_var_main_reg[2][16]~q\ <= NOT \var_main_reg[2][16]~q\;
\ALT_INV_var_main_reg[2][15]~q\ <= NOT \var_main_reg[2][15]~q\;
\ALT_INV_var_main_reg[2][14]~q\ <= NOT \var_main_reg[2][14]~q\;
\ALT_INV_var_main_reg[2][13]~q\ <= NOT \var_main_reg[2][13]~q\;
\ALT_INV_var_main_reg[2][12]~q\ <= NOT \var_main_reg[2][12]~q\;
\ALT_INV_var_main_reg[2][11]~q\ <= NOT \var_main_reg[2][11]~q\;
\ALT_INV_var_main_reg[2][10]~q\ <= NOT \var_main_reg[2][10]~q\;
\ALT_INV_var_main_reg[2][9]~q\ <= NOT \var_main_reg[2][9]~q\;
\ALT_INV_var_main_reg[2][8]~q\ <= NOT \var_main_reg[2][8]~q\;
\ALT_INV_var_main_reg[2][7]~q\ <= NOT \var_main_reg[2][7]~q\;
\ALT_INV_var_main_reg[2][6]~q\ <= NOT \var_main_reg[2][6]~q\;
\ALT_INV_var_main_reg[2][5]~q\ <= NOT \var_main_reg[2][5]~q\;
\ALT_INV_var_main_reg[2][4]~q\ <= NOT \var_main_reg[2][4]~q\;
\ALT_INV_var_main_reg[2][3]~q\ <= NOT \var_main_reg[2][3]~q\;
\ALT_INV_var_main_reg[2][2]~q\ <= NOT \var_main_reg[2][2]~q\;
\ALT_INV_var_main_reg[2][1]~q\ <= NOT \var_main_reg[2][1]~q\;
\ALT_INV_var_main_reg[2][0]~q\ <= NOT \var_main_reg[2][0]~q\;
\DERIV_CALC|ALT_INV_Add0~1_sumout\ <= NOT \DERIV_CALC|Add0~1_sumout\;
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
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a21\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a21\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a20~portadataout\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20~portadataout\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a19\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a19\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a18~portadataout\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18~portadataout\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a17\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a17\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a16~portadataout\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16~portadataout\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a15\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14~portadataout\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14~portadataout\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a13\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12~portadataout\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12~portadataout\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a11\;
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10~portadataout\ <= NOT \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10~portadataout\;
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

-- Location: IOOBUF_X89_Y4_N45
\o_tdata[2][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][0]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(0));

-- Location: IOOBUF_X54_Y0_N53
\o_tdata[2][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(1));

-- Location: IOOBUF_X40_Y0_N2
\o_tdata[2][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(2));

-- Location: IOOBUF_X54_Y0_N36
\o_tdata[2][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][3]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(3));

-- Location: IOOBUF_X64_Y0_N2
\o_tdata[2][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(4));

-- Location: IOOBUF_X52_Y0_N36
\o_tdata[2][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][5]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(5));

-- Location: IOOBUF_X72_Y0_N2
\o_tdata[2][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][6]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(6));

-- Location: IOOBUF_X56_Y0_N19
\o_tdata[2][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][7]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(7));

-- Location: IOOBUF_X60_Y0_N36
\o_tdata[2][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(8));

-- Location: IOOBUF_X58_Y0_N76
\o_tdata[2][9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][9]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(9));

-- Location: IOOBUF_X58_Y0_N93
\o_tdata[2][10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][10]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(10));

-- Location: IOOBUF_X24_Y0_N2
\o_tdata[2][11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][11]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(11));

-- Location: IOOBUF_X70_Y0_N19
\o_tdata[2][12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][12]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(12));

-- Location: IOOBUF_X80_Y0_N53
\o_tdata[2][13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][13]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(13));

-- Location: IOOBUF_X54_Y0_N2
\o_tdata[2][14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][14]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(14));

-- Location: IOOBUF_X56_Y0_N2
\o_tdata[2][15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][15]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(15));

-- Location: IOOBUF_X60_Y0_N2
\o_tdata[2][16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][16]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(16));

-- Location: IOOBUF_X14_Y0_N53
\o_tdata[2][17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][17]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(17));

-- Location: IOOBUF_X62_Y0_N36
\o_tdata[2][18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][18]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(18));

-- Location: IOOBUF_X88_Y0_N37
\o_tdata[2][19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][19]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(19));

-- Location: IOOBUF_X40_Y0_N53
\o_tdata[2][20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][20]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(20));

-- Location: IOOBUF_X66_Y0_N42
\o_tdata[2][21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][21]~q\,
	devoe => ww_devoe,
	o => ww_o_tdata(2)(21));

-- Location: IOOBUF_X89_Y9_N39
\o_tdata[1][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][0]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(0));

-- Location: IOOBUF_X2_Y0_N59
\o_tdata[1][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][1]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(1));

-- Location: IOOBUF_X89_Y6_N5
\o_tdata[1][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][2]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(2));

-- Location: IOOBUF_X20_Y0_N19
\o_tdata[1][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][3]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(3));

-- Location: IOOBUF_X89_Y9_N22
\o_tdata[1][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][4]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(4));

-- Location: IOOBUF_X18_Y0_N42
\o_tdata[1][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][5]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(5));

-- Location: IOOBUF_X89_Y9_N5
\o_tdata[1][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][6]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(6));

-- Location: IOOBUF_X89_Y16_N22
\o_tdata[1][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][7]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(7));

-- Location: IOOBUF_X26_Y0_N76
\o_tdata[1][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][8]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(8));

-- Location: IOOBUF_X18_Y0_N76
\o_tdata[1][9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][9]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(9));

-- Location: IOOBUF_X12_Y0_N53
\o_tdata[1][10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][10]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(10));

-- Location: IOOBUF_X24_Y0_N53
\o_tdata[1][11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][11]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(11));

-- Location: IOOBUF_X22_Y0_N53
\o_tdata[1][12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][12]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(12));

-- Location: IOOBUF_X22_Y0_N2
\o_tdata[1][13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][13]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(13));

-- Location: IOOBUF_X76_Y0_N2
\o_tdata[1][14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][14]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(14));

-- Location: IOOBUF_X22_Y0_N36
\o_tdata[1][15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][15]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(15));

-- Location: IOOBUF_X22_Y0_N19
\o_tdata[1][16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][16]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(16));

-- Location: IOOBUF_X28_Y0_N19
\o_tdata[1][17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][17]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(17));

-- Location: IOOBUF_X28_Y0_N53
\o_tdata[1][18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][18]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(18));

-- Location: IOOBUF_X32_Y0_N36
\o_tdata[1][19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][19]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(19));

-- Location: IOOBUF_X78_Y0_N2
\o_tdata[1][20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][20]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(20));

-- Location: IOOBUF_X32_Y0_N53
\o_tdata[1][21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[1][21]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(1)(21));

-- Location: IOOBUF_X32_Y0_N19
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

-- Location: IOOBUF_X20_Y0_N36
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

-- Location: IOOBUF_X80_Y0_N19
\o_tdata[0][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(2));

-- Location: IOOBUF_X28_Y0_N2
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

-- Location: IOOBUF_X12_Y0_N36
\o_tdata[0][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(4));

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X89_Y11_N96
\o_tdata[0][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(6));

-- Location: IOOBUF_X20_Y0_N2
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

-- Location: IOOBUF_X32_Y0_N2
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

-- Location: IOOBUF_X26_Y0_N59
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

-- Location: IOOBUF_X36_Y0_N19
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

-- Location: IOOBUF_X40_Y0_N19
\o_tdata[0][11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][11]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_tdata(0)(11));

-- Location: IOOBUF_X36_Y0_N2
\o_tdata[0][12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[0][12]~DUPLICATE_q\,
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

-- Location: IOOBUF_X34_Y0_N76
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

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X34_Y0_N59
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

-- Location: IOOBUF_X40_Y0_N36
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

-- Location: IOOBUF_X68_Y0_N53
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

-- Location: IOOBUF_X38_Y0_N19
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

-- Location: IOOBUF_X34_Y0_N93
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

-- Location: IOOBUF_X62_Y0_N2
\o_addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_addr(0));

-- Location: IOOBUF_X58_Y0_N42
\o_addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][9]~q\,
	devoe => ww_devoe,
	o => ww_o_addr(1));

-- Location: IOOBUF_X58_Y0_N59
\o_addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][10]~q\,
	devoe => ww_devoe,
	o => ww_o_addr(2));

-- Location: IOOBUF_X24_Y0_N36
\o_addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][11]~q\,
	devoe => ww_devoe,
	o => ww_o_addr(3));

-- Location: IOOBUF_X70_Y0_N2
\o_addr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][12]~q\,
	devoe => ww_devoe,
	o => ww_o_addr(4));

-- Location: IOOBUF_X84_Y0_N19
\o_addr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][13]~q\,
	devoe => ww_devoe,
	o => ww_o_addr(5));

-- Location: IOOBUF_X54_Y0_N19
\o_addr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][14]~q\,
	devoe => ww_devoe,
	o => ww_o_addr(6));

-- Location: IOOBUF_X56_Y0_N53
\o_addr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][15]~q\,
	devoe => ww_devoe,
	o => ww_o_addr(7));

-- Location: IOOBUF_X60_Y0_N19
\o_addr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][16]~q\,
	devoe => ww_devoe,
	o => ww_o_addr(8));

-- Location: IOOBUF_X14_Y0_N36
\o_addr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][17]~q\,
	devoe => ww_devoe,
	o => ww_o_addr(9));

-- Location: IOOBUF_X62_Y0_N19
\o_addr[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \var_main_reg[2][18]~q\,
	devoe => ww_devoe,
	o => ww_o_addr(10));

-- Location: IOOBUF_X88_Y0_N20
\o_addr[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_var_main_reg[2][19]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_addr(11));

-- Location: IOOBUF_X76_Y0_N36
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

-- Location: IOOBUF_X89_Y15_N5
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

-- Location: IOOBUF_X89_Y11_N79
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

-- Location: IOOBUF_X10_Y0_N76
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

-- Location: IOOBUF_X89_Y8_N39
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

-- Location: IOOBUF_X89_Y13_N5
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

-- Location: IOOBUF_X10_Y0_N42
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

-- Location: IOOBUF_X89_Y16_N5
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

-- Location: IOOBUF_X89_Y21_N56
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

-- Location: IOOBUF_X72_Y0_N36
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

-- Location: IOOBUF_X2_Y0_N76
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

-- Location: IOOBUF_X78_Y0_N53
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

-- Location: IOOBUF_X89_Y11_N45
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

-- Location: IOOBUF_X72_Y0_N53
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

-- Location: IOOBUF_X82_Y0_N76
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

-- Location: IOOBUF_X18_Y0_N93
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

-- Location: IOOBUF_X89_Y20_N79
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

-- Location: IOOBUF_X89_Y21_N22
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

-- Location: IOOBUF_X80_Y0_N2
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

-- Location: IOOBUF_X89_Y13_N56
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

-- Location: IOOBUF_X82_Y0_N42
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

-- Location: IOOBUF_X76_Y0_N53
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

-- Location: IOOBUF_X89_Y15_N22
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

-- Location: IOOBUF_X89_Y21_N39
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

-- Location: IOOBUF_X86_Y0_N2
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

-- Location: IOOBUF_X8_Y0_N19
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

-- Location: IOOBUF_X89_Y8_N5
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

-- Location: IOOBUF_X89_Y13_N22
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X89_Y16_N56
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

-- Location: IOOBUF_X89_Y16_N39
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

-- Location: IOOBUF_X74_Y0_N42
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

-- Location: IOOBUF_X10_Y0_N59
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

-- Location: IOOBUF_X78_Y0_N36
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

-- Location: IOOBUF_X89_Y11_N62
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

-- Location: IOOBUF_X72_Y0_N19
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

-- Location: IOOBUF_X82_Y0_N59
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

-- Location: IOOBUF_X18_Y0_N59
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

-- Location: IOOBUF_X89_Y20_N96
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

-- Location: IOOBUF_X89_Y20_N62
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

-- Location: IOOBUF_X80_Y0_N36
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

-- Location: IOOBUF_X89_Y13_N39
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

-- Location: IOOBUF_X88_Y0_N54
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

-- Location: IOOBUF_X89_Y4_N62
\o_derivatives_aslv[2][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg[-14]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(0));

-- Location: IOOBUF_X52_Y0_N2
\o_derivatives_aslv[2][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg[-13]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(1));

-- Location: IOOBUF_X74_Y0_N59
\o_derivatives_aslv[2][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg[-12]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(2));

-- Location: IOOBUF_X89_Y4_N96
\o_derivatives_aslv[2][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg[-11]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(3));

-- Location: IOOBUF_X84_Y0_N2
\o_derivatives_aslv[2][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg[-10]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(4));

-- Location: IOOBUF_X70_Y0_N36
\o_derivatives_aslv[2][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg[-9]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(5));

-- Location: IOOBUF_X52_Y0_N19
\o_derivatives_aslv[2][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg[-8]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(6));

-- Location: IOOBUF_X62_Y0_N53
\o_derivatives_aslv[2][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg[-7]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(7));

-- Location: IOOBUF_X89_Y4_N79
\o_derivatives_aslv[2][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg[-6]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(8));

-- Location: IOOBUF_X4_Y0_N36
\o_derivatives_aslv[2][9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg[-5]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(9));

-- Location: IOOBUF_X50_Y0_N59
\o_derivatives_aslv[2][10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg[-4]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(10));

-- Location: IOOBUF_X74_Y0_N76
\o_derivatives_aslv[2][11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg[-3]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(11));

-- Location: IOOBUF_X64_Y0_N36
\o_derivatives_aslv[2][12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg[-2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(12));

-- Location: IOOBUF_X52_Y0_N53
\o_derivatives_aslv[2][13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg[-1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(13));

-- Location: IOOBUF_X50_Y0_N93
\o_derivatives_aslv[2][14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg\(0),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(14));

-- Location: IOOBUF_X50_Y0_N76
\o_derivatives_aslv[2][15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(15));

-- Location: IOOBUF_X70_Y0_N53
\o_derivatives_aslv[2][16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg\(2),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(16));

-- Location: IOOBUF_X74_Y0_N93
\o_derivatives_aslv[2][17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(17));

-- Location: IOOBUF_X86_Y0_N53
\o_derivatives_aslv[2][18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg\(4),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(18));

-- Location: IOOBUF_X86_Y0_N19
\o_derivatives_aslv[2][19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg\(5),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(19));

-- Location: IOOBUF_X50_Y0_N42
\o_derivatives_aslv[2][20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg\(6),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(20));

-- Location: IOOBUF_X86_Y0_N36
\o_derivatives_aslv[2][21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dz2_1_reg\(7),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(2)(21));

-- Location: IOOBUF_X64_Y0_N19
\o_derivatives_aslv[1][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg[-14]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(0));

-- Location: IOOBUF_X24_Y0_N19
\o_derivatives_aslv[1][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg[-13]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(1));

-- Location: IOOBUF_X66_Y0_N59
\o_derivatives_aslv[1][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg[-12]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(2));

-- Location: IOOBUF_X89_Y6_N39
\o_derivatives_aslv[1][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg[-11]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(3));

-- Location: IOOBUF_X82_Y0_N93
\o_derivatives_aslv[1][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg[-10]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(4));

-- Location: IOOBUF_X36_Y81_N53
\o_derivatives_aslv[1][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg[-9]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(5));

-- Location: IOOBUF_X64_Y0_N53
\o_derivatives_aslv[1][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg[-8]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(6));

-- Location: IOOBUF_X68_Y0_N36
\o_derivatives_aslv[1][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg[-7]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(7));

-- Location: IOOBUF_X89_Y15_N56
\o_derivatives_aslv[1][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg[-6]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(8));

-- Location: IOOBUF_X68_Y0_N19
\o_derivatives_aslv[1][9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg[-5]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(9));

-- Location: IOOBUF_X14_Y0_N19
\o_derivatives_aslv[1][10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg[-4]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(10));

-- Location: IOOBUF_X30_Y0_N36
\o_derivatives_aslv[1][11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg[-3]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(11));

-- Location: IOOBUF_X68_Y0_N2
\o_derivatives_aslv[1][12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg[-2]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(12));

-- Location: IOOBUF_X6_Y0_N19
\o_derivatives_aslv[1][13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg[-1]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(13));

-- Location: IOOBUF_X6_Y0_N53
\o_derivatives_aslv[1][14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg\(0),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(14));

-- Location: IOOBUF_X89_Y6_N22
\o_derivatives_aslv[1][15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg\(1),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(15));

-- Location: IOOBUF_X20_Y0_N53
\o_derivatives_aslv[1][16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg\(2),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(16));

-- Location: IOOBUF_X10_Y0_N93
\o_derivatives_aslv[1][17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg\(3),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(17));

-- Location: IOOBUF_X30_Y0_N53
\o_derivatives_aslv[1][18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg\(4),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(18));

-- Location: IOOBUF_X26_Y0_N42
\o_derivatives_aslv[1][19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg\(5),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(19));

-- Location: IOOBUF_X12_Y0_N19
\o_derivatives_aslv[1][20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg\(6),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(20));

-- Location: IOOBUF_X26_Y0_N93
\o_derivatives_aslv[1][21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dy2_1_reg\(7),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(1)(21));

-- Location: IOOBUF_X89_Y8_N22
\o_derivatives_aslv[0][0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg[-14]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(0));

-- Location: IOOBUF_X16_Y0_N36
\o_derivatives_aslv[0][1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg[-13]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(1));

-- Location: IOOBUF_X84_Y0_N53
\o_derivatives_aslv[0][2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg[-12]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(2));

-- Location: IOOBUF_X14_Y0_N2
\o_derivatives_aslv[0][3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg[-11]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(3));

-- Location: IOOBUF_X89_Y9_N56
\o_derivatives_aslv[0][4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg[-10]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(4));

-- Location: IOOBUF_X60_Y0_N53
\o_derivatives_aslv[0][5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg[-9]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(5));

-- Location: IOOBUF_X89_Y15_N39
\o_derivatives_aslv[0][6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg[-8]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(6));

-- Location: IOOBUF_X89_Y8_N56
\o_derivatives_aslv[0][7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg[-7]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(7));

-- Location: IOOBUF_X89_Y6_N56
\o_derivatives_aslv[0][8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg[-6]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(8));

-- Location: IOOBUF_X56_Y0_N36
\o_derivatives_aslv[0][9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg[-5]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(9));

-- Location: IOOBUF_X66_Y0_N93
\o_derivatives_aslv[0][10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg[-4]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(10));

-- Location: IOOBUF_X36_Y0_N36
\o_derivatives_aslv[0][11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg[-3]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(11));

-- Location: IOOBUF_X28_Y0_N36
\o_derivatives_aslv[0][12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg[-2]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(12));

-- Location: IOOBUF_X16_Y0_N53
\o_derivatives_aslv[0][13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg[-1]~q\,
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(13));

-- Location: IOOBUF_X84_Y0_N36
\o_derivatives_aslv[0][14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg\(0),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(14));

-- Location: IOOBUF_X36_Y0_N53
\o_derivatives_aslv[0][15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg\(1),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(15));

-- Location: IOOBUF_X16_Y0_N2
\o_derivatives_aslv[0][16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg\(2),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(16));

-- Location: IOOBUF_X30_Y0_N19
\o_derivatives_aslv[0][17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg\(3),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(17));

-- Location: IOOBUF_X16_Y0_N19
\o_derivatives_aslv[0][18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg\(4),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(18));

-- Location: IOOBUF_X30_Y0_N2
\o_derivatives_aslv[0][19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg\(5),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(19));

-- Location: IOOBUF_X78_Y0_N19
\o_derivatives_aslv[0][20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg\(6),
	devoe => ww_devoe,
	o => ww_o_derivatives_aslv(0)(20));

-- Location: IOOBUF_X66_Y0_N76
\o_derivatives_aslv[0][21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DERIV_CALC|dx2_1_reg[7]~DUPLICATE_q\,
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

-- Location: FF_X33_Y5_N32
\var_main_reg[1][0]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][0]~_Duplicate_1_q\);

-- Location: FF_X33_Y5_N35
\var_main_reg[1][1]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][1]~_Duplicate_1_q\);

-- Location: FF_X34_Y2_N28
\DERIV_CALC|dx1_1_reg[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[1][12]~_Duplicate_1_q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-2]~q\);

-- Location: FF_X35_Y2_N5
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

-- Location: LABCELL_X37_Y2_N36
\DERIV_CALC|dx2_1_reg[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_1_reg[7]~feeder_combout\ = \DERIV_CALC|dx1_1_reg\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg\(7),
	combout => \DERIV_CALC|dx2_1_reg[7]~feeder_combout\);

-- Location: FF_X37_Y2_N38
\DERIV_CALC|dx2_1_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_1_reg[7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg\(7));

-- Location: FF_X37_Y2_N40
\mul_reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx2_1_reg\(7),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][7]~q\);

-- Location: FF_X36_Y2_N47
\DERIV_CALC|dx1_1_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[1][20]~_Duplicate_1_q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg\(6));

-- Location: FF_X36_Y2_N37
\DERIV_CALC|dx2_1_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_1_reg\(6),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg\(6));

-- Location: FF_X36_Y2_N44
\mul_reg[0][-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx2_1_reg\(6),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-4]~q\);

-- Location: LABCELL_X37_Y2_N45
\DERIV_CALC|dx1_1_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_1_reg[5]~feeder_combout\ = ( \var_main_reg[1][19]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[1][19]~_Duplicate_1_q\,
	combout => \DERIV_CALC|dx1_1_reg[5]~feeder_combout\);

-- Location: FF_X37_Y2_N47
\DERIV_CALC|dx1_1_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_1_reg[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg\(5));

-- Location: LABCELL_X36_Y2_N48
\DERIV_CALC|dx2_1_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_1_reg[5]~feeder_combout\ = \DERIV_CALC|dx1_1_reg\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg\(5),
	combout => \DERIV_CALC|dx2_1_reg[5]~feeder_combout\);

-- Location: FF_X36_Y2_N49
\DERIV_CALC|dx2_1_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_1_reg[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg\(5));

-- Location: LABCELL_X35_Y3_N27
\mul_reg[0][-5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[0][-5]~feeder_combout\ = ( \DERIV_CALC|dx2_1_reg\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx2_1_reg\(5),
	combout => \mul_reg[0][-5]~feeder_combout\);

-- Location: FF_X35_Y3_N29
\mul_reg[0][-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[0][-5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-5]~q\);

-- Location: FF_X34_Y2_N7
\DERIV_CALC|dx1_1_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[1][18]~_Duplicate_1_q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg\(4));

-- Location: FF_X34_Y2_N13
\DERIV_CALC|dx2_1_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_1_reg\(4),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg\(4));

-- Location: MLABCELL_X34_Y2_N18
\mul_reg[0][-6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[0][-6]~feeder_combout\ = ( \DERIV_CALC|dx2_1_reg\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx2_1_reg\(4),
	combout => \mul_reg[0][-6]~feeder_combout\);

-- Location: FF_X34_Y2_N19
\mul_reg[0][-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[0][-6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-6]~q\);

-- Location: FF_X34_Y2_N58
\DERIV_CALC|dx1_1_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[1][17]~_Duplicate_1_q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg\(3));

-- Location: MLABCELL_X34_Y2_N54
\DERIV_CALC|dx2_1_reg[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_1_reg[3]~feeder_combout\ = \DERIV_CALC|dx1_1_reg\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg\(3),
	combout => \DERIV_CALC|dx2_1_reg[3]~feeder_combout\);

-- Location: FF_X34_Y2_N55
\DERIV_CALC|dx2_1_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_1_reg[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg\(3));

-- Location: FF_X35_Y3_N5
\mul_reg[0][-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx2_1_reg\(3),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-7]~q\);

-- Location: MLABCELL_X34_Y2_N0
\DERIV_CALC|dx1_1_reg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_1_reg[2]~feeder_combout\ = ( \var_main_reg[1][16]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[1][16]~_Duplicate_1_q\,
	combout => \DERIV_CALC|dx1_1_reg[2]~feeder_combout\);

-- Location: FF_X34_Y2_N1
\DERIV_CALC|dx1_1_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_1_reg[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg\(2));

-- Location: FF_X34_Y2_N49
\DERIV_CALC|dx2_1_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_1_reg\(2),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg\(2));

-- Location: FF_X34_Y2_N52
\mul_reg[0][-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx2_1_reg\(2),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-8]~q\);

-- Location: FF_X36_Y2_N56
\DERIV_CALC|dx1_1_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[1][15]~_Duplicate_1_q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg\(1));

-- Location: LABCELL_X36_Y2_N57
\DERIV_CALC|dx2_1_reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_1_reg[1]~feeder_combout\ = \DERIV_CALC|dx1_1_reg\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx1_1_reg\(1),
	combout => \DERIV_CALC|dx2_1_reg[1]~feeder_combout\);

-- Location: FF_X36_Y2_N58
\DERIV_CALC|dx2_1_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_1_reg[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg\(1));

-- Location: LABCELL_X35_Y3_N21
\mul_reg[0][-9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[0][-9]~feeder_combout\ = ( \DERIV_CALC|dx2_1_reg\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx2_1_reg\(1),
	combout => \mul_reg[0][-9]~feeder_combout\);

-- Location: FF_X35_Y3_N23
\mul_reg[0][-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[0][-9]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-9]~q\);

-- Location: LABCELL_X42_Y2_N21
\DERIV_CALC|dx1_1_reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_1_reg[0]~feeder_combout\ = ( \var_main_reg[1][14]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[1][14]~_Duplicate_1_q\,
	combout => \DERIV_CALC|dx1_1_reg[0]~feeder_combout\);

-- Location: FF_X42_Y2_N23
\DERIV_CALC|dx1_1_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_1_reg[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg\(0));

-- Location: LABCELL_X42_Y2_N15
\DERIV_CALC|dx2_1_reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_1_reg[0]~feeder_combout\ = \DERIV_CALC|dx1_1_reg\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx1_1_reg\(0),
	combout => \DERIV_CALC|dx2_1_reg[0]~feeder_combout\);

-- Location: FF_X42_Y2_N16
\DERIV_CALC|dx2_1_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_1_reg[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg\(0));

-- Location: LABCELL_X36_Y3_N21
\mul_reg[0][-10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[0][-10]~feeder_combout\ = ( \DERIV_CALC|dx2_1_reg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx2_1_reg\(0),
	combout => \mul_reg[0][-10]~feeder_combout\);

-- Location: FF_X36_Y3_N23
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

-- Location: MLABCELL_X34_Y2_N33
\DERIV_CALC|dx1_1_reg[-1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_1_reg[-1]~feeder_combout\ = ( \var_main_reg[1][13]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[1][13]~_Duplicate_1_q\,
	combout => \DERIV_CALC|dx1_1_reg[-1]~feeder_combout\);

-- Location: FF_X34_Y2_N35
\DERIV_CALC|dx1_1_reg[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_1_reg[-1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-1]~q\);

-- Location: MLABCELL_X34_Y2_N45
\DERIV_CALC|dx2_1_reg[-1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_1_reg[-1]~feeder_combout\ = \DERIV_CALC|dx1_1_reg[-1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx1_1_reg[-1]~q\,
	combout => \DERIV_CALC|dx2_1_reg[-1]~feeder_combout\);

-- Location: FF_X34_Y2_N46
\DERIV_CALC|dx2_1_reg[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_1_reg[-1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-1]~q\);

-- Location: LABCELL_X35_Y3_N0
\mul_reg[0][-11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[0][-11]~feeder_combout\ = ( \DERIV_CALC|dx2_1_reg[-1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx2_1_reg[-1]~q\,
	combout => \mul_reg[0][-11]~feeder_combout\);

-- Location: FF_X35_Y3_N2
\mul_reg[0][-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[0][-11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-11]~q\);

-- Location: FF_X34_Y2_N25
\DERIV_CALC|dx2_1_reg[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_1_reg[-2]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-2]~q\);

-- Location: MLABCELL_X34_Y2_N36
\mul_reg[0][-12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[0][-12]~feeder_combout\ = ( \DERIV_CALC|dx2_1_reg[-2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx2_1_reg[-2]~q\,
	combout => \mul_reg[0][-12]~feeder_combout\);

-- Location: FF_X34_Y2_N37
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

-- Location: LABCELL_X36_Y2_N39
\DERIV_CALC|dx2_1_reg[-3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_1_reg[-3]~feeder_combout\ = \DERIV_CALC|dx1_1_reg[-3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx1_1_reg[-3]~q\,
	combout => \DERIV_CALC|dx2_1_reg[-3]~feeder_combout\);

-- Location: FF_X36_Y2_N40
\DERIV_CALC|dx2_1_reg[-3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_1_reg[-3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-3]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y3_N9
\mul_reg[0][-13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[0][-13]~feeder_combout\ = ( \DERIV_CALC|dx2_1_reg[-3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx2_1_reg[-3]~DUPLICATE_q\,
	combout => \mul_reg[0][-13]~feeder_combout\);

-- Location: FF_X35_Y3_N11
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

-- Location: LABCELL_X36_Y3_N15
\DERIV_CALC|dx1_1_reg[-4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_1_reg[-4]~feeder_combout\ = ( \var_main_reg[1][10]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[1][10]~_Duplicate_1_q\,
	combout => \DERIV_CALC|dx1_1_reg[-4]~feeder_combout\);

-- Location: FF_X36_Y3_N16
\DERIV_CALC|dx1_1_reg[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_1_reg[-4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-4]~q\);

-- Location: FF_X37_Y3_N5
\DERIV_CALC|dx2_1_reg[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_1_reg[-4]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-4]~q\);

-- Location: FF_X37_Y3_N1
\mul_reg[0][-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx2_1_reg[-4]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[0][-14]~q\);

-- Location: LABCELL_X35_Y3_N30
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

-- Location: FF_X35_Y3_N31
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

-- Location: LABCELL_X35_Y3_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \var_main_reg[0][1]~q\ ) + ( \mul_reg[0][-13]~q\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \var_main_reg[0][1]~q\ ) + ( \mul_reg[0][-13]~q\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[0][1]~q\,
	datac => \ALT_INV_mul_reg[0][-13]~q\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X35_Y3_N35
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

-- Location: LABCELL_X35_Y3_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \var_main_reg[0][2]~q\ ) + ( \mul_reg[0][-12]~q\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \var_main_reg[0][2]~q\ ) + ( \mul_reg[0][-12]~q\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul_reg[0][-12]~q\,
	datac => \ALT_INV_var_main_reg[0][2]~q\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X35_Y3_N38
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

-- Location: LABCELL_X35_Y3_N39
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \mul_reg[0][-11]~q\ ) + ( \var_main_reg[0][3]~q\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \mul_reg[0][-11]~q\ ) + ( \var_main_reg[0][3]~q\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[0][3]~q\,
	datad => \ALT_INV_mul_reg[0][-11]~q\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X35_Y3_N40
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

-- Location: LABCELL_X35_Y3_N42
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \var_main_reg[0][4]~q\ ) + ( \mul_reg[0][-10]~q\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \var_main_reg[0][4]~q\ ) + ( \mul_reg[0][-10]~q\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[0][4]~q\,
	datac => \ALT_INV_mul_reg[0][-10]~q\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X35_Y3_N44
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

-- Location: LABCELL_X35_Y3_N45
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \mul_reg[0][-9]~q\ ) + ( \var_main_reg[0][5]~q\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \mul_reg[0][-9]~q\ ) + ( \var_main_reg[0][5]~q\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[0][5]~q\,
	datad => \ALT_INV_mul_reg[0][-9]~q\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X35_Y3_N46
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

-- Location: LABCELL_X35_Y3_N48
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

-- Location: FF_X35_Y3_N50
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

-- Location: LABCELL_X35_Y3_N51
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \mul_reg[0][-7]~q\ ) + ( \var_main_reg[0][7]~q\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \mul_reg[0][-7]~q\ ) + ( \var_main_reg[0][7]~q\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[0][7]~q\,
	datad => \ALT_INV_mul_reg[0][-7]~q\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X35_Y3_N53
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

-- Location: LABCELL_X35_Y3_N54
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

-- Location: FF_X35_Y3_N55
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

-- Location: LABCELL_X35_Y3_N57
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \mul_reg[0][-5]~q\ ) + ( \var_main_reg[0][9]~q\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \mul_reg[0][-5]~q\ ) + ( \var_main_reg[0][9]~q\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[0][9]~q\,
	datad => \ALT_INV_mul_reg[0][-5]~q\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X35_Y3_N58
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

-- Location: LABCELL_X35_Y2_N0
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \mul_reg[0][-4]~q\ ) + ( \var_main_reg[0][10]~DUPLICATE_q\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \mul_reg[0][-4]~q\ ) + ( \var_main_reg[0][10]~DUPLICATE_q\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[0][10]~DUPLICATE_q\,
	datad => \ALT_INV_mul_reg[0][-4]~q\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X35_Y2_N1
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

-- Location: LABCELL_X35_Y2_N3
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \var_main_reg[0][11]~q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \var_main_reg[0][11]~q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[0][11]~q\,
	datac => \ALT_INV_mul_reg[0][7]~q\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X35_Y2_N4
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

-- Location: FF_X35_Y2_N8
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

-- Location: LABCELL_X35_Y2_N6
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \mul_reg[0][7]~q\ ) + ( \var_main_reg[0][12]~q\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \mul_reg[0][7]~q\ ) + ( \var_main_reg[0][12]~q\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[0][12]~q\,
	datad => \ALT_INV_mul_reg[0][7]~q\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X35_Y2_N7
\var_main_reg[0][12]~DUPLICATE\ : dffeas
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
	q => \var_main_reg[0][12]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y2_N3
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][11]~q\ ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][11]~q\ ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[2][11]~q\,
	datad => \ALT_INV_mul_reg[2][7]~q\,
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: MLABCELL_X39_Y2_N6
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][12]~q\ ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][12]~q\ ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[2][12]~q\,
	datad => \ALT_INV_mul_reg[2][7]~q\,
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X39_Y2_N7
\var_main_reg[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~49_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][12]~q\);

-- Location: FF_X33_Y5_N41
\var_main_reg[1][3]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][3]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y2_N9
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \var_main_reg[0][13]~q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \var_main_reg[0][13]~q\ ) + ( \mul_reg[0][7]~q\ ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[0][13]~q\,
	datac => \ALT_INV_mul_reg[0][7]~q\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X35_Y2_N10
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

-- Location: MLABCELL_X39_Y2_N9
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][13]~q\ ) + ( \Add2~50\ ))
-- \Add2~54\ = CARRY(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][13]~q\ ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[2][13]~q\,
	datad => \ALT_INV_mul_reg[2][7]~q\,
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: FF_X39_Y2_N10
\var_main_reg[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~53_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][13]~q\);

-- Location: LABCELL_X37_Y2_N6
\DERIV_CALC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~49_sumout\ = SUM(( \var_main_reg[2][12]~q\ ) + ( \var_main_reg[0][12]~DUPLICATE_q\ ) + ( \DERIV_CALC|Add0~46\ ))
-- \DERIV_CALC|Add0~50\ = CARRY(( \var_main_reg[2][12]~q\ ) + ( \var_main_reg[0][12]~DUPLICATE_q\ ) + ( \DERIV_CALC|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[0][12]~DUPLICATE_q\,
	datad => \ALT_INV_var_main_reg[2][12]~q\,
	cin => \DERIV_CALC|Add0~46\,
	sumout => \DERIV_CALC|Add0~49_sumout\,
	cout => \DERIV_CALC|Add0~50\);

-- Location: LABCELL_X37_Y2_N9
\DERIV_CALC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~53_sumout\ = SUM(( \var_main_reg[2][13]~q\ ) + ( \var_main_reg[0][13]~q\ ) + ( \DERIV_CALC|Add0~50\ ))
-- \DERIV_CALC|Add0~54\ = CARRY(( \var_main_reg[2][13]~q\ ) + ( \var_main_reg[0][13]~q\ ) + ( \DERIV_CALC|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[0][13]~q\,
	datac => \ALT_INV_var_main_reg[2][13]~q\,
	cin => \DERIV_CALC|Add0~50\,
	sumout => \DERIV_CALC|Add0~53_sumout\,
	cout => \DERIV_CALC|Add0~54\);

-- Location: FF_X37_Y2_N11
\DERIV_CALC|dy1_2_reg[-1]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg[-1]~q\);

-- Location: FF_X34_Y2_N34
\DERIV_CALC|dx1_1_reg[-1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_1_reg[-1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-1]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y2_N0
\DERIV_CALC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~41_sumout\ = SUM(( \var_main_reg[2][10]~q\ ) + ( \var_main_reg[0][10]~DUPLICATE_q\ ) + ( \DERIV_CALC|Add0~38\ ))
-- \DERIV_CALC|Add0~42\ = CARRY(( \var_main_reg[2][10]~q\ ) + ( \var_main_reg[0][10]~DUPLICATE_q\ ) + ( \DERIV_CALC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[0][10]~DUPLICATE_q\,
	datad => \ALT_INV_var_main_reg[2][10]~q\,
	cin => \DERIV_CALC|Add0~38\,
	sumout => \DERIV_CALC|Add0~41_sumout\,
	cout => \DERIV_CALC|Add0~42\);

-- Location: FF_X37_Y2_N2
\DERIV_CALC|dy1_2_reg[-4]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg[-4]~q\);

-- Location: FF_X36_Y3_N17
\DERIV_CALC|dx1_1_reg[-4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_1_reg[-4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-4]~DUPLICATE_q\);

-- Location: FF_X39_Y3_N56
\var_main_reg[2][8]\ : dffeas
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
	q => \var_main_reg[2][8]~q\);

-- Location: FF_X33_Y5_N44
\var_main_reg[1][4]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][4]~_Duplicate_1_q\);

-- Location: FF_X35_Y2_N14
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

-- Location: LABCELL_X35_Y2_N12
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \mul_reg[0][7]~q\ ) + ( \var_main_reg[0][14]~q\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \mul_reg[0][7]~q\ ) + ( \var_main_reg[0][14]~q\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[0][14]~q\,
	datad => \ALT_INV_mul_reg[0][7]~q\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X35_Y2_N13
\var_main_reg[0][14]~DUPLICATE\ : dffeas
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
	q => \var_main_reg[0][14]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y2_N12
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( \var_main_reg[2][14]~q\ ) + ( \mul_reg[2][7]~q\ ) + ( \Add2~54\ ))
-- \Add2~58\ = CARRY(( \var_main_reg[2][14]~q\ ) + ( \mul_reg[2][7]~q\ ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[2][14]~q\,
	datac => \ALT_INV_mul_reg[2][7]~q\,
	cin => \Add2~54\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: FF_X39_Y2_N13
\var_main_reg[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~57_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][14]~q\);

-- Location: LABCELL_X37_Y2_N12
\DERIV_CALC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~57_sumout\ = SUM(( \var_main_reg[2][14]~q\ ) + ( \var_main_reg[0][14]~DUPLICATE_q\ ) + ( \DERIV_CALC|Add0~54\ ))
-- \DERIV_CALC|Add0~58\ = CARRY(( \var_main_reg[2][14]~q\ ) + ( \var_main_reg[0][14]~DUPLICATE_q\ ) + ( \DERIV_CALC|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[0][14]~DUPLICATE_q\,
	datad => \ALT_INV_var_main_reg[2][14]~q\,
	cin => \DERIV_CALC|Add0~54\,
	sumout => \DERIV_CALC|Add0~57_sumout\,
	cout => \DERIV_CALC|Add0~58\);

-- Location: FF_X37_Y2_N13
\DERIV_CALC|dy1_2_reg[0]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg\(0));

-- Location: FF_X39_Y2_N29
\var_main_reg[2][19]\ : dffeas
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
	q => \var_main_reg[2][19]~q\);

-- Location: MLABCELL_X39_Y2_N15
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( \var_main_reg[2][15]~q\ ) + ( \mul_reg[2][7]~q\ ) + ( \Add2~58\ ))
-- \Add2~62\ = CARRY(( \var_main_reg[2][15]~q\ ) + ( \mul_reg[2][7]~q\ ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul_reg[2][7]~q\,
	datac => \ALT_INV_var_main_reg[2][15]~q\,
	cin => \Add2~58\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: FF_X39_Y2_N16
\var_main_reg[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~61_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][15]~q\);

-- Location: MLABCELL_X39_Y2_N18
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( \var_main_reg[2][16]~q\ ) + ( \mul_reg[2][7]~q\ ) + ( \Add2~62\ ))
-- \Add2~66\ = CARRY(( \var_main_reg[2][16]~q\ ) + ( \mul_reg[2][7]~q\ ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul_reg[2][7]~q\,
	datac => \ALT_INV_var_main_reg[2][16]~q\,
	cin => \Add2~62\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: FF_X39_Y2_N19
\var_main_reg[2][16]\ : dffeas
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
	q => \var_main_reg[2][16]~q\);

-- Location: MLABCELL_X39_Y2_N21
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( \var_main_reg[2][17]~q\ ) + ( \mul_reg[2][7]~q\ ) + ( \Add2~66\ ))
-- \Add2~70\ = CARRY(( \var_main_reg[2][17]~q\ ) + ( \mul_reg[2][7]~q\ ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul_reg[2][7]~q\,
	datac => \ALT_INV_var_main_reg[2][17]~q\,
	cin => \Add2~66\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: FF_X39_Y2_N22
\var_main_reg[2][17]\ : dffeas
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
	q => \var_main_reg[2][17]~q\);

-- Location: MLABCELL_X39_Y2_N24
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( \var_main_reg[2][18]~q\ ) + ( \mul_reg[2][7]~q\ ) + ( \Add2~70\ ))
-- \Add2~74\ = CARRY(( \var_main_reg[2][18]~q\ ) + ( \mul_reg[2][7]~q\ ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[2][18]~q\,
	datac => \ALT_INV_mul_reg[2][7]~q\,
	cin => \Add2~70\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: FF_X39_Y2_N25
\var_main_reg[2][18]\ : dffeas
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
	q => \var_main_reg[2][18]~q\);

-- Location: MLABCELL_X39_Y2_N27
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][19]~q\ ) + ( \Add2~74\ ))
-- \Add2~78\ = CARRY(( \mul_reg[2][7]~q\ ) + ( \var_main_reg[2][19]~q\ ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[2][19]~q\,
	datad => \ALT_INV_mul_reg[2][7]~q\,
	cin => \Add2~74\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: FF_X39_Y2_N28
\var_main_reg[2][19]~DUPLICATE\ : dffeas
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
	q => \var_main_reg[2][19]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y2_N15
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \mul_reg[0][7]~q\ ) + ( \var_main_reg[0][15]~q\ ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( \mul_reg[0][7]~q\ ) + ( \var_main_reg[0][15]~q\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[0][15]~q\,
	datad => \ALT_INV_mul_reg[0][7]~q\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X35_Y2_N16
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

-- Location: LABCELL_X35_Y2_N18
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \mul_reg[0][7]~q\ ) + ( \var_main_reg[0][16]~q\ ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( \mul_reg[0][7]~q\ ) + ( \var_main_reg[0][16]~q\ ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[0][16]~q\,
	datad => \ALT_INV_mul_reg[0][7]~q\,
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X35_Y2_N20
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

-- Location: LABCELL_X35_Y2_N21
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \mul_reg[0][7]~q\ ) + ( \var_main_reg[0][17]~q\ ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( \mul_reg[0][7]~q\ ) + ( \var_main_reg[0][17]~q\ ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[0][17]~q\,
	datad => \ALT_INV_mul_reg[0][7]~q\,
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X35_Y2_N22
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

-- Location: LABCELL_X35_Y2_N24
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \mul_reg[0][7]~q\ ) + ( \var_main_reg[0][18]~q\ ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( \mul_reg[0][7]~q\ ) + ( \var_main_reg[0][18]~q\ ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[0][18]~q\,
	datad => \ALT_INV_mul_reg[0][7]~q\,
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X35_Y2_N25
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

-- Location: LABCELL_X35_Y2_N27
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \mul_reg[0][7]~q\ ) + ( \var_main_reg[0][19]~q\ ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( \mul_reg[0][7]~q\ ) + ( \var_main_reg[0][19]~q\ ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[0][19]~q\,
	datad => \ALT_INV_mul_reg[0][7]~q\,
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X35_Y2_N28
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

-- Location: LABCELL_X37_Y2_N15
\DERIV_CALC|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~61_sumout\ = SUM(( \var_main_reg[2][15]~q\ ) + ( \var_main_reg[0][15]~q\ ) + ( \DERIV_CALC|Add0~58\ ))
-- \DERIV_CALC|Add0~62\ = CARRY(( \var_main_reg[2][15]~q\ ) + ( \var_main_reg[0][15]~q\ ) + ( \DERIV_CALC|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[0][15]~q\,
	datad => \ALT_INV_var_main_reg[2][15]~q\,
	cin => \DERIV_CALC|Add0~58\,
	sumout => \DERIV_CALC|Add0~61_sumout\,
	cout => \DERIV_CALC|Add0~62\);

-- Location: LABCELL_X37_Y2_N18
\DERIV_CALC|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~65_sumout\ = SUM(( \var_main_reg[2][16]~q\ ) + ( \var_main_reg[0][16]~q\ ) + ( \DERIV_CALC|Add0~62\ ))
-- \DERIV_CALC|Add0~66\ = CARRY(( \var_main_reg[2][16]~q\ ) + ( \var_main_reg[0][16]~q\ ) + ( \DERIV_CALC|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[0][16]~q\,
	datac => \ALT_INV_var_main_reg[2][16]~q\,
	cin => \DERIV_CALC|Add0~62\,
	sumout => \DERIV_CALC|Add0~65_sumout\,
	cout => \DERIV_CALC|Add0~66\);

-- Location: LABCELL_X37_Y2_N21
\DERIV_CALC|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~69_sumout\ = SUM(( \var_main_reg[2][17]~q\ ) + ( \var_main_reg[0][17]~q\ ) + ( \DERIV_CALC|Add0~66\ ))
-- \DERIV_CALC|Add0~70\ = CARRY(( \var_main_reg[2][17]~q\ ) + ( \var_main_reg[0][17]~q\ ) + ( \DERIV_CALC|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[0][17]~q\,
	datad => \ALT_INV_var_main_reg[2][17]~q\,
	cin => \DERIV_CALC|Add0~66\,
	sumout => \DERIV_CALC|Add0~69_sumout\,
	cout => \DERIV_CALC|Add0~70\);

-- Location: LABCELL_X37_Y2_N24
\DERIV_CALC|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~73_sumout\ = SUM(( \var_main_reg[2][18]~q\ ) + ( \var_main_reg[0][18]~q\ ) + ( \DERIV_CALC|Add0~70\ ))
-- \DERIV_CALC|Add0~74\ = CARRY(( \var_main_reg[2][18]~q\ ) + ( \var_main_reg[0][18]~q\ ) + ( \DERIV_CALC|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[2][18]~q\,
	datac => \ALT_INV_var_main_reg[0][18]~q\,
	cin => \DERIV_CALC|Add0~70\,
	sumout => \DERIV_CALC|Add0~73_sumout\,
	cout => \DERIV_CALC|Add0~74\);

-- Location: LABCELL_X37_Y2_N27
\DERIV_CALC|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~77_sumout\ = SUM(( \var_main_reg[2][19]~DUPLICATE_q\ ) + ( \var_main_reg[0][19]~q\ ) + ( \DERIV_CALC|Add0~74\ ))
-- \DERIV_CALC|Add0~78\ = CARRY(( \var_main_reg[2][19]~DUPLICATE_q\ ) + ( \var_main_reg[0][19]~q\ ) + ( \DERIV_CALC|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[2][19]~DUPLICATE_q\,
	datac => \ALT_INV_var_main_reg[0][19]~q\,
	cin => \DERIV_CALC|Add0~74\,
	sumout => \DERIV_CALC|Add0~77_sumout\,
	cout => \DERIV_CALC|Add0~78\);

-- Location: FF_X37_Y2_N28
\DERIV_CALC|dy1_2_reg[5]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg\(5));

-- Location: FF_X37_Y2_N26
\DERIV_CALC|dy1_2_reg[4]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg\(4));

-- Location: FF_X37_Y2_N23
\DERIV_CALC|dy1_2_reg[3]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg\(3));

-- Location: FF_X37_Y2_N19
\DERIV_CALC|dy1_2_reg[2]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg\(2));

-- Location: FF_X37_Y2_N16
\DERIV_CALC|dy1_2_reg[1]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg\(1));

-- Location: LABCELL_X36_Y2_N9
\DERIV_CALC|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~53_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg\(0) $ (\DERIV_CALC|dy1_2_reg[-1]~q\) ) + ( \DERIV_CALC|Add1~51\ ) + ( \DERIV_CALC|Add1~50\ ))
-- \DERIV_CALC|Add1~54\ = CARRY(( !\DERIV_CALC|dx1_1_reg\(0) $ (\DERIV_CALC|dy1_2_reg[-1]~q\) ) + ( \DERIV_CALC|Add1~51\ ) + ( \DERIV_CALC|Add1~50\ ))
-- \DERIV_CALC|Add1~55\ = SHARE((\DERIV_CALC|dx1_1_reg\(0) & !\DERIV_CALC|dy1_2_reg[-1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg\(0),
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg[-1]~q\,
	cin => \DERIV_CALC|Add1~50\,
	sharein => \DERIV_CALC|Add1~51\,
	sumout => \DERIV_CALC|Add1~53_sumout\,
	cout => \DERIV_CALC|Add1~54\,
	shareout => \DERIV_CALC|Add1~55\);

-- Location: LABCELL_X36_Y2_N12
\DERIV_CALC|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~57_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg\(1) $ (\DERIV_CALC|dy1_2_reg\(0)) ) + ( \DERIV_CALC|Add1~55\ ) + ( \DERIV_CALC|Add1~54\ ))
-- \DERIV_CALC|Add1~58\ = CARRY(( !\DERIV_CALC|dx1_1_reg\(1) $ (\DERIV_CALC|dy1_2_reg\(0)) ) + ( \DERIV_CALC|Add1~55\ ) + ( \DERIV_CALC|Add1~54\ ))
-- \DERIV_CALC|Add1~59\ = SHARE((\DERIV_CALC|dx1_1_reg\(1) & !\DERIV_CALC|dy1_2_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg\(1),
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg\(0),
	cin => \DERIV_CALC|Add1~54\,
	sharein => \DERIV_CALC|Add1~55\,
	sumout => \DERIV_CALC|Add1~57_sumout\,
	cout => \DERIV_CALC|Add1~58\,
	shareout => \DERIV_CALC|Add1~59\);

-- Location: LABCELL_X36_Y2_N15
\DERIV_CALC|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~61_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg\(2) $ (\DERIV_CALC|dy1_2_reg\(1)) ) + ( \DERIV_CALC|Add1~59\ ) + ( \DERIV_CALC|Add1~58\ ))
-- \DERIV_CALC|Add1~62\ = CARRY(( !\DERIV_CALC|dx1_1_reg\(2) $ (\DERIV_CALC|dy1_2_reg\(1)) ) + ( \DERIV_CALC|Add1~59\ ) + ( \DERIV_CALC|Add1~58\ ))
-- \DERIV_CALC|Add1~63\ = SHARE((\DERIV_CALC|dx1_1_reg\(2) & !\DERIV_CALC|dy1_2_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_1_reg\(2),
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg\(1),
	cin => \DERIV_CALC|Add1~58\,
	sharein => \DERIV_CALC|Add1~59\,
	sumout => \DERIV_CALC|Add1~61_sumout\,
	cout => \DERIV_CALC|Add1~62\,
	shareout => \DERIV_CALC|Add1~63\);

-- Location: LABCELL_X36_Y2_N18
\DERIV_CALC|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~65_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg\(3) $ (\DERIV_CALC|dy1_2_reg\(2)) ) + ( \DERIV_CALC|Add1~63\ ) + ( \DERIV_CALC|Add1~62\ ))
-- \DERIV_CALC|Add1~66\ = CARRY(( !\DERIV_CALC|dx1_1_reg\(3) $ (\DERIV_CALC|dy1_2_reg\(2)) ) + ( \DERIV_CALC|Add1~63\ ) + ( \DERIV_CALC|Add1~62\ ))
-- \DERIV_CALC|Add1~67\ = SHARE((\DERIV_CALC|dx1_1_reg\(3) & !\DERIV_CALC|dy1_2_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_1_reg\(3),
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg\(2),
	cin => \DERIV_CALC|Add1~62\,
	sharein => \DERIV_CALC|Add1~63\,
	sumout => \DERIV_CALC|Add1~65_sumout\,
	cout => \DERIV_CALC|Add1~66\,
	shareout => \DERIV_CALC|Add1~67\);

-- Location: LABCELL_X36_Y2_N21
\DERIV_CALC|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~69_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg\(4) $ (\DERIV_CALC|dy1_2_reg\(3)) ) + ( \DERIV_CALC|Add1~67\ ) + ( \DERIV_CALC|Add1~66\ ))
-- \DERIV_CALC|Add1~70\ = CARRY(( !\DERIV_CALC|dx1_1_reg\(4) $ (\DERIV_CALC|dy1_2_reg\(3)) ) + ( \DERIV_CALC|Add1~67\ ) + ( \DERIV_CALC|Add1~66\ ))
-- \DERIV_CALC|Add1~71\ = SHARE((\DERIV_CALC|dx1_1_reg\(4) & !\DERIV_CALC|dy1_2_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dx1_1_reg\(4),
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg\(3),
	cin => \DERIV_CALC|Add1~66\,
	sharein => \DERIV_CALC|Add1~67\,
	sumout => \DERIV_CALC|Add1~69_sumout\,
	cout => \DERIV_CALC|Add1~70\,
	shareout => \DERIV_CALC|Add1~71\);

-- Location: LABCELL_X36_Y2_N24
\DERIV_CALC|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~73_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg\(4) $ (\DERIV_CALC|dx1_1_reg\(5)) ) + ( \DERIV_CALC|Add1~71\ ) + ( \DERIV_CALC|Add1~70\ ))
-- \DERIV_CALC|Add1~74\ = CARRY(( !\DERIV_CALC|dy1_2_reg\(4) $ (\DERIV_CALC|dx1_1_reg\(5)) ) + ( \DERIV_CALC|Add1~71\ ) + ( \DERIV_CALC|Add1~70\ ))
-- \DERIV_CALC|Add1~75\ = SHARE((!\DERIV_CALC|dy1_2_reg\(4) & \DERIV_CALC|dx1_1_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dy1_2_reg\(4),
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg\(5),
	cin => \DERIV_CALC|Add1~70\,
	sharein => \DERIV_CALC|Add1~71\,
	sumout => \DERIV_CALC|Add1~73_sumout\,
	cout => \DERIV_CALC|Add1~74\,
	shareout => \DERIV_CALC|Add1~75\);

-- Location: LABCELL_X36_Y2_N27
\DERIV_CALC|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~77_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg\(5) $ (\DERIV_CALC|dx1_1_reg\(6)) ) + ( \DERIV_CALC|Add1~75\ ) + ( \DERIV_CALC|Add1~74\ ))
-- \DERIV_CALC|Add1~78\ = CARRY(( !\DERIV_CALC|dy1_2_reg\(5) $ (\DERIV_CALC|dx1_1_reg\(6)) ) + ( \DERIV_CALC|Add1~75\ ) + ( \DERIV_CALC|Add1~74\ ))
-- \DERIV_CALC|Add1~79\ = SHARE((!\DERIV_CALC|dy1_2_reg\(5) & \DERIV_CALC|dx1_1_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg\(5),
	datad => \DERIV_CALC|ALT_INV_dx1_1_reg\(6),
	cin => \DERIV_CALC|Add1~74\,
	sharein => \DERIV_CALC|Add1~75\,
	sumout => \DERIV_CALC|Add1~77_sumout\,
	cout => \DERIV_CALC|Add1~78\,
	shareout => \DERIV_CALC|Add1~79\);

-- Location: FF_X36_Y2_N28
\DERIV_CALC|dy2_1_reg[5]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg\(5));

-- Location: FF_X33_Y5_N16
\mul_reg[1][-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy2_1_reg\(5),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][-5]~q\);

-- Location: FF_X36_Y2_N26
\DERIV_CALC|dy2_1_reg[4]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg\(4));

-- Location: FF_X33_Y5_N14
\mul_reg[1][-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy2_1_reg\(4),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][-6]~q\);

-- Location: FF_X36_Y2_N22
\DERIV_CALC|dy2_1_reg[3]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg\(3));

-- Location: LABCELL_X33_Y5_N24
\mul_reg[1][-7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[1][-7]~feeder_combout\ = ( \DERIV_CALC|dy2_1_reg\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy2_1_reg\(3),
	combout => \mul_reg[1][-7]~feeder_combout\);

-- Location: FF_X33_Y5_N25
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

-- Location: FF_X36_Y2_N19
\DERIV_CALC|dy2_1_reg[2]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg\(2));

-- Location: LABCELL_X33_Y5_N3
\mul_reg[1][-8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[1][-8]~feeder_combout\ = ( \DERIV_CALC|dy2_1_reg\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy2_1_reg\(2),
	combout => \mul_reg[1][-8]~feeder_combout\);

-- Location: FF_X33_Y5_N5
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

-- Location: FF_X36_Y2_N16
\DERIV_CALC|dy2_1_reg[1]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg\(1));

-- Location: FF_X33_Y5_N22
\mul_reg[1][-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy2_1_reg\(1),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][-9]~q\);

-- Location: FF_X33_Y5_N38
\var_main_reg[1][2]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][2]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y5_N30
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \var_main_reg[1][0]~_Duplicate_1_q\ ) + ( \mul_reg[1][-14]~q\ ) + ( !VCC ))
-- \Add1~2\ = CARRY(( \var_main_reg[1][0]~_Duplicate_1_q\ ) + ( \mul_reg[1][-14]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[1][0]~_Duplicate_1_q\,
	datac => \ALT_INV_mul_reg[1][-14]~q\,
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X33_Y5_N33
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \var_main_reg[1][1]~_Duplicate_1_q\ ) + ( \mul_reg[1][-13]~q\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( \var_main_reg[1][1]~_Duplicate_1_q\ ) + ( \mul_reg[1][-13]~q\ ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[1][1]~_Duplicate_1_q\,
	datac => \ALT_INV_mul_reg[1][-13]~q\,
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X33_Y5_N36
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \var_main_reg[1][2]~_Duplicate_1_q\ ) + ( \mul_reg[1][-12]~q\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( \var_main_reg[1][2]~_Duplicate_1_q\ ) + ( \mul_reg[1][-12]~q\ ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mul_reg[1][-12]~q\,
	datad => \ALT_INV_var_main_reg[1][2]~_Duplicate_1_q\,
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X33_Y5_N39
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \mul_reg[1][-11]~q\ ) + ( \var_main_reg[1][3]~_Duplicate_1_q\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( \mul_reg[1][-11]~q\ ) + ( \var_main_reg[1][3]~_Duplicate_1_q\ ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[1][3]~_Duplicate_1_q\,
	datad => \ALT_INV_mul_reg[1][-11]~q\,
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X33_Y5_N42
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \mul_reg[1][-10]~q\ ) + ( \var_main_reg[1][4]~_Duplicate_1_q\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( \mul_reg[1][-10]~q\ ) + ( \var_main_reg[1][4]~_Duplicate_1_q\ ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[1][4]~_Duplicate_1_q\,
	datad => \ALT_INV_mul_reg[1][-10]~q\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: LABCELL_X33_Y5_N45
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \var_main_reg[1][5]~_Duplicate_1_q\ ) + ( \mul_reg[1][-9]~q\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( \var_main_reg[1][5]~_Duplicate_1_q\ ) + ( \mul_reg[1][-9]~q\ ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mul_reg[1][-9]~q\,
	datad => \ALT_INV_var_main_reg[1][5]~_Duplicate_1_q\,
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X33_Y5_N47
\var_main_reg[1][5]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][5]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y5_N48
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \var_main_reg[1][6]~_Duplicate_1_q\ ) + ( \mul_reg[1][-8]~q\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( \var_main_reg[1][6]~_Duplicate_1_q\ ) + ( \mul_reg[1][-8]~q\ ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul_reg[1][-8]~q\,
	datac => \ALT_INV_var_main_reg[1][6]~_Duplicate_1_q\,
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X33_Y5_N50
\var_main_reg[1][6]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][6]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y5_N51
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \mul_reg[1][-7]~q\ ) + ( \var_main_reg[1][7]~_Duplicate_1_q\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( \mul_reg[1][-7]~q\ ) + ( \var_main_reg[1][7]~_Duplicate_1_q\ ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mul_reg[1][-7]~q\,
	dataf => \ALT_INV_var_main_reg[1][7]~_Duplicate_1_q\,
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X33_Y5_N53
\var_main_reg[1][7]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][7]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y5_N54
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \var_main_reg[1][8]~_Duplicate_1_q\ ) + ( \mul_reg[1][-6]~q\ ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( \var_main_reg[1][8]~_Duplicate_1_q\ ) + ( \mul_reg[1][-6]~q\ ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[1][8]~_Duplicate_1_q\,
	datab => \ALT_INV_mul_reg[1][-6]~q\,
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X33_Y5_N56
\var_main_reg[1][8]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][8]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y5_N57
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \var_main_reg[1][9]~_Duplicate_1_q\ ) + ( \mul_reg[1][-5]~q\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( \var_main_reg[1][9]~_Duplicate_1_q\ ) + ( \mul_reg[1][-5]~q\ ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mul_reg[1][-5]~q\,
	datad => \ALT_INV_var_main_reg[1][9]~_Duplicate_1_q\,
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X33_Y5_N59
\var_main_reg[1][9]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][9]~_Duplicate_1_q\);

-- Location: LABCELL_X36_Y3_N6
\DERIV_CALC|dx1_1_reg[-5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_1_reg[-5]~feeder_combout\ = ( \var_main_reg[1][9]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[1][9]~_Duplicate_1_q\,
	combout => \DERIV_CALC|dx1_1_reg[-5]~feeder_combout\);

-- Location: FF_X36_Y3_N8
\DERIV_CALC|dx1_1_reg[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_1_reg[-5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-5]~q\);

-- Location: DSP_X32_Y4_N0
\DERIV_CALC|Mult0~8\ : cyclonev_mac
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
	aclr => \DERIV_CALC|Mult0~8_ACLR_bus\,
	clk => \DERIV_CALC|Mult0~8_CLK_bus\,
	ena => \DERIV_CALC|Mult0~8_ENA_bus\,
	ax => \DERIV_CALC|Mult0~8_AX_bus\,
	ay => \DERIV_CALC|Mult0~8_AY_bus\,
	resulta => \DERIV_CALC|Mult0~8_RESULTA_bus\);

-- Location: MLABCELL_X39_Y2_N42
\var_main_reg[2][19]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \var_main_reg[2][19]~_wirecell_combout\ = !\var_main_reg[2][19]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[2][19]~q\,
	combout => \var_main_reg[2][19]~_wirecell_combout\);

-- Location: M10K_X38_Y3_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005BC16F056BC15AFC15ABF0056ABF00556ABFF000555AAABFFF000055555AAAAABFFFFFFC00000000555555555555AAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Exponent_memory_e1abf11d.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_Vilnius:DERIV_CALC|Exponent_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_mtd1:auto_generated|ALTSYNCRAM",
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

-- Location: M10K_X38_Y5_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003789DD221DDC8B72D861C71B6C6DB1B06C6C1B06B16F06BC5AF05AF056BF056AFC056ABFC0556ABFF001556AABFFF00015555AAAAAFFFFFF00000001555555555AAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Exponent_memory_e1abf11d.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_Vilnius:DERIV_CALC|Exponent_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_mtd1:auto_generated|ALTSYNCRAM",
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

-- Location: M10K_X41_Y3_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008B6C6F003F93934888B6186F1AFC0003FA50E438E49278DE237777221D8B61CB2CB186C6DB1AC6C6B1AC5BC5BC5AF16BC16AF056BF015ABF0156ABFC0156AAFFF000555AAABFFFC0000555556AAAAAAFFFFFFFF000000000015555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Exponent_memory_e1abf11d.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_Vilnius:DERIV_CALC|Exponent_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_mtd1:auto_generated|ALTSYNCRAM",
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

-- Location: M10K_X41_Y1_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000536FE215387FE486A9376C03921C5A539DDC6F03E9E7776C6C0540F938D22221C61BC5AFC003FA90E93938E38D2374888887721D872CB6CB1C6C6C6C6C6C1B06F16F16F06BC16BC16AF016AFC056AFF0156ABFF00556AABFFC0005556AAABFFFFC0000015555556AAAAAAAABFFFFFFFFFFFF0000000000000000000015555555555555555555555555555555555555555555555555555555555555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init1 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Exponent_memory_e1abf11d.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_Vilnius:DERIV_CALC|Exponent_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_mtd1:auto_generated|ALTSYNCRAM",
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

-- Location: M10K_X41_Y6_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E8110A0AF5CBBD45FBEFB9A6E13120DF9FE1920370E2B91FF8B039855376FF921B00E372C0039D1DB055439E221C6C15550E4E38888B61B1B05AFFFFEA50E93939E79E37889DDDC88762D872CB2CB1B6C6C6C6F1B16C1BC5BC1AF16BC16BC05ABC056AFC056ABFC0156AAFFC00555AAAFFFF000055556AAAAAFFFFFFC00000000555555555556AAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Exponent_memory_e1abf11d.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_Vilnius:DERIV_CALC|Exponent_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_mtd1:auto_generated|ALTSYNCRAM",
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

-- Location: M10K_X41_Y2_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000BBF6FE4FFDEB9D817EA0DA7109C71B1D29B7F258098CA328167B8D7EEF66DA12F645D9C4BE14B38576A714DBE76A486A486A9E1BFA371BE937616A538D8705A54E788861BC0003E4E78DDDCB6DB16F05555503E90E4E49349E3788888888762D872DB6DB1C6C6C6C6C6F1BC6B16F16B05AF05AF05ABC05ABF015AAFC0156ABFF00155AAAFFFC0005555AAAABFFFFF000000155555556AAAAAAAAAABFFFFFFFFFFFFFFFF000000000000000000000000000000000000055555555555555555555555555555555555555",
	mem_init1 => "55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init0 => "55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Exponent_memory_e1abf11d.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_Vilnius:DERIV_CALC|Exponent_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_mtd1:auto_generated|ALTSYNCRAM",
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

-- Location: M10K_X41_Y5_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000582C651AD0D5A3203A8D2FA58CC2C01BA335205562B59E11A76C6DD580997299F8080E1B00001B7AB3AE5D648265AEEE9949E1C289CD9B8368A7084DA20EC3B0E1936A4B108BFE71AA771A9376C50E221AFA5E771C1554E4DDDC716BFFE90D38DDDD87185B05ABFFEA943A4E4E49248D23777777722D8B61C71C61B2C6C6C6C5B1AC5B06B06BC5AF05AF05ABC15ABF015ABFC055AAFFC00556AABFFC0005556AAAAFFFFF00000055555556AAAAAAAAABFFFFFFFFFFFFF00000000000000000000000001555555555555",
	mem_init1 => "55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init0 => "55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Exponent_memory_e1abf11d.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_Vilnius:DERIV_CALC|Exponent_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_mtd1:auto_generated|ALTSYNCRAM",
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

-- Location: M10K_X38_Y4_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000266E7667824B393119EC50CB9A61DAC3A1BBF300A744B78341155876B2BDB0811488FD7E040096784CAC62A33EE0EFF9E4F13CF472EE0C4BF7154E390F08A62AE63D1ADBCCB5F60FB82EF67EFBE0C4BE020ECE14B0DBE2FE2FE2C0DD6922C3E21AA4DDBC3E372C0439221C5AA94E34B71C1AFFE94E49E2221CB1B1AC05555503E5393939E78DE2777777762DC872CB6DB2C6CB1B1B06C6F1AC5BC5BC5AF16BC15AF056AF015ABF0056ABFC0155AABFFC005556AAAFFFF00000555556AAAAAAFFFFFFFFC000000000005",
	mem_init1 => "55555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Exponent_memory_e1abf11d.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_Vilnius:DERIV_CALC|Exponent_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_mtd1:auto_generated|ALTSYNCRAM",
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

-- Location: M10K_X41_Y4_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008DF94B2572CAA3AF05FEEF2C7EC73F3ABF66FD4251BAB1C0E56E57344512E3602AFB8FEE324342CA2334123BDE67C7C4D5FB1BB5778267168ADA14FA8A34CE2189198D735485AC63AE609945FBE036F9221DDE40741D5D6441099828D2BD4305129A644C20D5D4B36A2A7036A715EC39B0E60427154DDAFA372BFE78B1BFE4E22C6FFFA4D222DB1ABFFA539E7488B6186C1AF000003F94393939E78D23748888B7621CB61CB2C71B2C6C6C6C1B16C5BC6B05BC1AF05AF016BF056AFC056ABF0055AAFFC00555AAAFFF0",
	mem_init1 => "0015555AAAABFFFFF0000000555555556AAAAAAAAAAABFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000001555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	mem_init0 => "55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Exponent_memory_e1abf11d.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_Vilnius:DERIV_CALC|Exponent_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_mtd1:auto_generated|ALTSYNCRAM",
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

-- Location: LABCELL_X40_Y4_N30
\DERIV_CALC|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~1_sumout\ = SUM(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg[-14]\ ) + ( !VCC ))
-- \DERIV_CALC|Add2~2\ = CARRY(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg[-14]\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg[-14]\,
	datad => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	cin => GND,
	sumout => \DERIV_CALC|Add2~1_sumout\,
	cout => \DERIV_CALC|Add2~2\);

-- Location: LABCELL_X40_Y4_N33
\DERIV_CALC|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~5_sumout\ = SUM(( \DERIV_CALC|dz1_1_reg[-13]\ ) + ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a1\ ) + ( \DERIV_CALC|Add2~2\ ))
-- \DERIV_CALC|Add2~6\ = CARRY(( \DERIV_CALC|dz1_1_reg[-13]\ ) + ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a1\ ) + ( \DERIV_CALC|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datad => \DERIV_CALC|ALT_INV_dz1_1_reg[-13]\,
	cin => \DERIV_CALC|Add2~2\,
	sumout => \DERIV_CALC|Add2~5_sumout\,
	cout => \DERIV_CALC|Add2~6\);

-- Location: LABCELL_X40_Y4_N36
\DERIV_CALC|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~9_sumout\ = SUM(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg[-12]\ ) + ( \DERIV_CALC|Add2~6\ ))
-- \DERIV_CALC|Add2~10\ = CARRY(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a2~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg[-12]\ ) + ( \DERIV_CALC|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg[-12]\,
	datad => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	cin => \DERIV_CALC|Add2~6\,
	sumout => \DERIV_CALC|Add2~9_sumout\,
	cout => \DERIV_CALC|Add2~10\);

-- Location: LABCELL_X40_Y4_N39
\DERIV_CALC|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~13_sumout\ = SUM(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a3\ ) + ( \DERIV_CALC|dz1_1_reg[-11]\ ) + ( \DERIV_CALC|Add2~10\ ))
-- \DERIV_CALC|Add2~14\ = CARRY(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a3\ ) + ( \DERIV_CALC|dz1_1_reg[-11]\ ) + ( \DERIV_CALC|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg[-11]\,
	datad => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	cin => \DERIV_CALC|Add2~10\,
	sumout => \DERIV_CALC|Add2~13_sumout\,
	cout => \DERIV_CALC|Add2~14\);

-- Location: LABCELL_X40_Y4_N42
\DERIV_CALC|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~17_sumout\ = SUM(( \DERIV_CALC|dz1_1_reg[-10]\ ) + ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4~portadataout\ ) + ( \DERIV_CALC|Add2~14\ ))
-- \DERIV_CALC|Add2~18\ = CARRY(( \DERIV_CALC|dz1_1_reg[-10]\ ) + ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a4~portadataout\ ) + ( \DERIV_CALC|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datad => \DERIV_CALC|ALT_INV_dz1_1_reg[-10]\,
	cin => \DERIV_CALC|Add2~14\,
	sumout => \DERIV_CALC|Add2~17_sumout\,
	cout => \DERIV_CALC|Add2~18\);

-- Location: LABCELL_X40_Y4_N45
\DERIV_CALC|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~21_sumout\ = SUM(( \DERIV_CALC|dz1_1_reg[-9]\ ) + ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a5\ ) + ( \DERIV_CALC|Add2~18\ ))
-- \DERIV_CALC|Add2~22\ = CARRY(( \DERIV_CALC|dz1_1_reg[-9]\ ) + ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a5\ ) + ( \DERIV_CALC|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	datad => \DERIV_CALC|ALT_INV_dz1_1_reg[-9]\,
	cin => \DERIV_CALC|Add2~18\,
	sumout => \DERIV_CALC|Add2~21_sumout\,
	cout => \DERIV_CALC|Add2~22\);

-- Location: LABCELL_X40_Y4_N48
\DERIV_CALC|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~25_sumout\ = SUM(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg[-8]\ ) + ( \DERIV_CALC|Add2~22\ ))
-- \DERIV_CALC|Add2~26\ = CARRY(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a6~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg[-8]\ ) + ( \DERIV_CALC|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg[-8]\,
	datad => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a6~portadataout\,
	cin => \DERIV_CALC|Add2~22\,
	sumout => \DERIV_CALC|Add2~25_sumout\,
	cout => \DERIV_CALC|Add2~26\);

-- Location: LABCELL_X40_Y4_N51
\DERIV_CALC|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~29_sumout\ = SUM(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a7\ ) + ( \DERIV_CALC|dz1_1_reg[-7]\ ) + ( \DERIV_CALC|Add2~26\ ))
-- \DERIV_CALC|Add2~30\ = CARRY(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a7\ ) + ( \DERIV_CALC|dz1_1_reg[-7]\ ) + ( \DERIV_CALC|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg[-7]\,
	datad => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	cin => \DERIV_CALC|Add2~26\,
	sumout => \DERIV_CALC|Add2~29_sumout\,
	cout => \DERIV_CALC|Add2~30\);

-- Location: LABCELL_X40_Y4_N54
\DERIV_CALC|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~33_sumout\ = SUM(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg[-6]\ ) + ( \DERIV_CALC|Add2~30\ ))
-- \DERIV_CALC|Add2~34\ = CARRY(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a8~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg[-6]\ ) + ( \DERIV_CALC|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a8~portadataout\,
	dataf => \DERIV_CALC|ALT_INV_dz1_1_reg[-6]\,
	cin => \DERIV_CALC|Add2~30\,
	sumout => \DERIV_CALC|Add2~33_sumout\,
	cout => \DERIV_CALC|Add2~34\);

-- Location: LABCELL_X40_Y4_N57
\DERIV_CALC|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~37_sumout\ = SUM(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a9\ ) + ( \DERIV_CALC|dz1_1_reg[-5]\ ) + ( \DERIV_CALC|Add2~34\ ))
-- \DERIV_CALC|Add2~38\ = CARRY(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a9\ ) + ( \DERIV_CALC|dz1_1_reg[-5]\ ) + ( \DERIV_CALC|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dz1_1_reg[-5]\,
	datac => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	cin => \DERIV_CALC|Add2~34\,
	sumout => \DERIV_CALC|Add2~37_sumout\,
	cout => \DERIV_CALC|Add2~38\);

-- Location: LABCELL_X40_Y3_N0
\DERIV_CALC|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~41_sumout\ = SUM(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg[-4]\ ) + ( \DERIV_CALC|Add2~38\ ))
-- \DERIV_CALC|Add2~42\ = CARRY(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a10~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg[-4]\ ) + ( \DERIV_CALC|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg[-4]\,
	datad => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a10~portadataout\,
	cin => \DERIV_CALC|Add2~38\,
	sumout => \DERIV_CALC|Add2~41_sumout\,
	cout => \DERIV_CALC|Add2~42\);

-- Location: LABCELL_X40_Y3_N3
\DERIV_CALC|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~45_sumout\ = SUM(( \DERIV_CALC|dz1_1_reg[-3]\ ) + ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a11\ ) + ( \DERIV_CALC|Add2~42\ ))
-- \DERIV_CALC|Add2~46\ = CARRY(( \DERIV_CALC|dz1_1_reg[-3]\ ) + ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a11\ ) + ( \DERIV_CALC|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	datad => \DERIV_CALC|ALT_INV_dz1_1_reg[-3]\,
	cin => \DERIV_CALC|Add2~42\,
	sumout => \DERIV_CALC|Add2~45_sumout\,
	cout => \DERIV_CALC|Add2~46\);

-- Location: LABCELL_X40_Y3_N6
\DERIV_CALC|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~49_sumout\ = SUM(( \DERIV_CALC|dz1_1_reg[-2]\ ) + ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12~portadataout\ ) + ( \DERIV_CALC|Add2~46\ ))
-- \DERIV_CALC|Add2~50\ = CARRY(( \DERIV_CALC|dz1_1_reg[-2]\ ) + ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a12~portadataout\ ) + ( \DERIV_CALC|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a12~portadataout\,
	datad => \DERIV_CALC|ALT_INV_dz1_1_reg[-2]\,
	cin => \DERIV_CALC|Add2~46\,
	sumout => \DERIV_CALC|Add2~49_sumout\,
	cout => \DERIV_CALC|Add2~50\);

-- Location: LABCELL_X40_Y3_N9
\DERIV_CALC|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~53_sumout\ = SUM(( \DERIV_CALC|dz1_1_reg[-1]\ ) + ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a13\ ) + ( \DERIV_CALC|Add2~50\ ))
-- \DERIV_CALC|Add2~54\ = CARRY(( \DERIV_CALC|dz1_1_reg[-1]\ ) + ( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a13\ ) + ( \DERIV_CALC|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	datad => \DERIV_CALC|ALT_INV_dz1_1_reg[-1]\,
	cin => \DERIV_CALC|Add2~50\,
	sumout => \DERIV_CALC|Add2~53_sumout\,
	cout => \DERIV_CALC|Add2~54\);

-- Location: LABCELL_X40_Y3_N12
\DERIV_CALC|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~57_sumout\ = SUM(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg\(0) ) + ( \DERIV_CALC|Add2~54\ ))
-- \DERIV_CALC|Add2~58\ = CARRY(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a14~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg\(0) ) + ( \DERIV_CALC|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg\(0),
	datad => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a14~portadataout\,
	cin => \DERIV_CALC|Add2~54\,
	sumout => \DERIV_CALC|Add2~57_sumout\,
	cout => \DERIV_CALC|Add2~58\);

-- Location: LABCELL_X40_Y3_N15
\DERIV_CALC|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~61_sumout\ = SUM(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a15\ ) + ( \DERIV_CALC|dz1_1_reg\(1) ) + ( \DERIV_CALC|Add2~58\ ))
-- \DERIV_CALC|Add2~62\ = CARRY(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a15\ ) + ( \DERIV_CALC|dz1_1_reg\(1) ) + ( \DERIV_CALC|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg\(1),
	datad => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	cin => \DERIV_CALC|Add2~58\,
	sumout => \DERIV_CALC|Add2~61_sumout\,
	cout => \DERIV_CALC|Add2~62\);

-- Location: LABCELL_X40_Y3_N18
\DERIV_CALC|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~65_sumout\ = SUM(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg\(2) ) + ( \DERIV_CALC|Add2~62\ ))
-- \DERIV_CALC|Add2~66\ = CARRY(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a16~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg\(2) ) + ( \DERIV_CALC|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg\(2),
	datad => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a16~portadataout\,
	cin => \DERIV_CALC|Add2~62\,
	sumout => \DERIV_CALC|Add2~65_sumout\,
	cout => \DERIV_CALC|Add2~66\);

-- Location: LABCELL_X40_Y3_N21
\DERIV_CALC|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~69_sumout\ = SUM(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a17\ ) + ( \DERIV_CALC|dz1_1_reg\(3) ) + ( \DERIV_CALC|Add2~66\ ))
-- \DERIV_CALC|Add2~70\ = CARRY(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a17\ ) + ( \DERIV_CALC|dz1_1_reg\(3) ) + ( \DERIV_CALC|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg\(3),
	datad => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a17\,
	cin => \DERIV_CALC|Add2~66\,
	sumout => \DERIV_CALC|Add2~69_sumout\,
	cout => \DERIV_CALC|Add2~70\);

-- Location: FF_X40_Y3_N23
\DERIV_CALC|dz2_1_reg[3]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg\(3));

-- Location: LABCELL_X40_Y3_N45
\mul_reg[2][-7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[2][-7]~feeder_combout\ = \DERIV_CALC|dz2_1_reg\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dz2_1_reg\(3),
	combout => \mul_reg[2][-7]~feeder_combout\);

-- Location: FF_X40_Y3_N47
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

-- Location: FF_X40_Y3_N19
\DERIV_CALC|dz2_1_reg[2]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg\(2));

-- Location: LABCELL_X40_Y3_N51
\mul_reg[2][-8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[2][-8]~feeder_combout\ = \DERIV_CALC|dz2_1_reg\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz2_1_reg\(2),
	combout => \mul_reg[2][-8]~feeder_combout\);

-- Location: FF_X40_Y3_N53
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

-- Location: FF_X40_Y3_N17
\DERIV_CALC|dz2_1_reg[1]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg\(1));

-- Location: FF_X40_Y3_N50
\mul_reg[2][-9]\ : dffeas
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
	q => \mul_reg[2][-9]~q\);

-- Location: FF_X40_Y3_N13
\DERIV_CALC|dz2_1_reg[0]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg\(0));

-- Location: MLABCELL_X39_Y3_N0
\mul_reg[2][-10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[2][-10]~feeder_combout\ = ( \DERIV_CALC|dz2_1_reg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz2_1_reg\(0),
	combout => \mul_reg[2][-10]~feeder_combout\);

-- Location: FF_X39_Y3_N2
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

-- Location: FF_X40_Y3_N11
\DERIV_CALC|dz2_1_reg[-1]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[-1]~q\);

-- Location: LABCELL_X40_Y3_N39
\mul_reg[2][-11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[2][-11]~feeder_combout\ = ( \DERIV_CALC|dz2_1_reg[-1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz2_1_reg[-1]~q\,
	combout => \mul_reg[2][-11]~feeder_combout\);

-- Location: FF_X40_Y3_N41
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

-- Location: FF_X40_Y3_N8
\DERIV_CALC|dz2_1_reg[-2]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[-2]~q\);

-- Location: LABCELL_X40_Y3_N42
\mul_reg[2][-12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[2][-12]~feeder_combout\ = ( \DERIV_CALC|dz2_1_reg[-2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz2_1_reg[-2]~q\,
	combout => \mul_reg[2][-12]~feeder_combout\);

-- Location: FF_X40_Y3_N44
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

-- Location: FF_X40_Y3_N5
\DERIV_CALC|dz2_1_reg[-3]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[-3]~q\);

-- Location: FF_X40_Y3_N37
\mul_reg[2][-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dz2_1_reg[-3]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[2][-13]~q\);

-- Location: MLABCELL_X39_Y3_N30
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \mul_reg[2][-14]~q\ ) + ( \var_main_reg[2][0]~q\ ) + ( !VCC ))
-- \Add2~2\ = CARRY(( \mul_reg[2][-14]~q\ ) + ( \var_main_reg[2][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[2][0]~q\,
	datad => \ALT_INV_mul_reg[2][-14]~q\,
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: MLABCELL_X39_Y3_N33
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( \var_main_reg[2][1]~q\ ) + ( \mul_reg[2][-13]~q\ ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( \var_main_reg[2][1]~q\ ) + ( \mul_reg[2][-13]~q\ ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[2][1]~q\,
	datac => \ALT_INV_mul_reg[2][-13]~q\,
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X39_Y3_N35
\var_main_reg[2][1]\ : dffeas
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
	q => \var_main_reg[2][1]~q\);

-- Location: MLABCELL_X39_Y3_N36
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( \mul_reg[2][-12]~q\ ) + ( \var_main_reg[2][2]~q\ ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( \mul_reg[2][-12]~q\ ) + ( \var_main_reg[2][2]~q\ ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[2][2]~q\,
	datad => \ALT_INV_mul_reg[2][-12]~q\,
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X39_Y3_N38
\var_main_reg[2][2]\ : dffeas
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
	q => \var_main_reg[2][2]~q\);

-- Location: MLABCELL_X39_Y3_N39
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( \var_main_reg[2][3]~q\ ) + ( \mul_reg[2][-11]~q\ ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( \var_main_reg[2][3]~q\ ) + ( \mul_reg[2][-11]~q\ ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul_reg[2][-11]~q\,
	datac => \ALT_INV_var_main_reg[2][3]~q\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X39_Y3_N40
\var_main_reg[2][3]\ : dffeas
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
	q => \var_main_reg[2][3]~q\);

-- Location: MLABCELL_X39_Y3_N42
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( \mul_reg[2][-10]~q\ ) + ( \var_main_reg[2][4]~q\ ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( \mul_reg[2][-10]~q\ ) + ( \var_main_reg[2][4]~q\ ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[2][4]~q\,
	datad => \ALT_INV_mul_reg[2][-10]~q\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X39_Y3_N44
\var_main_reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][4]~q\);

-- Location: MLABCELL_X39_Y3_N45
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( \mul_reg[2][-9]~q\ ) + ( \var_main_reg[2][5]~q\ ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( \mul_reg[2][-9]~q\ ) + ( \var_main_reg[2][5]~q\ ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[2][5]~q\,
	datad => \ALT_INV_mul_reg[2][-9]~q\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X39_Y3_N46
\var_main_reg[2][5]\ : dffeas
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
	q => \var_main_reg[2][5]~q\);

-- Location: MLABCELL_X39_Y3_N48
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( \mul_reg[2][-8]~q\ ) + ( \var_main_reg[2][6]~q\ ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( \mul_reg[2][-8]~q\ ) + ( \var_main_reg[2][6]~q\ ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mul_reg[2][-8]~q\,
	dataf => \ALT_INV_var_main_reg[2][6]~q\,
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X39_Y3_N49
\var_main_reg[2][6]\ : dffeas
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
	q => \var_main_reg[2][6]~q\);

-- Location: MLABCELL_X39_Y3_N51
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( \var_main_reg[2][7]~q\ ) + ( \mul_reg[2][-7]~q\ ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( \var_main_reg[2][7]~q\ ) + ( \mul_reg[2][-7]~q\ ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul_reg[2][-7]~q\,
	datac => \ALT_INV_var_main_reg[2][7]~q\,
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X39_Y3_N52
\var_main_reg[2][7]\ : dffeas
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
	q => \var_main_reg[2][7]~q\);

-- Location: FF_X35_Y3_N49
\var_main_reg[0][6]~DUPLICATE\ : dffeas
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
	q => \var_main_reg[0][6]~DUPLICATE_q\);

-- Location: FF_X35_Y3_N43
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

-- Location: FF_X39_Y3_N43
\var_main_reg[2][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][4]~DUPLICATE_q\);

-- Location: FF_X35_Y3_N37
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

-- Location: FF_X39_Y3_N37
\var_main_reg[2][2]~DUPLICATE\ : dffeas
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
	q => \var_main_reg[2][2]~DUPLICATE_q\);

-- Location: FF_X39_Y3_N34
\var_main_reg[2][1]~DUPLICATE\ : dffeas
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
	q => \var_main_reg[2][1]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y3_N30
\DERIV_CALC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~1_sumout\ = SUM(( \var_main_reg[2][0]~q\ ) + ( \var_main_reg[0][0]~q\ ) + ( !VCC ))
-- \DERIV_CALC|Add0~2\ = CARRY(( \var_main_reg[2][0]~q\ ) + ( \var_main_reg[0][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[0][0]~q\,
	datac => \ALT_INV_var_main_reg[2][0]~q\,
	cin => GND,
	sumout => \DERIV_CALC|Add0~1_sumout\,
	cout => \DERIV_CALC|Add0~2\);

-- Location: LABCELL_X37_Y3_N33
\DERIV_CALC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~5_sumout\ = SUM(( \var_main_reg[2][1]~DUPLICATE_q\ ) + ( \var_main_reg[0][1]~q\ ) + ( \DERIV_CALC|Add0~2\ ))
-- \DERIV_CALC|Add0~6\ = CARRY(( \var_main_reg[2][1]~DUPLICATE_q\ ) + ( \var_main_reg[0][1]~q\ ) + ( \DERIV_CALC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[0][1]~q\,
	datad => \ALT_INV_var_main_reg[2][1]~DUPLICATE_q\,
	cin => \DERIV_CALC|Add0~2\,
	sumout => \DERIV_CALC|Add0~5_sumout\,
	cout => \DERIV_CALC|Add0~6\);

-- Location: LABCELL_X37_Y3_N36
\DERIV_CALC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~9_sumout\ = SUM(( \var_main_reg[2][2]~DUPLICATE_q\ ) + ( \var_main_reg[0][2]~DUPLICATE_q\ ) + ( \DERIV_CALC|Add0~6\ ))
-- \DERIV_CALC|Add0~10\ = CARRY(( \var_main_reg[2][2]~DUPLICATE_q\ ) + ( \var_main_reg[0][2]~DUPLICATE_q\ ) + ( \DERIV_CALC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[0][2]~DUPLICATE_q\,
	datac => \ALT_INV_var_main_reg[2][2]~DUPLICATE_q\,
	cin => \DERIV_CALC|Add0~6\,
	sumout => \DERIV_CALC|Add0~9_sumout\,
	cout => \DERIV_CALC|Add0~10\);

-- Location: LABCELL_X37_Y3_N39
\DERIV_CALC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~13_sumout\ = SUM(( \var_main_reg[2][3]~q\ ) + ( \var_main_reg[0][3]~q\ ) + ( \DERIV_CALC|Add0~10\ ))
-- \DERIV_CALC|Add0~14\ = CARRY(( \var_main_reg[2][3]~q\ ) + ( \var_main_reg[0][3]~q\ ) + ( \DERIV_CALC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[0][3]~q\,
	datad => \ALT_INV_var_main_reg[2][3]~q\,
	cin => \DERIV_CALC|Add0~10\,
	sumout => \DERIV_CALC|Add0~13_sumout\,
	cout => \DERIV_CALC|Add0~14\);

-- Location: LABCELL_X37_Y3_N42
\DERIV_CALC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~17_sumout\ = SUM(( \var_main_reg[2][4]~DUPLICATE_q\ ) + ( \var_main_reg[0][4]~DUPLICATE_q\ ) + ( \DERIV_CALC|Add0~14\ ))
-- \DERIV_CALC|Add0~18\ = CARRY(( \var_main_reg[2][4]~DUPLICATE_q\ ) + ( \var_main_reg[0][4]~DUPLICATE_q\ ) + ( \DERIV_CALC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[0][4]~DUPLICATE_q\,
	datad => \ALT_INV_var_main_reg[2][4]~DUPLICATE_q\,
	cin => \DERIV_CALC|Add0~14\,
	sumout => \DERIV_CALC|Add0~17_sumout\,
	cout => \DERIV_CALC|Add0~18\);

-- Location: LABCELL_X37_Y3_N45
\DERIV_CALC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~21_sumout\ = SUM(( \var_main_reg[2][5]~q\ ) + ( \var_main_reg[0][5]~q\ ) + ( \DERIV_CALC|Add0~18\ ))
-- \DERIV_CALC|Add0~22\ = CARRY(( \var_main_reg[2][5]~q\ ) + ( \var_main_reg[0][5]~q\ ) + ( \DERIV_CALC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[0][5]~q\,
	datac => \ALT_INV_var_main_reg[2][5]~q\,
	cin => \DERIV_CALC|Add0~18\,
	sumout => \DERIV_CALC|Add0~21_sumout\,
	cout => \DERIV_CALC|Add0~22\);

-- Location: LABCELL_X37_Y3_N48
\DERIV_CALC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~25_sumout\ = SUM(( \var_main_reg[2][6]~q\ ) + ( \var_main_reg[0][6]~DUPLICATE_q\ ) + ( \DERIV_CALC|Add0~22\ ))
-- \DERIV_CALC|Add0~26\ = CARRY(( \var_main_reg[2][6]~q\ ) + ( \var_main_reg[0][6]~DUPLICATE_q\ ) + ( \DERIV_CALC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[0][6]~DUPLICATE_q\,
	datac => \ALT_INV_var_main_reg[2][6]~q\,
	cin => \DERIV_CALC|Add0~22\,
	sumout => \DERIV_CALC|Add0~25_sumout\,
	cout => \DERIV_CALC|Add0~26\);

-- Location: LABCELL_X37_Y3_N51
\DERIV_CALC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~29_sumout\ = SUM(( \var_main_reg[0][7]~q\ ) + ( \var_main_reg[2][7]~q\ ) + ( \DERIV_CALC|Add0~26\ ))
-- \DERIV_CALC|Add0~30\ = CARRY(( \var_main_reg[0][7]~q\ ) + ( \var_main_reg[2][7]~q\ ) + ( \DERIV_CALC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[2][7]~q\,
	datad => \ALT_INV_var_main_reg[0][7]~q\,
	cin => \DERIV_CALC|Add0~26\,
	sumout => \DERIV_CALC|Add0~29_sumout\,
	cout => \DERIV_CALC|Add0~30\);

-- Location: LABCELL_X37_Y3_N54
\DERIV_CALC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~33_sumout\ = SUM(( \var_main_reg[2][8]~DUPLICATE_q\ ) + ( \var_main_reg[0][8]~q\ ) + ( \DERIV_CALC|Add0~30\ ))
-- \DERIV_CALC|Add0~34\ = CARRY(( \var_main_reg[2][8]~DUPLICATE_q\ ) + ( \var_main_reg[0][8]~q\ ) + ( \DERIV_CALC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[0][8]~q\,
	datad => \ALT_INV_var_main_reg[2][8]~DUPLICATE_q\,
	cin => \DERIV_CALC|Add0~30\,
	sumout => \DERIV_CALC|Add0~33_sumout\,
	cout => \DERIV_CALC|Add0~34\);

-- Location: FF_X37_Y3_N56
\DERIV_CALC|dy1_2_reg[-6]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg[-6]~q\);

-- Location: FF_X37_Y3_N53
\DERIV_CALC|dy1_2_reg[-7]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg[-7]~q\);

-- Location: FF_X36_Y3_N25
\DERIV_CALC|dx1_1_reg[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[1][8]~_Duplicate_1_q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-6]~q\);

-- Location: MLABCELL_X39_Y4_N9
\DERIV_CALC|dx1_1_reg[-7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_1_reg[-7]~feeder_combout\ = ( \var_main_reg[1][7]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[1][7]~_Duplicate_1_q\,
	combout => \DERIV_CALC|dx1_1_reg[-7]~feeder_combout\);

-- Location: FF_X39_Y4_N10
\DERIV_CALC|dx1_1_reg[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_1_reg[-7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-7]~q\);

-- Location: FF_X37_Y3_N50
\DERIV_CALC|dy1_2_reg[-8]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg[-8]~q\);

-- Location: FF_X37_Y3_N46
\DERIV_CALC|dy1_2_reg[-9]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg[-9]~q\);

-- Location: LABCELL_X37_Y3_N21
\DERIV_CALC|dx1_1_reg[-8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_1_reg[-8]~feeder_combout\ = ( \var_main_reg[1][6]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[1][6]~_Duplicate_1_q\,
	combout => \DERIV_CALC|dx1_1_reg[-8]~feeder_combout\);

-- Location: FF_X37_Y3_N23
\DERIV_CALC|dx1_1_reg[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_1_reg[-8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-8]~q\);

-- Location: LABCELL_X36_Y3_N0
\DERIV_CALC|dx1_1_reg[-9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_1_reg[-9]~feeder_combout\ = ( \var_main_reg[1][5]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[1][5]~_Duplicate_1_q\,
	combout => \DERIV_CALC|dx1_1_reg[-9]~feeder_combout\);

-- Location: FF_X36_Y3_N2
\DERIV_CALC|dx1_1_reg[-9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_1_reg[-9]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-9]~DUPLICATE_q\);

-- Location: FF_X37_Y3_N44
\DERIV_CALC|dy1_2_reg[-10]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg[-10]~q\);

-- Location: FF_X37_Y3_N41
\DERIV_CALC|dy1_2_reg[-11]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg[-11]~q\);

-- Location: FF_X37_Y3_N7
\DERIV_CALC|dx1_1_reg[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[1][4]~_Duplicate_1_q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-10]~q\);

-- Location: LABCELL_X33_Y3_N39
\DERIV_CALC|dx1_1_reg[-11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_1_reg[-11]~feeder_combout\ = ( \var_main_reg[1][3]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[1][3]~_Duplicate_1_q\,
	combout => \DERIV_CALC|dx1_1_reg[-11]~feeder_combout\);

-- Location: FF_X33_Y3_N40
\DERIV_CALC|dx1_1_reg[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_1_reg[-11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-11]~q\);

-- Location: FF_X37_Y3_N38
\DERIV_CALC|dy1_2_reg[-12]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg[-12]~q\);

-- Location: FF_X37_Y3_N35
\DERIV_CALC|dy1_2_reg[-13]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg[-13]~q\);

-- Location: FF_X36_Y3_N19
\DERIV_CALC|dx1_1_reg[-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[1][2]~_Duplicate_1_q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-12]~q\);

-- Location: LABCELL_X35_Y3_N15
\DERIV_CALC|dx1_1_reg[-13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_1_reg[-13]~feeder_combout\ = ( \var_main_reg[1][1]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[1][1]~_Duplicate_1_q\,
	combout => \DERIV_CALC|dx1_1_reg[-13]~feeder_combout\);

-- Location: FF_X35_Y3_N16
\DERIV_CALC|dx1_1_reg[-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_1_reg[-13]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-13]~q\);

-- Location: LABCELL_X36_Y3_N9
\DERIV_CALC|dy1_2_reg[-14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dy1_2_reg[-14]~feeder_combout\ = ( \DERIV_CALC|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_Add0~1_sumout\,
	combout => \DERIV_CALC|dy1_2_reg[-14]~feeder_combout\);

-- Location: FF_X36_Y3_N10
\DERIV_CALC|dy1_2_reg[-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dy1_2_reg[-14]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dy1_2_reg[-14]~q\);

-- Location: LABCELL_X36_Y3_N30
\DERIV_CALC|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~1_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg[-13]~q\ $ (!\DERIV_CALC|dy1_2_reg[-14]~q\) ) + ( !VCC ) + ( !VCC ))
-- \DERIV_CALC|Add1~2\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-13]~q\ $ (!\DERIV_CALC|dy1_2_reg[-14]~q\) ) + ( !VCC ) + ( !VCC ))
-- \DERIV_CALC|Add1~3\ = SHARE((!\DERIV_CALC|dy1_2_reg[-14]~q\) # (\DERIV_CALC|dx1_1_reg[-13]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_1_reg[-13]~q\,
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-14]~q\,
	cin => GND,
	sharein => GND,
	sumout => \DERIV_CALC|Add1~1_sumout\,
	cout => \DERIV_CALC|Add1~2\,
	shareout => \DERIV_CALC|Add1~3\);

-- Location: LABCELL_X36_Y3_N33
\DERIV_CALC|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~5_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg[-13]~q\ $ (\DERIV_CALC|dx1_1_reg[-12]~q\) ) + ( \DERIV_CALC|Add1~3\ ) + ( \DERIV_CALC|Add1~2\ ))
-- \DERIV_CALC|Add1~6\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-13]~q\ $ (\DERIV_CALC|dx1_1_reg[-12]~q\) ) + ( \DERIV_CALC|Add1~3\ ) + ( \DERIV_CALC|Add1~2\ ))
-- \DERIV_CALC|Add1~7\ = SHARE((!\DERIV_CALC|dy1_2_reg[-13]~q\ & \DERIV_CALC|dx1_1_reg[-12]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dy1_2_reg[-13]~q\,
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-12]~q\,
	cin => \DERIV_CALC|Add1~2\,
	sharein => \DERIV_CALC|Add1~3\,
	sumout => \DERIV_CALC|Add1~5_sumout\,
	cout => \DERIV_CALC|Add1~6\,
	shareout => \DERIV_CALC|Add1~7\);

-- Location: LABCELL_X36_Y3_N36
\DERIV_CALC|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~9_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg[-11]~q\ $ (\DERIV_CALC|dy1_2_reg[-12]~q\) ) + ( \DERIV_CALC|Add1~7\ ) + ( \DERIV_CALC|Add1~6\ ))
-- \DERIV_CALC|Add1~10\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-11]~q\ $ (\DERIV_CALC|dy1_2_reg[-12]~q\) ) + ( \DERIV_CALC|Add1~7\ ) + ( \DERIV_CALC|Add1~6\ ))
-- \DERIV_CALC|Add1~11\ = SHARE((\DERIV_CALC|dx1_1_reg[-11]~q\ & !\DERIV_CALC|dy1_2_reg[-12]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-11]~q\,
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg[-12]~q\,
	cin => \DERIV_CALC|Add1~6\,
	sharein => \DERIV_CALC|Add1~7\,
	sumout => \DERIV_CALC|Add1~9_sumout\,
	cout => \DERIV_CALC|Add1~10\,
	shareout => \DERIV_CALC|Add1~11\);

-- Location: LABCELL_X36_Y3_N39
\DERIV_CALC|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~13_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg[-11]~q\ $ (\DERIV_CALC|dx1_1_reg[-10]~q\) ) + ( \DERIV_CALC|Add1~11\ ) + ( \DERIV_CALC|Add1~10\ ))
-- \DERIV_CALC|Add1~14\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-11]~q\ $ (\DERIV_CALC|dx1_1_reg[-10]~q\) ) + ( \DERIV_CALC|Add1~11\ ) + ( \DERIV_CALC|Add1~10\ ))
-- \DERIV_CALC|Add1~15\ = SHARE((!\DERIV_CALC|dy1_2_reg[-11]~q\ & \DERIV_CALC|dx1_1_reg[-10]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dy1_2_reg[-11]~q\,
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-10]~q\,
	cin => \DERIV_CALC|Add1~10\,
	sharein => \DERIV_CALC|Add1~11\,
	sumout => \DERIV_CALC|Add1~13_sumout\,
	cout => \DERIV_CALC|Add1~14\,
	shareout => \DERIV_CALC|Add1~15\);

-- Location: LABCELL_X36_Y3_N42
\DERIV_CALC|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~17_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg[-9]~DUPLICATE_q\ $ (\DERIV_CALC|dy1_2_reg[-10]~q\) ) + ( \DERIV_CALC|Add1~15\ ) + ( \DERIV_CALC|Add1~14\ ))
-- \DERIV_CALC|Add1~18\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-9]~DUPLICATE_q\ $ (\DERIV_CALC|dy1_2_reg[-10]~q\) ) + ( \DERIV_CALC|Add1~15\ ) + ( \DERIV_CALC|Add1~14\ ))
-- \DERIV_CALC|Add1~19\ = SHARE((\DERIV_CALC|dx1_1_reg[-9]~DUPLICATE_q\ & !\DERIV_CALC|dy1_2_reg[-10]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-9]~DUPLICATE_q\,
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg[-10]~q\,
	cin => \DERIV_CALC|Add1~14\,
	sharein => \DERIV_CALC|Add1~15\,
	sumout => \DERIV_CALC|Add1~17_sumout\,
	cout => \DERIV_CALC|Add1~18\,
	shareout => \DERIV_CALC|Add1~19\);

-- Location: LABCELL_X36_Y3_N45
\DERIV_CALC|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~21_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg[-9]~q\ $ (\DERIV_CALC|dx1_1_reg[-8]~q\) ) + ( \DERIV_CALC|Add1~19\ ) + ( \DERIV_CALC|Add1~18\ ))
-- \DERIV_CALC|Add1~22\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-9]~q\ $ (\DERIV_CALC|dx1_1_reg[-8]~q\) ) + ( \DERIV_CALC|Add1~19\ ) + ( \DERIV_CALC|Add1~18\ ))
-- \DERIV_CALC|Add1~23\ = SHARE((!\DERIV_CALC|dy1_2_reg[-9]~q\ & \DERIV_CALC|dx1_1_reg[-8]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg[-9]~q\,
	datad => \DERIV_CALC|ALT_INV_dx1_1_reg[-8]~q\,
	cin => \DERIV_CALC|Add1~18\,
	sharein => \DERIV_CALC|Add1~19\,
	sumout => \DERIV_CALC|Add1~21_sumout\,
	cout => \DERIV_CALC|Add1~22\,
	shareout => \DERIV_CALC|Add1~23\);

-- Location: LABCELL_X36_Y3_N48
\DERIV_CALC|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~25_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg[-7]~q\ $ (\DERIV_CALC|dy1_2_reg[-8]~q\) ) + ( \DERIV_CALC|Add1~23\ ) + ( \DERIV_CALC|Add1~22\ ))
-- \DERIV_CALC|Add1~26\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-7]~q\ $ (\DERIV_CALC|dy1_2_reg[-8]~q\) ) + ( \DERIV_CALC|Add1~23\ ) + ( \DERIV_CALC|Add1~22\ ))
-- \DERIV_CALC|Add1~27\ = SHARE((\DERIV_CALC|dx1_1_reg[-7]~q\ & !\DERIV_CALC|dy1_2_reg[-8]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-7]~q\,
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg[-8]~q\,
	cin => \DERIV_CALC|Add1~22\,
	sharein => \DERIV_CALC|Add1~23\,
	sumout => \DERIV_CALC|Add1~25_sumout\,
	cout => \DERIV_CALC|Add1~26\,
	shareout => \DERIV_CALC|Add1~27\);

-- Location: LABCELL_X36_Y3_N51
\DERIV_CALC|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~29_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg[-7]~q\ $ (\DERIV_CALC|dx1_1_reg[-6]~q\) ) + ( \DERIV_CALC|Add1~27\ ) + ( \DERIV_CALC|Add1~26\ ))
-- \DERIV_CALC|Add1~30\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-7]~q\ $ (\DERIV_CALC|dx1_1_reg[-6]~q\) ) + ( \DERIV_CALC|Add1~27\ ) + ( \DERIV_CALC|Add1~26\ ))
-- \DERIV_CALC|Add1~31\ = SHARE((!\DERIV_CALC|dy1_2_reg[-7]~q\ & \DERIV_CALC|dx1_1_reg[-6]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \DERIV_CALC|ALT_INV_dy1_2_reg[-7]~q\,
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-6]~q\,
	cin => \DERIV_CALC|Add1~26\,
	sharein => \DERIV_CALC|Add1~27\,
	sumout => \DERIV_CALC|Add1~29_sumout\,
	cout => \DERIV_CALC|Add1~30\,
	shareout => \DERIV_CALC|Add1~31\);

-- Location: LABCELL_X36_Y3_N54
\DERIV_CALC|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~33_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg[-5]~q\ $ (\DERIV_CALC|dy1_2_reg[-6]~q\) ) + ( \DERIV_CALC|Add1~31\ ) + ( \DERIV_CALC|Add1~30\ ))
-- \DERIV_CALC|Add1~34\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-5]~q\ $ (\DERIV_CALC|dy1_2_reg[-6]~q\) ) + ( \DERIV_CALC|Add1~31\ ) + ( \DERIV_CALC|Add1~30\ ))
-- \DERIV_CALC|Add1~35\ = SHARE((\DERIV_CALC|dx1_1_reg[-5]~q\ & !\DERIV_CALC|dy1_2_reg[-6]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_1_reg[-5]~q\,
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg[-6]~q\,
	cin => \DERIV_CALC|Add1~30\,
	sharein => \DERIV_CALC|Add1~31\,
	sumout => \DERIV_CALC|Add1~33_sumout\,
	cout => \DERIV_CALC|Add1~34\,
	shareout => \DERIV_CALC|Add1~35\);

-- Location: LABCELL_X36_Y3_N57
\DERIV_CALC|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~37_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg[-4]~DUPLICATE_q\ $ (\DERIV_CALC|dy1_2_reg[-5]~q\) ) + ( \DERIV_CALC|Add1~35\ ) + ( \DERIV_CALC|Add1~34\ ))
-- \DERIV_CALC|Add1~38\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-4]~DUPLICATE_q\ $ (\DERIV_CALC|dy1_2_reg[-5]~q\) ) + ( \DERIV_CALC|Add1~35\ ) + ( \DERIV_CALC|Add1~34\ ))
-- \DERIV_CALC|Add1~39\ = SHARE((\DERIV_CALC|dx1_1_reg[-4]~DUPLICATE_q\ & !\DERIV_CALC|dy1_2_reg[-5]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-4]~DUPLICATE_q\,
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg[-5]~q\,
	cin => \DERIV_CALC|Add1~34\,
	sharein => \DERIV_CALC|Add1~35\,
	sumout => \DERIV_CALC|Add1~37_sumout\,
	cout => \DERIV_CALC|Add1~38\,
	shareout => \DERIV_CALC|Add1~39\);

-- Location: LABCELL_X36_Y2_N0
\DERIV_CALC|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~41_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg[-3]~q\ $ (\DERIV_CALC|dy1_2_reg[-4]~q\) ) + ( \DERIV_CALC|Add1~39\ ) + ( \DERIV_CALC|Add1~38\ ))
-- \DERIV_CALC|Add1~42\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-3]~q\ $ (\DERIV_CALC|dy1_2_reg[-4]~q\) ) + ( \DERIV_CALC|Add1~39\ ) + ( \DERIV_CALC|Add1~38\ ))
-- \DERIV_CALC|Add1~43\ = SHARE((\DERIV_CALC|dx1_1_reg[-3]~q\ & !\DERIV_CALC|dy1_2_reg[-4]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-3]~q\,
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg[-4]~q\,
	cin => \DERIV_CALC|Add1~38\,
	sharein => \DERIV_CALC|Add1~39\,
	sumout => \DERIV_CALC|Add1~41_sumout\,
	cout => \DERIV_CALC|Add1~42\,
	shareout => \DERIV_CALC|Add1~43\);

-- Location: LABCELL_X36_Y2_N3
\DERIV_CALC|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~45_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg[-2]~q\ $ (\DERIV_CALC|dy1_2_reg[-3]~q\) ) + ( \DERIV_CALC|Add1~43\ ) + ( \DERIV_CALC|Add1~42\ ))
-- \DERIV_CALC|Add1~46\ = CARRY(( !\DERIV_CALC|dx1_1_reg[-2]~q\ $ (\DERIV_CALC|dy1_2_reg[-3]~q\) ) + ( \DERIV_CALC|Add1~43\ ) + ( \DERIV_CALC|Add1~42\ ))
-- \DERIV_CALC|Add1~47\ = SHARE((\DERIV_CALC|dx1_1_reg[-2]~q\ & !\DERIV_CALC|dy1_2_reg[-3]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-2]~q\,
	datad => \DERIV_CALC|ALT_INV_dy1_2_reg[-3]~q\,
	cin => \DERIV_CALC|Add1~42\,
	sharein => \DERIV_CALC|Add1~43\,
	sumout => \DERIV_CALC|Add1~45_sumout\,
	cout => \DERIV_CALC|Add1~46\,
	shareout => \DERIV_CALC|Add1~47\);

-- Location: LABCELL_X36_Y2_N6
\DERIV_CALC|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~49_sumout\ = SUM(( !\DERIV_CALC|dy1_2_reg[-2]~q\ $ (\DERIV_CALC|dx1_1_reg[-1]~DUPLICATE_q\) ) + ( \DERIV_CALC|Add1~47\ ) + ( \DERIV_CALC|Add1~46\ ))
-- \DERIV_CALC|Add1~50\ = CARRY(( !\DERIV_CALC|dy1_2_reg[-2]~q\ $ (\DERIV_CALC|dx1_1_reg[-1]~DUPLICATE_q\) ) + ( \DERIV_CALC|Add1~47\ ) + ( \DERIV_CALC|Add1~46\ ))
-- \DERIV_CALC|Add1~51\ = SHARE((!\DERIV_CALC|dy1_2_reg[-2]~q\ & \DERIV_CALC|dx1_1_reg[-1]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dy1_2_reg[-2]~q\,
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-1]~DUPLICATE_q\,
	cin => \DERIV_CALC|Add1~46\,
	sharein => \DERIV_CALC|Add1~47\,
	sumout => \DERIV_CALC|Add1~49_sumout\,
	cout => \DERIV_CALC|Add1~50\,
	shareout => \DERIV_CALC|Add1~51\);

-- Location: FF_X36_Y2_N14
\DERIV_CALC|dy2_1_reg[0]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg\(0));

-- Location: LABCELL_X33_Y5_N0
\mul_reg[1][-10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[1][-10]~feeder_combout\ = ( \DERIV_CALC|dy2_1_reg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy2_1_reg\(0),
	combout => \mul_reg[1][-10]~feeder_combout\);

-- Location: FF_X33_Y5_N1
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

-- Location: M10K_X38_Y2_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001555AAAABFFFFC000005555555AAAAAAAAAFFFFFFFFFFFFF00000000000000000000015555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init1 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init0 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Exponent_memory_e1abf11d.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_Vilnius:DERIV_CALC|Exponent_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_mtd1:auto_generated|ALTSYNCRAM",
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

-- Location: LABCELL_X40_Y3_N24
\DERIV_CALC|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~73_sumout\ = SUM(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg\(4) ) + ( \DERIV_CALC|Add2~70\ ))
-- \DERIV_CALC|Add2~74\ = CARRY(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a18~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg\(4) ) + ( \DERIV_CALC|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg\(4),
	datad => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a18~portadataout\,
	cin => \DERIV_CALC|Add2~70\,
	sumout => \DERIV_CALC|Add2~73_sumout\,
	cout => \DERIV_CALC|Add2~74\);

-- Location: FF_X40_Y3_N25
\DERIV_CALC|dz2_1_reg[4]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg\(4));

-- Location: LABCELL_X40_Y3_N54
\mul_reg[2][-6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[2][-6]~feeder_combout\ = \DERIV_CALC|dz2_1_reg\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dz2_1_reg\(4),
	combout => \mul_reg[2][-6]~feeder_combout\);

-- Location: FF_X40_Y3_N56
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

-- Location: MLABCELL_X39_Y3_N54
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( \mul_reg[2][-6]~q\ ) + ( \var_main_reg[2][8]~q\ ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( \mul_reg[2][-6]~q\ ) + ( \var_main_reg[2][8]~q\ ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[2][8]~q\,
	datad => \ALT_INV_mul_reg[2][-6]~q\,
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X39_Y3_N55
\var_main_reg[2][8]~DUPLICATE\ : dffeas
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
	q => \var_main_reg[2][8]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y3_N57
\DERIV_CALC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~37_sumout\ = SUM(( \var_main_reg[0][9]~q\ ) + ( \var_main_reg[2][9]~q\ ) + ( \DERIV_CALC|Add0~34\ ))
-- \DERIV_CALC|Add0~38\ = CARRY(( \var_main_reg[0][9]~q\ ) + ( \var_main_reg[2][9]~q\ ) + ( \DERIV_CALC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[2][9]~q\,
	datad => \ALT_INV_var_main_reg[0][9]~q\,
	cin => \DERIV_CALC|Add0~34\,
	sumout => \DERIV_CALC|Add0~37_sumout\,
	cout => \DERIV_CALC|Add0~38\);

-- Location: FF_X37_Y3_N59
\DERIV_CALC|dy1_2_reg[-5]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg[-5]~q\);

-- Location: FF_X36_Y2_N10
\DERIV_CALC|dy2_1_reg[-1]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg[-1]~q\);

-- Location: LABCELL_X33_Y5_N9
\mul_reg[1][-11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[1][-11]~feeder_combout\ = ( \DERIV_CALC|dy2_1_reg[-1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy2_1_reg[-1]~q\,
	combout => \mul_reg[1][-11]~feeder_combout\);

-- Location: FF_X33_Y5_N10
\mul_reg[1][-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[1][-11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][-11]~q\);

-- Location: LABCELL_X40_Y3_N27
\DERIV_CALC|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~77_sumout\ = SUM(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a19\ ) + ( \DERIV_CALC|dz1_1_reg\(5) ) + ( \DERIV_CALC|Add2~74\ ))
-- \DERIV_CALC|Add2~78\ = CARRY(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a19\ ) + ( \DERIV_CALC|dz1_1_reg\(5) ) + ( \DERIV_CALC|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg\(5),
	datad => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a19\,
	cin => \DERIV_CALC|Add2~74\,
	sumout => \DERIV_CALC|Add2~77_sumout\,
	cout => \DERIV_CALC|Add2~78\);

-- Location: FF_X40_Y3_N28
\DERIV_CALC|dz2_1_reg[5]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg\(5));

-- Location: LABCELL_X40_Y3_N57
\mul_reg[2][-5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[2][-5]~feeder_combout\ = ( \DERIV_CALC|dz2_1_reg\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz2_1_reg\(5),
	combout => \mul_reg[2][-5]~feeder_combout\);

-- Location: FF_X40_Y3_N58
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

-- Location: MLABCELL_X39_Y3_N57
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( \var_main_reg[2][9]~q\ ) + ( \mul_reg[2][-5]~q\ ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( \var_main_reg[2][9]~q\ ) + ( \mul_reg[2][-5]~q\ ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[2][9]~q\,
	datac => \ALT_INV_mul_reg[2][-5]~q\,
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X39_Y3_N58
\var_main_reg[2][9]\ : dffeas
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
	q => \var_main_reg[2][9]~q\);

-- Location: LABCELL_X37_Y2_N3
\DERIV_CALC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~45_sumout\ = SUM(( \var_main_reg[2][11]~q\ ) + ( \var_main_reg[0][11]~DUPLICATE_q\ ) + ( \DERIV_CALC|Add0~42\ ))
-- \DERIV_CALC|Add0~46\ = CARRY(( \var_main_reg[2][11]~q\ ) + ( \var_main_reg[0][11]~DUPLICATE_q\ ) + ( \DERIV_CALC|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[0][11]~DUPLICATE_q\,
	datac => \ALT_INV_var_main_reg[2][11]~q\,
	cin => \DERIV_CALC|Add0~42\,
	sumout => \DERIV_CALC|Add0~45_sumout\,
	cout => \DERIV_CALC|Add0~46\);

-- Location: FF_X37_Y2_N7
\DERIV_CALC|dy1_2_reg[-2]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg[-2]~q\);

-- Location: FF_X36_Y2_N7
\DERIV_CALC|dy2_1_reg[-2]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg[-2]~q\);

-- Location: FF_X33_Y5_N8
\mul_reg[1][-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy2_1_reg[-2]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][-12]~q\);

-- Location: M10K_X38_Y1_N0
\DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init2 => "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/main.ram0_Exponent_memory_e1abf11d.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "deriv_calc_Vilnius:DERIV_CALC|Exponent_memory:HEAVISIDE_MEMORY|altsyncram:mem_rtl_0|altsyncram_mtd1:auto_generated|ALTSYNCRAM",
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

-- Location: LABCELL_X40_Y3_N30
\DERIV_CALC|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~81_sumout\ = SUM(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg\(6) ) + ( \DERIV_CALC|Add2~78\ ))
-- \DERIV_CALC|Add2~82\ = CARRY(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a20~portadataout\ ) + ( \DERIV_CALC|dz1_1_reg\(6) ) + ( \DERIV_CALC|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dz1_1_reg\(6),
	datad => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a20~portadataout\,
	cin => \DERIV_CALC|Add2~78\,
	sumout => \DERIV_CALC|Add2~81_sumout\,
	cout => \DERIV_CALC|Add2~82\);

-- Location: FF_X40_Y3_N32
\DERIV_CALC|dz2_1_reg[6]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg\(6));

-- Location: FF_X39_Y2_N38
\mul_reg[2][-4]\ : dffeas
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
	q => \mul_reg[2][-4]~q\);

-- Location: MLABCELL_X39_Y2_N0
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( \mul_reg[2][-4]~q\ ) + ( \var_main_reg[2][10]~q\ ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( \mul_reg[2][-4]~q\ ) + ( \var_main_reg[2][10]~q\ ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[2][10]~q\,
	datad => \ALT_INV_mul_reg[2][-4]~q\,
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X39_Y2_N1
\var_main_reg[2][10]\ : dffeas
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
	q => \var_main_reg[2][10]~q\);

-- Location: FF_X39_Y2_N4
\var_main_reg[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~45_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[2][11]~q\);

-- Location: FF_X37_Y2_N5
\DERIV_CALC|dy1_2_reg[-3]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg[-3]~q\);

-- Location: FF_X36_Y2_N4
\DERIV_CALC|dy2_1_reg[-3]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg[-3]~q\);

-- Location: FF_X33_Y4_N37
\mul_reg[1][-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy2_1_reg[-3]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][-13]~q\);

-- Location: LABCELL_X40_Y3_N33
\DERIV_CALC|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add2~85_sumout\ = SUM(( \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ram_block1a21\ ) + ( \DERIV_CALC|dz1_1_reg\(7) ) + ( \DERIV_CALC|Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dz1_1_reg\(7),
	datac => \DERIV_CALC|HEAVISIDE_MEMORY|mem_rtl_0|auto_generated|ALT_INV_ram_block1a21\,
	cin => \DERIV_CALC|Add2~82\,
	sumout => \DERIV_CALC|Add2~85_sumout\);

-- Location: FF_X40_Y3_N34
\DERIV_CALC|dz2_1_reg[7]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg\(7));

-- Location: LABCELL_X40_Y2_N3
\mul_reg[2][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[2][7]~feeder_combout\ = ( \DERIV_CALC|dz2_1_reg\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dz2_1_reg\(7),
	combout => \mul_reg[2][7]~feeder_combout\);

-- Location: FF_X40_Y2_N5
\mul_reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mul_reg[2][7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[2][7]~q\);

-- Location: MLABCELL_X39_Y2_N30
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( \var_main_reg[2][20]~q\ ) + ( \mul_reg[2][7]~q\ ) + ( \Add2~78\ ))
-- \Add2~82\ = CARRY(( \var_main_reg[2][20]~q\ ) + ( \mul_reg[2][7]~q\ ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul_reg[2][7]~q\,
	datac => \ALT_INV_var_main_reg[2][20]~q\,
	cin => \Add2~78\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: FF_X39_Y2_N31
\var_main_reg[2][20]\ : dffeas
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
	q => \var_main_reg[2][20]~q\);

-- Location: LABCELL_X35_Y2_N30
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

-- Location: FF_X35_Y2_N31
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

-- Location: LABCELL_X37_Y2_N30
\DERIV_CALC|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~81_sumout\ = SUM(( \var_main_reg[2][20]~q\ ) + ( \var_main_reg[0][20]~q\ ) + ( \DERIV_CALC|Add0~78\ ))
-- \DERIV_CALC|Add0~82\ = CARRY(( \var_main_reg[2][20]~q\ ) + ( \var_main_reg[0][20]~q\ ) + ( \DERIV_CALC|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[2][20]~q\,
	datac => \ALT_INV_var_main_reg[0][20]~q\,
	cin => \DERIV_CALC|Add0~78\,
	sumout => \DERIV_CALC|Add0~81_sumout\,
	cout => \DERIV_CALC|Add0~82\);

-- Location: FF_X37_Y2_N32
\DERIV_CALC|dy1_2_reg[6]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg\(6));

-- Location: LABCELL_X36_Y2_N30
\DERIV_CALC|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~81_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg\(7) $ (\DERIV_CALC|dy1_2_reg\(6)) ) + ( \DERIV_CALC|Add1~79\ ) + ( \DERIV_CALC|Add1~78\ ))
-- \DERIV_CALC|Add1~82\ = CARRY(( !\DERIV_CALC|dx1_1_reg\(7) $ (\DERIV_CALC|dy1_2_reg\(6)) ) + ( \DERIV_CALC|Add1~79\ ) + ( \DERIV_CALC|Add1~78\ ))
-- \DERIV_CALC|Add1~83\ = SHARE((\DERIV_CALC|dx1_1_reg\(7) & !\DERIV_CALC|dy1_2_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_1_reg\(7),
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg\(6),
	cin => \DERIV_CALC|Add1~78\,
	sharein => \DERIV_CALC|Add1~79\,
	sumout => \DERIV_CALC|Add1~81_sumout\,
	cout => \DERIV_CALC|Add1~82\,
	shareout => \DERIV_CALC|Add1~83\);

-- Location: FF_X36_Y2_N31
\DERIV_CALC|dy2_1_reg[6]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg\(6));

-- Location: LABCELL_X33_Y4_N54
\mul_reg[1][-4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[1][-4]~feeder_combout\ = ( \DERIV_CALC|dy2_1_reg\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy2_1_reg\(6),
	combout => \mul_reg[1][-4]~feeder_combout\);

-- Location: FF_X33_Y4_N55
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

-- Location: LABCELL_X33_Y4_N0
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \mul_reg[1][-4]~q\ ) + ( \var_main_reg[1][10]~_Duplicate_1_q\ ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( \mul_reg[1][-4]~q\ ) + ( \var_main_reg[1][10]~_Duplicate_1_q\ ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[1][10]~_Duplicate_1_q\,
	datad => \ALT_INV_mul_reg[1][-4]~q\,
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X33_Y4_N2
\var_main_reg[1][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][10]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N3
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][11]~_Duplicate_1_q\ ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][11]~_Duplicate_1_q\ ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[1][11]~_Duplicate_1_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: LABCELL_X33_Y4_N6
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][12]~_Duplicate_1_q\ ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][12]~_Duplicate_1_q\ ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[1][12]~_Duplicate_1_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X33_Y4_N8
\var_main_reg[1][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][12]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N9
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][13]~_Duplicate_1_q\ ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][13]~_Duplicate_1_q\ ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[1][13]~_Duplicate_1_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X33_Y4_N11
\var_main_reg[1][13]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][13]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N12
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][14]~_Duplicate_1_q\ ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][14]~_Duplicate_1_q\ ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[1][14]~_Duplicate_1_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~54\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X33_Y4_N14
\var_main_reg[1][14]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][14]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N15
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][15]~_Duplicate_1_q\ ) + ( \Add1~58\ ))
-- \Add1~62\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][15]~_Duplicate_1_q\ ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[1][15]~_Duplicate_1_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X33_Y4_N17
\var_main_reg[1][15]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][15]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N18
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][16]~_Duplicate_1_q\ ) + ( \Add1~62\ ))
-- \Add1~66\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][16]~_Duplicate_1_q\ ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[1][16]~_Duplicate_1_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~62\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X33_Y4_N20
\var_main_reg[1][16]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][16]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N21
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][17]~_Duplicate_1_q\ ) + ( \Add1~66\ ))
-- \Add1~70\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][17]~_Duplicate_1_q\ ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[1][17]~_Duplicate_1_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~66\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X33_Y4_N23
\var_main_reg[1][17]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][17]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N24
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][18]~_Duplicate_1_q\ ) + ( \Add1~70\ ))
-- \Add1~74\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][18]~_Duplicate_1_q\ ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_var_main_reg[1][18]~_Duplicate_1_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~70\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X33_Y4_N26
\var_main_reg[1][18]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][18]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N27
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][19]~_Duplicate_1_q\ ) + ( \Add1~74\ ))
-- \Add1~78\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][19]~_Duplicate_1_q\ ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[1][19]~_Duplicate_1_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~74\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X33_Y4_N29
\var_main_reg[1][19]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][19]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N30
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][20]~_Duplicate_1_q\ ) + ( \Add1~78\ ))
-- \Add1~82\ = CARRY(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][20]~_Duplicate_1_q\ ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[1][20]~_Duplicate_1_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~78\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X33_Y4_N32
\var_main_reg[1][20]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][20]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N33
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( \mul_reg[1][7]~q\ ) + ( \var_main_reg[1][21]~_Duplicate_1_q\ ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_var_main_reg[1][21]~_Duplicate_1_q\,
	datad => \ALT_INV_mul_reg[1][7]~q\,
	cin => \Add1~82\,
	sumout => \Add1~85_sumout\);

-- Location: FF_X33_Y4_N35
\var_main_reg[1][21]~_Duplicate_1\ : dffeas
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
	q => \var_main_reg[1][21]~_Duplicate_1_q\);

-- Location: LABCELL_X37_Y2_N48
\DERIV_CALC|dx1_1_reg[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_1_reg[7]~feeder_combout\ = ( \var_main_reg[1][21]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[1][21]~_Duplicate_1_q\,
	combout => \DERIV_CALC|dx1_1_reg[7]~feeder_combout\);

-- Location: FF_X37_Y2_N50
\DERIV_CALC|dx1_1_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_1_reg[7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg\(7));

-- Location: MLABCELL_X39_Y2_N33
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( \var_main_reg[2][21]~q\ ) + ( \mul_reg[2][7]~q\ ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mul_reg[2][7]~q\,
	datac => \ALT_INV_var_main_reg[2][21]~q\,
	cin => \Add2~82\,
	sumout => \Add2~85_sumout\);

-- Location: FF_X39_Y2_N34
\var_main_reg[2][21]\ : dffeas
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
	q => \var_main_reg[2][21]~q\);

-- Location: LABCELL_X35_Y2_N33
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

-- Location: FF_X35_Y2_N35
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

-- Location: LABCELL_X37_Y2_N33
\DERIV_CALC|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add0~85_sumout\ = SUM(( \var_main_reg[2][21]~q\ ) + ( \var_main_reg[0][21]~q\ ) + ( \DERIV_CALC|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_var_main_reg[2][21]~q\,
	datac => \ALT_INV_var_main_reg[0][21]~q\,
	cin => \DERIV_CALC|Add0~82\,
	sumout => \DERIV_CALC|Add0~85_sumout\);

-- Location: FF_X37_Y2_N34
\DERIV_CALC|dy1_2_reg[7]\ : dffeas
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
	q => \DERIV_CALC|dy1_2_reg\(7));

-- Location: LABCELL_X36_Y2_N33
\DERIV_CALC|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|Add1~85_sumout\ = SUM(( !\DERIV_CALC|dx1_1_reg\(7) $ (\DERIV_CALC|dy1_2_reg\(7)) ) + ( \DERIV_CALC|Add1~83\ ) + ( \DERIV_CALC|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_1_reg\(7),
	datac => \DERIV_CALC|ALT_INV_dy1_2_reg\(7),
	cin => \DERIV_CALC|Add1~82\,
	sharein => \DERIV_CALC|Add1~83\,
	sumout => \DERIV_CALC|Add1~85_sumout\);

-- Location: FF_X36_Y2_N34
\DERIV_CALC|dy2_1_reg[7]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg\(7));

-- Location: FF_X33_Y4_N52
\mul_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dy2_1_reg\(7),
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mul_reg[1][7]~q\);

-- Location: FF_X33_Y4_N5
\var_main_reg[1][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \var_main_reg[1][11]~_Duplicate_1_q\);

-- Location: LABCELL_X36_Y2_N51
\DERIV_CALC|dx1_1_reg[-3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx1_1_reg[-3]~feeder_combout\ = ( \var_main_reg[1][11]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_var_main_reg[1][11]~_Duplicate_1_q\,
	combout => \DERIV_CALC|dx1_1_reg[-3]~feeder_combout\);

-- Location: FF_X36_Y2_N53
\DERIV_CALC|dx1_1_reg[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_1_reg[-3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-3]~q\);

-- Location: FF_X36_Y2_N1
\DERIV_CALC|dy2_1_reg[-4]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg[-4]~q\);

-- Location: LABCELL_X33_Y5_N27
\mul_reg[1][-14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mul_reg[1][-14]~feeder_combout\ = ( \DERIV_CALC|dy2_1_reg[-4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dy2_1_reg[-4]~q\,
	combout => \mul_reg[1][-14]~feeder_combout\);

-- Location: FF_X33_Y5_N29
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

-- Location: FF_X40_Y3_N2
\DERIV_CALC|dz2_1_reg[-4]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[-4]~q\);

-- Location: FF_X39_Y3_N5
\mul_reg[2][-14]\ : dffeas
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
	q => \mul_reg[2][-14]~q\);

-- Location: FF_X39_Y3_N31
\var_main_reg[2][0]\ : dffeas
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
	q => \var_main_reg[2][0]~q\);

-- Location: FF_X35_Y2_N2
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

-- Location: FF_X40_Y4_N31
\DERIV_CALC|dz2_1_reg[-14]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[-14]~q\);

-- Location: FF_X40_Y4_N34
\DERIV_CALC|dz2_1_reg[-13]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[-13]~q\);

-- Location: FF_X40_Y4_N37
\DERIV_CALC|dz2_1_reg[-12]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[-12]~q\);

-- Location: FF_X40_Y4_N40
\DERIV_CALC|dz2_1_reg[-11]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[-11]~q\);

-- Location: FF_X40_Y4_N43
\DERIV_CALC|dz2_1_reg[-10]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[-10]~q\);

-- Location: FF_X40_Y4_N46
\DERIV_CALC|dz2_1_reg[-9]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[-9]~q\);

-- Location: FF_X40_Y4_N49
\DERIV_CALC|dz2_1_reg[-8]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[-8]~q\);

-- Location: FF_X40_Y4_N52
\DERIV_CALC|dz2_1_reg[-7]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[-7]~q\);

-- Location: FF_X40_Y4_N55
\DERIV_CALC|dz2_1_reg[-6]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[-6]~q\);

-- Location: FF_X40_Y4_N58
\DERIV_CALC|dz2_1_reg[-5]\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[-5]~q\);

-- Location: FF_X40_Y3_N7
\DERIV_CALC|dz2_1_reg[-2]~DUPLICATE\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[-2]~DUPLICATE_q\);

-- Location: FF_X40_Y3_N10
\DERIV_CALC|dz2_1_reg[-1]~DUPLICATE\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[-1]~DUPLICATE_q\);

-- Location: FF_X40_Y3_N16
\DERIV_CALC|dz2_1_reg[1]~DUPLICATE\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[1]~DUPLICATE_q\);

-- Location: FF_X40_Y3_N22
\DERIV_CALC|dz2_1_reg[3]~DUPLICATE\ : dffeas
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
	q => \DERIV_CALC|dz2_1_reg[3]~DUPLICATE_q\);

-- Location: FF_X36_Y3_N31
\DERIV_CALC|dy2_1_reg[-14]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg[-14]~q\);

-- Location: FF_X36_Y3_N34
\DERIV_CALC|dy2_1_reg[-13]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg[-13]~q\);

-- Location: FF_X36_Y3_N37
\DERIV_CALC|dy2_1_reg[-12]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg[-12]~q\);

-- Location: FF_X36_Y3_N41
\DERIV_CALC|dy2_1_reg[-11]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg[-11]~q\);

-- Location: FF_X36_Y3_N43
\DERIV_CALC|dy2_1_reg[-10]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg[-10]~q\);

-- Location: FF_X36_Y3_N46
\DERIV_CALC|dy2_1_reg[-9]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg[-9]~q\);

-- Location: FF_X36_Y3_N49
\DERIV_CALC|dy2_1_reg[-8]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg[-8]~q\);

-- Location: FF_X36_Y3_N52
\DERIV_CALC|dy2_1_reg[-7]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg[-7]~q\);

-- Location: FF_X36_Y3_N55
\DERIV_CALC|dy2_1_reg[-6]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg[-6]~q\);

-- Location: FF_X36_Y3_N58
\DERIV_CALC|dy2_1_reg[-5]\ : dffeas
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
	q => \DERIV_CALC|dy2_1_reg[-5]~q\);

-- Location: FF_X88_Y8_N50
\DERIV_CALC|dx1_1_reg[-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[1][0]~_Duplicate_1_q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-14]~q\);

-- Location: FF_X88_Y8_N52
\DERIV_CALC|dx2_1_reg[-14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_1_reg[-14]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-14]~q\);

-- Location: LABCELL_X35_Y3_N12
\DERIV_CALC|dx2_1_reg[-13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_1_reg[-13]~feeder_combout\ = \DERIV_CALC|dx1_1_reg[-13]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DERIV_CALC|ALT_INV_dx1_1_reg[-13]~q\,
	combout => \DERIV_CALC|dx2_1_reg[-13]~feeder_combout\);

-- Location: FF_X35_Y3_N13
\DERIV_CALC|dx2_1_reg[-13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_1_reg[-13]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-13]~q\);

-- Location: FF_X37_Y3_N13
\DERIV_CALC|dx2_1_reg[-12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_1_reg[-12]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-12]~q\);

-- Location: LABCELL_X18_Y3_N24
\DERIV_CALC|dx2_1_reg[-11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_1_reg[-11]~feeder_combout\ = ( \DERIV_CALC|dx1_1_reg[-11]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx1_1_reg[-11]~q\,
	combout => \DERIV_CALC|dx2_1_reg[-11]~feeder_combout\);

-- Location: FF_X18_Y3_N25
\DERIV_CALC|dx2_1_reg[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_1_reg[-11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-11]~q\);

-- Location: FF_X37_Y3_N8
\DERIV_CALC|dx1_1_reg[-10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \var_main_reg[1][4]~_Duplicate_1_q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-10]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y3_N9
\DERIV_CALC|dx2_1_reg[-10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_1_reg[-10]~feeder_combout\ = \DERIV_CALC|dx1_1_reg[-10]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-10]~DUPLICATE_q\,
	combout => \DERIV_CALC|dx2_1_reg[-10]~feeder_combout\);

-- Location: FF_X37_Y3_N10
\DERIV_CALC|dx2_1_reg[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_1_reg[-10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-10]~q\);

-- Location: FF_X36_Y3_N1
\DERIV_CALC|dx1_1_reg[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx1_1_reg[-9]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx1_1_reg[-9]~q\);

-- Location: FF_X37_Y3_N28
\DERIV_CALC|dx2_1_reg[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_1_reg[-9]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-9]~q\);

-- Location: LABCELL_X37_Y3_N18
\DERIV_CALC|dx2_1_reg[-8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_1_reg[-8]~feeder_combout\ = \DERIV_CALC|dx1_1_reg[-8]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-8]~q\,
	combout => \DERIV_CALC|dx2_1_reg[-8]~feeder_combout\);

-- Location: FF_X37_Y3_N19
\DERIV_CALC|dx2_1_reg[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_1_reg[-8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-8]~q\);

-- Location: FF_X39_Y4_N40
\DERIV_CALC|dx2_1_reg[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \DERIV_CALC|dx1_1_reg[-7]~q\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-7]~q\);

-- Location: LABCELL_X42_Y6_N48
\DERIV_CALC|dx2_1_reg[-6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_1_reg[-6]~feeder_combout\ = ( \DERIV_CALC|dx1_1_reg[-6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \DERIV_CALC|ALT_INV_dx1_1_reg[-6]~q\,
	combout => \DERIV_CALC|dx2_1_reg[-6]~feeder_combout\);

-- Location: FF_X42_Y6_N49
\DERIV_CALC|dx2_1_reg[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_1_reg[-6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-6]~q\);

-- Location: LABCELL_X36_Y3_N27
\DERIV_CALC|dx2_1_reg[-5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DERIV_CALC|dx2_1_reg[-5]~feeder_combout\ = \DERIV_CALC|dx1_1_reg[-5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DERIV_CALC|ALT_INV_dx1_1_reg[-5]~q\,
	combout => \DERIV_CALC|dx2_1_reg[-5]~feeder_combout\);

-- Location: FF_X36_Y3_N28
\DERIV_CALC|dx2_1_reg[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_1_reg[-5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-5]~q\);

-- Location: FF_X36_Y2_N41
\DERIV_CALC|dx2_1_reg[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_1_reg[-3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[-3]~q\);

-- Location: FF_X37_Y2_N37
\DERIV_CALC|dx2_1_reg[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DERIV_CALC|dx2_1_reg[7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DERIV_CALC|dx2_1_reg[7]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y38_N0
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


