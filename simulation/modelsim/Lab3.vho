-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "10/14/2026 15:56:17"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab3_1 IS
    PORT (
	clk : IN std_logic;
	uart_rx : IN std_logic;
	ledr : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab3_1;

-- Design Ports Information
-- ledr[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_rx	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3_1 IS
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
SIGNAL ww_uart_rx : std_logic;
SIGNAL ww_ledr : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \uart_rx~input_o\ : std_logic;
SIGNAL \rx_sync[0]~0_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \receiving~0_combout\ : std_logic;
SIGNAL \receiving~q\ : std_logic;
SIGNAL \receiving~1_combout\ : std_logic;
SIGNAL \receiving~DUPLICATE_q\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \bit_count~0_combout\ : std_logic;
SIGNAL \bit_count[1]~3_combout\ : std_logic;
SIGNAL \bit_count~2_combout\ : std_logic;
SIGNAL \bit_count~4_combout\ : std_logic;
SIGNAL \bit_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \bit_count~1_combout\ : std_logic;
SIGNAL \bit_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \rx_data[0]~0_combout\ : std_logic;
SIGNAL \received_byte[0]~feeder_combout\ : std_logic;
SIGNAL \received_byte[0]~0_combout\ : std_logic;
SIGNAL \rx_data[1]~1_combout\ : std_logic;
SIGNAL \rx_data[0]~2_combout\ : std_logic;
SIGNAL \rx_data[2]~3_combout\ : std_logic;
SIGNAL \rx_data[3]~4_combout\ : std_logic;
SIGNAL \rx_data[4]~5_combout\ : std_logic;
SIGNAL \rx_data[5]~6_combout\ : std_logic;
SIGNAL \rx_data[6]~7_combout\ : std_logic;
SIGNAL \received_byte[6]~feeder_combout\ : std_logic;
SIGNAL \rx_data[7]~8_combout\ : std_logic;
SIGNAL received_byte : std_logic_vector(7 DOWNTO 0);
SIGNAL rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL counter : std_logic_vector(3 DOWNTO 0);
SIGNAL bit_count : std_logic_vector(3 DOWNTO 0);
SIGNAL rx_sync : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_bit_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_bit_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_receiving~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_uart_rx~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_data[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~1_combout\ : std_logic;
SIGNAL ALT_INV_rx_sync : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_receiving~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \ALT_INV_bit_count~0_combout\ : std_logic;
SIGNAL ALT_INV_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_bit_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL ALT_INV_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_receiving~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_uart_rx <= uart_rx;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_bit_count[2]~DUPLICATE_q\ <= NOT \bit_count[2]~DUPLICATE_q\;
\ALT_INV_bit_count[0]~DUPLICATE_q\ <= NOT \bit_count[0]~DUPLICATE_q\;
\ALT_INV_counter[3]~DUPLICATE_q\ <= NOT \counter[3]~DUPLICATE_q\;
\ALT_INV_counter[2]~DUPLICATE_q\ <= NOT \counter[2]~DUPLICATE_q\;
\ALT_INV_counter[1]~DUPLICATE_q\ <= NOT \counter[1]~DUPLICATE_q\;
\ALT_INV_receiving~DUPLICATE_q\ <= NOT \receiving~DUPLICATE_q\;
\ALT_INV_uart_rx~input_o\ <= NOT \uart_rx~input_o\;
\ALT_INV_rx_data[0]~2_combout\ <= NOT \rx_data[0]~2_combout\;
\ALT_INV_process_1~1_combout\ <= NOT \process_1~1_combout\;
ALT_INV_rx_sync(0) <= NOT rx_sync(0);
\ALT_INV_receiving~0_combout\ <= NOT \receiving~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
\ALT_INV_bit_count~0_combout\ <= NOT \bit_count~0_combout\;
ALT_INV_rx_data(7) <= NOT rx_data(7);
ALT_INV_rx_data(6) <= NOT rx_data(6);
ALT_INV_rx_data(5) <= NOT rx_data(5);
ALT_INV_rx_data(4) <= NOT rx_data(4);
ALT_INV_rx_data(3) <= NOT rx_data(3);
ALT_INV_rx_data(2) <= NOT rx_data(2);
ALT_INV_rx_data(1) <= NOT rx_data(1);
ALT_INV_bit_count(2) <= NOT bit_count(2);
ALT_INV_bit_count(1) <= NOT bit_count(1);
ALT_INV_rx_sync(1) <= NOT rx_sync(1);
ALT_INV_bit_count(3) <= NOT bit_count(3);
ALT_INV_bit_count(0) <= NOT bit_count(0);
\ALT_INV_process_1~0_combout\ <= NOT \process_1~0_combout\;
ALT_INV_counter(3) <= NOT counter(3);
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(0) <= NOT counter(0);
\ALT_INV_receiving~q\ <= NOT \receiving~q\;
ALT_INV_rx_data(0) <= NOT rx_data(0);

-- Location: IOOBUF_X52_Y0_N2
\ledr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => received_byte(0),
	devoe => ww_devoe,
	o => ww_ledr(0));

-- Location: IOOBUF_X54_Y0_N19
\ledr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => received_byte(1),
	devoe => ww_devoe,
	o => ww_ledr(1));

-- Location: IOOBUF_X52_Y0_N53
\ledr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => received_byte(2),
	devoe => ww_devoe,
	o => ww_ledr(2));

