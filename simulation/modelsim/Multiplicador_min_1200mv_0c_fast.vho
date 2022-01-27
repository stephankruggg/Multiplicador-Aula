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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/16/2021 13:52:03"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multiplicador IS
    PORT (
	inicio : IN std_logic;
	Reset : IN std_logic;
	clk : IN std_logic;
	entA : IN std_logic_vector(3 DOWNTO 0);
	entB : IN std_logic_vector(3 DOWNTO 0);
	pronto : OUT std_logic;
	saida : OUT std_logic_vector(3 DOWNTO 0)
	);
END multiplicador;

-- Design Ports Information
-- pronto	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entB[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entA[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entB[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entA[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entB[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entA[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entB[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entA[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inicio	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiplicador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inicio : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_entA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_entB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pronto : std_logic;
SIGNAL ww_saida : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BlocoControlador|Selector8~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BlocoOperativo|mux2|y[0]~0_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~5_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~8_combout\ : std_logic;
SIGNAL \BlocoOperativo|mux2|y[3]~3_combout\ : std_logic;
SIGNAL \BlocoOperativo|mux1|y[0]~0_combout\ : std_logic;
SIGNAL \entA[0]~input_o\ : std_logic;
SIGNAL \entB[2]~input_o\ : std_logic;
SIGNAL \entA[3]~input_o\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[2]~feeder_combout\ : std_logic;
SIGNAL \pronto~output_o\ : std_logic;
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \inicio~input_o\ : std_logic;
SIGNAL \BlocoControlador|eAtual.S0~feeder_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \BlocoControlador|eAtual.S0~q\ : std_logic;
SIGNAL \BlocoControlador|Selector8~0_combout\ : std_logic;
SIGNAL \BlocoControlador|Selector8~0clkctrl_outclk\ : std_logic;
SIGNAL \BlocoControlador|eProx.S4_115~combout\ : std_logic;
SIGNAL \BlocoControlador|eAtual.S4~q\ : std_logic;
SIGNAL \entA[2]~input_o\ : std_logic;
SIGNAL \entB[3]~input_o\ : std_logic;
SIGNAL \entB[1]~input_o\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[1]~feeder_combout\ : std_logic;
SIGNAL \entB[0]~input_o\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[0]~feeder_combout\ : std_logic;
SIGNAL \BlocoOperativo|geraBz|Equal0~0_combout\ : std_logic;
SIGNAL \BlocoControlador|Selector1~0_combout\ : std_logic;
SIGNAL \BlocoControlador|eProx.S5_106~combout\ : std_logic;
SIGNAL \BlocoControlador|eAtual.S5~q\ : std_logic;
SIGNAL \BlocoControlador|WideOr1~0_combout\ : std_logic;
SIGNAL \BlocoControlador|eProx.S1_142~combout\ : std_logic;
SIGNAL \BlocoControlador|eAtual.S1~q\ : std_logic;
SIGNAL \BlocoOperativo|mux2|y[2]~2_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~0_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~2_cout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~4\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~6_combout\ : std_logic;
SIGNAL \entA[1]~input_o\ : std_logic;
SIGNAL \BlocoOperativo|mux1|y[1]~1_combout\ : std_logic;
SIGNAL \BlocoControlador|CA~combout\ : std_logic;
SIGNAL \BlocoOperativo|mux2|y[1]~1_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~7\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~9_combout\ : std_logic;
SIGNAL \BlocoOperativo|mux1|y[2]~2_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~11_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~10\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~12_combout\ : std_logic;
SIGNAL \BlocoOperativo|mux1|y[3]~3_combout\ : std_logic;
SIGNAL \BlocoOperativo|geraAz|Equal0~0_combout\ : std_logic;
SIGNAL \BlocoControlador|eProx.S2_133~combout\ : std_logic;
SIGNAL \BlocoControlador|eAtual.S2~q\ : std_logic;
SIGNAL \BlocoControlador|Selector3~0_combout\ : std_logic;
SIGNAL \BlocoControlador|eProx.S3_124~combout\ : std_logic;
SIGNAL \BlocoControlador|eAtual.S3~q\ : std_logic;
SIGNAL \BlocoControlador|pronto~1_combout\ : std_logic;
SIGNAL \BlocoControlador|pronto~combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~3_combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BlocoOperativo|regA|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BlocoOperativo|regB|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \BlocoControlador|ALT_INV_eAtual.S1~q\ : std_logic;

BEGIN

ww_inicio <= inicio;
ww_Reset <= Reset;
ww_clk <= clk;
ww_entA <= entA;
ww_entB <= entB;
pronto <= ww_pronto;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\BlocoControlador|Selector8~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \BlocoControlador|Selector8~0_combout\);
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
\BlocoControlador|ALT_INV_eAtual.S1~q\ <= NOT \BlocoControlador|eAtual.S1~q\;

-- Location: FF_X20_Y2_N11
\BlocoOperativo|regA|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoOperativo|mux1|y[0]~0_combout\,
	ena => \BlocoControlador|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regA|q\(0));

-- Location: LCCOMB_X19_Y2_N30
\BlocoOperativo|mux2|y[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux2|y[0]~0_combout\ = (\BlocoControlador|eAtual.S4~q\ & ((\BlocoOperativo|regA|q\(0)))) # (!\BlocoControlador|eAtual.S4~q\ & (\BlocoOperativo|regP|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlocoOperativo|regP|q\(0),
	datac => \BlocoOperativo|regA|q\(0),
	datad => \BlocoControlador|eAtual.S4~q\,
	combout => \BlocoOperativo|mux2|y[0]~0_combout\);

-- Location: LCCOMB_X18_Y2_N26
\BlocoOperativo|somasub|Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~5_combout\ = (\BlocoControlador|eAtual.S4~q\) # (\BlocoOperativo|regB|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlocoControlador|eAtual.S4~q\,
	datad => \BlocoOperativo|regB|q\(1),
	combout => \BlocoOperativo|somasub|Add0~5_combout\);

-- Location: FF_X18_Y2_N9
\BlocoOperativo|regB|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoOperativo|regB|q[2]~feeder_combout\,
	ena => \BlocoControlador|eAtual.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regB|q\(2));

-- Location: LCCOMB_X18_Y2_N30
\BlocoOperativo|somasub|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~8_combout\ = (\BlocoControlador|eAtual.S4~q\) # (\BlocoOperativo|regB|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlocoControlador|eAtual.S4~q\,
	datad => \BlocoOperativo|regB|q\(2),
	combout => \BlocoOperativo|somasub|Add0~8_combout\);

-- Location: LCCOMB_X20_Y2_N6
\BlocoOperativo|mux2|y[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux2|y[3]~3_combout\ = (\BlocoControlador|eAtual.S4~q\ & ((\BlocoOperativo|regA|q\(3)))) # (!\BlocoControlador|eAtual.S4~q\ & (\BlocoOperativo|regP|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S4~q\,
	datac => \BlocoOperativo|regP|q\(3),
	datad => \BlocoOperativo|regA|q\(3),
	combout => \BlocoOperativo|mux2|y[3]~3_combout\);

-- Location: LCCOMB_X20_Y2_N10
\BlocoOperativo|mux1|y[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux1|y[0]~0_combout\ = (\BlocoControlador|eAtual.S1~q\ & (\entA[0]~input_o\)) # (!\BlocoControlador|eAtual.S1~q\ & ((\BlocoOperativo|somasub|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlocoControlador|eAtual.S1~q\,
	datac => \entA[0]~input_o\,
	datad => \BlocoOperativo|somasub|Add0~3_combout\,
	combout => \BlocoOperativo|mux1|y[0]~0_combout\);

-- Location: IOIBUF_X20_Y0_N1
\entA[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entA(0),
	o => \entA[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\entB[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entB(2),
	o => \entB[2]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\entA[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entA(3),
	o => \entA[3]~input_o\);

-- Location: LCCOMB_X18_Y2_N8
\BlocoOperativo|regB|q[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regB|q[2]~feeder_combout\ = \entB[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB[2]~input_o\,
	combout => \BlocoOperativo|regB|q[2]~feeder_combout\);

-- Location: IOOBUF_X12_Y0_N2
\pronto~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BlocoControlador|pronto~combout\,
	devoe => ww_devoe,
	o => \pronto~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\saida[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BlocoOperativo|regP|q\(0),
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\saida[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BlocoOperativo|regP|q\(1),
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\saida[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BlocoOperativo|regP|q\(2),
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\saida[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BlocoOperativo|regP|q\(3),
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOIBUF_X14_Y0_N8
\inicio~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inicio,
	o => \inicio~input_o\);

-- Location: LCCOMB_X15_Y1_N0
\BlocoControlador|eAtual.S0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|eAtual.S0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \BlocoControlador|eAtual.S0~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N22
\Reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G19
\Reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: FF_X15_Y1_N1
\BlocoControlador|eAtual.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BlocoControlador|eAtual.S0~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoControlador|eAtual.S0~q\);

-- Location: LCCOMB_X15_Y1_N18
\BlocoControlador|Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|Selector8~0_combout\ = (\inicio~input_o\) # (\BlocoControlador|eAtual.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inicio~input_o\,
	datad => \BlocoControlador|eAtual.S0~q\,
	combout => \BlocoControlador|Selector8~0_combout\);

-- Location: CLKCTRL_G16
\BlocoControlador|Selector8~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \BlocoControlador|Selector8~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \BlocoControlador|Selector8~0clkctrl_outclk\);

-- Location: LCCOMB_X20_Y2_N4
\BlocoControlador|eProx.S4_115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|eProx.S4_115~combout\ = (GLOBAL(\BlocoControlador|Selector8~0clkctrl_outclk\) & (\BlocoControlador|eAtual.S3~q\)) # (!GLOBAL(\BlocoControlador|Selector8~0clkctrl_outclk\) & ((\BlocoControlador|eProx.S4_115~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S3~q\,
	datac => \BlocoControlador|eProx.S4_115~combout\,
	datad => \BlocoControlador|Selector8~0clkctrl_outclk\,
	combout => \BlocoControlador|eProx.S4_115~combout\);

-- Location: FF_X20_Y2_N5
\BlocoControlador|eAtual.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BlocoControlador|eProx.S4_115~combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoControlador|eAtual.S4~q\);

-- Location: IOIBUF_X24_Y0_N8
\entA[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entA(2),
	o => \entA[2]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\entB[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entB(3),
	o => \entB[3]~input_o\);

-- Location: FF_X18_Y2_N29
\BlocoOperativo|regB|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \entB[3]~input_o\,
	sload => VCC,
	ena => \BlocoControlador|eAtual.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regB|q\(3));

-- Location: IOIBUF_X14_Y0_N1
\entB[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entB(1),
	o => \entB[1]~input_o\);

-- Location: LCCOMB_X18_Y2_N4
\BlocoOperativo|regB|q[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regB|q[1]~feeder_combout\ = \entB[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB[1]~input_o\,
	combout => \BlocoOperativo|regB|q[1]~feeder_combout\);

-- Location: FF_X18_Y2_N5
\BlocoOperativo|regB|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoOperativo|regB|q[1]~feeder_combout\,
	ena => \BlocoControlador|eAtual.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regB|q\(1));

-- Location: IOIBUF_X22_Y0_N8
\entB[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entB(0),
	o => \entB[0]~input_o\);

-- Location: LCCOMB_X18_Y2_N24
\BlocoOperativo|regB|q[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|regB|q[0]~feeder_combout\ = \entB[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB[0]~input_o\,
	combout => \BlocoOperativo|regB|q[0]~feeder_combout\);

-- Location: FF_X18_Y2_N25
\BlocoOperativo|regB|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoOperativo|regB|q[0]~feeder_combout\,
	ena => \BlocoControlador|eAtual.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regB|q\(0));

-- Location: LCCOMB_X18_Y2_N14
\BlocoOperativo|geraBz|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|geraBz|Equal0~0_combout\ = (!\BlocoOperativo|regB|q\(2) & (!\BlocoOperativo|regB|q\(3) & (!\BlocoOperativo|regB|q\(1) & !\BlocoOperativo|regB|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regB|q\(2),
	datab => \BlocoOperativo|regB|q\(3),
	datac => \BlocoOperativo|regB|q\(1),
	datad => \BlocoOperativo|regB|q\(0),
	combout => \BlocoOperativo|geraBz|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y2_N6
\BlocoControlador|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|Selector1~0_combout\ = (\BlocoControlador|eAtual.S2~q\ & ((\BlocoOperativo|geraAz|Equal0~0_combout\) # (\BlocoOperativo|geraBz|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S2~q\,
	datab => \BlocoOperativo|geraAz|Equal0~0_combout\,
	datad => \BlocoOperativo|geraBz|Equal0~0_combout\,
	combout => \BlocoControlador|Selector1~0_combout\);

-- Location: LCCOMB_X19_Y2_N0
\BlocoControlador|eProx.S5_106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|eProx.S5_106~combout\ = (GLOBAL(\BlocoControlador|Selector8~0clkctrl_outclk\) & ((\BlocoControlador|Selector1~0_combout\))) # (!GLOBAL(\BlocoControlador|Selector8~0clkctrl_outclk\) & (\BlocoControlador|eProx.S5_106~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eProx.S5_106~combout\,
	datac => \BlocoControlador|Selector8~0clkctrl_outclk\,
	datad => \BlocoControlador|Selector1~0_combout\,
	combout => \BlocoControlador|eProx.S5_106~combout\);

-- Location: FF_X19_Y2_N1
\BlocoControlador|eAtual.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoControlador|eProx.S5_106~combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoControlador|eAtual.S5~q\);

-- Location: LCCOMB_X19_Y2_N8
\BlocoControlador|WideOr1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|WideOr1~0_combout\ = (\BlocoControlador|eAtual.S5~q\) # (!\BlocoControlador|eAtual.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlocoControlador|eAtual.S0~q\,
	datad => \BlocoControlador|eAtual.S5~q\,
	combout => \BlocoControlador|WideOr1~0_combout\);

-- Location: LCCOMB_X19_Y2_N4
\BlocoControlador|eProx.S1_142\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|eProx.S1_142~combout\ = (GLOBAL(\BlocoControlador|Selector8~0clkctrl_outclk\) & ((\BlocoControlador|WideOr1~0_combout\))) # (!GLOBAL(\BlocoControlador|Selector8~0clkctrl_outclk\) & (\BlocoControlador|eProx.S1_142~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlocoControlador|eProx.S1_142~combout\,
	datac => \BlocoControlador|Selector8~0clkctrl_outclk\,
	datad => \BlocoControlador|WideOr1~0_combout\,
	combout => \BlocoControlador|eProx.S1_142~combout\);

-- Location: FF_X19_Y2_N5
\BlocoControlador|eAtual.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoControlador|eProx.S1_142~combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoControlador|eAtual.S1~q\);

-- Location: FF_X19_Y2_N11
\BlocoOperativo|regP|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BlocoOperativo|somasub|Add0~9_combout\,
	clrn => \BlocoControlador|ALT_INV_eAtual.S1~q\,
	sload => VCC,
	ena => \BlocoControlador|eAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regP|q\(2));

-- Location: LCCOMB_X20_Y2_N12
\BlocoOperativo|mux2|y[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux2|y[2]~2_combout\ = (\BlocoControlador|eAtual.S4~q\ & (\BlocoOperativo|regA|q\(2))) # (!\BlocoControlador|eAtual.S4~q\ & ((\BlocoOperativo|regP|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S4~q\,
	datac => \BlocoOperativo|regA|q\(2),
	datad => \BlocoOperativo|regP|q\(2),
	combout => \BlocoOperativo|mux2|y[2]~2_combout\);

-- Location: LCCOMB_X18_Y2_N6
\BlocoOperativo|somasub|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~0_combout\ = (!\BlocoControlador|eAtual.S4~q\ & \BlocoOperativo|regB|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlocoControlador|eAtual.S4~q\,
	datad => \BlocoOperativo|regB|q\(0),
	combout => \BlocoOperativo|somasub|Add0~0_combout\);

-- Location: LCCOMB_X19_Y2_N14
\BlocoOperativo|somasub|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~2_cout\ = CARRY(\BlocoControlador|eAtual.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S4~q\,
	datad => VCC,
	cout => \BlocoOperativo|somasub|Add0~2_cout\);

-- Location: LCCOMB_X19_Y2_N16
\BlocoOperativo|somasub|Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~3_combout\ = (\BlocoOperativo|mux2|y[0]~0_combout\ & ((\BlocoOperativo|somasub|Add0~0_combout\ & (\BlocoOperativo|somasub|Add0~2_cout\ & VCC)) # (!\BlocoOperativo|somasub|Add0~0_combout\ & 
-- (!\BlocoOperativo|somasub|Add0~2_cout\)))) # (!\BlocoOperativo|mux2|y[0]~0_combout\ & ((\BlocoOperativo|somasub|Add0~0_combout\ & (!\BlocoOperativo|somasub|Add0~2_cout\)) # (!\BlocoOperativo|somasub|Add0~0_combout\ & 
-- ((\BlocoOperativo|somasub|Add0~2_cout\) # (GND)))))
-- \BlocoOperativo|somasub|Add0~4\ = CARRY((\BlocoOperativo|mux2|y[0]~0_combout\ & (!\BlocoOperativo|somasub|Add0~0_combout\ & !\BlocoOperativo|somasub|Add0~2_cout\)) # (!\BlocoOperativo|mux2|y[0]~0_combout\ & ((!\BlocoOperativo|somasub|Add0~2_cout\) # 
-- (!\BlocoOperativo|somasub|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|mux2|y[0]~0_combout\,
	datab => \BlocoOperativo|somasub|Add0~0_combout\,
	datad => VCC,
	cin => \BlocoOperativo|somasub|Add0~2_cout\,
	combout => \BlocoOperativo|somasub|Add0~3_combout\,
	cout => \BlocoOperativo|somasub|Add0~4\);

-- Location: LCCOMB_X19_Y2_N18
\BlocoOperativo|somasub|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~6_combout\ = ((\BlocoOperativo|somasub|Add0~5_combout\ $ (\BlocoOperativo|mux2|y[1]~1_combout\ $ (!\BlocoOperativo|somasub|Add0~4\)))) # (GND)
-- \BlocoOperativo|somasub|Add0~7\ = CARRY((\BlocoOperativo|somasub|Add0~5_combout\ & ((\BlocoOperativo|mux2|y[1]~1_combout\) # (!\BlocoOperativo|somasub|Add0~4\))) # (!\BlocoOperativo|somasub|Add0~5_combout\ & (\BlocoOperativo|mux2|y[1]~1_combout\ & 
-- !\BlocoOperativo|somasub|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|somasub|Add0~5_combout\,
	datab => \BlocoOperativo|mux2|y[1]~1_combout\,
	datad => VCC,
	cin => \BlocoOperativo|somasub|Add0~4\,
	combout => \BlocoOperativo|somasub|Add0~6_combout\,
	cout => \BlocoOperativo|somasub|Add0~7\);

-- Location: FF_X19_Y2_N29
\BlocoOperativo|regP|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BlocoOperativo|somasub|Add0~6_combout\,
	clrn => \BlocoControlador|ALT_INV_eAtual.S1~q\,
	sload => VCC,
	ena => \BlocoControlador|eAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regP|q\(1));

-- Location: IOIBUF_X20_Y0_N8
\entA[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entA(1),
	o => \entA[1]~input_o\);

-- Location: LCCOMB_X20_Y2_N30
\BlocoOperativo|mux1|y[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux1|y[1]~1_combout\ = (\BlocoControlador|eAtual.S1~q\ & (\entA[1]~input_o\)) # (!\BlocoControlador|eAtual.S1~q\ & ((\BlocoOperativo|somasub|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entA[1]~input_o\,
	datac => \BlocoControlador|eAtual.S1~q\,
	datad => \BlocoOperativo|somasub|Add0~6_combout\,
	combout => \BlocoOperativo|mux1|y[1]~1_combout\);

-- Location: LCCOMB_X19_Y2_N10
\BlocoControlador|CA\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|CA~combout\ = (\BlocoControlador|eAtual.S4~q\) # (\BlocoControlador|eAtual.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S4~q\,
	datab => \BlocoControlador|eAtual.S1~q\,
	combout => \BlocoControlador|CA~combout\);

-- Location: FF_X20_Y2_N31
\BlocoOperativo|regA|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoOperativo|mux1|y[1]~1_combout\,
	ena => \BlocoControlador|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regA|q\(1));

-- Location: LCCOMB_X19_Y2_N28
\BlocoOperativo|mux2|y[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux2|y[1]~1_combout\ = (\BlocoControlador|eAtual.S4~q\ & ((\BlocoOperativo|regA|q\(1)))) # (!\BlocoControlador|eAtual.S4~q\ & (\BlocoOperativo|regP|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S4~q\,
	datac => \BlocoOperativo|regP|q\(1),
	datad => \BlocoOperativo|regA|q\(1),
	combout => \BlocoOperativo|mux2|y[1]~1_combout\);

-- Location: LCCOMB_X19_Y2_N20
\BlocoOperativo|somasub|Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~9_combout\ = (\BlocoOperativo|somasub|Add0~8_combout\ & ((\BlocoOperativo|mux2|y[2]~2_combout\ & (\BlocoOperativo|somasub|Add0~7\ & VCC)) # (!\BlocoOperativo|mux2|y[2]~2_combout\ & (!\BlocoOperativo|somasub|Add0~7\)))) # 
-- (!\BlocoOperativo|somasub|Add0~8_combout\ & ((\BlocoOperativo|mux2|y[2]~2_combout\ & (!\BlocoOperativo|somasub|Add0~7\)) # (!\BlocoOperativo|mux2|y[2]~2_combout\ & ((\BlocoOperativo|somasub|Add0~7\) # (GND)))))
-- \BlocoOperativo|somasub|Add0~10\ = CARRY((\BlocoOperativo|somasub|Add0~8_combout\ & (!\BlocoOperativo|mux2|y[2]~2_combout\ & !\BlocoOperativo|somasub|Add0~7\)) # (!\BlocoOperativo|somasub|Add0~8_combout\ & ((!\BlocoOperativo|somasub|Add0~7\) # 
-- (!\BlocoOperativo|mux2|y[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|somasub|Add0~8_combout\,
	datab => \BlocoOperativo|mux2|y[2]~2_combout\,
	datad => VCC,
	cin => \BlocoOperativo|somasub|Add0~7\,
	combout => \BlocoOperativo|somasub|Add0~9_combout\,
	cout => \BlocoOperativo|somasub|Add0~10\);

-- Location: LCCOMB_X20_Y2_N14
\BlocoOperativo|mux1|y[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux1|y[2]~2_combout\ = (\BlocoControlador|eAtual.S1~q\ & (\entA[2]~input_o\)) # (!\BlocoControlador|eAtual.S1~q\ & ((\BlocoOperativo|somasub|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entA[2]~input_o\,
	datac => \BlocoControlador|eAtual.S1~q\,
	datad => \BlocoOperativo|somasub|Add0~9_combout\,
	combout => \BlocoOperativo|mux1|y[2]~2_combout\);

-- Location: FF_X20_Y2_N15
\BlocoOperativo|regA|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoOperativo|mux1|y[2]~2_combout\,
	ena => \BlocoControlador|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regA|q\(2));

-- Location: LCCOMB_X20_Y2_N18
\BlocoOperativo|somasub|Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~11_combout\ = (\BlocoControlador|eAtual.S4~q\) # (\BlocoOperativo|regB|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S4~q\,
	datad => \BlocoOperativo|regB|q\(3),
	combout => \BlocoOperativo|somasub|Add0~11_combout\);

-- Location: LCCOMB_X19_Y2_N22
\BlocoOperativo|somasub|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~12_combout\ = \BlocoOperativo|mux2|y[3]~3_combout\ $ (\BlocoOperativo|somasub|Add0~10\ $ (!\BlocoOperativo|somasub|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|mux2|y[3]~3_combout\,
	datad => \BlocoOperativo|somasub|Add0~11_combout\,
	cin => \BlocoOperativo|somasub|Add0~10\,
	combout => \BlocoOperativo|somasub|Add0~12_combout\);

-- Location: LCCOMB_X20_Y2_N20
\BlocoOperativo|mux1|y[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux1|y[3]~3_combout\ = (\BlocoControlador|eAtual.S1~q\ & (\entA[3]~input_o\)) # (!\BlocoControlador|eAtual.S1~q\ & ((\BlocoOperativo|somasub|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entA[3]~input_o\,
	datac => \BlocoControlador|eAtual.S1~q\,
	datad => \BlocoOperativo|somasub|Add0~12_combout\,
	combout => \BlocoOperativo|mux1|y[3]~3_combout\);

-- Location: FF_X20_Y2_N21
\BlocoOperativo|regA|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoOperativo|mux1|y[3]~3_combout\,
	ena => \BlocoControlador|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regA|q\(3));

-- Location: LCCOMB_X20_Y2_N28
\BlocoOperativo|geraAz|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|geraAz|Equal0~0_combout\ = (!\BlocoOperativo|regA|q\(0) & (!\BlocoOperativo|regA|q\(2) & (!\BlocoOperativo|regA|q\(1) & !\BlocoOperativo|regA|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regA|q\(0),
	datab => \BlocoOperativo|regA|q\(2),
	datac => \BlocoOperativo|regA|q\(1),
	datad => \BlocoOperativo|regA|q\(3),
	combout => \BlocoOperativo|geraAz|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y2_N24
\BlocoControlador|eProx.S2_133\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|eProx.S2_133~combout\ = (GLOBAL(\BlocoControlador|Selector8~0clkctrl_outclk\) & (\BlocoControlador|CA~combout\)) # (!GLOBAL(\BlocoControlador|Selector8~0clkctrl_outclk\) & ((\BlocoControlador|eProx.S2_133~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|CA~combout\,
	datac => \BlocoControlador|Selector8~0clkctrl_outclk\,
	datad => \BlocoControlador|eProx.S2_133~combout\,
	combout => \BlocoControlador|eProx.S2_133~combout\);

-- Location: FF_X19_Y2_N25
\BlocoControlador|eAtual.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoControlador|eProx.S2_133~combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoControlador|eAtual.S2~q\);

-- Location: LCCOMB_X19_Y2_N12
\BlocoControlador|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|Selector3~0_combout\ = (!\BlocoOperativo|geraAz|Equal0~0_combout\ & (\BlocoControlador|eAtual.S2~q\ & !\BlocoOperativo|geraBz|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlocoOperativo|geraAz|Equal0~0_combout\,
	datac => \BlocoControlador|eAtual.S2~q\,
	datad => \BlocoOperativo|geraBz|Equal0~0_combout\,
	combout => \BlocoControlador|Selector3~0_combout\);

-- Location: LCCOMB_X19_Y2_N2
\BlocoControlador|eProx.S3_124\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|eProx.S3_124~combout\ = (GLOBAL(\BlocoControlador|Selector8~0clkctrl_outclk\) & ((\BlocoControlador|Selector3~0_combout\))) # (!GLOBAL(\BlocoControlador|Selector8~0clkctrl_outclk\) & (\BlocoControlador|eProx.S3_124~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlocoControlador|eProx.S3_124~combout\,
	datac => \BlocoControlador|Selector8~0clkctrl_outclk\,
	datad => \BlocoControlador|Selector3~0_combout\,
	combout => \BlocoControlador|eProx.S3_124~combout\);

-- Location: FF_X19_Y2_N3
\BlocoControlador|eAtual.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoControlador|eProx.S3_124~combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoControlador|eAtual.S3~q\);

-- Location: LCCOMB_X20_Y2_N0
\BlocoControlador|pronto~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|pronto~1_combout\ = (\BlocoControlador|eAtual.S4~q\) # (\BlocoControlador|eAtual.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlocoControlador|eAtual.S4~q\,
	datad => \BlocoControlador|eAtual.S3~q\,
	combout => \BlocoControlador|pronto~1_combout\);

-- Location: LCCOMB_X19_Y2_N26
\BlocoControlador|pronto\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|pronto~combout\ = (\BlocoControlador|pronto~1_combout\ & (\BlocoControlador|pronto~combout\)) # (!\BlocoControlador|pronto~1_combout\ & ((\BlocoControlador|eAtual.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|pronto~combout\,
	datac => \BlocoControlador|pronto~1_combout\,
	datad => \BlocoControlador|eAtual.S5~q\,
	combout => \BlocoControlador|pronto~combout\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: FF_X19_Y2_N9
\BlocoOperativo|regP|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BlocoOperativo|somasub|Add0~3_combout\,
	clrn => \BlocoControlador|ALT_INV_eAtual.S1~q\,
	sload => VCC,
	ena => \BlocoControlador|eAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regP|q\(0));

-- Location: FF_X19_Y2_N7
\BlocoOperativo|regP|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BlocoOperativo|somasub|Add0~12_combout\,
	clrn => \BlocoControlador|ALT_INV_eAtual.S1~q\,
	sload => VCC,
	ena => \BlocoControlador|eAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regP|q\(3));

ww_pronto <= \pronto~output_o\;

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;
END structure;


