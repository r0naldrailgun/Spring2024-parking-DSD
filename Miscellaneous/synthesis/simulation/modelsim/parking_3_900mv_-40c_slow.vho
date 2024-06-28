-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/26/2024 21:38:52"

-- 
-- Device: Altera EP2AGX45CU17I3 Package UFBGA358
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ARRIAII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	parking IS
    PORT (
	clk : IN std_logic;
	uni_parked_car : BUFFER std_logic_vector(10 DOWNTO 0);
	parked_car : BUFFER std_logic_vector(10 DOWNTO 0);
	uni_vacated_space : BUFFER std_logic_vector(10 DOWNTO 0);
	vacated_space : BUFFER std_logic_vector(10 DOWNTO 0);
	uni_is_vacated_space : BUFFER std_logic;
	is_vacated_space : BUFFER std_logic;
	car_entered : IN std_logic;
	is_uni_car_entered : IN std_logic;
	car_exited : IN std_logic;
	is_uni_car_exited : IN std_logic
	);
END parking;

-- Design Ports Information
-- uni_parked_car[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[2]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[6]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[8]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[9]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[10]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[0]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[3]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[5]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[6]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[7]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[8]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[9]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[10]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[6]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[7]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[8]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[9]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[10]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[1]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[3]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[4]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[5]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[6]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[7]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[8]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[9]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[10]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_is_vacated_space	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_vacated_space	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- car_exited	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_uni_car_exited	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- car_entered	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_uni_car_entered	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parking IS
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
SIGNAL ww_uni_parked_car : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_parked_car : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_uni_vacated_space : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_vacated_space : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_uni_is_vacated_space : std_logic;
SIGNAL ww_is_vacated_space : std_logic;
SIGNAL ww_car_entered : std_logic;
SIGNAL ww_is_uni_car_entered : std_logic;
SIGNAL ww_car_exited : std_logic;
SIGNAL ww_is_uni_car_exited : std_logic;
SIGNAL \uni_parked_car[0]~output_o\ : std_logic;
SIGNAL \uni_parked_car[1]~output_o\ : std_logic;
SIGNAL \uni_parked_car[2]~output_o\ : std_logic;
SIGNAL \uni_parked_car[3]~output_o\ : std_logic;
SIGNAL \uni_parked_car[4]~output_o\ : std_logic;
SIGNAL \uni_parked_car[5]~output_o\ : std_logic;
SIGNAL \uni_parked_car[6]~output_o\ : std_logic;
SIGNAL \uni_parked_car[7]~output_o\ : std_logic;
SIGNAL \uni_parked_car[8]~output_o\ : std_logic;
SIGNAL \uni_parked_car[9]~output_o\ : std_logic;
SIGNAL \uni_parked_car[10]~output_o\ : std_logic;
SIGNAL \parked_car[0]~output_o\ : std_logic;
SIGNAL \parked_car[1]~output_o\ : std_logic;
SIGNAL \parked_car[2]~output_o\ : std_logic;
SIGNAL \parked_car[3]~output_o\ : std_logic;
SIGNAL \parked_car[4]~output_o\ : std_logic;
SIGNAL \parked_car[5]~output_o\ : std_logic;
SIGNAL \parked_car[6]~output_o\ : std_logic;
SIGNAL \parked_car[7]~output_o\ : std_logic;
SIGNAL \parked_car[8]~output_o\ : std_logic;
SIGNAL \parked_car[9]~output_o\ : std_logic;
SIGNAL \parked_car[10]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[0]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[1]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[2]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[3]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[4]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[5]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[6]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[7]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[8]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[9]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[10]~output_o\ : std_logic;
SIGNAL \vacated_space[0]~output_o\ : std_logic;
SIGNAL \vacated_space[1]~output_o\ : std_logic;
SIGNAL \vacated_space[2]~output_o\ : std_logic;
SIGNAL \vacated_space[3]~output_o\ : std_logic;
SIGNAL \vacated_space[4]~output_o\ : std_logic;
SIGNAL \vacated_space[5]~output_o\ : std_logic;
SIGNAL \vacated_space[6]~output_o\ : std_logic;
SIGNAL \vacated_space[7]~output_o\ : std_logic;
SIGNAL \vacated_space[8]~output_o\ : std_logic;
SIGNAL \vacated_space[9]~output_o\ : std_logic;
SIGNAL \vacated_space[10]~output_o\ : std_logic;
SIGNAL \uni_is_vacated_space~output_o\ : std_logic;
SIGNAL \is_vacated_space~output_o\ : std_logic;
SIGNAL \car_exited~input_o\ : std_logic;
SIGNAL \car_exited~inputclkctrl_outclk\ : std_logic;
SIGNAL \number_of_exited_uni_cars[0]~1_combout\ : std_logic;
SIGNAL \car_entered~input_o\ : std_logic;
SIGNAL \car_entered~inputclkctrl_outclk\ : std_logic;
SIGNAL \number_of_entered_uni_cars[0]~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add11~1_sumout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Add11~118\ : std_logic;
SIGNAL \Add11~121_sumout\ : std_logic;
SIGNAL \Add10~1_sumout\ : std_logic;
SIGNAL \minute[0]~feeder_combout\ : std_logic;
SIGNAL \Add9~1_sumout\ : std_logic;
SIGNAL \Add9~2\ : std_logic;
SIGNAL \Add9~5_sumout\ : std_logic;
SIGNAL \Add9~6\ : std_logic;
SIGNAL \Add9~9_sumout\ : std_logic;
SIGNAL \Add9~106\ : std_logic;
SIGNAL \Add9~109_sumout\ : std_logic;
SIGNAL \Add9~110\ : std_logic;
SIGNAL \Add9~113_sumout\ : std_logic;
SIGNAL \Add9~114\ : std_logic;
SIGNAL \Add9~117_sumout\ : std_logic;
SIGNAL \Add9~118\ : std_logic;
SIGNAL \Add9~121_sumout\ : std_logic;
SIGNAL \Add9~122\ : std_logic;
SIGNAL \Add9~125_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \second[10]~feeder_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \second[14]~feeder_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add9~10\ : std_logic;
SIGNAL \Add9~13_sumout\ : std_logic;
SIGNAL \Add9~14\ : std_logic;
SIGNAL \Add9~17_sumout\ : std_logic;
SIGNAL \Add9~18\ : std_logic;
SIGNAL \Add9~21_sumout\ : std_logic;
SIGNAL \Add9~22\ : std_logic;
SIGNAL \Add9~25_sumout\ : std_logic;
SIGNAL \Add9~26\ : std_logic;
SIGNAL \Add9~29_sumout\ : std_logic;
SIGNAL \second[7]~feeder_combout\ : std_logic;
SIGNAL \Add9~30\ : std_logic;
SIGNAL \Add9~33_sumout\ : std_logic;
SIGNAL \Add9~34\ : std_logic;
SIGNAL \Add9~37_sumout\ : std_logic;
SIGNAL \second[9]~feeder_combout\ : std_logic;
SIGNAL \Add9~38\ : std_logic;
SIGNAL \Add9~41_sumout\ : std_logic;
SIGNAL \second[10]~DUPLICATEfeeder_combout\ : std_logic;
SIGNAL \second[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add9~42\ : std_logic;
SIGNAL \Add9~45_sumout\ : std_logic;
SIGNAL \Add9~46\ : std_logic;
SIGNAL \Add9~49_sumout\ : std_logic;
SIGNAL \Add9~50\ : std_logic;
SIGNAL \Add9~53_sumout\ : std_logic;
SIGNAL \Add9~54\ : std_logic;
SIGNAL \Add9~57_sumout\ : std_logic;
SIGNAL \second[14]~DUPLICATEfeeder_combout\ : std_logic;
SIGNAL \second[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add9~58\ : std_logic;
SIGNAL \Add9~61_sumout\ : std_logic;
SIGNAL \Add9~62\ : std_logic;
SIGNAL \Add9~65_sumout\ : std_logic;
SIGNAL \Add9~66\ : std_logic;
SIGNAL \Add9~69_sumout\ : std_logic;
SIGNAL \Add9~70\ : std_logic;
SIGNAL \Add9~73_sumout\ : std_logic;
SIGNAL \Add9~74\ : std_logic;
SIGNAL \Add9~77_sumout\ : std_logic;
SIGNAL \Add9~78\ : std_logic;
SIGNAL \Add9~81_sumout\ : std_logic;
SIGNAL \Add9~82\ : std_logic;
SIGNAL \Add9~85_sumout\ : std_logic;
SIGNAL \Add9~86\ : std_logic;
SIGNAL \Add9~89_sumout\ : std_logic;
SIGNAL \Add9~90\ : std_logic;
SIGNAL \Add9~93_sumout\ : std_logic;
SIGNAL \Add9~94\ : std_logic;
SIGNAL \Add9~97_sumout\ : std_logic;
SIGNAL \Add9~98\ : std_logic;
SIGNAL \Add9~101_sumout\ : std_logic;
SIGNAL \Add9~102\ : std_logic;
SIGNAL \Add9~105_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~6DUPLICATE_combout\ : std_logic;
SIGNAL \Add10~2\ : std_logic;
SIGNAL \Add10~5_sumout\ : std_logic;
SIGNAL \Add10~26\ : std_logic;
SIGNAL \Add10~29_sumout\ : std_logic;
SIGNAL \Add10~30\ : std_logic;
SIGNAL \Add10~33_sumout\ : std_logic;
SIGNAL \Add10~34\ : std_logic;
SIGNAL \Add10~37_sumout\ : std_logic;
SIGNAL \Add10~38\ : std_logic;
SIGNAL \Add10~41_sumout\ : std_logic;
SIGNAL \Add10~42\ : std_logic;
SIGNAL \Add10~45_sumout\ : std_logic;
SIGNAL \Add10~46\ : std_logic;
SIGNAL \Add10~49_sumout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add10~50\ : std_logic;
SIGNAL \Add10~53_sumout\ : std_logic;
SIGNAL \Add10~54\ : std_logic;
SIGNAL \Add10~57_sumout\ : std_logic;
SIGNAL \Add10~58\ : std_logic;
SIGNAL \Add10~61_sumout\ : std_logic;
SIGNAL \Add10~62\ : std_logic;
SIGNAL \Add10~65_sumout\ : std_logic;
SIGNAL \Add10~66\ : std_logic;
SIGNAL \Add10~69_sumout\ : std_logic;
SIGNAL \Add10~70\ : std_logic;
SIGNAL \Add10~73_sumout\ : std_logic;
SIGNAL \Add10~74\ : std_logic;
SIGNAL \Add10~77_sumout\ : std_logic;
SIGNAL \Add10~78\ : std_logic;
SIGNAL \Add10~81_sumout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add10~82\ : std_logic;
SIGNAL \Add10~85_sumout\ : std_logic;
SIGNAL \Add10~86\ : std_logic;
SIGNAL \Add10~89_sumout\ : std_logic;
SIGNAL \Add10~90\ : std_logic;
SIGNAL \Add10~93_sumout\ : std_logic;
SIGNAL \Add10~94\ : std_logic;
SIGNAL \Add10~97_sumout\ : std_logic;
SIGNAL \Add10~98\ : std_logic;
SIGNAL \Add10~101_sumout\ : std_logic;
SIGNAL \Add10~102\ : std_logic;
SIGNAL \Add10~105_sumout\ : std_logic;
SIGNAL \Add10~106\ : std_logic;
SIGNAL \Add10~109_sumout\ : std_logic;
SIGNAL \Add10~110\ : std_logic;
SIGNAL \Add10~113_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add10~114\ : std_logic;
SIGNAL \Add10~117_sumout\ : std_logic;
SIGNAL \Add10~118\ : std_logic;
SIGNAL \Add10~121_sumout\ : std_logic;
SIGNAL \Add10~122\ : std_logic;
SIGNAL \Add10~125_sumout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~6DUPLICATE_combout\ : std_logic;
SIGNAL \Add10~6\ : std_logic;
SIGNAL \Add10~9_sumout\ : std_logic;
SIGNAL \Add10~10\ : std_logic;
SIGNAL \Add10~13_sumout\ : std_logic;
SIGNAL \Add10~14\ : std_logic;
SIGNAL \Add10~17_sumout\ : std_logic;
SIGNAL \Add10~18\ : std_logic;
SIGNAL \Add10~21_sumout\ : std_logic;
SIGNAL \Add10~22\ : std_logic;
SIGNAL \Add10~25_sumout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \hour[0]~0_combout\ : std_logic;
SIGNAL \Add11~122\ : std_logic;
SIGNAL \Add11~125_sumout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \hour[0]~0DUPLICATE_combout\ : std_logic;
SIGNAL \Add11~2\ : std_logic;
SIGNAL \Add11~5_sumout\ : std_logic;
SIGNAL \Add11~6\ : std_logic;
SIGNAL \Add11~9_sumout\ : std_logic;
SIGNAL \Add11~10\ : std_logic;
SIGNAL \Add11~13_sumout\ : std_logic;
SIGNAL \Add11~14\ : std_logic;
SIGNAL \Add11~17_sumout\ : std_logic;
SIGNAL \Add11~18\ : std_logic;
SIGNAL \Add11~21_sumout\ : std_logic;
SIGNAL \Add11~22\ : std_logic;
SIGNAL \Add11~25_sumout\ : std_logic;
SIGNAL \Add11~26\ : std_logic;
SIGNAL \Add11~29_sumout\ : std_logic;
SIGNAL \Add11~30\ : std_logic;
SIGNAL \Add11~33_sumout\ : std_logic;
SIGNAL \Add11~34\ : std_logic;
SIGNAL \Add11~37_sumout\ : std_logic;
SIGNAL \Add11~38\ : std_logic;
SIGNAL \Add11~41_sumout\ : std_logic;
SIGNAL \Add11~42\ : std_logic;
SIGNAL \Add11~45_sumout\ : std_logic;
SIGNAL \Add11~46\ : std_logic;
SIGNAL \Add11~49_sumout\ : std_logic;
SIGNAL \Add11~50\ : std_logic;
SIGNAL \Add11~53_sumout\ : std_logic;
SIGNAL \Add11~54\ : std_logic;
SIGNAL \Add11~57_sumout\ : std_logic;
SIGNAL \Add11~58\ : std_logic;
SIGNAL \Add11~61_sumout\ : std_logic;
SIGNAL \Add11~62\ : std_logic;
SIGNAL \Add11~65_sumout\ : std_logic;
SIGNAL \Add11~66\ : std_logic;
SIGNAL \Add11~69_sumout\ : std_logic;
SIGNAL \Add11~70\ : std_logic;
SIGNAL \Add11~73_sumout\ : std_logic;
SIGNAL \Add11~74\ : std_logic;
SIGNAL \Add11~77_sumout\ : std_logic;
SIGNAL \Add11~78\ : std_logic;
SIGNAL \Add11~81_sumout\ : std_logic;
SIGNAL \Add11~82\ : std_logic;
SIGNAL \Add11~85_sumout\ : std_logic;
SIGNAL \Add11~86\ : std_logic;
SIGNAL \Add11~89_sumout\ : std_logic;
SIGNAL \Add11~90\ : std_logic;
SIGNAL \Add11~93_sumout\ : std_logic;
SIGNAL \Add11~94\ : std_logic;
SIGNAL \Add11~97_sumout\ : std_logic;
SIGNAL \Add11~98\ : std_logic;
SIGNAL \Add11~101_sumout\ : std_logic;
SIGNAL \Add11~102\ : std_logic;
SIGNAL \Add11~105_sumout\ : std_logic;
SIGNAL \Add11~106\ : std_logic;
SIGNAL \Add11~109_sumout\ : std_logic;
SIGNAL \Add11~110\ : std_logic;
SIGNAL \Add11~113_sumout\ : std_logic;
SIGNAL \Add11~114\ : std_logic;
SIGNAL \Add11~117_sumout\ : std_logic;
SIGNAL \free_space~0_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \Equal2~0DUPLICATE_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \always3~0_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \free_space~3_combout\ : std_logic;
SIGNAL \free_space~4_combout\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~13_sumout\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~17_sumout\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~21_sumout\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~25_sumout\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~29_sumout\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \free_space~7_combout\ : std_logic;
SIGNAL \LessThan7~1DUPLICATE_combout\ : std_logic;
SIGNAL \free_space~12_combout\ : std_logic;
SIGNAL \free_space~13_combout\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \always3~1_combout\ : std_logic;
SIGNAL \free_space~11_combout\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \free_space~9_combout\ : std_logic;
SIGNAL \free_space~10_combout\ : std_logic;
SIGNAL \free_space~8DUPLICATE_combout\ : std_logic;
SIGNAL \free_space[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \free_space~5_combout\ : std_logic;
SIGNAL \free_space~6_combout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \free_space~1_combout\ : std_logic;
SIGNAL \free_space~2_combout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \is_uni_car_entered~input_o\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add7~30\ : std_logic;
SIGNAL \Add7~33_sumout\ : std_logic;
SIGNAL \Add7~34\ : std_logic;
SIGNAL \Add7~37_sumout\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \number_of_entered_uni_cars[10]~0_combout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \is_uni_car_exited~input_o\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \number_of_exited_uni_cars[10]~0_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \number_of_entered_none_uni_cars[0]~1_combout\ : std_logic;
SIGNAL \number_of_exited_none_uni_cars[0]~1_combout\ : std_logic;
SIGNAL \Add6~1_sumout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~5_sumout\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~9_sumout\ : std_logic;
SIGNAL \Add6~10\ : std_logic;
SIGNAL \Add6~13_sumout\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~17_sumout\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~21_sumout\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~25_sumout\ : std_logic;
SIGNAL \Add6~26\ : std_logic;
SIGNAL \Add6~29_sumout\ : std_logic;
SIGNAL \Add6~30\ : std_logic;
SIGNAL \Add6~33_sumout\ : std_logic;
SIGNAL \Add8~30\ : std_logic;
SIGNAL \Add8~33_sumout\ : std_logic;
SIGNAL \Add8~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add8~34\ : std_logic;
SIGNAL \Add8~37_sumout\ : std_logic;
SIGNAL \Add6~34\ : std_logic;
SIGNAL \Add6~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \number_of_none_uni_total_cars[10]~1_sumout\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \number_of_exited_none_uni_cars[10]~0_combout\ : std_logic;
SIGNAL \Add8~2\ : std_logic;
SIGNAL \Add8~5_sumout\ : std_logic;
SIGNAL \Add8~6\ : std_logic;
SIGNAL \Add8~9_sumout\ : std_logic;
SIGNAL \Add8~10\ : std_logic;
SIGNAL \Add8~13_sumout\ : std_logic;
SIGNAL \Add8~14\ : std_logic;
SIGNAL \Add8~17_sumout\ : std_logic;
SIGNAL \Add8~18\ : std_logic;
SIGNAL \Add8~21_sumout\ : std_logic;
SIGNAL \Add8~22\ : std_logic;
SIGNAL \Add8~25_sumout\ : std_logic;
SIGNAL \Add8~26\ : std_logic;
SIGNAL \Add8~29_sumout\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \free_space~13DUPLICATE_combout\ : std_logic;
SIGNAL \free_space[7]~DUPLICATE_q\ : std_logic;
SIGNAL \free_space~8_combout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~41_sumout\ : std_logic;
SIGNAL \number_of_entered_none_uni_cars[0]~0_combout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL second : std_logic_vector(31 DOWNTO 0);
SIGNAL number_of_exited_uni_cars : std_logic_vector(10 DOWNTO 0);
SIGNAL number_of_exited_none_uni_cars : std_logic_vector(10 DOWNTO 0);
SIGNAL number_of_entered_uni_cars : std_logic_vector(10 DOWNTO 0);
SIGNAL number_of_entered_none_uni_cars : std_logic_vector(10 DOWNTO 0);
SIGNAL minute : std_logic_vector(31 DOWNTO 0);
SIGNAL hour : std_logic_vector(31 DOWNTO 0);
SIGNAL free_space : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_LessThan7~1DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_free_space[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_free_space[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_second[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_second[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_is_uni_car_entered~input_o\ : std_logic;
SIGNAL \ALT_INV_is_uni_car_exited~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal2~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_free_space~12_combout\ : std_logic;
SIGNAL \ALT_INV_free_space~9_combout\ : std_logic;
SIGNAL \ALT_INV_free_space~7_combout\ : std_logic;
SIGNAL \ALT_INV_free_space~5_combout\ : std_logic;
SIGNAL \ALT_INV_always3~1_combout\ : std_logic;
SIGNAL \ALT_INV_free_space~3_combout\ : std_logic;
SIGNAL \ALT_INV_free_space~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \ALT_INV_always3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \ALT_INV_free_space~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL ALT_INV_free_space : std_logic_vector(8 DOWNTO 1);
SIGNAL ALT_INV_number_of_entered_none_uni_cars : std_logic_vector(10 DOWNTO 0);
SIGNAL ALT_INV_number_of_exited_none_uni_cars : std_logic_vector(10 DOWNTO 0);
SIGNAL ALT_INV_number_of_entered_uni_cars : std_logic_vector(10 DOWNTO 0);
SIGNAL ALT_INV_number_of_exited_uni_cars : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_Add10~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~29_sumout\ : std_logic;
SIGNAL ALT_INV_minute : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_second : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_hour : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Add4~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_number_of_none_uni_total_cars[10]~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
uni_parked_car <= ww_uni_parked_car;
parked_car <= ww_parked_car;
uni_vacated_space <= ww_uni_vacated_space;
vacated_space <= ww_vacated_space;
uni_is_vacated_space <= ww_uni_is_vacated_space;
is_vacated_space <= ww_is_vacated_space;
ww_car_entered <= car_entered;
ww_is_uni_car_entered <= is_uni_car_entered;
ww_car_exited <= car_exited;
ww_is_uni_car_exited <= is_uni_car_exited;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_LessThan7~1DUPLICATE_combout\ <= NOT \LessThan7~1DUPLICATE_combout\;
\ALT_INV_Equal2~0DUPLICATE_combout\ <= NOT \Equal2~0DUPLICATE_combout\;
\ALT_INV_free_space[7]~DUPLICATE_q\ <= NOT \free_space[7]~DUPLICATE_q\;
\ALT_INV_free_space[4]~DUPLICATE_q\ <= NOT \free_space[4]~DUPLICATE_q\;
\ALT_INV_second[10]~DUPLICATE_q\ <= NOT \second[10]~DUPLICATE_q\;
\ALT_INV_second[14]~DUPLICATE_q\ <= NOT \second[14]~DUPLICATE_q\;
\ALT_INV_is_uni_car_entered~input_o\ <= NOT \is_uni_car_entered~input_o\;
\ALT_INV_is_uni_car_exited~input_o\ <= NOT \is_uni_car_exited~input_o\;
\ALT_INV_Equal2~7_combout\ <= NOT \Equal2~7_combout\;
\ALT_INV_Equal1~6_combout\ <= NOT \Equal1~6_combout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_free_space~12_combout\ <= NOT \free_space~12_combout\;
\ALT_INV_free_space~9_combout\ <= NOT \free_space~9_combout\;
\ALT_INV_free_space~7_combout\ <= NOT \free_space~7_combout\;
\ALT_INV_free_space~5_combout\ <= NOT \free_space~5_combout\;
\ALT_INV_always3~1_combout\ <= NOT \always3~1_combout\;
\ALT_INV_free_space~3_combout\ <= NOT \free_space~3_combout\;
\ALT_INV_free_space~1_combout\ <= NOT \free_space~1_combout\;
\ALT_INV_LessThan9~0_combout\ <= NOT \LessThan9~0_combout\;
\ALT_INV_Equal2~5_combout\ <= NOT \Equal2~5_combout\;
\ALT_INV_LessThan7~1_combout\ <= NOT \LessThan7~1_combout\;
\ALT_INV_always3~0_combout\ <= NOT \always3~0_combout\;
\ALT_INV_Equal2~4_combout\ <= NOT \Equal2~4_combout\;
\ALT_INV_Equal2~3_combout\ <= NOT \Equal2~3_combout\;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_LessThan7~0_combout\ <= NOT \LessThan7~0_combout\;
\ALT_INV_free_space~0_combout\ <= NOT \free_space~0_combout\;
\ALT_INV_LessThan3~1_combout\ <= NOT \LessThan3~1_combout\;
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
ALT_INV_free_space(7) <= NOT free_space(7);
ALT_INV_free_space(6) <= NOT free_space(6);
ALT_INV_free_space(5) <= NOT free_space(5);
ALT_INV_free_space(4) <= NOT free_space(4);
ALT_INV_free_space(3) <= NOT free_space(3);
ALT_INV_free_space(8) <= NOT free_space(8);
ALT_INV_free_space(1) <= NOT free_space(1);
ALT_INV_number_of_entered_none_uni_cars(10) <= NOT number_of_entered_none_uni_cars(10);
ALT_INV_number_of_exited_none_uni_cars(10) <= NOT number_of_exited_none_uni_cars(10);
ALT_INV_number_of_entered_none_uni_cars(9) <= NOT number_of_entered_none_uni_cars(9);
ALT_INV_number_of_exited_none_uni_cars(9) <= NOT number_of_exited_none_uni_cars(9);
ALT_INV_number_of_entered_none_uni_cars(8) <= NOT number_of_entered_none_uni_cars(8);
ALT_INV_number_of_exited_none_uni_cars(8) <= NOT number_of_exited_none_uni_cars(8);
ALT_INV_number_of_entered_none_uni_cars(7) <= NOT number_of_entered_none_uni_cars(7);
ALT_INV_number_of_exited_none_uni_cars(7) <= NOT number_of_exited_none_uni_cars(7);
ALT_INV_number_of_entered_none_uni_cars(6) <= NOT number_of_entered_none_uni_cars(6);
ALT_INV_number_of_exited_none_uni_cars(6) <= NOT number_of_exited_none_uni_cars(6);
ALT_INV_number_of_entered_none_uni_cars(5) <= NOT number_of_entered_none_uni_cars(5);
ALT_INV_number_of_exited_none_uni_cars(5) <= NOT number_of_exited_none_uni_cars(5);
ALT_INV_number_of_entered_none_uni_cars(4) <= NOT number_of_entered_none_uni_cars(4);
ALT_INV_number_of_exited_none_uni_cars(4) <= NOT number_of_exited_none_uni_cars(4);
ALT_INV_number_of_entered_none_uni_cars(3) <= NOT number_of_entered_none_uni_cars(3);
ALT_INV_number_of_exited_none_uni_cars(3) <= NOT number_of_exited_none_uni_cars(3);
ALT_INV_number_of_entered_none_uni_cars(2) <= NOT number_of_entered_none_uni_cars(2);
ALT_INV_number_of_exited_none_uni_cars(2) <= NOT number_of_exited_none_uni_cars(2);
ALT_INV_number_of_entered_none_uni_cars(1) <= NOT number_of_entered_none_uni_cars(1);
ALT_INV_number_of_exited_none_uni_cars(1) <= NOT number_of_exited_none_uni_cars(1);
ALT_INV_number_of_exited_none_uni_cars(0) <= NOT number_of_exited_none_uni_cars(0);
ALT_INV_number_of_entered_none_uni_cars(0) <= NOT number_of_entered_none_uni_cars(0);
ALT_INV_number_of_entered_uni_cars(10) <= NOT number_of_entered_uni_cars(10);
ALT_INV_number_of_exited_uni_cars(10) <= NOT number_of_exited_uni_cars(10);
ALT_INV_number_of_entered_uni_cars(9) <= NOT number_of_entered_uni_cars(9);
ALT_INV_number_of_exited_uni_cars(9) <= NOT number_of_exited_uni_cars(9);
ALT_INV_number_of_entered_uni_cars(8) <= NOT number_of_entered_uni_cars(8);
ALT_INV_number_of_exited_uni_cars(8) <= NOT number_of_exited_uni_cars(8);
ALT_INV_number_of_entered_uni_cars(7) <= NOT number_of_entered_uni_cars(7);
ALT_INV_number_of_exited_uni_cars(7) <= NOT number_of_exited_uni_cars(7);
ALT_INV_number_of_entered_uni_cars(6) <= NOT number_of_entered_uni_cars(6);
ALT_INV_number_of_exited_uni_cars(6) <= NOT number_of_exited_uni_cars(6);
ALT_INV_number_of_entered_uni_cars(5) <= NOT number_of_entered_uni_cars(5);
ALT_INV_number_of_exited_uni_cars(5) <= NOT number_of_exited_uni_cars(5);
ALT_INV_number_of_entered_uni_cars(4) <= NOT number_of_entered_uni_cars(4);
ALT_INV_number_of_exited_uni_cars(4) <= NOT number_of_exited_uni_cars(4);
ALT_INV_number_of_entered_uni_cars(3) <= NOT number_of_entered_uni_cars(3);
ALT_INV_number_of_exited_uni_cars(3) <= NOT number_of_exited_uni_cars(3);
ALT_INV_number_of_entered_uni_cars(2) <= NOT number_of_entered_uni_cars(2);
ALT_INV_number_of_exited_uni_cars(2) <= NOT number_of_exited_uni_cars(2);
ALT_INV_number_of_entered_uni_cars(1) <= NOT number_of_entered_uni_cars(1);
ALT_INV_number_of_exited_uni_cars(1) <= NOT number_of_exited_uni_cars(1);
ALT_INV_number_of_entered_uni_cars(0) <= NOT number_of_entered_uni_cars(0);
ALT_INV_number_of_exited_uni_cars(0) <= NOT number_of_exited_uni_cars(0);
\ALT_INV_Add10~1_sumout\ <= NOT \Add10~1_sumout\;
\ALT_INV_Add9~57_sumout\ <= NOT \Add9~57_sumout\;
\ALT_INV_Add9~41_sumout\ <= NOT \Add9~41_sumout\;
\ALT_INV_Add9~37_sumout\ <= NOT \Add9~37_sumout\;
\ALT_INV_Add9~29_sumout\ <= NOT \Add9~29_sumout\;
ALT_INV_minute(6) <= NOT minute(6);
ALT_INV_minute(5) <= NOT minute(5);
ALT_INV_minute(4) <= NOT minute(4);
ALT_INV_minute(3) <= NOT minute(3);
ALT_INV_minute(2) <= NOT minute(2);
ALT_INV_minute(1) <= NOT minute(1);
ALT_INV_minute(0) <= NOT minute(0);
ALT_INV_minute(31) <= NOT minute(31);
ALT_INV_minute(13) <= NOT minute(13);
ALT_INV_minute(30) <= NOT minute(30);
ALT_INV_minute(29) <= NOT minute(29);
ALT_INV_minute(14) <= NOT minute(14);
ALT_INV_minute(12) <= NOT minute(12);
ALT_INV_minute(11) <= NOT minute(11);
ALT_INV_minute(10) <= NOT minute(10);
ALT_INV_minute(9) <= NOT minute(9);
ALT_INV_minute(8) <= NOT minute(8);
ALT_INV_minute(7) <= NOT minute(7);
ALT_INV_minute(20) <= NOT minute(20);
ALT_INV_minute(19) <= NOT minute(19);
ALT_INV_minute(18) <= NOT minute(18);
ALT_INV_minute(17) <= NOT minute(17);
ALT_INV_minute(16) <= NOT minute(16);
ALT_INV_minute(15) <= NOT minute(15);
ALT_INV_minute(26) <= NOT minute(26);
ALT_INV_minute(25) <= NOT minute(25);
ALT_INV_minute(24) <= NOT minute(24);
ALT_INV_minute(23) <= NOT minute(23);
ALT_INV_minute(22) <= NOT minute(22);
ALT_INV_minute(21) <= NOT minute(21);
ALT_INV_minute(28) <= NOT minute(28);
ALT_INV_minute(27) <= NOT minute(27);
ALT_INV_second(6) <= NOT second(6);
ALT_INV_second(5) <= NOT second(5);
ALT_INV_second(4) <= NOT second(4);
ALT_INV_second(3) <= NOT second(3);
ALT_INV_second(2) <= NOT second(2);
ALT_INV_second(1) <= NOT second(1);
ALT_INV_second(0) <= NOT second(0);
ALT_INV_second(31) <= NOT second(31);
ALT_INV_second(30) <= NOT second(30);
ALT_INV_second(29) <= NOT second(29);
ALT_INV_second(28) <= NOT second(28);
ALT_INV_second(27) <= NOT second(27);
ALT_INV_second(12) <= NOT second(12);
ALT_INV_second(11) <= NOT second(11);
ALT_INV_second(10) <= NOT second(10);
ALT_INV_second(9) <= NOT second(9);
ALT_INV_second(8) <= NOT second(8);
ALT_INV_second(7) <= NOT second(7);
ALT_INV_second(18) <= NOT second(18);
ALT_INV_second(17) <= NOT second(17);
ALT_INV_second(16) <= NOT second(16);
ALT_INV_second(15) <= NOT second(15);
ALT_INV_second(14) <= NOT second(14);
ALT_INV_second(13) <= NOT second(13);
ALT_INV_second(24) <= NOT second(24);
ALT_INV_second(23) <= NOT second(23);
ALT_INV_second(22) <= NOT second(22);
ALT_INV_second(21) <= NOT second(21);
ALT_INV_second(20) <= NOT second(20);
ALT_INV_second(19) <= NOT second(19);
ALT_INV_second(26) <= NOT second(26);
ALT_INV_second(25) <= NOT second(25);
ALT_INV_hour(28) <= NOT hour(28);
ALT_INV_hour(24) <= NOT hour(24);
ALT_INV_hour(26) <= NOT hour(26);
ALT_INV_hour(27) <= NOT hour(27);
ALT_INV_hour(25) <= NOT hour(25);
ALT_INV_hour(13) <= NOT hour(13);
ALT_INV_hour(14) <= NOT hour(14);
ALT_INV_hour(15) <= NOT hour(15);
ALT_INV_hour(16) <= NOT hour(16);
ALT_INV_hour(17) <= NOT hour(17);
ALT_INV_hour(18) <= NOT hour(18);
ALT_INV_hour(19) <= NOT hour(19);
ALT_INV_hour(20) <= NOT hour(20);
ALT_INV_hour(21) <= NOT hour(21);
ALT_INV_hour(22) <= NOT hour(22);
ALT_INV_hour(23) <= NOT hour(23);
ALT_INV_hour(12) <= NOT hour(12);
ALT_INV_hour(6) <= NOT hour(6);
ALT_INV_hour(7) <= NOT hour(7);
ALT_INV_hour(8) <= NOT hour(8);
ALT_INV_hour(9) <= NOT hour(9);
ALT_INV_hour(10) <= NOT hour(10);
ALT_INV_hour(11) <= NOT hour(11);
ALT_INV_hour(5) <= NOT hour(5);
ALT_INV_hour(4) <= NOT hour(4);
ALT_INV_hour(0) <= NOT hour(0);
ALT_INV_hour(1) <= NOT hour(1);
ALT_INV_hour(2) <= NOT hour(2);
ALT_INV_hour(3) <= NOT hour(3);
ALT_INV_hour(29) <= NOT hour(29);
ALT_INV_hour(30) <= NOT hour(30);
ALT_INV_hour(31) <= NOT hour(31);
\ALT_INV_Add4~41_sumout\ <= NOT \Add4~41_sumout\;
\ALT_INV_Add4~37_sumout\ <= NOT \Add4~37_sumout\;
\ALT_INV_Add4~33_sumout\ <= NOT \Add4~33_sumout\;
\ALT_INV_Add4~29_sumout\ <= NOT \Add4~29_sumout\;
\ALT_INV_Add4~25_sumout\ <= NOT \Add4~25_sumout\;
\ALT_INV_Add4~21_sumout\ <= NOT \Add4~21_sumout\;
\ALT_INV_Add4~17_sumout\ <= NOT \Add4~17_sumout\;
\ALT_INV_Add4~13_sumout\ <= NOT \Add4~13_sumout\;
\ALT_INV_Add4~9_sumout\ <= NOT \Add4~9_sumout\;
\ALT_INV_Add4~5_sumout\ <= NOT \Add4~5_sumout\;
\ALT_INV_Add4~1_sumout\ <= NOT \Add4~1_sumout\;
\ALT_INV_Add2~41_sumout\ <= NOT \Add2~41_sumout\;
\ALT_INV_Add2~37_sumout\ <= NOT \Add2~37_sumout\;
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_number_of_none_uni_total_cars[10]~1_sumout\ <= NOT \number_of_none_uni_total_cars[10]~1_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;

-- Location: IOOBUF_X30_Y0_N98
\uni_parked_car[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~1_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[0]~output_o\);

-- Location: IOOBUF_X30_Y56_N2
\uni_parked_car[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~5_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N67
\uni_parked_car[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~9_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[2]~output_o\);

-- Location: IOOBUF_X30_Y56_N36
\uni_parked_car[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~13_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[3]~output_o\);

-- Location: IOOBUF_X30_Y56_N67
\uni_parked_car[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~17_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[4]~output_o\);

-- Location: IOOBUF_X31_Y56_N2
\uni_parked_car[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~21_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\uni_parked_car[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~25_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[6]~output_o\);

-- Location: IOOBUF_X31_Y56_N36
\uni_parked_car[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~29_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[7]~output_o\);

-- Location: IOOBUF_X30_Y56_N98
\uni_parked_car[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~33_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[8]~output_o\);

-- Location: IOOBUF_X31_Y56_N67
\uni_parked_car[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~37_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[9]~output_o\);

-- Location: IOOBUF_X31_Y56_N98
\uni_parked_car[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~41_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[10]~output_o\);

-- Location: IOOBUF_X47_Y0_N36
\parked_car[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~1_sumout\,
	devoe => ww_devoe,
	o => \parked_car[0]~output_o\);

-- Location: IOOBUF_X43_Y0_N98
\parked_car[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~5_sumout\,
	devoe => ww_devoe,
	o => \parked_car[1]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\parked_car[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~9_sumout\,
	devoe => ww_devoe,
	o => \parked_car[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N2
\parked_car[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~13_sumout\,
	devoe => ww_devoe,
	o => \parked_car[3]~output_o\);

-- Location: IOOBUF_X45_Y0_N98
\parked_car[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~17_sumout\,
	devoe => ww_devoe,
	o => \parked_car[4]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\parked_car[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~21_sumout\,
	devoe => ww_devoe,
	o => \parked_car[5]~output_o\);

-- Location: IOOBUF_X47_Y0_N98
\parked_car[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~25_sumout\,
	devoe => ww_devoe,
	o => \parked_car[6]~output_o\);

-- Location: IOOBUF_X43_Y0_N36
\parked_car[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~29_sumout\,
	devoe => ww_devoe,
	o => \parked_car[7]~output_o\);

-- Location: IOOBUF_X33_Y0_N98
\parked_car[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~33_sumout\,
	devoe => ww_devoe,
	o => \parked_car[8]~output_o\);

-- Location: IOOBUF_X43_Y0_N67
\parked_car[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~37_sumout\,
	devoe => ww_devoe,
	o => \parked_car[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N5
\parked_car[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_of_none_uni_total_cars[10]~1_sumout\,
	devoe => ww_devoe,
	o => \parked_car[10]~output_o\);

-- Location: IOOBUF_X29_Y0_N36
\uni_vacated_space[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~1_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[0]~output_o\);

-- Location: IOOBUF_X33_Y56_N67
\uni_vacated_space[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~5_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[1]~output_o\);

-- Location: IOOBUF_X28_Y56_N36
\uni_vacated_space[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~9_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[2]~output_o\);

-- Location: IOOBUF_X33_Y56_N5
\uni_vacated_space[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~13_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[3]~output_o\);

-- Location: IOOBUF_X33_Y56_N33
\uni_vacated_space[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~17_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[4]~output_o\);

-- Location: IOOBUF_X28_Y56_N2
\uni_vacated_space[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~21_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N67
\uni_vacated_space[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~25_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[6]~output_o\);

-- Location: IOOBUF_X29_Y0_N98
\uni_vacated_space[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~29_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[7]~output_o\);

-- Location: IOOBUF_X33_Y56_N98
\uni_vacated_space[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~33_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[8]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\uni_vacated_space[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~37_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[9]~output_o\);

-- Location: IOOBUF_X28_Y56_N67
\uni_vacated_space[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~41_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[10]~output_o\);

-- Location: IOOBUF_X45_Y0_N36
\vacated_space[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add4~1_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N67
\vacated_space[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add4~5_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[1]~output_o\);

-- Location: IOOBUF_X42_Y56_N67
\vacated_space[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add4~9_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[2]~output_o\);

-- Location: IOOBUF_X42_Y56_N98
\vacated_space[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add4~13_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[3]~output_o\);

-- Location: IOOBUF_X59_Y6_N36
\vacated_space[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add4~17_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[4]~output_o\);

-- Location: IOOBUF_X45_Y0_N67
\vacated_space[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add4~21_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[5]~output_o\);

-- Location: IOOBUF_X33_Y0_N33
\vacated_space[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add4~25_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\vacated_space[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add4~29_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[7]~output_o\);

-- Location: IOOBUF_X32_Y0_N98
\vacated_space[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add4~33_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[8]~output_o\);

-- Location: IOOBUF_X33_Y0_N67
\vacated_space[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add4~37_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[9]~output_o\);

-- Location: IOOBUF_X33_Y0_N5
\vacated_space[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add4~41_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[10]~output_o\);

-- Location: IOOBUF_X28_Y56_N98
\uni_is_vacated_space~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~1_combout\,
	devoe => ww_devoe,
	o => \uni_is_vacated_space~output_o\);

-- Location: IOOBUF_X32_Y0_N36
\is_vacated_space~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan1~1_combout\,
	devoe => ww_devoe,
	o => \is_vacated_space~output_o\);

-- Location: IOIBUF_X26_Y0_N1
\car_exited~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_car_exited,
	o => \car_exited~input_o\);

-- Location: CLKCTRL_G5
\car_exited~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \car_exited~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \car_exited~inputclkctrl_outclk\);

-- Location: LABCELL_X30_Y32_N22
\number_of_exited_uni_cars[0]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \number_of_exited_uni_cars[0]~1_combout\ = !number_of_exited_uni_cars(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_uni_cars(0),
	combout => \number_of_exited_uni_cars[0]~1_combout\);

-- Location: IOIBUF_X26_Y0_N94
\car_entered~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_car_entered,
	o => \car_entered~input_o\);

-- Location: CLKCTRL_G6
\car_entered~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \car_entered~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \car_entered~inputclkctrl_outclk\);

-- Location: LABCELL_X30_Y32_N30
\number_of_entered_uni_cars[0]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \number_of_entered_uni_cars[0]~1_combout\ = ( !number_of_entered_uni_cars(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_number_of_entered_uni_cars(0),
	combout => \number_of_entered_uni_cars[0]~1_combout\);

-- Location: IOIBUF_X26_Y0_N32
\clk~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G7
\clk~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: MLABCELL_X21_Y21_N0
\Add11~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~1_sumout\ = SUM(( VCC ) + ( hour(0) ) + ( !VCC ))
-- \Add11~2\ = CARRY(( VCC ) + ( hour(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(0),
	cin => GND,
	sumout => \Add11~1_sumout\,
	cout => \Add11~2\);

-- Location: LABCELL_X20_Y21_N28
\Equal2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !hour(6) & ( !hour(11) & ( (!hour(9) & (!hour(10) & (!hour(7) & !hour(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(9),
	datab => ALT_INV_hour(10),
	datac => ALT_INV_hour(7),
	datad => ALT_INV_hour(8),
	datae => ALT_INV_hour(6),
	dataf => ALT_INV_hour(11),
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X20_Y21_N22
\Equal2~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( !hour(15) & ( !hour(16) & ( (!hour(18) & (!hour(14) & (!hour(13) & !hour(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(18),
	datab => ALT_INV_hour(14),
	datac => ALT_INV_hour(13),
	datad => ALT_INV_hour(17),
	datae => ALT_INV_hour(15),
	dataf => ALT_INV_hour(16),
	combout => \Equal2~2_combout\);

-- Location: MLABCELL_X21_Y20_N30
\Equal2~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = ( !hour(24) & ( !hour(25) & ( (!hour(27) & !hour(26)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(27),
	datad => ALT_INV_hour(26),
	datae => ALT_INV_hour(24),
	dataf => ALT_INV_hour(25),
	combout => \Equal2~4_combout\);

-- Location: LABCELL_X22_Y21_N20
\Equal2~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = ( hour(4) & ( !hour(0) & ( (hour(3) & (!hour(1) & (!hour(2) & !hour(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(3),
	datab => ALT_INV_hour(1),
	datac => ALT_INV_hour(2),
	datad => ALT_INV_hour(5),
	datae => ALT_INV_hour(4),
	dataf => ALT_INV_hour(0),
	combout => \Equal2~7_combout\);

-- Location: MLABCELL_X21_Y20_N18
\Add11~117\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~117_sumout\ = SUM(( hour(29) ) + ( GND ) + ( \Add11~114\ ))
-- \Add11~118\ = CARRY(( hour(29) ) + ( GND ) + ( \Add11~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(29),
	cin => \Add11~114\,
	sumout => \Add11~117_sumout\,
	cout => \Add11~118\);

-- Location: MLABCELL_X21_Y20_N20
\Add11~121\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~121_sumout\ = SUM(( hour(30) ) + ( GND ) + ( \Add11~118\ ))
-- \Add11~122\ = CARRY(( hour(30) ) + ( GND ) + ( \Add11~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(30),
	cin => \Add11~118\,
	sumout => \Add11~121_sumout\,
	cout => \Add11~122\);

-- Location: MLABCELL_X23_Y22_N0
\Add10~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~1_sumout\ = SUM(( minute(0) ) + ( VCC ) + ( !VCC ))
-- \Add10~2\ = CARRY(( minute(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(0),
	cin => GND,
	sumout => \Add10~1_sumout\,
	cout => \Add10~2\);

-- Location: LABCELL_X22_Y22_N0
\minute[0]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \minute[0]~feeder_combout\ = ( \Add10~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add10~1_sumout\,
	combout => \minute[0]~feeder_combout\);

-- Location: MLABCELL_X21_Y23_N0
\Add9~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~1_sumout\ = SUM(( second(0) ) + ( VCC ) + ( !VCC ))
-- \Add9~2\ = CARRY(( second(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(0),
	cin => GND,
	sumout => \Add9~1_sumout\,
	cout => \Add9~2\);

-- Location: FF_X21_Y23_N1
\second[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~1_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(0));

-- Location: MLABCELL_X21_Y23_N2
\Add9~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~5_sumout\ = SUM(( second(1) ) + ( GND ) + ( \Add9~2\ ))
-- \Add9~6\ = CARRY(( second(1) ) + ( GND ) + ( \Add9~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(1),
	cin => \Add9~2\,
	sumout => \Add9~5_sumout\,
	cout => \Add9~6\);

-- Location: FF_X21_Y23_N3
\second[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~5_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(1));

-- Location: MLABCELL_X21_Y23_N4
\Add9~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~9_sumout\ = SUM(( GND ) + ( second(2) ) + ( \Add9~6\ ))
-- \Add9~10\ = CARRY(( GND ) + ( second(2) ) + ( \Add9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_second(2),
	cin => \Add9~6\,
	sumout => \Add9~9_sumout\,
	cout => \Add9~10\);

-- Location: MLABCELL_X21_Y22_N12
\Add9~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~105_sumout\ = SUM(( second(26) ) + ( GND ) + ( \Add9~102\ ))
-- \Add9~106\ = CARRY(( second(26) ) + ( GND ) + ( \Add9~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(26),
	cin => \Add9~102\,
	sumout => \Add9~105_sumout\,
	cout => \Add9~106\);

-- Location: MLABCELL_X21_Y22_N14
\Add9~109\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~109_sumout\ = SUM(( second(27) ) + ( GND ) + ( \Add9~106\ ))
-- \Add9~110\ = CARRY(( second(27) ) + ( GND ) + ( \Add9~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(27),
	cin => \Add9~106\,
	sumout => \Add9~109_sumout\,
	cout => \Add9~110\);

-- Location: FF_X21_Y22_N15
\second[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~109_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(27));

-- Location: MLABCELL_X21_Y22_N16
\Add9~113\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~113_sumout\ = SUM(( second(28) ) + ( GND ) + ( \Add9~110\ ))
-- \Add9~114\ = CARRY(( second(28) ) + ( GND ) + ( \Add9~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(28),
	cin => \Add9~110\,
	sumout => \Add9~113_sumout\,
	cout => \Add9~114\);

-- Location: FF_X21_Y22_N17
\second[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~113_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(28));

-- Location: MLABCELL_X21_Y22_N18
\Add9~117\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~117_sumout\ = SUM(( second(29) ) + ( GND ) + ( \Add9~114\ ))
-- \Add9~118\ = CARRY(( second(29) ) + ( GND ) + ( \Add9~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(29),
	cin => \Add9~114\,
	sumout => \Add9~117_sumout\,
	cout => \Add9~118\);

-- Location: FF_X21_Y22_N19
\second[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~117_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(29));

-- Location: MLABCELL_X21_Y22_N20
\Add9~121\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~121_sumout\ = SUM(( second(30) ) + ( GND ) + ( \Add9~118\ ))
-- \Add9~122\ = CARRY(( second(30) ) + ( GND ) + ( \Add9~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(30),
	cin => \Add9~118\,
	sumout => \Add9~121_sumout\,
	cout => \Add9~122\);

-- Location: FF_X21_Y22_N21
\second[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~121_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(30));

-- Location: MLABCELL_X21_Y22_N22
\Add9~125\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~125_sumout\ = SUM(( second(31) ) + ( GND ) + ( \Add9~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(31),
	cin => \Add9~122\,
	sumout => \Add9~125_sumout\);

-- Location: FF_X21_Y22_N23
\second[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~125_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(31));

-- Location: MLABCELL_X21_Y22_N34
\Equal0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !second(31) & ( !second(0) & ( (!second(29) & (!second(28) & (!second(27) & !second(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(29),
	datab => ALT_INV_second(28),
	datac => ALT_INV_second(27),
	datad => ALT_INV_second(30),
	datae => ALT_INV_second(31),
	dataf => ALT_INV_second(0),
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X22_Y23_N30
\second[10]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \second[10]~feeder_combout\ = ( \Add9~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add9~41_sumout\,
	combout => \second[10]~feeder_combout\);

-- Location: FF_X22_Y23_N31
\second[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second[10]~feeder_combout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(10));

-- Location: LABCELL_X22_Y23_N8
\Equal0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !second(10) & ( !second(12) & ( (!second(7) & (!second(9) & (!second(11) & !second(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(7),
	datab => ALT_INV_second(9),
	datac => ALT_INV_second(11),
	datad => ALT_INV_second(8),
	datae => ALT_INV_second(10),
	dataf => ALT_INV_second(12),
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X21_Y22_N38
\Equal0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !second(24) & ( !second(19) & ( (!second(22) & (!second(21) & (!second(23) & !second(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(22),
	datab => ALT_INV_second(21),
	datac => ALT_INV_second(23),
	datad => ALT_INV_second(20),
	datae => ALT_INV_second(24),
	dataf => ALT_INV_second(19),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X22_Y23_N26
\second[14]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \second[14]~feeder_combout\ = ( \Add9~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add9~57_sumout\,
	combout => \second[14]~feeder_combout\);

-- Location: FF_X22_Y23_N27
\second[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second[14]~feeder_combout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(14));

-- Location: LABCELL_X22_Y23_N38
\Equal0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !second(18) & ( !second(16) & ( (!second(13) & (!second(14) & (!second(17) & !second(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(13),
	datab => ALT_INV_second(14),
	datac => ALT_INV_second(17),
	datad => ALT_INV_second(15),
	datae => ALT_INV_second(18),
	dataf => ALT_INV_second(16),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X22_Y23_N12
\Equal0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !second(6) & ( second(3) & ( (second(5) & (second(2) & (second(4) & !second(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_second(5),
	datab => ALT_INV_second(2),
	datac => ALT_INV_second(4),
	datad => ALT_INV_second(1),
	datae => ALT_INV_second(6),
	dataf => ALT_INV_second(3),
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X22_Y22_N20
\Equal0~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~2_combout\ & ( \Equal0~5_combout\ & ( (\Equal0~0_combout\ & (\Equal0~4_combout\ & (\Equal0~3_combout\ & \Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~4_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: FF_X22_Y23_N23
\second[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add9~9_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(2));

-- Location: MLABCELL_X21_Y23_N6
\Add9~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~13_sumout\ = SUM(( second(3) ) + ( GND ) + ( \Add9~10\ ))
-- \Add9~14\ = CARRY(( second(3) ) + ( GND ) + ( \Add9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(3),
	cin => \Add9~10\,
	sumout => \Add9~13_sumout\,
	cout => \Add9~14\);

-- Location: FF_X21_Y23_N7
\second[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~13_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(3));

-- Location: MLABCELL_X21_Y23_N8
\Add9~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~17_sumout\ = SUM(( second(4) ) + ( GND ) + ( \Add9~14\ ))
-- \Add9~18\ = CARRY(( second(4) ) + ( GND ) + ( \Add9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(4),
	cin => \Add9~14\,
	sumout => \Add9~17_sumout\,
	cout => \Add9~18\);

-- Location: FF_X21_Y23_N9
\second[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~17_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(4));

-- Location: MLABCELL_X21_Y23_N10
\Add9~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~21_sumout\ = SUM(( second(5) ) + ( GND ) + ( \Add9~18\ ))
-- \Add9~22\ = CARRY(( second(5) ) + ( GND ) + ( \Add9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(5),
	cin => \Add9~18\,
	sumout => \Add9~21_sumout\,
	cout => \Add9~22\);

-- Location: FF_X22_Y23_N19
\second[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add9~21_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(5));

-- Location: MLABCELL_X21_Y23_N12
\Add9~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~25_sumout\ = SUM(( second(6) ) + ( GND ) + ( \Add9~22\ ))
-- \Add9~26\ = CARRY(( second(6) ) + ( GND ) + ( \Add9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(6),
	cin => \Add9~22\,
	sumout => \Add9~25_sumout\,
	cout => \Add9~26\);

-- Location: FF_X21_Y23_N13
\second[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~25_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(6));

-- Location: MLABCELL_X21_Y23_N14
\Add9~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~29_sumout\ = SUM(( GND ) + ( second(7) ) + ( \Add9~26\ ))
-- \Add9~30\ = CARRY(( GND ) + ( second(7) ) + ( \Add9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_second(7),
	cin => \Add9~26\,
	sumout => \Add9~29_sumout\,
	cout => \Add9~30\);

-- Location: LABCELL_X22_Y23_N4
\second[7]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \second[7]~feeder_combout\ = ( \Add9~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add9~29_sumout\,
	combout => \second[7]~feeder_combout\);

-- Location: FF_X22_Y23_N5
\second[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second[7]~feeder_combout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(7));

-- Location: MLABCELL_X21_Y23_N16
\Add9~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~33_sumout\ = SUM(( second(8) ) + ( GND ) + ( \Add9~30\ ))
-- \Add9~34\ = CARRY(( second(8) ) + ( GND ) + ( \Add9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(8),
	cin => \Add9~30\,
	sumout => \Add9~33_sumout\,
	cout => \Add9~34\);

-- Location: FF_X21_Y23_N17
\second[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~33_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(8));

-- Location: MLABCELL_X21_Y23_N18
\Add9~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~37_sumout\ = SUM(( second(9) ) + ( GND ) + ( \Add9~34\ ))
-- \Add9~38\ = CARRY(( second(9) ) + ( GND ) + ( \Add9~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(9),
	cin => \Add9~34\,
	sumout => \Add9~37_sumout\,
	cout => \Add9~38\);

-- Location: LABCELL_X22_Y23_N2
\second[9]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \second[9]~feeder_combout\ = ( \Add9~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add9~37_sumout\,
	combout => \second[9]~feeder_combout\);

-- Location: FF_X22_Y23_N3
\second[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second[9]~feeder_combout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(9));

-- Location: MLABCELL_X21_Y23_N20
\Add9~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~41_sumout\ = SUM(( \second[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add9~38\ ))
-- \Add9~42\ = CARRY(( \second[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add9~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_second[10]~DUPLICATE_q\,
	cin => \Add9~38\,
	sumout => \Add9~41_sumout\,
	cout => \Add9~42\);

-- Location: LABCELL_X22_Y23_N28
\second[10]~DUPLICATEfeeder\ : arriaii_lcell_comb
-- Equation(s):
-- \second[10]~DUPLICATEfeeder_combout\ = ( \Add9~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add9~41_sumout\,
	combout => \second[10]~DUPLICATEfeeder_combout\);

-- Location: FF_X22_Y23_N29
\second[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second[10]~DUPLICATEfeeder_combout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \second[10]~DUPLICATE_q\);

-- Location: MLABCELL_X21_Y23_N22
\Add9~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~45_sumout\ = SUM(( GND ) + ( second(11) ) + ( \Add9~42\ ))
-- \Add9~46\ = CARRY(( GND ) + ( second(11) ) + ( \Add9~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_second(11),
	cin => \Add9~42\,
	sumout => \Add9~45_sumout\,
	cout => \Add9~46\);

-- Location: FF_X22_Y23_N33
\second[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add9~45_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(11));

-- Location: MLABCELL_X21_Y23_N24
\Add9~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~49_sumout\ = SUM(( second(12) ) + ( GND ) + ( \Add9~46\ ))
-- \Add9~50\ = CARRY(( second(12) ) + ( GND ) + ( \Add9~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(12),
	cin => \Add9~46\,
	sumout => \Add9~49_sumout\,
	cout => \Add9~50\);

-- Location: FF_X21_Y23_N25
\second[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~49_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(12));

-- Location: MLABCELL_X21_Y23_N26
\Add9~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~53_sumout\ = SUM(( second(13) ) + ( GND ) + ( \Add9~50\ ))
-- \Add9~54\ = CARRY(( second(13) ) + ( GND ) + ( \Add9~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(13),
	cin => \Add9~50\,
	sumout => \Add9~53_sumout\,
	cout => \Add9~54\);

-- Location: FF_X21_Y23_N27
\second[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~53_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(13));

-- Location: MLABCELL_X21_Y23_N28
\Add9~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~57_sumout\ = SUM(( \second[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add9~54\ ))
-- \Add9~58\ = CARRY(( \second[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add9~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_second[14]~DUPLICATE_q\,
	cin => \Add9~54\,
	sumout => \Add9~57_sumout\,
	cout => \Add9~58\);

-- Location: LABCELL_X22_Y23_N24
\second[14]~DUPLICATEfeeder\ : arriaii_lcell_comb
-- Equation(s):
-- \second[14]~DUPLICATEfeeder_combout\ = ( \Add9~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add9~57_sumout\,
	combout => \second[14]~DUPLICATEfeeder_combout\);

-- Location: FF_X22_Y23_N25
\second[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \second[14]~DUPLICATEfeeder_combout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \second[14]~DUPLICATE_q\);

-- Location: MLABCELL_X21_Y23_N30
\Add9~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~61_sumout\ = SUM(( second(15) ) + ( GND ) + ( \Add9~58\ ))
-- \Add9~62\ = CARRY(( second(15) ) + ( GND ) + ( \Add9~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(15),
	cin => \Add9~58\,
	sumout => \Add9~61_sumout\,
	cout => \Add9~62\);

-- Location: FF_X21_Y23_N31
\second[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~61_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(15));

-- Location: MLABCELL_X21_Y23_N32
\Add9~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~65_sumout\ = SUM(( second(16) ) + ( GND ) + ( \Add9~62\ ))
-- \Add9~66\ = CARRY(( second(16) ) + ( GND ) + ( \Add9~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(16),
	cin => \Add9~62\,
	sumout => \Add9~65_sumout\,
	cout => \Add9~66\);

-- Location: FF_X21_Y23_N33
\second[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~65_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(16));

-- Location: MLABCELL_X21_Y23_N34
\Add9~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~69_sumout\ = SUM(( second(17) ) + ( GND ) + ( \Add9~66\ ))
-- \Add9~70\ = CARRY(( second(17) ) + ( GND ) + ( \Add9~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(17),
	cin => \Add9~66\,
	sumout => \Add9~69_sumout\,
	cout => \Add9~70\);

-- Location: FF_X21_Y23_N35
\second[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~69_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(17));

-- Location: MLABCELL_X21_Y23_N36
\Add9~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~73_sumout\ = SUM(( second(18) ) + ( GND ) + ( \Add9~70\ ))
-- \Add9~74\ = CARRY(( second(18) ) + ( GND ) + ( \Add9~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(18),
	cin => \Add9~70\,
	sumout => \Add9~73_sumout\,
	cout => \Add9~74\);

-- Location: FF_X21_Y23_N37
\second[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~73_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(18));

-- Location: MLABCELL_X21_Y23_N38
\Add9~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~77_sumout\ = SUM(( second(19) ) + ( GND ) + ( \Add9~74\ ))
-- \Add9~78\ = CARRY(( second(19) ) + ( GND ) + ( \Add9~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(19),
	cin => \Add9~74\,
	sumout => \Add9~77_sumout\,
	cout => \Add9~78\);

-- Location: FF_X21_Y23_N39
\second[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~77_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(19));

-- Location: MLABCELL_X21_Y22_N0
\Add9~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~81_sumout\ = SUM(( second(20) ) + ( GND ) + ( \Add9~78\ ))
-- \Add9~82\ = CARRY(( second(20) ) + ( GND ) + ( \Add9~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(20),
	cin => \Add9~78\,
	sumout => \Add9~81_sumout\,
	cout => \Add9~82\);

-- Location: FF_X21_Y22_N1
\second[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~81_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(20));

-- Location: MLABCELL_X21_Y22_N2
\Add9~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~85_sumout\ = SUM(( second(21) ) + ( GND ) + ( \Add9~82\ ))
-- \Add9~86\ = CARRY(( second(21) ) + ( GND ) + ( \Add9~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(21),
	cin => \Add9~82\,
	sumout => \Add9~85_sumout\,
	cout => \Add9~86\);

-- Location: FF_X21_Y22_N3
\second[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~85_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(21));

-- Location: MLABCELL_X21_Y22_N4
\Add9~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~89_sumout\ = SUM(( second(22) ) + ( GND ) + ( \Add9~86\ ))
-- \Add9~90\ = CARRY(( second(22) ) + ( GND ) + ( \Add9~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(22),
	cin => \Add9~86\,
	sumout => \Add9~89_sumout\,
	cout => \Add9~90\);

-- Location: FF_X21_Y22_N5
\second[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~89_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(22));

-- Location: MLABCELL_X21_Y22_N6
\Add9~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~93_sumout\ = SUM(( second(23) ) + ( GND ) + ( \Add9~90\ ))
-- \Add9~94\ = CARRY(( second(23) ) + ( GND ) + ( \Add9~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(23),
	cin => \Add9~90\,
	sumout => \Add9~93_sumout\,
	cout => \Add9~94\);

-- Location: FF_X21_Y22_N7
\second[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~93_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(23));

-- Location: MLABCELL_X21_Y22_N8
\Add9~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~97_sumout\ = SUM(( second(24) ) + ( GND ) + ( \Add9~94\ ))
-- \Add9~98\ = CARRY(( second(24) ) + ( GND ) + ( \Add9~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(24),
	cin => \Add9~94\,
	sumout => \Add9~97_sumout\,
	cout => \Add9~98\);

-- Location: FF_X21_Y22_N9
\second[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~97_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(24));

-- Location: MLABCELL_X21_Y22_N10
\Add9~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~101_sumout\ = SUM(( second(25) ) + ( GND ) + ( \Add9~98\ ))
-- \Add9~102\ = CARRY(( second(25) ) + ( GND ) + ( \Add9~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_second(25),
	cin => \Add9~98\,
	sumout => \Add9~101_sumout\,
	cout => \Add9~102\);

-- Location: FF_X21_Y22_N11
\second[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~101_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(25));

-- Location: FF_X21_Y22_N13
\second[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~105_sumout\,
	sclr => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(26));

-- Location: MLABCELL_X21_Y22_N24
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !second(26) & ( !second(25) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_second(26),
	dataf => ALT_INV_second(25),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X22_Y22_N22
\Equal0~6DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~6DUPLICATE_combout\ = ( \Equal0~2_combout\ & ( \Equal0~5_combout\ & ( (\Equal0~0_combout\ & (\Equal0~4_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~4_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~6DUPLICATE_combout\);

-- Location: FF_X22_Y22_N1
\minute[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \minute[0]~feeder_combout\,
	sclr => \Equal1~6_combout\,
	ena => \Equal0~6DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(0));

-- Location: MLABCELL_X23_Y22_N2
\Add10~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~5_sumout\ = SUM(( minute(1) ) + ( GND ) + ( \Add10~2\ ))
-- \Add10~6\ = CARRY(( minute(1) ) + ( GND ) + ( \Add10~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(1),
	cin => \Add10~2\,
	sumout => \Add10~5_sumout\,
	cout => \Add10~6\);

-- Location: MLABCELL_X23_Y22_N12
\Add10~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~25_sumout\ = SUM(( minute(6) ) + ( GND ) + ( \Add10~22\ ))
-- \Add10~26\ = CARRY(( minute(6) ) + ( GND ) + ( \Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(6),
	cin => \Add10~22\,
	sumout => \Add10~25_sumout\,
	cout => \Add10~26\);

-- Location: MLABCELL_X23_Y22_N14
\Add10~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~29_sumout\ = SUM(( minute(7) ) + ( GND ) + ( \Add10~26\ ))
-- \Add10~30\ = CARRY(( minute(7) ) + ( GND ) + ( \Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(7),
	cin => \Add10~26\,
	sumout => \Add10~29_sumout\,
	cout => \Add10~30\);

-- Location: FF_X23_Y22_N15
\minute[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~29_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(7));

-- Location: MLABCELL_X23_Y22_N16
\Add10~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~33_sumout\ = SUM(( minute(8) ) + ( GND ) + ( \Add10~30\ ))
-- \Add10~34\ = CARRY(( minute(8) ) + ( GND ) + ( \Add10~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(8),
	cin => \Add10~30\,
	sumout => \Add10~33_sumout\,
	cout => \Add10~34\);

-- Location: FF_X23_Y22_N17
\minute[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~33_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(8));

-- Location: MLABCELL_X23_Y22_N18
\Add10~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~37_sumout\ = SUM(( minute(9) ) + ( GND ) + ( \Add10~34\ ))
-- \Add10~38\ = CARRY(( minute(9) ) + ( GND ) + ( \Add10~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(9),
	cin => \Add10~34\,
	sumout => \Add10~37_sumout\,
	cout => \Add10~38\);

-- Location: FF_X23_Y22_N19
\minute[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~37_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(9));

-- Location: MLABCELL_X23_Y22_N20
\Add10~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~41_sumout\ = SUM(( minute(10) ) + ( GND ) + ( \Add10~38\ ))
-- \Add10~42\ = CARRY(( minute(10) ) + ( GND ) + ( \Add10~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(10),
	cin => \Add10~38\,
	sumout => \Add10~41_sumout\,
	cout => \Add10~42\);

-- Location: FF_X23_Y22_N21
\minute[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~41_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(10));

-- Location: MLABCELL_X23_Y22_N22
\Add10~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~45_sumout\ = SUM(( minute(11) ) + ( GND ) + ( \Add10~42\ ))
-- \Add10~46\ = CARRY(( minute(11) ) + ( GND ) + ( \Add10~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(11),
	cin => \Add10~42\,
	sumout => \Add10~45_sumout\,
	cout => \Add10~46\);

-- Location: FF_X23_Y22_N23
\minute[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~45_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(11));

-- Location: MLABCELL_X23_Y22_N24
\Add10~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~49_sumout\ = SUM(( minute(12) ) + ( GND ) + ( \Add10~46\ ))
-- \Add10~50\ = CARRY(( minute(12) ) + ( GND ) + ( \Add10~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(12),
	cin => \Add10~46\,
	sumout => \Add10~49_sumout\,
	cout => \Add10~50\);

-- Location: FF_X23_Y22_N25
\minute[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~49_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(12));

-- Location: LABCELL_X22_Y22_N30
\Equal1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !minute(8) & ( !minute(12) & ( (!minute(9) & (!minute(10) & (!minute(7) & !minute(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(9),
	datab => ALT_INV_minute(10),
	datac => ALT_INV_minute(7),
	datad => ALT_INV_minute(11),
	datae => ALT_INV_minute(8),
	dataf => ALT_INV_minute(12),
	combout => \Equal1~3_combout\);

-- Location: MLABCELL_X23_Y22_N26
\Add10~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~53_sumout\ = SUM(( minute(13) ) + ( GND ) + ( \Add10~50\ ))
-- \Add10~54\ = CARRY(( minute(13) ) + ( GND ) + ( \Add10~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(13),
	cin => \Add10~50\,
	sumout => \Add10~53_sumout\,
	cout => \Add10~54\);

-- Location: FF_X23_Y22_N27
\minute[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~53_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(13));

-- Location: MLABCELL_X23_Y22_N28
\Add10~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~57_sumout\ = SUM(( minute(14) ) + ( GND ) + ( \Add10~54\ ))
-- \Add10~58\ = CARRY(( minute(14) ) + ( GND ) + ( \Add10~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(14),
	cin => \Add10~54\,
	sumout => \Add10~57_sumout\,
	cout => \Add10~58\);

-- Location: FF_X23_Y22_N29
\minute[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~57_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(14));

-- Location: MLABCELL_X23_Y22_N30
\Add10~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~61_sumout\ = SUM(( minute(15) ) + ( GND ) + ( \Add10~58\ ))
-- \Add10~62\ = CARRY(( minute(15) ) + ( GND ) + ( \Add10~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(15),
	cin => \Add10~58\,
	sumout => \Add10~61_sumout\,
	cout => \Add10~62\);

-- Location: FF_X23_Y22_N31
\minute[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~61_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(15));

-- Location: MLABCELL_X23_Y22_N32
\Add10~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~65_sumout\ = SUM(( minute(16) ) + ( GND ) + ( \Add10~62\ ))
-- \Add10~66\ = CARRY(( minute(16) ) + ( GND ) + ( \Add10~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(16),
	cin => \Add10~62\,
	sumout => \Add10~65_sumout\,
	cout => \Add10~66\);

-- Location: FF_X23_Y22_N33
\minute[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~65_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(16));

-- Location: MLABCELL_X23_Y22_N34
\Add10~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~69_sumout\ = SUM(( minute(17) ) + ( GND ) + ( \Add10~66\ ))
-- \Add10~70\ = CARRY(( minute(17) ) + ( GND ) + ( \Add10~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(17),
	cin => \Add10~66\,
	sumout => \Add10~69_sumout\,
	cout => \Add10~70\);

-- Location: FF_X23_Y22_N35
\minute[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~69_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(17));

-- Location: MLABCELL_X23_Y22_N36
\Add10~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~73_sumout\ = SUM(( minute(18) ) + ( GND ) + ( \Add10~70\ ))
-- \Add10~74\ = CARRY(( minute(18) ) + ( GND ) + ( \Add10~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(18),
	cin => \Add10~70\,
	sumout => \Add10~73_sumout\,
	cout => \Add10~74\);

-- Location: FF_X23_Y22_N37
\minute[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~73_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(18));

-- Location: MLABCELL_X23_Y22_N38
\Add10~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~77_sumout\ = SUM(( minute(19) ) + ( GND ) + ( \Add10~74\ ))
-- \Add10~78\ = CARRY(( minute(19) ) + ( GND ) + ( \Add10~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(19),
	cin => \Add10~74\,
	sumout => \Add10~77_sumout\,
	cout => \Add10~78\);

-- Location: FF_X23_Y22_N39
\minute[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~77_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(19));

-- Location: MLABCELL_X23_Y21_N0
\Add10~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~81_sumout\ = SUM(( minute(20) ) + ( GND ) + ( \Add10~78\ ))
-- \Add10~82\ = CARRY(( minute(20) ) + ( GND ) + ( \Add10~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(20),
	cin => \Add10~78\,
	sumout => \Add10~81_sumout\,
	cout => \Add10~82\);

-- Location: FF_X23_Y21_N1
\minute[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~81_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(20));

-- Location: LABCELL_X22_Y22_N26
\Equal1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !minute(19) & ( !minute(20) & ( (!minute(17) & (!minute(15) & (!minute(18) & !minute(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(17),
	datab => ALT_INV_minute(15),
	datac => ALT_INV_minute(18),
	datad => ALT_INV_minute(16),
	datae => ALT_INV_minute(19),
	dataf => ALT_INV_minute(20),
	combout => \Equal1~2_combout\);

-- Location: MLABCELL_X23_Y21_N2
\Add10~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~85_sumout\ = SUM(( minute(21) ) + ( GND ) + ( \Add10~82\ ))
-- \Add10~86\ = CARRY(( minute(21) ) + ( GND ) + ( \Add10~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(21),
	cin => \Add10~82\,
	sumout => \Add10~85_sumout\,
	cout => \Add10~86\);

-- Location: FF_X23_Y21_N3
\minute[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~85_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(21));

-- Location: MLABCELL_X23_Y21_N4
\Add10~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~89_sumout\ = SUM(( minute(22) ) + ( GND ) + ( \Add10~86\ ))
-- \Add10~90\ = CARRY(( minute(22) ) + ( GND ) + ( \Add10~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(22),
	cin => \Add10~86\,
	sumout => \Add10~89_sumout\,
	cout => \Add10~90\);

-- Location: FF_X23_Y21_N5
\minute[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~89_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(22));

-- Location: MLABCELL_X23_Y21_N6
\Add10~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~93_sumout\ = SUM(( minute(23) ) + ( GND ) + ( \Add10~90\ ))
-- \Add10~94\ = CARRY(( minute(23) ) + ( GND ) + ( \Add10~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(23),
	cin => \Add10~90\,
	sumout => \Add10~93_sumout\,
	cout => \Add10~94\);

-- Location: FF_X23_Y21_N7
\minute[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~93_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(23));

-- Location: MLABCELL_X23_Y21_N8
\Add10~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~97_sumout\ = SUM(( minute(24) ) + ( GND ) + ( \Add10~94\ ))
-- \Add10~98\ = CARRY(( minute(24) ) + ( GND ) + ( \Add10~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(24),
	cin => \Add10~94\,
	sumout => \Add10~97_sumout\,
	cout => \Add10~98\);

-- Location: FF_X23_Y21_N9
\minute[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~97_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(24));

-- Location: MLABCELL_X23_Y21_N10
\Add10~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~101_sumout\ = SUM(( minute(25) ) + ( GND ) + ( \Add10~98\ ))
-- \Add10~102\ = CARRY(( minute(25) ) + ( GND ) + ( \Add10~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(25),
	cin => \Add10~98\,
	sumout => \Add10~101_sumout\,
	cout => \Add10~102\);

-- Location: FF_X23_Y21_N11
\minute[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~101_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(25));

-- Location: MLABCELL_X23_Y21_N12
\Add10~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~105_sumout\ = SUM(( minute(26) ) + ( GND ) + ( \Add10~102\ ))
-- \Add10~106\ = CARRY(( minute(26) ) + ( GND ) + ( \Add10~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(26),
	cin => \Add10~102\,
	sumout => \Add10~105_sumout\,
	cout => \Add10~106\);

-- Location: FF_X23_Y21_N13
\minute[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~105_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(26));

-- Location: MLABCELL_X23_Y21_N14
\Add10~109\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~109_sumout\ = SUM(( minute(27) ) + ( GND ) + ( \Add10~106\ ))
-- \Add10~110\ = CARRY(( minute(27) ) + ( GND ) + ( \Add10~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(27),
	cin => \Add10~106\,
	sumout => \Add10~109_sumout\,
	cout => \Add10~110\);

-- Location: FF_X23_Y21_N15
\minute[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~109_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(27));

-- Location: MLABCELL_X23_Y21_N16
\Add10~113\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~113_sumout\ = SUM(( minute(28) ) + ( GND ) + ( \Add10~110\ ))
-- \Add10~114\ = CARRY(( minute(28) ) + ( GND ) + ( \Add10~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(28),
	cin => \Add10~110\,
	sumout => \Add10~113_sumout\,
	cout => \Add10~114\);

-- Location: FF_X23_Y21_N17
\minute[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~113_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(28));

-- Location: MLABCELL_X23_Y21_N26
\Equal1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !minute(28) & ( !minute(27) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_minute(28),
	dataf => ALT_INV_minute(27),
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X23_Y21_N30
\Equal1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !minute(26) & ( !minute(21) & ( (!minute(24) & (!minute(23) & (!minute(25) & !minute(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(24),
	datab => ALT_INV_minute(23),
	datac => ALT_INV_minute(25),
	datad => ALT_INV_minute(22),
	datae => ALT_INV_minute(26),
	dataf => ALT_INV_minute(21),
	combout => \Equal1~1_combout\);

-- Location: MLABCELL_X23_Y21_N18
\Add10~117\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~117_sumout\ = SUM(( minute(29) ) + ( GND ) + ( \Add10~114\ ))
-- \Add10~118\ = CARRY(( minute(29) ) + ( GND ) + ( \Add10~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(29),
	cin => \Add10~114\,
	sumout => \Add10~117_sumout\,
	cout => \Add10~118\);

-- Location: FF_X23_Y21_N19
\minute[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~117_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(29));

-- Location: MLABCELL_X23_Y21_N20
\Add10~121\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~121_sumout\ = SUM(( minute(30) ) + ( GND ) + ( \Add10~118\ ))
-- \Add10~122\ = CARRY(( minute(30) ) + ( GND ) + ( \Add10~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(30),
	cin => \Add10~118\,
	sumout => \Add10~121_sumout\,
	cout => \Add10~122\);

-- Location: FF_X23_Y21_N21
\minute[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~121_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(30));

-- Location: MLABCELL_X23_Y21_N22
\Add10~125\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~125_sumout\ = SUM(( minute(31) ) + ( GND ) + ( \Add10~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(31),
	cin => \Add10~122\,
	sumout => \Add10~125_sumout\);

-- Location: FF_X23_Y21_N23
\minute[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~125_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(31));

-- Location: LABCELL_X22_Y22_N16
\Equal1~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( !minute(31) & ( !minute(29) & ( (!minute(0) & (!minute(13) & (!minute(30) & !minute(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(0),
	datab => ALT_INV_minute(13),
	datac => ALT_INV_minute(30),
	datad => ALT_INV_minute(14),
	datae => ALT_INV_minute(31),
	dataf => ALT_INV_minute(29),
	combout => \Equal1~4_combout\);

-- Location: LABCELL_X22_Y22_N10
\Equal1~6DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~6DUPLICATE_combout\ = ( \Equal1~1_combout\ & ( \Equal1~4_combout\ & ( (\Equal1~5_combout\ & (\Equal1~3_combout\ & (\Equal1~2_combout\ & \Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~5_combout\,
	datab => \ALT_INV_Equal1~3_combout\,
	datac => \ALT_INV_Equal1~2_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal1~4_combout\,
	combout => \Equal1~6DUPLICATE_combout\);

-- Location: FF_X23_Y22_N3
\minute[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~5_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(1));

-- Location: MLABCELL_X23_Y22_N4
\Add10~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~9_sumout\ = SUM(( minute(2) ) + ( GND ) + ( \Add10~6\ ))
-- \Add10~10\ = CARRY(( minute(2) ) + ( GND ) + ( \Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(2),
	cin => \Add10~6\,
	sumout => \Add10~9_sumout\,
	cout => \Add10~10\);

-- Location: FF_X23_Y22_N5
\minute[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~9_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(2));

-- Location: MLABCELL_X23_Y22_N6
\Add10~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~13_sumout\ = SUM(( minute(3) ) + ( GND ) + ( \Add10~10\ ))
-- \Add10~14\ = CARRY(( minute(3) ) + ( GND ) + ( \Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(3),
	cin => \Add10~10\,
	sumout => \Add10~13_sumout\,
	cout => \Add10~14\);

-- Location: FF_X23_Y22_N7
\minute[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~13_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(3));

-- Location: MLABCELL_X23_Y22_N8
\Add10~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~17_sumout\ = SUM(( minute(4) ) + ( GND ) + ( \Add10~14\ ))
-- \Add10~18\ = CARRY(( minute(4) ) + ( GND ) + ( \Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(4),
	cin => \Add10~14\,
	sumout => \Add10~17_sumout\,
	cout => \Add10~18\);

-- Location: FF_X23_Y22_N9
\minute[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~17_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(4));

-- Location: MLABCELL_X23_Y22_N10
\Add10~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~21_sumout\ = SUM(( minute(5) ) + ( GND ) + ( \Add10~18\ ))
-- \Add10~22\ = CARRY(( minute(5) ) + ( GND ) + ( \Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(5),
	cin => \Add10~18\,
	sumout => \Add10~21_sumout\,
	cout => \Add10~22\);

-- Location: FF_X23_Y22_N11
\minute[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~21_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(5));

-- Location: FF_X23_Y22_N13
\minute[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add10~25_sumout\,
	sclr => \Equal1~6DUPLICATE_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(6));

-- Location: LABCELL_X22_Y22_N38
\Equal1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( minute(4) & ( minute(2) & ( (!minute(6) & (minute(5) & (minute(3) & !minute(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(6),
	datab => ALT_INV_minute(5),
	datac => ALT_INV_minute(3),
	datad => ALT_INV_minute(1),
	datae => ALT_INV_minute(4),
	dataf => ALT_INV_minute(2),
	combout => \Equal1~5_combout\);

-- Location: LABCELL_X22_Y22_N8
\Equal1~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( \Equal1~1_combout\ & ( \Equal1~4_combout\ & ( (\Equal1~5_combout\ & (\Equal1~3_combout\ & (\Equal1~0_combout\ & \Equal1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~5_combout\,
	datab => \ALT_INV_Equal1~3_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Equal1~2_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal1~4_combout\,
	combout => \Equal1~6_combout\);

-- Location: LABCELL_X22_Y22_N12
\hour[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \hour[0]~0_combout\ = ( \Equal1~6_combout\ & ( \Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \hour[0]~0_combout\);

-- Location: FF_X21_Y20_N21
\hour[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~121_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(30));

-- Location: MLABCELL_X21_Y20_N22
\Add11~125\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~125_sumout\ = SUM(( hour(31) ) + ( GND ) + ( \Add11~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(31),
	cin => \Add11~122\,
	sumout => \Add11~125_sumout\);

-- Location: FF_X21_Y20_N23
\hour[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~125_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(31));

-- Location: MLABCELL_X21_Y20_N26
\Equal2~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = ( !hour(31) & ( !hour(30) & ( (!hour(28) & !hour(29)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(28),
	datad => ALT_INV_hour(29),
	datae => ALT_INV_hour(31),
	dataf => ALT_INV_hour(30),
	combout => \Equal2~5_combout\);

-- Location: LABCELL_X20_Y21_N16
\Equal2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( !hour(23) & ( !hour(21) & ( (!hour(19) & (!hour(12) & (!hour(22) & !hour(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(19),
	datab => ALT_INV_hour(12),
	datac => ALT_INV_hour(22),
	datad => ALT_INV_hour(20),
	datae => ALT_INV_hour(23),
	dataf => ALT_INV_hour(21),
	combout => \Equal2~1_combout\);

-- Location: LABCELL_X20_Y21_N38
\Equal2~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = ( \Equal2~5_combout\ & ( \Equal2~1_combout\ & ( (\Equal2~0_combout\ & (\Equal2~2_combout\ & (\Equal2~4_combout\ & \Equal2~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_Equal2~2_combout\,
	datac => \ALT_INV_Equal2~4_combout\,
	datad => \ALT_INV_Equal2~7_combout\,
	datae => \ALT_INV_Equal2~5_combout\,
	dataf => \ALT_INV_Equal2~1_combout\,
	combout => \Equal2~6_combout\);

-- Location: LABCELL_X22_Y22_N14
\hour[0]~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \hour[0]~0DUPLICATE_combout\ = ( \Equal1~6_combout\ & ( \Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \hour[0]~0DUPLICATE_combout\);

-- Location: FF_X22_Y21_N33
\hour[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add11~1_sumout\,
	sclr => \Equal2~6_combout\,
	sload => VCC,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(0));

-- Location: MLABCELL_X21_Y21_N2
\Add11~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~5_sumout\ = SUM(( hour(1) ) + ( GND ) + ( \Add11~2\ ))
-- \Add11~6\ = CARRY(( hour(1) ) + ( GND ) + ( \Add11~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(1),
	cin => \Add11~2\,
	sumout => \Add11~5_sumout\,
	cout => \Add11~6\);

-- Location: FF_X21_Y21_N3
\hour[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~5_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(1));

-- Location: MLABCELL_X21_Y21_N4
\Add11~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~9_sumout\ = SUM(( hour(2) ) + ( GND ) + ( \Add11~6\ ))
-- \Add11~10\ = CARRY(( hour(2) ) + ( GND ) + ( \Add11~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(2),
	cin => \Add11~6\,
	sumout => \Add11~9_sumout\,
	cout => \Add11~10\);

-- Location: FF_X21_Y21_N5
\hour[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~9_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(2));

-- Location: MLABCELL_X21_Y21_N6
\Add11~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~13_sumout\ = SUM(( hour(3) ) + ( GND ) + ( \Add11~10\ ))
-- \Add11~14\ = CARRY(( hour(3) ) + ( GND ) + ( \Add11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(3),
	cin => \Add11~10\,
	sumout => \Add11~13_sumout\,
	cout => \Add11~14\);

-- Location: FF_X21_Y21_N7
\hour[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~13_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(3));

-- Location: MLABCELL_X21_Y21_N8
\Add11~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~17_sumout\ = SUM(( hour(4) ) + ( GND ) + ( \Add11~14\ ))
-- \Add11~18\ = CARRY(( hour(4) ) + ( GND ) + ( \Add11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(4),
	cin => \Add11~14\,
	sumout => \Add11~17_sumout\,
	cout => \Add11~18\);

-- Location: FF_X21_Y21_N9
\hour[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~17_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(4));

-- Location: MLABCELL_X21_Y21_N10
\Add11~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~21_sumout\ = SUM(( hour(5) ) + ( GND ) + ( \Add11~18\ ))
-- \Add11~22\ = CARRY(( hour(5) ) + ( GND ) + ( \Add11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(5),
	cin => \Add11~18\,
	sumout => \Add11~21_sumout\,
	cout => \Add11~22\);

-- Location: FF_X21_Y21_N11
\hour[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~21_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(5));

-- Location: MLABCELL_X21_Y21_N12
\Add11~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~25_sumout\ = SUM(( hour(6) ) + ( GND ) + ( \Add11~22\ ))
-- \Add11~26\ = CARRY(( hour(6) ) + ( GND ) + ( \Add11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(6),
	cin => \Add11~22\,
	sumout => \Add11~25_sumout\,
	cout => \Add11~26\);

-- Location: FF_X21_Y21_N13
\hour[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~25_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(6));

-- Location: MLABCELL_X21_Y21_N14
\Add11~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~29_sumout\ = SUM(( hour(7) ) + ( GND ) + ( \Add11~26\ ))
-- \Add11~30\ = CARRY(( hour(7) ) + ( GND ) + ( \Add11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(7),
	cin => \Add11~26\,
	sumout => \Add11~29_sumout\,
	cout => \Add11~30\);

-- Location: FF_X21_Y21_N15
\hour[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~29_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(7));

-- Location: MLABCELL_X21_Y21_N16
\Add11~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~33_sumout\ = SUM(( hour(8) ) + ( GND ) + ( \Add11~30\ ))
-- \Add11~34\ = CARRY(( hour(8) ) + ( GND ) + ( \Add11~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(8),
	cin => \Add11~30\,
	sumout => \Add11~33_sumout\,
	cout => \Add11~34\);

-- Location: FF_X21_Y21_N17
\hour[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~33_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(8));

-- Location: MLABCELL_X21_Y21_N18
\Add11~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~37_sumout\ = SUM(( hour(9) ) + ( GND ) + ( \Add11~34\ ))
-- \Add11~38\ = CARRY(( hour(9) ) + ( GND ) + ( \Add11~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(9),
	cin => \Add11~34\,
	sumout => \Add11~37_sumout\,
	cout => \Add11~38\);

-- Location: FF_X21_Y21_N19
\hour[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~37_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(9));

-- Location: MLABCELL_X21_Y21_N20
\Add11~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~41_sumout\ = SUM(( hour(10) ) + ( GND ) + ( \Add11~38\ ))
-- \Add11~42\ = CARRY(( hour(10) ) + ( GND ) + ( \Add11~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(10),
	cin => \Add11~38\,
	sumout => \Add11~41_sumout\,
	cout => \Add11~42\);

-- Location: FF_X21_Y21_N21
\hour[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~41_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(10));

-- Location: MLABCELL_X21_Y21_N22
\Add11~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~45_sumout\ = SUM(( hour(11) ) + ( GND ) + ( \Add11~42\ ))
-- \Add11~46\ = CARRY(( hour(11) ) + ( GND ) + ( \Add11~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(11),
	cin => \Add11~42\,
	sumout => \Add11~45_sumout\,
	cout => \Add11~46\);

-- Location: FF_X21_Y21_N23
\hour[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~45_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(11));

-- Location: MLABCELL_X21_Y21_N24
\Add11~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~49_sumout\ = SUM(( hour(12) ) + ( GND ) + ( \Add11~46\ ))
-- \Add11~50\ = CARRY(( hour(12) ) + ( GND ) + ( \Add11~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(12),
	cin => \Add11~46\,
	sumout => \Add11~49_sumout\,
	cout => \Add11~50\);

-- Location: FF_X21_Y21_N25
\hour[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~49_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(12));

-- Location: MLABCELL_X21_Y21_N26
\Add11~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~53_sumout\ = SUM(( hour(13) ) + ( GND ) + ( \Add11~50\ ))
-- \Add11~54\ = CARRY(( hour(13) ) + ( GND ) + ( \Add11~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(13),
	cin => \Add11~50\,
	sumout => \Add11~53_sumout\,
	cout => \Add11~54\);

-- Location: FF_X21_Y21_N27
\hour[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~53_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(13));

-- Location: MLABCELL_X21_Y21_N28
\Add11~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~57_sumout\ = SUM(( hour(14) ) + ( GND ) + ( \Add11~54\ ))
-- \Add11~58\ = CARRY(( hour(14) ) + ( GND ) + ( \Add11~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(14),
	cin => \Add11~54\,
	sumout => \Add11~57_sumout\,
	cout => \Add11~58\);

-- Location: FF_X21_Y21_N29
\hour[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~57_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(14));

-- Location: MLABCELL_X21_Y21_N30
\Add11~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~61_sumout\ = SUM(( hour(15) ) + ( GND ) + ( \Add11~58\ ))
-- \Add11~62\ = CARRY(( hour(15) ) + ( GND ) + ( \Add11~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(15),
	cin => \Add11~58\,
	sumout => \Add11~61_sumout\,
	cout => \Add11~62\);

-- Location: FF_X21_Y21_N31
\hour[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~61_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(15));

-- Location: MLABCELL_X21_Y21_N32
\Add11~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~65_sumout\ = SUM(( hour(16) ) + ( GND ) + ( \Add11~62\ ))
-- \Add11~66\ = CARRY(( hour(16) ) + ( GND ) + ( \Add11~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(16),
	cin => \Add11~62\,
	sumout => \Add11~65_sumout\,
	cout => \Add11~66\);

-- Location: FF_X21_Y21_N33
\hour[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~65_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(16));

-- Location: MLABCELL_X21_Y21_N34
\Add11~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~69_sumout\ = SUM(( hour(17) ) + ( GND ) + ( \Add11~66\ ))
-- \Add11~70\ = CARRY(( hour(17) ) + ( GND ) + ( \Add11~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(17),
	cin => \Add11~66\,
	sumout => \Add11~69_sumout\,
	cout => \Add11~70\);

-- Location: FF_X21_Y21_N35
\hour[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~69_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(17));

-- Location: MLABCELL_X21_Y21_N36
\Add11~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~73_sumout\ = SUM(( hour(18) ) + ( GND ) + ( \Add11~70\ ))
-- \Add11~74\ = CARRY(( hour(18) ) + ( GND ) + ( \Add11~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(18),
	cin => \Add11~70\,
	sumout => \Add11~73_sumout\,
	cout => \Add11~74\);

-- Location: FF_X21_Y21_N37
\hour[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~73_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(18));

-- Location: MLABCELL_X21_Y21_N38
\Add11~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~77_sumout\ = SUM(( hour(19) ) + ( GND ) + ( \Add11~74\ ))
-- \Add11~78\ = CARRY(( hour(19) ) + ( GND ) + ( \Add11~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(19),
	cin => \Add11~74\,
	sumout => \Add11~77_sumout\,
	cout => \Add11~78\);

-- Location: FF_X21_Y21_N39
\hour[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~77_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(19));

-- Location: MLABCELL_X21_Y20_N0
\Add11~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~81_sumout\ = SUM(( hour(20) ) + ( GND ) + ( \Add11~78\ ))
-- \Add11~82\ = CARRY(( hour(20) ) + ( GND ) + ( \Add11~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(20),
	cin => \Add11~78\,
	sumout => \Add11~81_sumout\,
	cout => \Add11~82\);

-- Location: FF_X21_Y20_N1
\hour[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~81_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(20));

-- Location: MLABCELL_X21_Y20_N2
\Add11~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~85_sumout\ = SUM(( hour(21) ) + ( GND ) + ( \Add11~82\ ))
-- \Add11~86\ = CARRY(( hour(21) ) + ( GND ) + ( \Add11~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(21),
	cin => \Add11~82\,
	sumout => \Add11~85_sumout\,
	cout => \Add11~86\);

-- Location: FF_X21_Y20_N3
\hour[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~85_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(21));

-- Location: MLABCELL_X21_Y20_N4
\Add11~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~89_sumout\ = SUM(( hour(22) ) + ( GND ) + ( \Add11~86\ ))
-- \Add11~90\ = CARRY(( hour(22) ) + ( GND ) + ( \Add11~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(22),
	cin => \Add11~86\,
	sumout => \Add11~89_sumout\,
	cout => \Add11~90\);

-- Location: FF_X21_Y20_N5
\hour[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~89_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(22));

-- Location: MLABCELL_X21_Y20_N6
\Add11~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~93_sumout\ = SUM(( hour(23) ) + ( GND ) + ( \Add11~90\ ))
-- \Add11~94\ = CARRY(( hour(23) ) + ( GND ) + ( \Add11~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(23),
	cin => \Add11~90\,
	sumout => \Add11~93_sumout\,
	cout => \Add11~94\);

-- Location: FF_X21_Y20_N7
\hour[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~93_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(23));

-- Location: MLABCELL_X21_Y20_N8
\Add11~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~97_sumout\ = SUM(( hour(24) ) + ( GND ) + ( \Add11~94\ ))
-- \Add11~98\ = CARRY(( hour(24) ) + ( GND ) + ( \Add11~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(24),
	cin => \Add11~94\,
	sumout => \Add11~97_sumout\,
	cout => \Add11~98\);

-- Location: FF_X21_Y20_N9
\hour[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~97_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(24));

-- Location: MLABCELL_X21_Y20_N10
\Add11~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~101_sumout\ = SUM(( hour(25) ) + ( GND ) + ( \Add11~98\ ))
-- \Add11~102\ = CARRY(( hour(25) ) + ( GND ) + ( \Add11~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(25),
	cin => \Add11~98\,
	sumout => \Add11~101_sumout\,
	cout => \Add11~102\);

-- Location: FF_X21_Y20_N11
\hour[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~101_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(25));

-- Location: MLABCELL_X21_Y20_N12
\Add11~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~105_sumout\ = SUM(( hour(26) ) + ( GND ) + ( \Add11~102\ ))
-- \Add11~106\ = CARRY(( hour(26) ) + ( GND ) + ( \Add11~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(26),
	cin => \Add11~102\,
	sumout => \Add11~105_sumout\,
	cout => \Add11~106\);

-- Location: FF_X21_Y20_N13
\hour[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~105_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(26));

-- Location: MLABCELL_X21_Y20_N14
\Add11~109\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~109_sumout\ = SUM(( hour(27) ) + ( GND ) + ( \Add11~106\ ))
-- \Add11~110\ = CARRY(( hour(27) ) + ( GND ) + ( \Add11~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(27),
	cin => \Add11~106\,
	sumout => \Add11~109_sumout\,
	cout => \Add11~110\);

-- Location: FF_X21_Y20_N15
\hour[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~109_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(27));

-- Location: MLABCELL_X21_Y20_N16
\Add11~113\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~113_sumout\ = SUM(( hour(28) ) + ( GND ) + ( \Add11~110\ ))
-- \Add11~114\ = CARRY(( hour(28) ) + ( GND ) + ( \Add11~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(28),
	cin => \Add11~110\,
	sumout => \Add11~113_sumout\,
	cout => \Add11~114\);

-- Location: FF_X21_Y20_N17
\hour[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~113_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(28));

-- Location: FF_X21_Y20_N19
\hour[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~117_sumout\,
	sclr => \Equal2~6_combout\,
	ena => \hour[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(29));

-- Location: MLABCELL_X21_Y20_N34
\free_space~0\ : arriaii_lcell_comb
-- Equation(s):
-- \free_space~0_combout\ = ( !hour(29) & ( !hour(30) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_hour(29),
	dataf => ALT_INV_hour(30),
	combout => \free_space~0_combout\);

-- Location: LABCELL_X22_Y21_N38
\LessThan7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = ( hour(2) & ( hour(0) & ( hour(3) ) ) ) # ( hour(2) & ( !hour(0) & ( (hour(1) & hour(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(1),
	datad => ALT_INV_hour(3),
	datae => ALT_INV_hour(2),
	dataf => ALT_INV_hour(0),
	combout => \LessThan7~0_combout\);

-- Location: LABCELL_X20_Y21_N30
\Equal2~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal2~0DUPLICATE_combout\ = ( !hour(6) & ( !hour(11) & ( (!hour(9) & (!hour(10) & (!hour(8) & !hour(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(9),
	datab => ALT_INV_hour(10),
	datac => ALT_INV_hour(8),
	datad => ALT_INV_hour(7),
	datae => ALT_INV_hour(6),
	dataf => ALT_INV_hour(11),
	combout => \Equal2~0DUPLICATE_combout\);

-- Location: LABCELL_X20_Y21_N10
\Equal2~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = ( \Equal2~2_combout\ & ( \Equal2~1_combout\ & ( (!hour(5) & \Equal2~0DUPLICATE_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour(5),
	datac => \ALT_INV_Equal2~0DUPLICATE_combout\,
	datae => \ALT_INV_Equal2~2_combout\,
	dataf => \ALT_INV_Equal2~1_combout\,
	combout => \Equal2~3_combout\);

-- Location: LABCELL_X20_Y21_N12
\always3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \always3~0_combout\ = ( !\LessThan7~0_combout\ & ( \Equal2~3_combout\ & ( (!hour(28) & (!hour(4) & (hour(3) & \Equal2~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(28),
	datab => ALT_INV_hour(4),
	datac => ALT_INV_hour(3),
	datad => \ALT_INV_Equal2~4_combout\,
	datae => \ALT_INV_LessThan7~0_combout\,
	dataf => \ALT_INV_Equal2~3_combout\,
	combout => \always3~0_combout\);

-- Location: LABCELL_X22_Y21_N0
\LessThan9~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = ( hour(2) & ( hour(1) & ( hour(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(3),
	datae => ALT_INV_hour(2),
	dataf => ALT_INV_hour(1),
	combout => \LessThan9~0_combout\);

-- Location: LABCELL_X20_Y21_N32
\LessThan7~1\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = ( \Equal2~4_combout\ & ( \Equal2~1_combout\ & ( (!hour(4) & (!hour(5) & (\Equal2~0_combout\ & \Equal2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(4),
	datab => ALT_INV_hour(5),
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_Equal2~2_combout\,
	datae => \ALT_INV_Equal2~4_combout\,
	dataf => \ALT_INV_Equal2~1_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LABCELL_X20_Y21_N6
\free_space~3\ : arriaii_lcell_comb
-- Equation(s):
-- \free_space~3_combout\ = ( !hour(28) & ( \LessThan7~1_combout\ & ( (\LessThan7~0_combout\ & !\LessThan9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan7~0_combout\,
	datad => \ALT_INV_LessThan9~0_combout\,
	datae => ALT_INV_hour(28),
	dataf => \ALT_INV_LessThan7~1_combout\,
	combout => \free_space~3_combout\);

-- Location: MLABCELL_X29_Y18_N18
\free_space~4\ : arriaii_lcell_comb
-- Equation(s):
-- \free_space~4_combout\ = ( \always3~0_combout\ & ( \free_space~3_combout\ & ( (!\free_space~0_combout\) # (hour(31)) ) ) ) # ( !\always3~0_combout\ & ( \free_space~3_combout\ & ( (!\free_space~0_combout\) # (hour(31)) ) ) ) # ( \always3~0_combout\ & ( 
-- !\free_space~3_combout\ & ( (!\free_space~0_combout\) # (hour(31)) ) ) ) # ( !\always3~0_combout\ & ( !\free_space~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_free_space~0_combout\,
	datac => ALT_INV_hour(31),
	datae => \ALT_INV_always3~0_combout\,
	dataf => \ALT_INV_free_space~3_combout\,
	combout => \free_space~4_combout\);

-- Location: FF_X29_Y18_N19
\free_space[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \free_space~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_space(8));

-- Location: MLABCELL_X31_Y32_N20
\Add7~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( number_of_exited_uni_cars(0) ) + ( number_of_exited_uni_cars(1) ) + ( !VCC ))
-- \Add7~2\ = CARRY(( number_of_exited_uni_cars(0) ) + ( number_of_exited_uni_cars(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_uni_cars(0),
	dataf => ALT_INV_number_of_exited_uni_cars(1),
	cin => GND,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\);

-- Location: FF_X30_Y32_N35
\number_of_exited_uni_cars[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add7~1_sumout\,
	sload => VCC,
	ena => \number_of_exited_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(1));

-- Location: MLABCELL_X31_Y32_N22
\Add7~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( number_of_exited_uni_cars(2) ) + ( GND ) + ( \Add7~2\ ))
-- \Add7~6\ = CARRY(( number_of_exited_uni_cars(2) ) + ( GND ) + ( \Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_uni_cars(2),
	cin => \Add7~2\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\);

-- Location: FF_X30_Y32_N25
\number_of_exited_uni_cars[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add7~5_sumout\,
	sload => VCC,
	ena => \number_of_exited_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(2));

-- Location: MLABCELL_X31_Y32_N24
\Add7~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( GND ) + ( number_of_exited_uni_cars(3) ) + ( \Add7~6\ ))
-- \Add7~10\ = CARRY(( GND ) + ( number_of_exited_uni_cars(3) ) + ( \Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_number_of_exited_uni_cars(3),
	cin => \Add7~6\,
	sumout => \Add7~9_sumout\,
	cout => \Add7~10\);

-- Location: FF_X30_Y32_N27
\number_of_exited_uni_cars[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add7~9_sumout\,
	sload => VCC,
	ena => \number_of_exited_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(3));

-- Location: MLABCELL_X31_Y32_N26
\Add7~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~13_sumout\ = SUM(( GND ) + ( number_of_exited_uni_cars(4) ) + ( \Add7~10\ ))
-- \Add7~14\ = CARRY(( GND ) + ( number_of_exited_uni_cars(4) ) + ( \Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_number_of_exited_uni_cars(4),
	cin => \Add7~10\,
	sumout => \Add7~13_sumout\,
	cout => \Add7~14\);

-- Location: FF_X30_Y32_N33
\number_of_exited_uni_cars[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add7~13_sumout\,
	sload => VCC,
	ena => \number_of_exited_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(4));

-- Location: MLABCELL_X31_Y32_N28
\Add7~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~17_sumout\ = SUM(( GND ) + ( number_of_exited_uni_cars(5) ) + ( \Add7~14\ ))
-- \Add7~18\ = CARRY(( GND ) + ( number_of_exited_uni_cars(5) ) + ( \Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_number_of_exited_uni_cars(5),
	cin => \Add7~14\,
	sumout => \Add7~17_sumout\,
	cout => \Add7~18\);

-- Location: FF_X30_Y32_N29
\number_of_exited_uni_cars[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add7~17_sumout\,
	sload => VCC,
	ena => \number_of_exited_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(5));

-- Location: MLABCELL_X31_Y32_N30
\Add7~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~21_sumout\ = SUM(( number_of_exited_uni_cars(6) ) + ( GND ) + ( \Add7~18\ ))
-- \Add7~22\ = CARRY(( number_of_exited_uni_cars(6) ) + ( GND ) + ( \Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_uni_cars(6),
	cin => \Add7~18\,
	sumout => \Add7~21_sumout\,
	cout => \Add7~22\);

-- Location: FF_X30_Y32_N7
\number_of_exited_uni_cars[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add7~21_sumout\,
	sload => VCC,
	ena => \number_of_exited_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(6));

-- Location: MLABCELL_X31_Y32_N32
\Add7~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~25_sumout\ = SUM(( number_of_exited_uni_cars(7) ) + ( GND ) + ( \Add7~22\ ))
-- \Add7~26\ = CARRY(( number_of_exited_uni_cars(7) ) + ( GND ) + ( \Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_uni_cars(7),
	cin => \Add7~22\,
	sumout => \Add7~25_sumout\,
	cout => \Add7~26\);

-- Location: FF_X31_Y32_N33
\number_of_exited_uni_cars[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add7~25_sumout\,
	ena => \number_of_exited_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(7));

-- Location: MLABCELL_X31_Y32_N34
\Add7~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~29_sumout\ = SUM(( number_of_exited_uni_cars(8) ) + ( GND ) + ( \Add7~26\ ))
-- \Add7~30\ = CARRY(( number_of_exited_uni_cars(8) ) + ( GND ) + ( \Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_uni_cars(8),
	cin => \Add7~26\,
	sumout => \Add7~29_sumout\,
	cout => \Add7~30\);

-- Location: FF_X30_Y32_N5
\number_of_exited_uni_cars[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add7~29_sumout\,
	sload => VCC,
	ena => \number_of_exited_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(8));

-- Location: MLABCELL_X31_Y32_N0
\Add5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( number_of_entered_uni_cars(0) ) + ( number_of_entered_uni_cars(1) ) + ( !VCC ))
-- \Add5~2\ = CARRY(( number_of_entered_uni_cars(0) ) + ( number_of_entered_uni_cars(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_uni_cars(0),
	dataf => ALT_INV_number_of_entered_uni_cars(1),
	cin => GND,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: FF_X30_Y32_N31
\number_of_entered_uni_cars[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add5~1_sumout\,
	sload => VCC,
	ena => \number_of_entered_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(1));

-- Location: LABCELL_X30_Y32_N0
\Add0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !number_of_exited_uni_cars(0) $ (!number_of_entered_uni_cars(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( !number_of_exited_uni_cars(0) $ (!number_of_entered_uni_cars(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add0~3\ = SHARE((!number_of_exited_uni_cars(0)) # (number_of_entered_uni_cars(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_uni_cars(0),
	datad => ALT_INV_number_of_entered_uni_cars(0),
	cin => GND,
	sharein => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\,
	shareout => \Add0~3\);

-- Location: LABCELL_X30_Y32_N2
\Add0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !number_of_exited_uni_cars(1) $ (number_of_entered_uni_cars(1)) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !number_of_exited_uni_cars(1) $ (number_of_entered_uni_cars(1)) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~7\ = SHARE((!number_of_exited_uni_cars(1) & number_of_entered_uni_cars(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_uni_cars(1),
	datad => ALT_INV_number_of_entered_uni_cars(1),
	cin => \Add0~2\,
	sharein => \Add0~3\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\,
	shareout => \Add0~7\);

-- Location: LABCELL_X30_Y32_N4
\Add0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !number_of_entered_uni_cars(2) $ (number_of_exited_uni_cars(2)) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !number_of_entered_uni_cars(2) $ (number_of_exited_uni_cars(2)) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~11\ = SHARE((number_of_entered_uni_cars(2) & !number_of_exited_uni_cars(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_uni_cars(2),
	datad => ALT_INV_number_of_exited_uni_cars(2),
	cin => \Add0~6\,
	sharein => \Add0~7\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\,
	shareout => \Add0~11\);

-- Location: LABCELL_X30_Y32_N6
\Add0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !number_of_exited_uni_cars(3) $ (number_of_entered_uni_cars(3)) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !number_of_exited_uni_cars(3) $ (number_of_entered_uni_cars(3)) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~15\ = SHARE((!number_of_exited_uni_cars(3) & number_of_entered_uni_cars(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_uni_cars(3),
	datad => ALT_INV_number_of_entered_uni_cars(3),
	cin => \Add0~10\,
	sharein => \Add0~11\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\,
	shareout => \Add0~15\);

-- Location: LABCELL_X30_Y32_N8
\Add0~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !number_of_exited_uni_cars(4) $ (number_of_entered_uni_cars(4)) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !number_of_exited_uni_cars(4) $ (number_of_entered_uni_cars(4)) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~19\ = SHARE((!number_of_exited_uni_cars(4) & number_of_entered_uni_cars(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_number_of_exited_uni_cars(4),
	datac => ALT_INV_number_of_entered_uni_cars(4),
	cin => \Add0~14\,
	sharein => \Add0~15\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\,
	shareout => \Add0~19\);

-- Location: LABCELL_X30_Y32_N10
\Add0~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !number_of_entered_uni_cars(5) $ (number_of_exited_uni_cars(5)) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !number_of_entered_uni_cars(5) $ (number_of_exited_uni_cars(5)) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~23\ = SHARE((number_of_entered_uni_cars(5) & !number_of_exited_uni_cars(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_uni_cars(5),
	datad => ALT_INV_number_of_exited_uni_cars(5),
	cin => \Add0~18\,
	sharein => \Add0~19\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\,
	shareout => \Add0~23\);

-- Location: LABCELL_X30_Y32_N12
\Add0~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !number_of_exited_uni_cars(6) $ (number_of_entered_uni_cars(6)) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !number_of_exited_uni_cars(6) $ (number_of_entered_uni_cars(6)) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~27\ = SHARE((!number_of_exited_uni_cars(6) & number_of_entered_uni_cars(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_number_of_exited_uni_cars(6),
	datad => ALT_INV_number_of_entered_uni_cars(6),
	cin => \Add0~22\,
	sharein => \Add0~23\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\,
	shareout => \Add0~27\);

-- Location: LABCELL_X30_Y32_N14
\Add0~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !number_of_entered_uni_cars(7) $ (number_of_exited_uni_cars(7)) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !number_of_entered_uni_cars(7) $ (number_of_exited_uni_cars(7)) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~31\ = SHARE((number_of_entered_uni_cars(7) & !number_of_exited_uni_cars(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_uni_cars(7),
	datad => ALT_INV_number_of_exited_uni_cars(7),
	cin => \Add0~26\,
	sharein => \Add0~27\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\,
	shareout => \Add0~31\);

-- Location: LABCELL_X30_Y32_N16
\Add0~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !number_of_exited_uni_cars(8) $ (number_of_entered_uni_cars(8)) ) + ( \Add0~31\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( !number_of_exited_uni_cars(8) $ (number_of_entered_uni_cars(8)) ) + ( \Add0~31\ ) + ( \Add0~30\ ))
-- \Add0~35\ = SHARE((!number_of_exited_uni_cars(8) & number_of_entered_uni_cars(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_uni_cars(8),
	datad => ALT_INV_number_of_entered_uni_cars(8),
	cin => \Add0~30\,
	sharein => \Add0~31\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\,
	shareout => \Add0~35\);

-- Location: LABCELL_X20_Y21_N0
\free_space~7\ : arriaii_lcell_comb
-- Equation(s):
-- \free_space~7_combout\ = ( \LessThan7~1_combout\ & ( (!\LessThan9~0_combout\ & \LessThan7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan9~0_combout\,
	datad => \ALT_INV_LessThan7~0_combout\,
	dataf => \ALT_INV_LessThan7~1_combout\,
	combout => \free_space~7_combout\);

-- Location: LABCELL_X20_Y21_N34
\LessThan7~1DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan7~1DUPLICATE_combout\ = ( \Equal2~4_combout\ & ( \Equal2~1_combout\ & ( (!hour(4) & (!hour(5) & (\Equal2~2_combout\ & \Equal2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(4),
	datab => ALT_INV_hour(5),
	datac => \ALT_INV_Equal2~2_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_Equal2~4_combout\,
	dataf => \ALT_INV_Equal2~1_combout\,
	combout => \LessThan7~1DUPLICATE_combout\);

-- Location: LABCELL_X20_Y21_N2
\free_space~12\ : arriaii_lcell_comb
-- Equation(s):
-- \free_space~12_combout\ = ( !hour(30) & ( (\LessThan9~0_combout\ & (\LessThan7~1DUPLICATE_combout\ & (!hour(29) & !hour(28)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan9~0_combout\,
	datab => \ALT_INV_LessThan7~1DUPLICATE_combout\,
	datac => ALT_INV_hour(29),
	datad => ALT_INV_hour(28),
	dataf => ALT_INV_hour(30),
	combout => \free_space~12_combout\);

-- Location: LABCELL_X20_Y21_N24
\free_space~13\ : arriaii_lcell_comb
-- Equation(s):
-- \free_space~13_combout\ = ( \always3~0_combout\ & ( \free_space~12_combout\ & ( (!hour(31) & (!\free_space~0_combout\ & ((!\free_space~7_combout\) # (!\Equal2~5_combout\)))) ) ) ) # ( !\always3~0_combout\ & ( \free_space~12_combout\ & ( (!hour(31) & 
-- ((!\free_space~7_combout\) # (!\Equal2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(31),
	datab => \ALT_INV_free_space~0_combout\,
	datac => \ALT_INV_free_space~7_combout\,
	datad => \ALT_INV_Equal2~5_combout\,
	datae => \ALT_INV_always3~0_combout\,
	dataf => \ALT_INV_free_space~12_combout\,
	combout => \free_space~13_combout\);

-- Location: FF_X20_Y21_N25
\free_space[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \free_space~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_space(7));

-- Location: LABCELL_X24_Y18_N34
\always3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \always3~1_combout\ = ( \LessThan9~0_combout\ & ( \LessThan7~1_combout\ & ( (!hour(0) & (!hour(30) & (!hour(28) & !hour(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(0),
	datab => ALT_INV_hour(30),
	datac => ALT_INV_hour(28),
	datad => ALT_INV_hour(29),
	datae => \ALT_INV_LessThan9~0_combout\,
	dataf => \ALT_INV_LessThan7~1_combout\,
	combout => \always3~1_combout\);

-- Location: LABCELL_X24_Y18_N36
\free_space~11\ : arriaii_lcell_comb
-- Equation(s):
-- \free_space~11_combout\ = ( \always3~1_combout\ & ( \free_space~3_combout\ & ( (!\free_space~0_combout\ & !hour(31)) ) ) ) # ( \always3~1_combout\ & ( !\free_space~3_combout\ & ( (!hour(31) & ((!\free_space~0_combout\) # (!\always3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010001100100000000000000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_free_space~0_combout\,
	datab => ALT_INV_hour(31),
	datac => \ALT_INV_always3~0_combout\,
	datae => \ALT_INV_always3~1_combout\,
	dataf => \ALT_INV_free_space~3_combout\,
	combout => \free_space~11_combout\);

-- Location: FF_X24_Y18_N37
\free_space[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \free_space~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_space(6));

-- Location: LABCELL_X24_Y18_N26
\free_space~9\ : arriaii_lcell_comb
-- Equation(s):
-- \free_space~9_combout\ = ( \LessThan9~0_combout\ & ( \LessThan7~1_combout\ & ( (!hour(28) & hour(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(28),
	datad => ALT_INV_hour(0),
	datae => \ALT_INV_LessThan9~0_combout\,
	dataf => \ALT_INV_LessThan7~1_combout\,
	combout => \free_space~9_combout\);

-- Location: LABCELL_X24_Y18_N16
\free_space~10\ : arriaii_lcell_comb
-- Equation(s):
-- \free_space~10_combout\ = ( \free_space~9_combout\ & ( \free_space~3_combout\ & ( (!\free_space~0_combout\) # ((!\always3~0_combout\) # (hour(31))) ) ) ) # ( !\free_space~9_combout\ & ( \free_space~3_combout\ & ( (!\free_space~0_combout\) # 
-- ((!\always3~0_combout\) # (hour(31))) ) ) ) # ( \free_space~9_combout\ & ( !\free_space~3_combout\ & ( (!\free_space~0_combout\) # (((!\always3~0_combout\ & \always3~1_combout\)) # (hour(31))) ) ) ) # ( !\free_space~9_combout\ & ( !\free_space~3_combout\ 
-- & ( (!\free_space~0_combout\) # ((!\always3~0_combout\) # (hour(31))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111011101110111111101111111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_free_space~0_combout\,
	datab => ALT_INV_hour(31),
	datac => \ALT_INV_always3~0_combout\,
	datad => \ALT_INV_always3~1_combout\,
	datae => \ALT_INV_free_space~9_combout\,
	dataf => \ALT_INV_free_space~3_combout\,
	combout => \free_space~10_combout\);

-- Location: FF_X24_Y18_N17
\free_space[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \free_space~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_space(5));

-- Location: LABCELL_X24_Y18_N30
\free_space~8DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \free_space~8DUPLICATE_combout\ = ( \always3~1_combout\ & ( \free_space~7_combout\ & ( ((\Equal2~5_combout\ & ((!\free_space~0_combout\) # (!\always3~0_combout\)))) # (hour(31)) ) ) ) # ( !\always3~1_combout\ & ( \free_space~7_combout\ & ( 
-- (!\free_space~0_combout\) # ((!\always3~0_combout\) # (hour(31))) ) ) ) # ( \always3~1_combout\ & ( !\free_space~7_combout\ & ( hour(31) ) ) ) # ( !\always3~1_combout\ & ( !\free_space~7_combout\ & ( (!\free_space~0_combout\) # ((!\always3~0_combout\) # 
-- (hour(31))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101111000011110000111111111111101011110011111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_free_space~0_combout\,
	datab => \ALT_INV_Equal2~5_combout\,
	datac => ALT_INV_hour(31),
	datad => \ALT_INV_always3~0_combout\,
	datae => \ALT_INV_always3~1_combout\,
	dataf => \ALT_INV_free_space~7_combout\,
	combout => \free_space~8DUPLICATE_combout\);

-- Location: FF_X24_Y18_N31
\free_space[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \free_space~8DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \free_space[4]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y18_N22
\free_space~5\ : arriaii_lcell_comb
-- Equation(s):
-- \free_space~5_combout\ = ( \LessThan9~0_combout\ & ( \LessThan7~1_combout\ & ( (!hour(29) & (!hour(28) & (!hour(30) & hour(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(29),
	datab => ALT_INV_hour(28),
	datac => ALT_INV_hour(30),
	datad => ALT_INV_hour(0),
	datae => \ALT_INV_LessThan9~0_combout\,
	dataf => \ALT_INV_LessThan7~1_combout\,
	combout => \free_space~5_combout\);

-- Location: LABCELL_X24_Y18_N2
\free_space~6\ : arriaii_lcell_comb
-- Equation(s):
-- \free_space~6_combout\ = ( \always3~1_combout\ & ( \free_space~3_combout\ & ( hour(31) ) ) ) # ( !\always3~1_combout\ & ( \free_space~3_combout\ & ( ((!\free_space~0_combout\ & !\free_space~5_combout\)) # (hour(31)) ) ) ) # ( \always3~1_combout\ & ( 
-- !\free_space~3_combout\ & ( hour(31) ) ) ) # ( !\always3~1_combout\ & ( !\free_space~3_combout\ & ( ((!\free_space~5_combout\ & ((!\free_space~0_combout\) # (!\always3~0_combout\)))) # (hour(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001110110011001100110011001110110011101100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_free_space~0_combout\,
	datab => ALT_INV_hour(31),
	datac => \ALT_INV_free_space~5_combout\,
	datad => \ALT_INV_always3~0_combout\,
	datae => \ALT_INV_always3~1_combout\,
	dataf => \ALT_INV_free_space~3_combout\,
	combout => \free_space~6_combout\);

-- Location: FF_X24_Y18_N3
\free_space[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \free_space~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_space(3));

-- Location: MLABCELL_X29_Y21_N20
\free_space~1\ : arriaii_lcell_comb
-- Equation(s):
-- \free_space~1_combout\ = ( \LessThan7~1_combout\ & ( \Equal2~5_combout\ & ( (!\LessThan9~0_combout\ & ((\LessThan7~0_combout\))) # (\LessThan9~0_combout\ & (hour(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour(0),
	datac => \ALT_INV_LessThan9~0_combout\,
	datad => \ALT_INV_LessThan7~0_combout\,
	datae => \ALT_INV_LessThan7~1_combout\,
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \free_space~1_combout\);

-- Location: MLABCELL_X29_Y21_N32
\free_space~2\ : arriaii_lcell_comb
-- Equation(s):
-- \free_space~2_combout\ = ( \always3~0_combout\ & ( \free_space~1_combout\ & ( (!\free_space~0_combout\) # (hour(31)) ) ) ) # ( !\always3~0_combout\ & ( \free_space~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour(31),
	datad => \ALT_INV_free_space~0_combout\,
	datae => \ALT_INV_always3~0_combout\,
	dataf => \ALT_INV_free_space~1_combout\,
	combout => \free_space~2_combout\);

-- Location: FF_X29_Y21_N33
\free_space[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \free_space~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_space(1));

-- Location: MLABCELL_X29_Y32_N0
\Add2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \Add0~1_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \Add2~2\ = CARRY(( \Add0~1_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \Add2~3\ = SHARE(!\Add0~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\,
	shareout => \Add2~3\);

-- Location: MLABCELL_X29_Y32_N2
\Add2~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( !free_space(1) $ (\Add0~5_sumout\) ) + ( \Add2~3\ ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( !free_space(1) $ (\Add0~5_sumout\) ) + ( \Add2~3\ ) + ( \Add2~2\ ))
-- \Add2~7\ = SHARE((!free_space(1)) # (!\Add0~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_free_space(1),
	datad => \ALT_INV_Add0~5_sumout\,
	cin => \Add2~2\,
	sharein => \Add2~3\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\,
	shareout => \Add2~7\);

-- Location: MLABCELL_X29_Y32_N4
\Add2~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( !free_space(8) $ (\Add0~9_sumout\) ) + ( \Add2~7\ ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( !free_space(8) $ (\Add0~9_sumout\) ) + ( \Add2~7\ ) + ( \Add2~6\ ))
-- \Add2~11\ = SHARE((!free_space(8)) # (!\Add0~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_free_space(8),
	datad => \ALT_INV_Add0~9_sumout\,
	cin => \Add2~6\,
	sharein => \Add2~7\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\,
	shareout => \Add2~11\);

-- Location: MLABCELL_X29_Y32_N6
\Add2~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( !\Add0~13_sumout\ $ (!free_space(3)) ) + ( \Add2~11\ ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( !\Add0~13_sumout\ $ (!free_space(3)) ) + ( \Add2~11\ ) + ( \Add2~10\ ))
-- \Add2~15\ = SHARE((!\Add0~13_sumout\) # (free_space(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~13_sumout\,
	datad => ALT_INV_free_space(3),
	cin => \Add2~10\,
	sharein => \Add2~11\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\,
	shareout => \Add2~15\);

-- Location: MLABCELL_X29_Y32_N8
\Add2~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( !\free_space[4]~DUPLICATE_q\ $ (\Add0~17_sumout\) ) + ( \Add2~15\ ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( !\free_space[4]~DUPLICATE_q\ $ (\Add0~17_sumout\) ) + ( \Add2~15\ ) + ( \Add2~14\ ))
-- \Add2~19\ = SHARE((!\free_space[4]~DUPLICATE_q\) # (!\Add0~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_free_space[4]~DUPLICATE_q\,
	datad => \ALT_INV_Add0~17_sumout\,
	cin => \Add2~14\,
	sharein => \Add2~15\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\,
	shareout => \Add2~19\);

-- Location: MLABCELL_X29_Y32_N10
\Add2~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( !\Add0~21_sumout\ $ (free_space(5)) ) + ( \Add2~19\ ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( !\Add0~21_sumout\ $ (free_space(5)) ) + ( \Add2~19\ ) + ( \Add2~18\ ))
-- \Add2~23\ = SHARE((!\Add0~21_sumout\) # (!free_space(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~21_sumout\,
	datad => ALT_INV_free_space(5),
	cin => \Add2~18\,
	sharein => \Add2~19\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\,
	shareout => \Add2~23\);

-- Location: MLABCELL_X29_Y32_N12
\Add2~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( !\Add0~25_sumout\ $ (free_space(6)) ) + ( \Add2~23\ ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( !\Add0~25_sumout\ $ (free_space(6)) ) + ( \Add2~23\ ) + ( \Add2~22\ ))
-- \Add2~27\ = SHARE((!\Add0~25_sumout\ & free_space(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~25_sumout\,
	datad => ALT_INV_free_space(6),
	cin => \Add2~22\,
	sharein => \Add2~23\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\,
	shareout => \Add2~27\);

-- Location: MLABCELL_X29_Y32_N14
\Add2~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( !free_space(7) $ (!\Add0~29_sumout\) ) + ( \Add2~27\ ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( !free_space(7) $ (!\Add0~29_sumout\) ) + ( \Add2~27\ ) + ( \Add2~26\ ))
-- \Add2~31\ = SHARE((!\Add0~29_sumout\) # (free_space(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_free_space(7),
	datad => \ALT_INV_Add0~29_sumout\,
	cin => \Add2~26\,
	sharein => \Add2~27\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\,
	shareout => \Add2~31\);

-- Location: MLABCELL_X29_Y32_N16
\Add2~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( !free_space(8) $ (!\Add0~33_sumout\) ) + ( \Add2~31\ ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( !free_space(8) $ (!\Add0~33_sumout\) ) + ( \Add2~31\ ) + ( \Add2~30\ ))
-- \Add2~35\ = SHARE((!free_space(8) & !\Add0~33_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_free_space(8),
	datad => \ALT_INV_Add0~33_sumout\,
	cin => \Add2~30\,
	sharein => \Add2~31\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\,
	shareout => \Add2~35\);

-- Location: MLABCELL_X29_Y32_N18
\Add2~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( !\Add0~37_sumout\ ) + ( \Add2~35\ ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( !\Add0~37_sumout\ ) + ( \Add2~35\ ) + ( \Add2~34\ ))
-- \Add2~39\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~37_sumout\,
	cin => \Add2~34\,
	sharein => \Add2~35\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\,
	shareout => \Add2~39\);

-- Location: IOIBUF_X42_Y56_N1
\is_uni_car_entered~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_uni_car_entered,
	o => \is_uni_car_entered~input_o\);

-- Location: MLABCELL_X31_Y32_N36
\Add7~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~33_sumout\ = SUM(( GND ) + ( number_of_exited_uni_cars(9) ) + ( \Add7~30\ ))
-- \Add7~34\ = CARRY(( GND ) + ( number_of_exited_uni_cars(9) ) + ( \Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_number_of_exited_uni_cars(9),
	cin => \Add7~30\,
	sumout => \Add7~33_sumout\,
	cout => \Add7~34\);

-- Location: FF_X30_Y32_N3
\number_of_exited_uni_cars[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add7~33_sumout\,
	sload => VCC,
	ena => \number_of_exited_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(9));

-- Location: MLABCELL_X31_Y32_N38
\Add7~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~37_sumout\ = SUM(( number_of_exited_uni_cars(10) ) + ( GND ) + ( \Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_uni_cars(10),
	cin => \Add7~34\,
	sumout => \Add7~37_sumout\);

-- Location: FF_X31_Y32_N39
\number_of_exited_uni_cars[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add7~37_sumout\,
	ena => \number_of_exited_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(10));

-- Location: MLABCELL_X31_Y32_N16
\Add5~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( number_of_entered_uni_cars(9) ) + ( GND ) + ( \Add5~30\ ))
-- \Add5~34\ = CARRY(( number_of_entered_uni_cars(9) ) + ( GND ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_uni_cars(9),
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: MLABCELL_X31_Y32_N18
\Add5~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( GND ) + ( number_of_entered_uni_cars(10) ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_number_of_entered_uni_cars(10),
	cin => \Add5~34\,
	sumout => \Add5~37_sumout\);

-- Location: FF_X30_Y32_N19
\number_of_entered_uni_cars[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add5~37_sumout\,
	sload => VCC,
	ena => \number_of_entered_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(10));

-- Location: LABCELL_X30_Y32_N18
\Add0~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( !number_of_entered_uni_cars(9) $ (number_of_exited_uni_cars(9)) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( !number_of_entered_uni_cars(9) $ (number_of_exited_uni_cars(9)) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~39\ = SHARE((number_of_entered_uni_cars(9) & !number_of_exited_uni_cars(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_uni_cars(9),
	datad => ALT_INV_number_of_exited_uni_cars(9),
	cin => \Add0~34\,
	sharein => \Add0~35\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\,
	shareout => \Add0~39\);

-- Location: LABCELL_X30_Y32_N20
\Add0~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( !number_of_exited_uni_cars(10) $ (number_of_entered_uni_cars(10)) ) + ( \Add0~39\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_uni_cars(10),
	datad => ALT_INV_number_of_entered_uni_cars(10),
	cin => \Add0~38\,
	sharein => \Add0~39\,
	sumout => \Add0~41_sumout\);

-- Location: MLABCELL_X29_Y32_N20
\Add2~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( \Add0~41_sumout\ ) + ( \Add2~39\ ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~41_sumout\,
	cin => \Add2~38\,
	sharein => \Add2~39\,
	sumout => \Add2~41_sumout\);

-- Location: MLABCELL_X29_Y32_N30
\LessThan0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( !\Add2~25_sumout\ & ( !\Add2~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add2~25_sumout\,
	dataf => \ALT_INV_Add2~29_sumout\,
	combout => \LessThan0~2_combout\);

-- Location: MLABCELL_X29_Y32_N32
\LessThan0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !\Add2~17_sumout\ & ( !\Add2~21_sumout\ & ( (!\Add2~1_sumout\ & (!\Add2~5_sumout\ & (!\Add2~9_sumout\ & !\Add2~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~1_sumout\,
	datab => \ALT_INV_Add2~5_sumout\,
	datac => \ALT_INV_Add2~9_sumout\,
	datad => \ALT_INV_Add2~13_sumout\,
	datae => \ALT_INV_Add2~17_sumout\,
	dataf => \ALT_INV_Add2~21_sumout\,
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X29_Y32_N38
\number_of_entered_uni_cars[10]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \number_of_entered_uni_cars[10]~0_combout\ = ( \LessThan0~2_combout\ & ( \LessThan0~0_combout\ & ( (\is_uni_car_entered~input_o\ & (!\Add2~41_sumout\ & ((\Add2~33_sumout\) # (\Add2~37_sumout\)))) ) ) ) # ( !\LessThan0~2_combout\ & ( \LessThan0~0_combout\ 
-- & ( (\is_uni_car_entered~input_o\ & !\Add2~41_sumout\) ) ) ) # ( \LessThan0~2_combout\ & ( !\LessThan0~0_combout\ & ( (\is_uni_car_entered~input_o\ & !\Add2~41_sumout\) ) ) ) # ( !\LessThan0~2_combout\ & ( !\LessThan0~0_combout\ & ( 
-- (\is_uni_car_entered~input_o\ & !\Add2~41_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000001001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~37_sumout\,
	datab => \ALT_INV_is_uni_car_entered~input_o\,
	datac => \ALT_INV_Add2~33_sumout\,
	datad => \ALT_INV_Add2~41_sumout\,
	datae => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \number_of_entered_uni_cars[10]~0_combout\);

-- Location: FF_X30_Y32_N1
\number_of_entered_uni_cars[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \number_of_entered_uni_cars[0]~1_combout\,
	sload => VCC,
	ena => \number_of_entered_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(0));

-- Location: MLABCELL_X31_Y32_N2
\Add5~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( number_of_entered_uni_cars(2) ) + ( GND ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( number_of_entered_uni_cars(2) ) + ( GND ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_uni_cars(2),
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: FF_X30_Y32_N39
\number_of_entered_uni_cars[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add5~5_sumout\,
	sload => VCC,
	ena => \number_of_entered_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(2));

-- Location: MLABCELL_X31_Y32_N4
\Add5~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( number_of_entered_uni_cars(3) ) + ( GND ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( number_of_entered_uni_cars(3) ) + ( GND ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_uni_cars(3),
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: FF_X30_Y32_N37
\number_of_entered_uni_cars[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add5~9_sumout\,
	sload => VCC,
	ena => \number_of_entered_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(3));

-- Location: MLABCELL_X31_Y32_N6
\Add5~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( GND ) + ( number_of_entered_uni_cars(4) ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( GND ) + ( number_of_entered_uni_cars(4) ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_number_of_entered_uni_cars(4),
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: FF_X29_Y32_N25
\number_of_entered_uni_cars[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add5~13_sumout\,
	sload => VCC,
	ena => \number_of_entered_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(4));

-- Location: MLABCELL_X31_Y32_N8
\Add5~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( GND ) + ( number_of_entered_uni_cars(5) ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( GND ) + ( number_of_entered_uni_cars(5) ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_number_of_entered_uni_cars(5),
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: FF_X30_Y32_N13
\number_of_entered_uni_cars[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add5~17_sumout\,
	sload => VCC,
	ena => \number_of_entered_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(5));

-- Location: MLABCELL_X31_Y32_N10
\Add5~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( number_of_entered_uni_cars(6) ) + ( GND ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( number_of_entered_uni_cars(6) ) + ( GND ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_uni_cars(6),
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: FF_X31_Y32_N11
\number_of_entered_uni_cars[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add5~21_sumout\,
	ena => \number_of_entered_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(6));

-- Location: MLABCELL_X31_Y32_N12
\Add5~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( GND ) + ( number_of_entered_uni_cars(7) ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( GND ) + ( number_of_entered_uni_cars(7) ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_number_of_entered_uni_cars(7),
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: FF_X29_Y32_N37
\number_of_entered_uni_cars[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add5~25_sumout\,
	sload => VCC,
	ena => \number_of_entered_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(7));

-- Location: MLABCELL_X31_Y32_N14
\Add5~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( number_of_entered_uni_cars(8) ) + ( GND ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( number_of_entered_uni_cars(8) ) + ( GND ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_uni_cars(8),
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: FF_X29_Y32_N35
\number_of_entered_uni_cars[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add5~29_sumout\,
	sload => VCC,
	ena => \number_of_entered_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(8));

-- Location: FF_X31_Y32_N17
\number_of_entered_uni_cars[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add5~33_sumout\,
	ena => \number_of_entered_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(9));

-- Location: IOIBUF_X30_Y0_N32
\is_uni_car_exited~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_uni_car_exited,
	o => \is_uni_car_exited~input_o\);

-- Location: LABCELL_X30_Y32_N36
\LessThan2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( !\Add0~13_sumout\ & ( !\Add0~17_sumout\ & ( (!\Add0~1_sumout\ & (!\Add0~5_sumout\ & (!\Add0~9_sumout\ & !\Add0~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_Add0~21_sumout\,
	datae => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X30_Y32_N28
\LessThan2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( !\Add0~29_sumout\ & ( !\Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X30_Y32_N24
\number_of_exited_uni_cars[10]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \number_of_exited_uni_cars[10]~0_combout\ = ( \LessThan2~0_combout\ & ( \LessThan2~1_combout\ & ( (\is_uni_car_exited~input_o\ & (!\Add0~41_sumout\ & ((\Add0~33_sumout\) # (\Add0~37_sumout\)))) ) ) ) # ( !\LessThan2~0_combout\ & ( \LessThan2~1_combout\ & 
-- ( (\is_uni_car_exited~input_o\ & !\Add0~41_sumout\) ) ) ) # ( \LessThan2~0_combout\ & ( !\LessThan2~1_combout\ & ( (\is_uni_car_exited~input_o\ & !\Add0~41_sumout\) ) ) ) # ( !\LessThan2~0_combout\ & ( !\LessThan2~1_combout\ & ( 
-- (\is_uni_car_exited~input_o\ & !\Add0~41_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000001000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~37_sumout\,
	datab => \ALT_INV_is_uni_car_exited~input_o\,
	datac => \ALT_INV_Add0~41_sumout\,
	datad => \ALT_INV_Add0~33_sumout\,
	datae => \ALT_INV_LessThan2~0_combout\,
	dataf => \ALT_INV_LessThan2~1_combout\,
	combout => \number_of_exited_uni_cars[10]~0_combout\);

-- Location: FF_X30_Y32_N23
\number_of_exited_uni_cars[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \number_of_exited_uni_cars[0]~1_combout\,
	ena => \number_of_exited_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(0));

-- Location: LABCELL_X38_Y6_N24
\number_of_entered_none_uni_cars[0]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \number_of_entered_none_uni_cars[0]~1_combout\ = ( !number_of_entered_none_uni_cars(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_number_of_entered_none_uni_cars(0),
	combout => \number_of_entered_none_uni_cars[0]~1_combout\);

-- Location: LABCELL_X38_Y6_N22
\number_of_exited_none_uni_cars[0]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \number_of_exited_none_uni_cars[0]~1_combout\ = !number_of_exited_none_uni_cars(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_none_uni_cars(0),
	combout => \number_of_exited_none_uni_cars[0]~1_combout\);

-- Location: MLABCELL_X39_Y6_N0
\Add6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~1_sumout\ = SUM(( number_of_entered_none_uni_cars(0) ) + ( number_of_entered_none_uni_cars(1) ) + ( !VCC ))
-- \Add6~2\ = CARRY(( number_of_entered_none_uni_cars(0) ) + ( number_of_entered_none_uni_cars(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_number_of_entered_none_uni_cars(1),
	datad => ALT_INV_number_of_entered_none_uni_cars(0),
	cin => GND,
	sumout => \Add6~1_sumout\,
	cout => \Add6~2\);

-- Location: FF_X37_Y6_N25
\number_of_entered_none_uni_cars[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add6~1_sumout\,
	sload => VCC,
	ena => \number_of_entered_none_uni_cars[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_none_uni_cars(1));

-- Location: MLABCELL_X39_Y6_N2
\Add6~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~5_sumout\ = SUM(( GND ) + ( number_of_entered_none_uni_cars(2) ) + ( \Add6~2\ ))
-- \Add6~6\ = CARRY(( GND ) + ( number_of_entered_none_uni_cars(2) ) + ( \Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_number_of_entered_none_uni_cars(2),
	cin => \Add6~2\,
	sumout => \Add6~5_sumout\,
	cout => \Add6~6\);

-- Location: FF_X38_Y6_N33
\number_of_entered_none_uni_cars[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add6~5_sumout\,
	sload => VCC,
	ena => \number_of_entered_none_uni_cars[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_none_uni_cars(2));

-- Location: MLABCELL_X39_Y6_N4
\Add6~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~9_sumout\ = SUM(( number_of_entered_none_uni_cars(3) ) + ( GND ) + ( \Add6~6\ ))
-- \Add6~10\ = CARRY(( number_of_entered_none_uni_cars(3) ) + ( GND ) + ( \Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_none_uni_cars(3),
	cin => \Add6~6\,
	sumout => \Add6~9_sumout\,
	cout => \Add6~10\);

-- Location: FF_X37_Y6_N37
\number_of_entered_none_uni_cars[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add6~9_sumout\,
	sload => VCC,
	ena => \number_of_entered_none_uni_cars[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_none_uni_cars(3));

-- Location: MLABCELL_X39_Y6_N6
\Add6~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~13_sumout\ = SUM(( GND ) + ( number_of_entered_none_uni_cars(4) ) + ( \Add6~10\ ))
-- \Add6~14\ = CARRY(( GND ) + ( number_of_entered_none_uni_cars(4) ) + ( \Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_number_of_entered_none_uni_cars(4),
	cin => \Add6~10\,
	sumout => \Add6~13_sumout\,
	cout => \Add6~14\);

-- Location: FF_X38_Y6_N27
\number_of_entered_none_uni_cars[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add6~13_sumout\,
	sload => VCC,
	ena => \number_of_entered_none_uni_cars[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_none_uni_cars(4));

-- Location: MLABCELL_X39_Y6_N8
\Add6~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~17_sumout\ = SUM(( number_of_entered_none_uni_cars(5) ) + ( GND ) + ( \Add6~14\ ))
-- \Add6~18\ = CARRY(( number_of_entered_none_uni_cars(5) ) + ( GND ) + ( \Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_none_uni_cars(5),
	cin => \Add6~14\,
	sumout => \Add6~17_sumout\,
	cout => \Add6~18\);

-- Location: FF_X39_Y6_N9
\number_of_entered_none_uni_cars[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add6~17_sumout\,
	ena => \number_of_entered_none_uni_cars[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_none_uni_cars(5));

-- Location: MLABCELL_X39_Y6_N10
\Add6~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~21_sumout\ = SUM(( number_of_entered_none_uni_cars(6) ) + ( GND ) + ( \Add6~18\ ))
-- \Add6~22\ = CARRY(( number_of_entered_none_uni_cars(6) ) + ( GND ) + ( \Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_none_uni_cars(6),
	cin => \Add6~18\,
	sumout => \Add6~21_sumout\,
	cout => \Add6~22\);

-- Location: FF_X39_Y6_N11
\number_of_entered_none_uni_cars[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add6~21_sumout\,
	ena => \number_of_entered_none_uni_cars[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_none_uni_cars(6));

-- Location: MLABCELL_X39_Y6_N12
\Add6~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~25_sumout\ = SUM(( number_of_entered_none_uni_cars(7) ) + ( GND ) + ( \Add6~22\ ))
-- \Add6~26\ = CARRY(( number_of_entered_none_uni_cars(7) ) + ( GND ) + ( \Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_none_uni_cars(7),
	cin => \Add6~22\,
	sumout => \Add6~25_sumout\,
	cout => \Add6~26\);

-- Location: FF_X37_Y6_N33
\number_of_entered_none_uni_cars[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add6~25_sumout\,
	sload => VCC,
	ena => \number_of_entered_none_uni_cars[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_none_uni_cars(7));

-- Location: MLABCELL_X39_Y6_N14
\Add6~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~29_sumout\ = SUM(( number_of_entered_none_uni_cars(8) ) + ( GND ) + ( \Add6~26\ ))
-- \Add6~30\ = CARRY(( number_of_entered_none_uni_cars(8) ) + ( GND ) + ( \Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_none_uni_cars(8),
	cin => \Add6~26\,
	sumout => \Add6~29_sumout\,
	cout => \Add6~30\);

-- Location: FF_X39_Y6_N15
\number_of_entered_none_uni_cars[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add6~29_sumout\,
	ena => \number_of_entered_none_uni_cars[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_none_uni_cars(8));

-- Location: MLABCELL_X39_Y6_N16
\Add6~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~33_sumout\ = SUM(( GND ) + ( number_of_entered_none_uni_cars(9) ) + ( \Add6~30\ ))
-- \Add6~34\ = CARRY(( GND ) + ( number_of_entered_none_uni_cars(9) ) + ( \Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_number_of_entered_none_uni_cars(9),
	cin => \Add6~30\,
	sumout => \Add6~33_sumout\,
	cout => \Add6~34\);

-- Location: FF_X38_Y6_N7
\number_of_entered_none_uni_cars[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add6~33_sumout\,
	sload => VCC,
	ena => \number_of_entered_none_uni_cars[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_none_uni_cars(9));

-- Location: MLABCELL_X39_Y6_N34
\Add8~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~29_sumout\ = SUM(( GND ) + ( number_of_exited_none_uni_cars(8) ) + ( \Add8~26\ ))
-- \Add8~30\ = CARRY(( GND ) + ( number_of_exited_none_uni_cars(8) ) + ( \Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_number_of_exited_none_uni_cars(8),
	cin => \Add8~26\,
	sumout => \Add8~29_sumout\,
	cout => \Add8~30\);

-- Location: MLABCELL_X39_Y6_N36
\Add8~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~33_sumout\ = SUM(( GND ) + ( number_of_exited_none_uni_cars(9) ) + ( \Add8~30\ ))
-- \Add8~34\ = CARRY(( GND ) + ( number_of_exited_none_uni_cars(9) ) + ( \Add8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_number_of_exited_none_uni_cars(9),
	cin => \Add8~30\,
	sumout => \Add8~33_sumout\,
	cout => \Add8~34\);

-- Location: FF_X38_Y6_N15
\number_of_exited_none_uni_cars[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add8~33_sumout\,
	sload => VCC,
	ena => \number_of_exited_none_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_none_uni_cars(9));

-- Location: MLABCELL_X39_Y6_N20
\Add8~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~1_sumout\ = SUM(( number_of_exited_none_uni_cars(0) ) + ( number_of_exited_none_uni_cars(1) ) + ( !VCC ))
-- \Add8~2\ = CARRY(( number_of_exited_none_uni_cars(0) ) + ( number_of_exited_none_uni_cars(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_none_uni_cars(0),
	dataf => ALT_INV_number_of_exited_none_uni_cars(1),
	cin => GND,
	sumout => \Add8~1_sumout\,
	cout => \Add8~2\);

-- Location: FF_X38_Y6_N31
\number_of_exited_none_uni_cars[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add8~1_sumout\,
	sload => VCC,
	ena => \number_of_exited_none_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_none_uni_cars(1));

-- Location: LABCELL_X38_Y6_N0
\Add1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !number_of_entered_none_uni_cars(0) $ (!number_of_exited_none_uni_cars(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !number_of_entered_none_uni_cars(0) $ (!number_of_exited_none_uni_cars(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add1~3\ = SHARE((!number_of_exited_none_uni_cars(0)) # (number_of_entered_none_uni_cars(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_none_uni_cars(0),
	datad => ALT_INV_number_of_exited_none_uni_cars(0),
	cin => GND,
	sharein => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\,
	shareout => \Add1~3\);

-- Location: LABCELL_X38_Y6_N2
\Add1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !number_of_exited_none_uni_cars(1) $ (number_of_entered_none_uni_cars(1)) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !number_of_exited_none_uni_cars(1) $ (number_of_entered_none_uni_cars(1)) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~7\ = SHARE((!number_of_exited_none_uni_cars(1) & number_of_entered_none_uni_cars(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_none_uni_cars(1),
	datad => ALT_INV_number_of_entered_none_uni_cars(1),
	cin => \Add1~2\,
	sharein => \Add1~3\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\,
	shareout => \Add1~7\);

-- Location: LABCELL_X38_Y6_N4
\Add1~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !number_of_exited_none_uni_cars(2) $ (number_of_entered_none_uni_cars(2)) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( !number_of_exited_none_uni_cars(2) $ (number_of_entered_none_uni_cars(2)) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~11\ = SHARE((!number_of_exited_none_uni_cars(2) & number_of_entered_none_uni_cars(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_none_uni_cars(2),
	datad => ALT_INV_number_of_entered_none_uni_cars(2),
	cin => \Add1~6\,
	sharein => \Add1~7\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\,
	shareout => \Add1~11\);

-- Location: LABCELL_X38_Y6_N6
\Add1~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !number_of_exited_none_uni_cars(3) $ (number_of_entered_none_uni_cars(3)) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( !number_of_exited_none_uni_cars(3) $ (number_of_entered_none_uni_cars(3)) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~15\ = SHARE((!number_of_exited_none_uni_cars(3) & number_of_entered_none_uni_cars(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_none_uni_cars(3),
	datad => ALT_INV_number_of_entered_none_uni_cars(3),
	cin => \Add1~10\,
	sharein => \Add1~11\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\,
	shareout => \Add1~15\);

-- Location: LABCELL_X38_Y6_N8
\Add1~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !number_of_entered_none_uni_cars(4) $ (number_of_exited_none_uni_cars(4)) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !number_of_entered_none_uni_cars(4) $ (number_of_exited_none_uni_cars(4)) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~19\ = SHARE((number_of_entered_none_uni_cars(4) & !number_of_exited_none_uni_cars(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_none_uni_cars(4),
	datad => ALT_INV_number_of_exited_none_uni_cars(4),
	cin => \Add1~14\,
	sharein => \Add1~15\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\,
	shareout => \Add1~19\);

-- Location: LABCELL_X38_Y6_N10
\Add1~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !number_of_entered_none_uni_cars(5) $ (number_of_exited_none_uni_cars(5)) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !number_of_entered_none_uni_cars(5) $ (number_of_exited_none_uni_cars(5)) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~23\ = SHARE((number_of_entered_none_uni_cars(5) & !number_of_exited_none_uni_cars(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_none_uni_cars(5),
	datad => ALT_INV_number_of_exited_none_uni_cars(5),
	cin => \Add1~18\,
	sharein => \Add1~19\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\,
	shareout => \Add1~23\);

-- Location: LABCELL_X38_Y6_N12
\Add1~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !number_of_exited_none_uni_cars(6) $ (number_of_entered_none_uni_cars(6)) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( !number_of_exited_none_uni_cars(6) $ (number_of_entered_none_uni_cars(6)) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~27\ = SHARE((!number_of_exited_none_uni_cars(6) & number_of_entered_none_uni_cars(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_none_uni_cars(6),
	datad => ALT_INV_number_of_entered_none_uni_cars(6),
	cin => \Add1~22\,
	sharein => \Add1~23\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\,
	shareout => \Add1~27\);

-- Location: LABCELL_X38_Y6_N14
\Add1~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( !number_of_exited_none_uni_cars(7) $ (number_of_entered_none_uni_cars(7)) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( !number_of_exited_none_uni_cars(7) $ (number_of_entered_none_uni_cars(7)) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~31\ = SHARE((!number_of_exited_none_uni_cars(7) & number_of_entered_none_uni_cars(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_none_uni_cars(7),
	datad => ALT_INV_number_of_entered_none_uni_cars(7),
	cin => \Add1~26\,
	sharein => \Add1~27\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\,
	shareout => \Add1~31\);

-- Location: LABCELL_X38_Y6_N16
\Add1~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( !number_of_exited_none_uni_cars(8) $ (number_of_entered_none_uni_cars(8)) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( !number_of_exited_none_uni_cars(8) $ (number_of_entered_none_uni_cars(8)) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~35\ = SHARE((!number_of_exited_none_uni_cars(8) & number_of_entered_none_uni_cars(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_none_uni_cars(8),
	datad => ALT_INV_number_of_entered_none_uni_cars(8),
	cin => \Add1~30\,
	sharein => \Add1~31\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\,
	shareout => \Add1~35\);

-- Location: LABCELL_X38_Y6_N18
\Add1~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( !number_of_entered_none_uni_cars(9) $ (number_of_exited_none_uni_cars(9)) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( !number_of_entered_none_uni_cars(9) $ (number_of_exited_none_uni_cars(9)) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~39\ = SHARE((number_of_entered_none_uni_cars(9) & !number_of_exited_none_uni_cars(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_none_uni_cars(9),
	datad => ALT_INV_number_of_exited_none_uni_cars(9),
	cin => \Add1~34\,
	sharein => \Add1~35\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\,
	shareout => \Add1~39\);

-- Location: MLABCELL_X39_Y6_N38
\Add8~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~37_sumout\ = SUM(( GND ) + ( number_of_exited_none_uni_cars(10) ) + ( \Add8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_number_of_exited_none_uni_cars(10),
	cin => \Add8~34\,
	sumout => \Add8~37_sumout\);

-- Location: FF_X38_Y6_N17
\number_of_exited_none_uni_cars[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add8~37_sumout\,
	sload => VCC,
	ena => \number_of_exited_none_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_none_uni_cars(10));

-- Location: MLABCELL_X39_Y6_N18
\Add6~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~37_sumout\ = SUM(( GND ) + ( number_of_entered_none_uni_cars(10) ) + ( \Add6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_number_of_entered_none_uni_cars(10),
	cin => \Add6~34\,
	sumout => \Add6~37_sumout\);

-- Location: FF_X38_Y6_N3
\number_of_entered_none_uni_cars[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add6~37_sumout\,
	sload => VCC,
	ena => \number_of_entered_none_uni_cars[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_none_uni_cars(10));

-- Location: LABCELL_X38_Y6_N20
\number_of_none_uni_total_cars[10]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \number_of_none_uni_total_cars[10]~1_sumout\ = SUM(( !number_of_exited_none_uni_cars(10) $ (number_of_entered_none_uni_cars(10)) ) + ( \Add1~39\ ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_none_uni_cars(10),
	datad => ALT_INV_number_of_entered_none_uni_cars(10),
	cin => \Add1~38\,
	sharein => \Add1~39\,
	sumout => \number_of_none_uni_total_cars[10]~1_sumout\);

-- Location: LABCELL_X38_Y6_N34
\LessThan3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( !\Add1~13_sumout\ & ( !\Add1~17_sumout\ & ( (!\Add1~1_sumout\ & (!\Add1~5_sumout\ & (!\Add1~21_sumout\ & !\Add1~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Add1~21_sumout\,
	datad => \ALT_INV_Add1~9_sumout\,
	datae => \ALT_INV_Add1~13_sumout\,
	dataf => \ALT_INV_Add1~17_sumout\,
	combout => \LessThan3~0_combout\);

-- Location: LABCELL_X38_Y6_N38
\LessThan3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = ( !\Add1~25_sumout\ & ( !\Add1~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add1~25_sumout\,
	dataf => \ALT_INV_Add1~29_sumout\,
	combout => \LessThan3~1_combout\);

-- Location: LABCELL_X38_Y6_N28
\number_of_exited_none_uni_cars[10]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \number_of_exited_none_uni_cars[10]~0_combout\ = ( \LessThan3~0_combout\ & ( \LessThan3~1_combout\ & ( (!\is_uni_car_exited~input_o\ & (!\number_of_none_uni_total_cars[10]~1_sumout\ & ((\Add1~33_sumout\) # (\Add1~37_sumout\)))) ) ) ) # ( 
-- !\LessThan3~0_combout\ & ( \LessThan3~1_combout\ & ( (!\is_uni_car_exited~input_o\ & !\number_of_none_uni_total_cars[10]~1_sumout\) ) ) ) # ( \LessThan3~0_combout\ & ( !\LessThan3~1_combout\ & ( (!\is_uni_car_exited~input_o\ & 
-- !\number_of_none_uni_total_cars[10]~1_sumout\) ) ) ) # ( !\LessThan3~0_combout\ & ( !\LessThan3~1_combout\ & ( (!\is_uni_car_exited~input_o\ & !\number_of_none_uni_total_cars[10]~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000000100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~37_sumout\,
	datab => \ALT_INV_is_uni_car_exited~input_o\,
	datac => \ALT_INV_number_of_none_uni_total_cars[10]~1_sumout\,
	datad => \ALT_INV_Add1~33_sumout\,
	datae => \ALT_INV_LessThan3~0_combout\,
	dataf => \ALT_INV_LessThan3~1_combout\,
	combout => \number_of_exited_none_uni_cars[10]~0_combout\);

-- Location: FF_X38_Y6_N23
\number_of_exited_none_uni_cars[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \number_of_exited_none_uni_cars[0]~1_combout\,
	ena => \number_of_exited_none_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_none_uni_cars(0));

-- Location: MLABCELL_X39_Y6_N22
\Add8~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~5_sumout\ = SUM(( number_of_exited_none_uni_cars(2) ) + ( GND ) + ( \Add8~2\ ))
-- \Add8~6\ = CARRY(( number_of_exited_none_uni_cars(2) ) + ( GND ) + ( \Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_none_uni_cars(2),
	cin => \Add8~2\,
	sumout => \Add8~5_sumout\,
	cout => \Add8~6\);

-- Location: FF_X39_Y6_N23
\number_of_exited_none_uni_cars[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add8~5_sumout\,
	ena => \number_of_exited_none_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_none_uni_cars(2));

-- Location: MLABCELL_X39_Y6_N24
\Add8~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~9_sumout\ = SUM(( number_of_exited_none_uni_cars(3) ) + ( GND ) + ( \Add8~6\ ))
-- \Add8~10\ = CARRY(( number_of_exited_none_uni_cars(3) ) + ( GND ) + ( \Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_none_uni_cars(3),
	cin => \Add8~6\,
	sumout => \Add8~9_sumout\,
	cout => \Add8~10\);

-- Location: FF_X39_Y6_N25
\number_of_exited_none_uni_cars[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add8~9_sumout\,
	ena => \number_of_exited_none_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_none_uni_cars(3));

-- Location: MLABCELL_X39_Y6_N26
\Add8~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~13_sumout\ = SUM(( number_of_exited_none_uni_cars(4) ) + ( GND ) + ( \Add8~10\ ))
-- \Add8~14\ = CARRY(( number_of_exited_none_uni_cars(4) ) + ( GND ) + ( \Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_none_uni_cars(4),
	cin => \Add8~10\,
	sumout => \Add8~13_sumout\,
	cout => \Add8~14\);

-- Location: FF_X38_Y6_N37
\number_of_exited_none_uni_cars[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add8~13_sumout\,
	sload => VCC,
	ena => \number_of_exited_none_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_none_uni_cars(4));

-- Location: MLABCELL_X39_Y6_N28
\Add8~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~17_sumout\ = SUM(( number_of_exited_none_uni_cars(5) ) + ( GND ) + ( \Add8~14\ ))
-- \Add8~18\ = CARRY(( number_of_exited_none_uni_cars(5) ) + ( GND ) + ( \Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_none_uni_cars(5),
	cin => \Add8~14\,
	sumout => \Add8~17_sumout\,
	cout => \Add8~18\);

-- Location: FF_X38_Y6_N29
\number_of_exited_none_uni_cars[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add8~17_sumout\,
	sload => VCC,
	ena => \number_of_exited_none_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_none_uni_cars(5));

-- Location: MLABCELL_X39_Y6_N30
\Add8~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~21_sumout\ = SUM(( number_of_exited_none_uni_cars(6) ) + ( GND ) + ( \Add8~18\ ))
-- \Add8~22\ = CARRY(( number_of_exited_none_uni_cars(6) ) + ( GND ) + ( \Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_none_uni_cars(6),
	cin => \Add8~18\,
	sumout => \Add8~21_sumout\,
	cout => \Add8~22\);

-- Location: FF_X38_Y6_N35
\number_of_exited_none_uni_cars[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add8~21_sumout\,
	sload => VCC,
	ena => \number_of_exited_none_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_none_uni_cars(6));

-- Location: MLABCELL_X39_Y6_N32
\Add8~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~25_sumout\ = SUM(( GND ) + ( number_of_exited_none_uni_cars(7) ) + ( \Add8~22\ ))
-- \Add8~26\ = CARRY(( GND ) + ( number_of_exited_none_uni_cars(7) ) + ( \Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_number_of_exited_none_uni_cars(7),
	cin => \Add8~22\,
	sumout => \Add8~25_sumout\,
	cout => \Add8~26\);

-- Location: FF_X38_Y6_N39
\number_of_exited_none_uni_cars[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add8~25_sumout\,
	sload => VCC,
	ena => \number_of_exited_none_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_none_uni_cars(7));

-- Location: FF_X38_Y6_N19
\number_of_exited_none_uni_cars[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add8~29_sumout\,
	sload => VCC,
	ena => \number_of_exited_none_uni_cars[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_none_uni_cars(8));

-- Location: LABCELL_X20_Y21_N26
\free_space~13DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \free_space~13DUPLICATE_combout\ = ( \always3~0_combout\ & ( \free_space~12_combout\ & ( (!hour(31) & (!\free_space~0_combout\ & ((!\Equal2~5_combout\) # (!\free_space~7_combout\)))) ) ) ) # ( !\always3~0_combout\ & ( \free_space~12_combout\ & ( 
-- (!hour(31) & ((!\Equal2~5_combout\) # (!\free_space~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(31),
	datab => \ALT_INV_free_space~0_combout\,
	datac => \ALT_INV_Equal2~5_combout\,
	datad => \ALT_INV_free_space~7_combout\,
	datae => \ALT_INV_always3~0_combout\,
	dataf => \ALT_INV_free_space~12_combout\,
	combout => \free_space~13DUPLICATE_combout\);

-- Location: FF_X20_Y21_N27
\free_space[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \free_space~13DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \free_space[7]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y18_N28
\free_space~8\ : arriaii_lcell_comb
-- Equation(s):
-- \free_space~8_combout\ = ( \always3~1_combout\ & ( \free_space~7_combout\ & ( ((\Equal2~5_combout\ & ((!\free_space~0_combout\) # (!\always3~0_combout\)))) # (hour(31)) ) ) ) # ( !\always3~1_combout\ & ( \free_space~7_combout\ & ( 
-- (!\free_space~0_combout\) # ((!\always3~0_combout\) # (hour(31))) ) ) ) # ( \always3~1_combout\ & ( !\free_space~7_combout\ & ( hour(31) ) ) ) # ( !\always3~1_combout\ & ( !\free_space~7_combout\ & ( (!\free_space~0_combout\) # ((!\always3~0_combout\) # 
-- (hour(31))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111111000000001111111111111010111111110011001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_free_space~0_combout\,
	datab => \ALT_INV_Equal2~5_combout\,
	datac => \ALT_INV_always3~0_combout\,
	datad => ALT_INV_hour(31),
	datae => \ALT_INV_always3~1_combout\,
	dataf => \ALT_INV_free_space~7_combout\,
	combout => \free_space~8_combout\);

-- Location: FF_X24_Y18_N29
\free_space[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \free_space~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => free_space(4));

-- Location: MLABCELL_X37_Y6_N0
\Add4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( VCC ) + ( !\Add1~1_sumout\ ) + ( !VCC ))
-- \Add4~2\ = CARRY(( VCC ) + ( !\Add1~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~1_sumout\,
	cin => GND,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: MLABCELL_X37_Y6_N2
\Add4~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( !\Add1~5_sumout\ ) + ( free_space(1) ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( !\Add1~5_sumout\ ) + ( free_space(1) ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~5_sumout\,
	dataf => ALT_INV_free_space(1),
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: MLABCELL_X37_Y6_N4
\Add4~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( free_space(8) ) + ( !\Add1~9_sumout\ ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( free_space(8) ) + ( !\Add1~9_sumout\ ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_free_space(8),
	dataf => \ALT_INV_Add1~9_sumout\,
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: MLABCELL_X37_Y6_N6
\Add4~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( !free_space(3) ) + ( !\Add1~13_sumout\ ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( !free_space(3) ) + ( !\Add1~13_sumout\ ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_free_space(3),
	dataf => \ALT_INV_Add1~13_sumout\,
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: MLABCELL_X37_Y6_N8
\Add4~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( free_space(4) ) + ( !\Add1~17_sumout\ ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( free_space(4) ) + ( !\Add1~17_sumout\ ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_free_space(4),
	dataf => \ALT_INV_Add1~17_sumout\,
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: MLABCELL_X37_Y6_N10
\Add4~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( free_space(5) ) + ( !\Add1~21_sumout\ ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( free_space(5) ) + ( !\Add1~21_sumout\ ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_free_space(5),
	dataf => \ALT_INV_Add1~21_sumout\,
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: MLABCELL_X37_Y6_N12
\Add4~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( !\Add1~25_sumout\ ) + ( !free_space(6) ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( !\Add1~25_sumout\ ) + ( !free_space(6) ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~25_sumout\,
	dataf => ALT_INV_free_space(6),
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: MLABCELL_X37_Y6_N14
\Add4~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( !\Add1~29_sumout\ ) + ( !\free_space[7]~DUPLICATE_q\ ) + ( \Add4~26\ ))
-- \Add4~30\ = CARRY(( !\Add1~29_sumout\ ) + ( !\free_space[7]~DUPLICATE_q\ ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~29_sumout\,
	dataf => \ALT_INV_free_space[7]~DUPLICATE_q\,
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: MLABCELL_X37_Y6_N16
\Add4~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( !\Add1~33_sumout\ ) + ( free_space(8) ) + ( \Add4~30\ ))
-- \Add4~34\ = CARRY(( !\Add1~33_sumout\ ) + ( free_space(8) ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_free_space(8),
	datad => \ALT_INV_Add1~33_sumout\,
	cin => \Add4~30\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\);

-- Location: MLABCELL_X37_Y6_N30
\LessThan1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ( !\Add4~25_sumout\ & ( !\Add4~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add4~25_sumout\,
	dataf => \ALT_INV_Add4~29_sumout\,
	combout => \LessThan1~2_combout\);

-- Location: MLABCELL_X37_Y6_N18
\Add4~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( !\Add1~37_sumout\ ) + ( GND ) + ( \Add4~34\ ))
-- \Add4~38\ = CARRY(( !\Add1~37_sumout\ ) + ( GND ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~37_sumout\,
	cin => \Add4~34\,
	sumout => \Add4~37_sumout\,
	cout => \Add4~38\);

-- Location: MLABCELL_X37_Y6_N34
\LessThan1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( !\Add4~17_sumout\ & ( !\Add4~21_sumout\ & ( (!\Add4~1_sumout\ & (!\Add4~5_sumout\ & (!\Add4~13_sumout\ & !\Add4~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~1_sumout\,
	datab => \ALT_INV_Add4~5_sumout\,
	datac => \ALT_INV_Add4~13_sumout\,
	datad => \ALT_INV_Add4~9_sumout\,
	datae => \ALT_INV_Add4~17_sumout\,
	dataf => \ALT_INV_Add4~21_sumout\,
	combout => \LessThan1~0_combout\);

-- Location: MLABCELL_X37_Y6_N20
\Add4~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~41_sumout\ = SUM(( !\number_of_none_uni_total_cars[10]~1_sumout\ ) + ( GND ) + ( \Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_number_of_none_uni_total_cars[10]~1_sumout\,
	cin => \Add4~38\,
	sumout => \Add4~41_sumout\);

-- Location: MLABCELL_X37_Y6_N38
\number_of_entered_none_uni_cars[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \number_of_entered_none_uni_cars[0]~0_combout\ = ( \LessThan1~0_combout\ & ( !\Add4~41_sumout\ & ( (!\is_uni_car_entered~input_o\ & (((!\LessThan1~2_combout\) # (\Add4~37_sumout\)) # (\Add4~33_sumout\))) ) ) ) # ( !\LessThan1~0_combout\ & ( 
-- !\Add4~41_sumout\ & ( !\is_uni_car_entered~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101000101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_uni_car_entered~input_o\,
	datab => \ALT_INV_Add4~33_sumout\,
	datac => \ALT_INV_LessThan1~2_combout\,
	datad => \ALT_INV_Add4~37_sumout\,
	datae => \ALT_INV_LessThan1~0_combout\,
	dataf => \ALT_INV_Add4~41_sumout\,
	combout => \number_of_entered_none_uni_cars[0]~0_combout\);

-- Location: FF_X38_Y6_N25
\number_of_entered_none_uni_cars[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \number_of_entered_none_uni_cars[0]~1_combout\,
	ena => \number_of_entered_none_uni_cars[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_none_uni_cars(0));

-- Location: MLABCELL_X29_Y32_N24
\LessThan0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \Add2~37_sumout\ & ( \Add2~33_sumout\ & ( !\Add2~41_sumout\ ) ) ) # ( !\Add2~37_sumout\ & ( \Add2~33_sumout\ & ( !\Add2~41_sumout\ ) ) ) # ( \Add2~37_sumout\ & ( !\Add2~33_sumout\ & ( !\Add2~41_sumout\ ) ) ) # ( !\Add2~37_sumout\ 
-- & ( !\Add2~33_sumout\ & ( (!\Add2~41_sumout\ & ((!\LessThan0~0_combout\) # ((\Add2~25_sumout\) # (\Add2~29_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_Add2~29_sumout\,
	datac => \ALT_INV_Add2~25_sumout\,
	datad => \ALT_INV_Add2~41_sumout\,
	datae => \ALT_INV_Add2~37_sumout\,
	dataf => \ALT_INV_Add2~33_sumout\,
	combout => \LessThan0~1_combout\);

-- Location: MLABCELL_X37_Y6_N24
\LessThan1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( \Add4~33_sumout\ & ( \Add4~37_sumout\ & ( !\Add4~41_sumout\ ) ) ) # ( !\Add4~33_sumout\ & ( \Add4~37_sumout\ & ( !\Add4~41_sumout\ ) ) ) # ( \Add4~33_sumout\ & ( !\Add4~37_sumout\ & ( !\Add4~41_sumout\ ) ) ) # ( !\Add4~33_sumout\ 
-- & ( !\Add4~37_sumout\ & ( (!\Add4~41_sumout\ & (((!\LessThan1~0_combout\) # (\Add4~25_sumout\)) # (\Add4~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~29_sumout\,
	datab => \ALT_INV_LessThan1~0_combout\,
	datac => \ALT_INV_Add4~25_sumout\,
	datad => \ALT_INV_Add4~41_sumout\,
	datae => \ALT_INV_Add4~33_sumout\,
	dataf => \ALT_INV_Add4~37_sumout\,
	combout => \LessThan1~1_combout\);

ww_uni_parked_car(0) <= \uni_parked_car[0]~output_o\;

ww_uni_parked_car(1) <= \uni_parked_car[1]~output_o\;

ww_uni_parked_car(2) <= \uni_parked_car[2]~output_o\;

ww_uni_parked_car(3) <= \uni_parked_car[3]~output_o\;

ww_uni_parked_car(4) <= \uni_parked_car[4]~output_o\;

ww_uni_parked_car(5) <= \uni_parked_car[5]~output_o\;

ww_uni_parked_car(6) <= \uni_parked_car[6]~output_o\;

ww_uni_parked_car(7) <= \uni_parked_car[7]~output_o\;

ww_uni_parked_car(8) <= \uni_parked_car[8]~output_o\;

ww_uni_parked_car(9) <= \uni_parked_car[9]~output_o\;

ww_uni_parked_car(10) <= \uni_parked_car[10]~output_o\;

ww_parked_car(0) <= \parked_car[0]~output_o\;

ww_parked_car(1) <= \parked_car[1]~output_o\;

ww_parked_car(2) <= \parked_car[2]~output_o\;

ww_parked_car(3) <= \parked_car[3]~output_o\;

ww_parked_car(4) <= \parked_car[4]~output_o\;

ww_parked_car(5) <= \parked_car[5]~output_o\;

ww_parked_car(6) <= \parked_car[6]~output_o\;

ww_parked_car(7) <= \parked_car[7]~output_o\;

ww_parked_car(8) <= \parked_car[8]~output_o\;

ww_parked_car(9) <= \parked_car[9]~output_o\;

ww_parked_car(10) <= \parked_car[10]~output_o\;

ww_uni_vacated_space(0) <= \uni_vacated_space[0]~output_o\;

ww_uni_vacated_space(1) <= \uni_vacated_space[1]~output_o\;

ww_uni_vacated_space(2) <= \uni_vacated_space[2]~output_o\;

ww_uni_vacated_space(3) <= \uni_vacated_space[3]~output_o\;

ww_uni_vacated_space(4) <= \uni_vacated_space[4]~output_o\;

ww_uni_vacated_space(5) <= \uni_vacated_space[5]~output_o\;

ww_uni_vacated_space(6) <= \uni_vacated_space[6]~output_o\;

ww_uni_vacated_space(7) <= \uni_vacated_space[7]~output_o\;

ww_uni_vacated_space(8) <= \uni_vacated_space[8]~output_o\;

ww_uni_vacated_space(9) <= \uni_vacated_space[9]~output_o\;

ww_uni_vacated_space(10) <= \uni_vacated_space[10]~output_o\;

ww_vacated_space(0) <= \vacated_space[0]~output_o\;

ww_vacated_space(1) <= \vacated_space[1]~output_o\;

ww_vacated_space(2) <= \vacated_space[2]~output_o\;

ww_vacated_space(3) <= \vacated_space[3]~output_o\;

ww_vacated_space(4) <= \vacated_space[4]~output_o\;

ww_vacated_space(5) <= \vacated_space[5]~output_o\;

ww_vacated_space(6) <= \vacated_space[6]~output_o\;

ww_vacated_space(7) <= \vacated_space[7]~output_o\;

ww_vacated_space(8) <= \vacated_space[8]~output_o\;

ww_vacated_space(9) <= \vacated_space[9]~output_o\;

ww_vacated_space(10) <= \vacated_space[10]~output_o\;

ww_uni_is_vacated_space <= \uni_is_vacated_space~output_o\;

ww_is_vacated_space <= \is_vacated_space~output_o\;
END structure;