-- Location: IOOBUF_X52_Y0_N36
\ledr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => received_byte(3),
	devoe => ww_devoe,
	o => ww_ledr(3));

-- Location: IOOBUF_X50_Y0_N42
\ledr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => received_byte(4),
	devoe => ww_devoe,
	o => ww_ledr(4));

-- Location: IOOBUF_X50_Y0_N59
\ledr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => received_byte(5),
	devoe => ww_devoe,
	o => ww_ledr(5));

-- Location: IOOBUF_X52_Y0_N19
\ledr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => received_byte(6),
	devoe => ww_devoe,
	o => ww_ledr(6));

-- Location: IOOBUF_X50_Y0_N76
\ledr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => received_byte(7),
	devoe => ww_devoe,
	o => ww_ledr(7));

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
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

-- Location: IOIBUF_X50_Y0_N92
\uart_rx~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_rx,
	o => \uart_rx~input_o\);

-- Location: LABCELL_X51_Y1_N30
\rx_sync[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_sync[0]~0_combout\ = !\uart_rx~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_uart_rx~input_o\,
	combout => \rx_sync[0]~0_combout\);

-- Location: FF_X51_Y1_N38
\rx_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \rx_sync[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_sync(0));

-- Location: FF_X50_Y1_N26
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LABCELL_X50_Y1_N24
\counter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = ( !counter(1) & ( counter(0) & ( (!\Equal1~0_combout\ & !\process_1~1_combout\) ) ) ) # ( counter(1) & ( !counter(0) & ( (!\Equal1~0_combout\ & !\process_1~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_process_1~1_combout\,
	datae => ALT_INV_counter(1),
	dataf => ALT_INV_counter(0),
	combout => \counter~1_combout\);

-- Location: FF_X50_Y1_N25
\counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y1_N0
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( \counter[3]~DUPLICATE_q\ & ( counter(0) & ( (!\counter[2]~DUPLICATE_q\ & !\counter[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter[2]~DUPLICATE_q\,
	datab => \ALT_INV_counter[1]~DUPLICATE_q\,
	datae => \ALT_INV_counter[3]~DUPLICATE_q\,
	dataf => ALT_INV_counter(0),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X51_Y1_N24
\receiving~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \receiving~0_combout\ = ( bit_count(1) & ( bit_count(3) ) ) # ( !bit_count(1) & ( (bit_count(3) & ((\bit_count[2]~DUPLICATE_q\) # (\bit_count[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_bit_count[0]~DUPLICATE_q\,
	datac => ALT_INV_bit_count(3),
	datad => \ALT_INV_bit_count[2]~DUPLICATE_q\,
	dataf => ALT_INV_bit_count(1),
	combout => \receiving~0_combout\);

-- Location: FF_X51_Y1_N28
receiving : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \receiving~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiving~q\);

-- Location: LABCELL_X51_Y1_N27
\receiving~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \receiving~1_combout\ = ( \process_1~1_combout\ ) # ( !\process_1~1_combout\ & ( (\receiving~q\ & ((!\Equal1~0_combout\) # (!\receiving~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_receiving~0_combout\,
	datad => \ALT_INV_receiving~q\,
	dataf => \ALT_INV_process_1~1_combout\,
	combout => \receiving~1_combout\);

-- Location: FF_X51_Y1_N29
\receiving~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \receiving~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiving~DUPLICATE_q\);

-- Location: FF_X51_Y1_N32
\rx_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_sync(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_sync(1));

-- Location: LABCELL_X51_Y1_N12
\process_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = ( !rx_sync(1) & ( (rx_sync(0) & !\receiving~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rx_sync(0),
	datad => \ALT_INV_receiving~DUPLICATE_q\,
	dataf => ALT_INV_rx_sync(1),
	combout => \process_1~1_combout\);

-- Location: FF_X51_Y1_N22
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: FF_X51_Y1_N19
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LABCELL_X51_Y1_N21
\counter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = ( counter(2) & ( (!\process_1~1_combout\ & (!counter(3) $ (((!counter(0)) # (!\counter[1]~DUPLICATE_q\))))) ) ) # ( !counter(2) & ( (!\process_1~1_combout\ & (counter(3) & ((!counter(0)) # (\counter[1]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001100000000001000110000000100110010000000010011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(0),
	datab => \ALT_INV_process_1~1_combout\,
	datac => \ALT_INV_counter[1]~DUPLICATE_q\,
	datad => ALT_INV_counter(3),
	dataf => ALT_INV_counter(2),
	combout => \counter~3_combout\);

-- Location: FF_X51_Y1_N23
\counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y1_N33
\counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = ( \counter[1]~DUPLICATE_q\ & ( (!counter(0)) # (\process_1~1_combout\) ) ) # ( !\counter[1]~DUPLICATE_q\ & ( (!counter(0)) # ((\process_1~1_combout\ & ((!\counter[3]~DUPLICATE_q\) # (counter(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100100011111111110010001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter[3]~DUPLICATE_q\,
	datab => \ALT_INV_process_1~1_combout\,
	datac => ALT_INV_counter(2),
	datad => ALT_INV_counter(0),
	dataf => \ALT_INV_counter[1]~DUPLICATE_q\,
	combout => \counter~0_combout\);

-- Location: FF_X51_Y1_N35
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LABCELL_X51_Y1_N18
\counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = ( counter(1) & ( (!counter(0) $ (!counter(2))) # (\process_1~1_combout\) ) ) # ( !counter(1) & ( ((\process_1~1_combout\ & ((!counter(0)) # (!counter(3))))) # (counter(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001011111111001100101111111101110111101110110111011110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(0),
	datab => \ALT_INV_process_1~1_combout\,
	datac => ALT_INV_counter(3),
	datad => ALT_INV_counter(2),
	dataf => ALT_INV_counter(1),
	combout => \counter~2_combout\);

-- Location: FF_X51_Y1_N20
\counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y1_N42
\process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = ( !\counter[1]~DUPLICATE_q\ & ( (!\counter[2]~DUPLICATE_q\ & (\receiving~q\ & (counter(0) & \counter[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter[2]~DUPLICATE_q\,
	datab => \ALT_INV_receiving~q\,
	datac => ALT_INV_counter(0),
	datad => \ALT_INV_counter[3]~DUPLICATE_q\,
	dataf => \ALT_INV_counter[1]~DUPLICATE_q\,
	combout => \process_1~0_combout\);

-- Location: LABCELL_X51_Y1_N39
\bit_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_count~0_combout\ = ( bit_count(1) & ( \process_1~0_combout\ & ( (!bit_count(3) & !\bit_count[0]~DUPLICATE_q\) ) ) ) # ( !bit_count(1) & ( \process_1~0_combout\ & ( (!bit_count(3) & \bit_count[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_count(3),
	datad => \ALT_INV_bit_count[0]~DUPLICATE_q\,
	datae => ALT_INV_bit_count(1),
	dataf => \ALT_INV_process_1~0_combout\,
	combout => \bit_count~0_combout\);

-- Location: LABCELL_X51_Y1_N57
\bit_count[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_count[1]~3_combout\ = ( \process_1~0_combout\ & ( !\process_1~1_combout\ ) ) # ( !\process_1~0_combout\ & ( \process_1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1~1_combout\,
	dataf => \ALT_INV_process_1~0_combout\,
	combout => \bit_count[1]~3_combout\);

-- Location: FF_X51_Y1_N5
\bit_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \bit_count~0_combout\,
	sload => VCC,
	ena => \bit_count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(1));

-- Location: LABCELL_X51_Y1_N9
\bit_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_count~2_combout\ = ( \process_1~0_combout\ & ( (!bit_count(3) & (bit_count(1) & (\bit_count[0]~DUPLICATE_q\ & \bit_count[2]~DUPLICATE_q\))) # (bit_count(3) & (!bit_count(1) & (!\bit_count[0]~DUPLICATE_q\ & !\bit_count[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000100100000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_count(3),
	datab => ALT_INV_bit_count(1),
	datac => \ALT_INV_bit_count[0]~DUPLICATE_q\,
	datad => \ALT_INV_bit_count[2]~DUPLICATE_q\,
	dataf => \ALT_INV_process_1~0_combout\,
	combout => \bit_count~2_combout\);

-- Location: FF_X51_Y1_N50
\bit_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \bit_count~2_combout\,
	sload => VCC,
	ena => \bit_count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(3));

-- Location: FF_X51_Y1_N8
\bit_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bit_count~4_combout\,
	ena => \bit_count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(2));

-- Location: LABCELL_X51_Y1_N6
\bit_count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_count~4_combout\ = ( \process_1~0_combout\ & ( (!bit_count(3) & (!bit_count(2) $ (((!bit_count(1)) # (!\bit_count[0]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010101010000000001010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_count(3),
	datab => ALT_INV_bit_count(1),
	datac => \ALT_INV_bit_count[0]~DUPLICATE_q\,
	datad => ALT_INV_bit_count(2),
	dataf => \ALT_INV_process_1~0_combout\,
	combout => \bit_count~4_combout\);

-- Location: FF_X51_Y1_N7
\bit_count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bit_count~4_combout\,
	ena => \bit_count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit_count[2]~DUPLICATE_q\);

-- Location: FF_X50_Y1_N38
\bit_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bit_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_count(0));

-- Location: LABCELL_X50_Y1_N36
\bit_count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_count~1_combout\ = ( !bit_count(0) & ( \process_1~1_combout\ & ( (\process_1~0_combout\ & ((!bit_count(3)) # ((!\bit_count[2]~DUPLICATE_q\ & !bit_count(1))))) ) ) ) # ( bit_count(0) & ( !\process_1~1_combout\ & ( !\process_1~0_combout\ ) ) ) # ( 
-- !bit_count(0) & ( !\process_1~1_combout\ & ( (\process_1~0_combout\ & ((!bit_count(3)) # ((!\bit_count[2]~DUPLICATE_q\ & !bit_count(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100000110011001100110000110011001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bit_count[2]~DUPLICATE_q\,
	datab => \ALT_INV_process_1~0_combout\,
	datac => ALT_INV_bit_count(1),
	datad => ALT_INV_bit_count(3),
	datae => ALT_INV_bit_count(0),
	dataf => \ALT_INV_process_1~1_combout\,
	combout => \bit_count~1_combout\);

-- Location: FF_X50_Y1_N37
\bit_count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bit_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit_count[0]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y1_N9
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( bit_count(1) & ( !\bit_count[2]~DUPLICATE_q\ ) ) # ( !bit_count(1) & ( !\bit_count[0]~DUPLICATE_q\ $ (!\bit_count[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_bit_count[0]~DUPLICATE_q\,
	datad => \ALT_INV_bit_count[2]~DUPLICATE_q\,
	dataf => ALT_INV_bit_count(1),
	combout => \Add1~0_combout\);

-- Location: LABCELL_X50_Y1_N6
\rx_data[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[0]~0_combout\ = ( bit_count(0) & ( (!\Add1~0_combout\ & (((rx_data(0))))) # (\Add1~0_combout\ & ((!\bit_count~0_combout\ & ((rx_data(0)))) # (\bit_count~0_combout\ & (!rx_sync(1))))) ) ) # ( !bit_count(0) & ( rx_data(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000100111111100000010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => ALT_INV_rx_sync(1),
	datac => \ALT_INV_bit_count~0_combout\,
	datad => ALT_INV_rx_data(0),
	dataf => ALT_INV_bit_count(0),
	combout => \rx_data[0]~0_combout\);

-- Location: FF_X50_Y1_N7
\rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(0));

-- Location: LABCELL_X51_Y1_N15
\received_byte[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \received_byte[0]~feeder_combout\ = rx_data(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rx_data(0),
	combout => \received_byte[0]~feeder_combout\);

-- Location: LABCELL_X51_Y1_N51
\received_byte[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \received_byte[0]~0_combout\ = ( \bit_count[0]~DUPLICATE_q\ & ( \process_1~0_combout\ & ( (!bit_count(2) & (!rx_sync(1) & (!bit_count(1) & bit_count(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_count(2),
	datab => ALT_INV_rx_sync(1),
	datac => ALT_INV_bit_count(1),
	datad => ALT_INV_bit_count(3),
	datae => \ALT_INV_bit_count[0]~DUPLICATE_q\,
	dataf => \ALT_INV_process_1~0_combout\,
	combout => \received_byte[0]~0_combout\);

-- Location: FF_X51_Y1_N17
\received_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \received_byte[0]~feeder_combout\,
	ena => \received_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_byte(0));

-- Location: LABCELL_X50_Y1_N18
\rx_data[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[1]~1_combout\ = ( rx_sync(1) & ( (rx_data(1) & ((!\bit_count~0_combout\) # ((!\Add1~0_combout\) # (bit_count(0))))) ) ) # ( !rx_sync(1) & ( ((\bit_count~0_combout\ & (\Add1~0_combout\ & !bit_count(0)))) # (rx_data(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011111111000100001111111100000000111011110000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bit_count~0_combout\,
	datab => \ALT_INV_Add1~0_combout\,
	datac => ALT_INV_bit_count(0),
	datad => ALT_INV_rx_data(1),
	dataf => ALT_INV_rx_sync(1),
	combout => \rx_data[1]~1_combout\);

-- Location: FF_X50_Y1_N19
\rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rx_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(1));

-- Location: FF_X51_Y1_N47
\received_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_data(1),
	sload => VCC,
	ena => \received_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_byte(1));

-- Location: LABCELL_X50_Y1_N51
\rx_data[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[0]~2_combout\ = ( \process_1~0_combout\ & ( \bit_count[2]~DUPLICATE_q\ & ( !bit_count(3) ) ) ) # ( \process_1~0_combout\ & ( !\bit_count[2]~DUPLICATE_q\ & ( !bit_count(3) $ (((!bit_count(0) & !bit_count(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110101111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_count(0),
	datac => ALT_INV_bit_count(3),
	datad => ALT_INV_bit_count(1),
	datae => \ALT_INV_process_1~0_combout\,
	dataf => \ALT_INV_bit_count[2]~DUPLICATE_q\,
	combout => \rx_data[0]~2_combout\);

-- Location: LABCELL_X50_Y1_N30
\rx_data[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[2]~3_combout\ = ( rx_data(2) & ( \rx_data[0]~2_combout\ & ( (!rx_sync(1)) # ((!bit_count(1)) # ((!bit_count(0)) # (\bit_count[2]~DUPLICATE_q\))) ) ) ) # ( !rx_data(2) & ( \rx_data[0]~2_combout\ & ( (!rx_sync(1) & (bit_count(1) & (bit_count(0) & 
-- !\bit_count[2]~DUPLICATE_q\))) ) ) ) # ( rx_data(2) & ( !\rx_data[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000010000000001111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rx_sync(1),
	datab => ALT_INV_bit_count(1),
	datac => ALT_INV_bit_count(0),
	datad => \ALT_INV_bit_count[2]~DUPLICATE_q\,
	datae => ALT_INV_rx_data(2),
	dataf => \ALT_INV_rx_data[0]~2_combout\,
	combout => \rx_data[2]~3_combout\);

-- Location: FF_X50_Y1_N31
\rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rx_data[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(2));

-- Location: FF_X51_Y1_N43
\received_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_data(2),
	sload => VCC,
	ena => \received_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_byte(2));

-- Location: LABCELL_X50_Y1_N12
\rx_data[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[3]~4_combout\ = ( rx_data(3) & ( \rx_data[0]~2_combout\ & ( (((!rx_sync(1)) # (!\bit_count[2]~DUPLICATE_q\)) # (bit_count(1))) # (bit_count(0)) ) ) ) # ( !rx_data(3) & ( \rx_data[0]~2_combout\ & ( (!bit_count(0) & (!bit_count(1) & (!rx_sync(1) & 
-- \bit_count[2]~DUPLICATE_q\))) ) ) ) # ( rx_data(3) & ( !\rx_data[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000100000001111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_count(0),
	datab => ALT_INV_bit_count(1),
	datac => ALT_INV_rx_sync(1),
	datad => \ALT_INV_bit_count[2]~DUPLICATE_q\,
	datae => ALT_INV_rx_data(3),
	dataf => \ALT_INV_rx_data[0]~2_combout\,
	combout => \rx_data[3]~4_combout\);

-- Location: FF_X50_Y1_N13
\rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rx_data[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(3));

-- Location: FF_X51_Y1_N16
\received_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_data(3),
	sload => VCC,
	ena => \received_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_byte(3));

-- Location: LABCELL_X50_Y1_N21
\rx_data[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[4]~5_combout\ = ( rx_sync(1) & ( (rx_data(4) & ((!\bit_count~0_combout\) # ((!\bit_count[0]~DUPLICATE_q\) # (\Add1~0_combout\)))) ) ) # ( !rx_sync(1) & ( ((\bit_count~0_combout\ & (!\Add1~0_combout\ & \bit_count[0]~DUPLICATE_q\))) # (rx_data(4)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000000111110110000000011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bit_count~0_combout\,
	datab => \ALT_INV_Add1~0_combout\,
	datac => \ALT_INV_bit_count[0]~DUPLICATE_q\,
	datad => ALT_INV_rx_data(4),
	dataf => ALT_INV_rx_sync(1),
	combout => \rx_data[4]~5_combout\);

-- Location: FF_X50_Y1_N22
\rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rx_data[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(4));

-- Location: FF_X51_Y1_N55
\received_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_data(4),
	sload => VCC,
	ena => \received_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_byte(4));

-- Location: LABCELL_X50_Y1_N3
\rx_data[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[5]~6_combout\ = ( rx_data(5) & ( rx_sync(1) & ( (!\bit_count~0_combout\) # ((bit_count(0)) # (\Add1~0_combout\)) ) ) ) # ( rx_data(5) & ( !rx_sync(1) ) ) # ( !rx_data(5) & ( !rx_sync(1) & ( (\bit_count~0_combout\ & (!\Add1~0_combout\ & 
-- !bit_count(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000111111111111111100000000000000001010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bit_count~0_combout\,
	datac => \ALT_INV_Add1~0_combout\,
	datad => ALT_INV_bit_count(0),
	datae => ALT_INV_rx_data(5),
	dataf => ALT_INV_rx_sync(1),
	combout => \rx_data[5]~6_combout\);

-- Location: FF_X50_Y1_N4
\rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rx_data[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(5));

-- Location: FF_X51_Y1_N59
\received_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_data(5),
	sload => VCC,
	ena => \received_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_byte(5));

-- Location: LABCELL_X50_Y1_N54
\rx_data[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[6]~7_combout\ = ( rx_data(6) & ( \rx_data[0]~2_combout\ & ( (!bit_count(0)) # ((!bit_count(1)) # ((!rx_sync(1)) # (!\bit_count[2]~DUPLICATE_q\))) ) ) ) # ( !rx_data(6) & ( \rx_data[0]~2_combout\ & ( (bit_count(0) & (bit_count(1) & (!rx_sync(1) & 
-- \bit_count[2]~DUPLICATE_q\))) ) ) ) # ( rx_data(6) & ( !\rx_data[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000100001111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_count(0),
	datab => ALT_INV_bit_count(1),
	datac => ALT_INV_rx_sync(1),
	datad => \ALT_INV_bit_count[2]~DUPLICATE_q\,
	datae => ALT_INV_rx_data(6),
	dataf => \ALT_INV_rx_data[0]~2_combout\,
	combout => \rx_data[6]~7_combout\);

-- Location: FF_X50_Y1_N56
\rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rx_data[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(6));

-- Location: LABCELL_X51_Y1_N45
\received_byte[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \received_byte[6]~feeder_combout\ = rx_data(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_rx_data(6),
	combout => \received_byte[6]~feeder_combout\);

-- Location: FF_X51_Y1_N46
\received_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \received_byte[6]~feeder_combout\,
	ena => \received_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_byte(6));

-- Location: LABCELL_X50_Y1_N42
\rx_data[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[7]~8_combout\ = ( rx_data(7) & ( \rx_data[0]~2_combout\ & ( (((!rx_sync(1)) # (\bit_count[2]~DUPLICATE_q\)) # (bit_count(1))) # (bit_count(0)) ) ) ) # ( !rx_data(7) & ( \rx_data[0]~2_combout\ & ( (!bit_count(0) & (!bit_count(1) & (!rx_sync(1) & 
-- !\bit_count[2]~DUPLICATE_q\))) ) ) ) # ( rx_data(7) & ( !\rx_data[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_count(0),
	datab => ALT_INV_bit_count(1),
	datac => ALT_INV_rx_sync(1),
	datad => \ALT_INV_bit_count[2]~DUPLICATE_q\,
	datae => ALT_INV_rx_data(7),
	dataf => \ALT_INV_rx_data[0]~2_combout\,
	combout => \rx_data[7]~8_combout\);

-- Location: FF_X50_Y1_N44
\rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rx_data[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data(7));

-- Location: FF_X51_Y1_N14
\received_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => rx_data(7),
	sload => VCC,
	ena => \received_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => received_byte(7));

-- Location: LABCELL_X85_Y10_N3
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


