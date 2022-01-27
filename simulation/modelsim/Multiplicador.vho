-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "01/27/2022 09:30:05"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


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
	pronto : BUFFER std_logic;
	saida : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END multiplicador;

-- Design Ports Information
-- pronto	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inicio	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entB[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entB[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entB[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entB[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entA[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entA[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entA[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entA[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pronto~output_o\ : std_logic;
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inicio~input_o\ : std_logic;
SIGNAL \entB[1]~input_o\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[1]~feeder_combout\ : std_logic;
SIGNAL \BlocoControlador|eProx.S1~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \BlocoControlador|eAtual.S1~q\ : std_logic;
SIGNAL \entB[0]~input_o\ : std_logic;
SIGNAL \BlocoOperativo|regB|q[0]~feeder_combout\ : std_logic;
SIGNAL \entB[2]~input_o\ : std_logic;
SIGNAL \entB[3]~input_o\ : std_logic;
SIGNAL \BlocoOperativo|geraBz|Equal0~0_combout\ : std_logic;
SIGNAL \entA[1]~input_o\ : std_logic;
SIGNAL \BlocoOperativo|mux2|y[1]~1_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~5_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~0_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~2_cout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~3_combout\ : std_logic;
SIGNAL \entA[0]~input_o\ : std_logic;
SIGNAL \BlocoOperativo|mux1|y[0]~0_combout\ : std_logic;
SIGNAL \BlocoControlador|CA~combout\ : std_logic;
SIGNAL \BlocoOperativo|mux2|y[0]~0_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~4\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~6_combout\ : std_logic;
SIGNAL \BlocoOperativo|mux1|y[1]~1_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~8_combout\ : std_logic;
SIGNAL \BlocoOperativo|mux2|y[2]~2_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~7\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~9_combout\ : std_logic;
SIGNAL \entA[2]~input_o\ : std_logic;
SIGNAL \BlocoOperativo|mux1|y[2]~2_combout\ : std_logic;
SIGNAL \entA[3]~input_o\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~11_combout\ : std_logic;
SIGNAL \BlocoOperativo|mux2|y[3]~3_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~10\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~12_combout\ : std_logic;
SIGNAL \BlocoOperativo|mux1|y[3]~3_combout\ : std_logic;
SIGNAL \BlocoOperativo|geraAz|Equal0~0_combout\ : std_logic;
SIGNAL \BlocoControlador|eAtual.S2~feeder_combout\ : std_logic;
SIGNAL \BlocoControlador|eAtual.S2~q\ : std_logic;
SIGNAL \BlocoControlador|eProx.S3~0_combout\ : std_logic;
SIGNAL \BlocoControlador|eAtual.S3~q\ : std_logic;
SIGNAL \BlocoControlador|eAtual.S4~q\ : std_logic;
SIGNAL \BlocoOperativo|mux2|y[6]~6_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~13\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~14_combout\ : std_logic;
SIGNAL \BlocoOperativo|mux1|y[4]~4_combout\ : std_logic;
SIGNAL \BlocoOperativo|mux2|y[4]~4_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~15\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~16_combout\ : std_logic;
SIGNAL \BlocoOperativo|mux1|y[5]~5_combout\ : std_logic;
SIGNAL \BlocoOperativo|mux2|y[5]~5_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~17\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~18_combout\ : std_logic;
SIGNAL \BlocoOperativo|mux1|y[6]~6_combout\ : std_logic;
SIGNAL \BlocoOperativo|mux2|y[7]~7_combout\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~19\ : std_logic;
SIGNAL \BlocoOperativo|somasub|Add0~20_combout\ : std_logic;
SIGNAL \BlocoOperativo|mux1|y[7]~7_combout\ : std_logic;
SIGNAL \BlocoOperativo|geraAz|Equal0~1_combout\ : std_logic;
SIGNAL \BlocoControlador|eProx.S5~0_combout\ : std_logic;
SIGNAL \BlocoControlador|eAtual.S5~q\ : std_logic;
SIGNAL \BlocoControlador|Selector0~0_combout\ : std_logic;
SIGNAL \BlocoControlador|eAtual.S0~q\ : std_logic;
SIGNAL \BlocoControlador|pronto~combout\ : std_logic;
SIGNAL \BlocoOperativo|regP|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BlocoOperativo|regB|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BlocoOperativo|regA|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \BlocoControlador|ALT_INV_eAtual.S1~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
\BlocoControlador|ALT_INV_eAtual.S1~q\ <= NOT \BlocoControlador|eAtual.S1~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y12_N9
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

-- Location: IOOBUF_X33_Y25_N2
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

-- Location: IOOBUF_X33_Y28_N9
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

-- Location: IOOBUF_X33_Y24_N2
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

-- Location: IOOBUF_X33_Y15_N2
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

-- Location: IOOBUF_X33_Y15_N9
\saida[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BlocoOperativo|regP|q\(4),
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\saida[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BlocoOperativo|regP|q\(5),
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\saida[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BlocoOperativo|regP|q\(6),
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\saida[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BlocoOperativo|regP|q\(7),
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

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

-- Location: IOIBUF_X33_Y16_N8
\inicio~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inicio,
	o => \inicio~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\entB[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entB(1),
	o => \entB[1]~input_o\);

-- Location: LCCOMB_X29_Y21_N2
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

-- Location: LCCOMB_X30_Y17_N4
\BlocoControlador|eProx.S1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|eProx.S1~0_combout\ = (\inicio~input_o\ & !\BlocoControlador|eAtual.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inicio~input_o\,
	datad => \BlocoControlador|eAtual.S0~q\,
	combout => \BlocoControlador|eProx.S1~0_combout\);

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

-- Location: FF_X30_Y21_N3
\BlocoControlador|eAtual.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BlocoControlador|eProx.S1~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoControlador|eAtual.S1~q\);

-- Location: FF_X29_Y21_N3
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

-- Location: IOIBUF_X33_Y16_N1
\entB[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entB(0),
	o => \entB[0]~input_o\);

-- Location: LCCOMB_X29_Y21_N8
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

-- Location: FF_X29_Y21_N9
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

-- Location: IOIBUF_X33_Y12_N1
\entB[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entB(2),
	o => \entB[2]~input_o\);

-- Location: FF_X29_Y21_N5
\BlocoOperativo|regB|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \entB[2]~input_o\,
	sload => VCC,
	ena => \BlocoControlador|eAtual.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regB|q\(2));

-- Location: IOIBUF_X33_Y14_N1
\entB[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entB(3),
	o => \entB[3]~input_o\);

-- Location: FF_X29_Y21_N19
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

-- Location: LCCOMB_X29_Y21_N4
\BlocoOperativo|geraBz|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|geraBz|Equal0~0_combout\ = (!\BlocoOperativo|regB|q\(1) & (!\BlocoOperativo|regB|q\(0) & (!\BlocoOperativo|regB|q\(2) & !\BlocoOperativo|regB|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regB|q\(1),
	datab => \BlocoOperativo|regB|q\(0),
	datac => \BlocoOperativo|regB|q\(2),
	datad => \BlocoOperativo|regB|q\(3),
	combout => \BlocoOperativo|geraBz|Equal0~0_combout\);

-- Location: IOIBUF_X33_Y14_N8
\entA[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entA(1),
	o => \entA[1]~input_o\);

-- Location: FF_X30_Y21_N31
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

-- Location: LCCOMB_X30_Y21_N8
\BlocoOperativo|mux2|y[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux2|y[1]~1_combout\ = (\BlocoControlador|eAtual.S4~q\ & (\BlocoOperativo|regA|q\(1))) # (!\BlocoControlador|eAtual.S4~q\ & ((\BlocoOperativo|regP|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S4~q\,
	datab => \BlocoOperativo|regA|q\(1),
	datad => \BlocoOperativo|regP|q\(1),
	combout => \BlocoOperativo|mux2|y[1]~1_combout\);

-- Location: LCCOMB_X30_Y21_N6
\BlocoOperativo|somasub|Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~5_combout\ = (\BlocoControlador|eAtual.S4~q\) # (\BlocoOperativo|regB|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S4~q\,
	datad => \BlocoOperativo|regB|q\(1),
	combout => \BlocoOperativo|somasub|Add0~5_combout\);

-- Location: LCCOMB_X29_Y21_N28
\BlocoOperativo|somasub|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~0_combout\ = (\BlocoOperativo|regB|q\(0) & !\BlocoControlador|eAtual.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlocoOperativo|regB|q\(0),
	datad => \BlocoControlador|eAtual.S4~q\,
	combout => \BlocoOperativo|somasub|Add0~0_combout\);

-- Location: LCCOMB_X30_Y21_N10
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

-- Location: LCCOMB_X30_Y21_N12
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

-- Location: FF_X30_Y21_N9
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

-- Location: IOIBUF_X33_Y25_N8
\entA[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entA(0),
	o => \entA[0]~input_o\);

-- Location: LCCOMB_X31_Y21_N16
\BlocoOperativo|mux1|y[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux1|y[0]~0_combout\ = (\BlocoControlador|eAtual.S1~q\ & (\entA[0]~input_o\)) # (!\BlocoControlador|eAtual.S1~q\ & ((\BlocoOperativo|somasub|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S1~q\,
	datac => \entA[0]~input_o\,
	datad => \BlocoOperativo|somasub|Add0~3_combout\,
	combout => \BlocoOperativo|mux1|y[0]~0_combout\);

-- Location: LCCOMB_X31_Y21_N14
\BlocoControlador|CA\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|CA~combout\ = (\BlocoControlador|eAtual.S4~q\) # (\BlocoControlador|eAtual.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlocoControlador|eAtual.S4~q\,
	datad => \BlocoControlador|eAtual.S1~q\,
	combout => \BlocoControlador|CA~combout\);

-- Location: FF_X31_Y21_N17
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

-- Location: LCCOMB_X30_Y21_N30
\BlocoOperativo|mux2|y[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux2|y[0]~0_combout\ = (\BlocoControlador|eAtual.S4~q\ & ((\BlocoOperativo|regA|q\(0)))) # (!\BlocoControlador|eAtual.S4~q\ & (\BlocoOperativo|regP|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S4~q\,
	datab => \BlocoOperativo|regP|q\(0),
	datad => \BlocoOperativo|regA|q\(0),
	combout => \BlocoOperativo|mux2|y[0]~0_combout\);

-- Location: LCCOMB_X30_Y21_N14
\BlocoOperativo|somasub|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~6_combout\ = ((\BlocoOperativo|mux2|y[1]~1_combout\ $ (\BlocoOperativo|somasub|Add0~5_combout\ $ (!\BlocoOperativo|somasub|Add0~4\)))) # (GND)
-- \BlocoOperativo|somasub|Add0~7\ = CARRY((\BlocoOperativo|mux2|y[1]~1_combout\ & ((\BlocoOperativo|somasub|Add0~5_combout\) # (!\BlocoOperativo|somasub|Add0~4\))) # (!\BlocoOperativo|mux2|y[1]~1_combout\ & (\BlocoOperativo|somasub|Add0~5_combout\ & 
-- !\BlocoOperativo|somasub|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|mux2|y[1]~1_combout\,
	datab => \BlocoOperativo|somasub|Add0~5_combout\,
	datad => VCC,
	cin => \BlocoOperativo|somasub|Add0~4\,
	combout => \BlocoOperativo|somasub|Add0~6_combout\,
	cout => \BlocoOperativo|somasub|Add0~7\);

-- Location: LCCOMB_X31_Y21_N22
\BlocoOperativo|mux1|y[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux1|y[1]~1_combout\ = (\BlocoControlador|eAtual.S1~q\ & (\entA[1]~input_o\)) # (!\BlocoControlador|eAtual.S1~q\ & ((\BlocoOperativo|somasub|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S1~q\,
	datac => \entA[1]~input_o\,
	datad => \BlocoOperativo|somasub|Add0~6_combout\,
	combout => \BlocoOperativo|mux1|y[1]~1_combout\);

-- Location: FF_X31_Y21_N23
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

-- Location: LCCOMB_X29_Y21_N26
\BlocoOperativo|somasub|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~8_combout\ = (\BlocoOperativo|regB|q\(2)) # (\BlocoControlador|eAtual.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlocoOperativo|regB|q\(2),
	datad => \BlocoControlador|eAtual.S4~q\,
	combout => \BlocoOperativo|somasub|Add0~8_combout\);

-- Location: FF_X30_Y21_N1
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

-- Location: LCCOMB_X30_Y21_N0
\BlocoOperativo|mux2|y[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux2|y[2]~2_combout\ = (\BlocoControlador|eAtual.S4~q\ & ((\BlocoOperativo|regA|q\(2)))) # (!\BlocoControlador|eAtual.S4~q\ & (\BlocoOperativo|regP|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S4~q\,
	datac => \BlocoOperativo|regP|q\(2),
	datad => \BlocoOperativo|regA|q\(2),
	combout => \BlocoOperativo|mux2|y[2]~2_combout\);

-- Location: LCCOMB_X30_Y21_N16
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

-- Location: IOIBUF_X33_Y24_N8
\entA[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entA(2),
	o => \entA[2]~input_o\);

-- Location: LCCOMB_X31_Y21_N4
\BlocoOperativo|mux1|y[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux1|y[2]~2_combout\ = (\BlocoControlador|eAtual.S1~q\ & ((\entA[2]~input_o\))) # (!\BlocoControlador|eAtual.S1~q\ & (\BlocoOperativo|somasub|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S1~q\,
	datac => \BlocoOperativo|somasub|Add0~9_combout\,
	datad => \entA[2]~input_o\,
	combout => \BlocoOperativo|mux1|y[2]~2_combout\);

-- Location: FF_X31_Y21_N5
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

-- Location: IOIBUF_X33_Y27_N1
\entA[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entA(3),
	o => \entA[3]~input_o\);

-- Location: LCCOMB_X29_Y21_N12
\BlocoOperativo|somasub|Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~11_combout\ = (\BlocoOperativo|regB|q\(3)) # (\BlocoControlador|eAtual.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlocoOperativo|regB|q\(3),
	datad => \BlocoControlador|eAtual.S4~q\,
	combout => \BlocoOperativo|somasub|Add0~11_combout\);

-- Location: FF_X30_Y21_N19
\BlocoOperativo|regP|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoOperativo|somasub|Add0~12_combout\,
	clrn => \BlocoControlador|ALT_INV_eAtual.S1~q\,
	ena => \BlocoControlador|eAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regP|q\(3));

-- Location: LCCOMB_X30_Y21_N28
\BlocoOperativo|mux2|y[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux2|y[3]~3_combout\ = (\BlocoControlador|eAtual.S4~q\ & (\BlocoOperativo|regA|q\(3))) # (!\BlocoControlador|eAtual.S4~q\ & ((\BlocoOperativo|regP|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regA|q\(3),
	datab => \BlocoOperativo|regP|q\(3),
	datad => \BlocoControlador|eAtual.S4~q\,
	combout => \BlocoOperativo|mux2|y[3]~3_combout\);

-- Location: LCCOMB_X30_Y21_N18
\BlocoOperativo|somasub|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~12_combout\ = ((\BlocoOperativo|somasub|Add0~11_combout\ $ (\BlocoOperativo|mux2|y[3]~3_combout\ $ (!\BlocoOperativo|somasub|Add0~10\)))) # (GND)
-- \BlocoOperativo|somasub|Add0~13\ = CARRY((\BlocoOperativo|somasub|Add0~11_combout\ & ((\BlocoOperativo|mux2|y[3]~3_combout\) # (!\BlocoOperativo|somasub|Add0~10\))) # (!\BlocoOperativo|somasub|Add0~11_combout\ & (\BlocoOperativo|mux2|y[3]~3_combout\ & 
-- !\BlocoOperativo|somasub|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|somasub|Add0~11_combout\,
	datab => \BlocoOperativo|mux2|y[3]~3_combout\,
	datad => VCC,
	cin => \BlocoOperativo|somasub|Add0~10\,
	combout => \BlocoOperativo|somasub|Add0~12_combout\,
	cout => \BlocoOperativo|somasub|Add0~13\);

-- Location: LCCOMB_X31_Y21_N30
\BlocoOperativo|mux1|y[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux1|y[3]~3_combout\ = (\BlocoControlador|eAtual.S1~q\ & (\entA[3]~input_o\)) # (!\BlocoControlador|eAtual.S1~q\ & ((\BlocoOperativo|somasub|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S1~q\,
	datac => \entA[3]~input_o\,
	datad => \BlocoOperativo|somasub|Add0~12_combout\,
	combout => \BlocoOperativo|mux1|y[3]~3_combout\);

-- Location: FF_X31_Y21_N31
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

-- Location: LCCOMB_X31_Y21_N8
\BlocoOperativo|geraAz|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|geraAz|Equal0~0_combout\ = (!\BlocoOperativo|regA|q\(1) & (!\BlocoOperativo|regA|q\(2) & (!\BlocoOperativo|regA|q\(3) & !\BlocoOperativo|regA|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regA|q\(1),
	datab => \BlocoOperativo|regA|q\(2),
	datac => \BlocoOperativo|regA|q\(3),
	datad => \BlocoOperativo|regA|q\(0),
	combout => \BlocoOperativo|geraAz|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y21_N2
\BlocoControlador|eAtual.S2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|eAtual.S2~feeder_combout\ = \BlocoControlador|CA~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlocoControlador|CA~combout\,
	combout => \BlocoControlador|eAtual.S2~feeder_combout\);

-- Location: FF_X31_Y21_N3
\BlocoControlador|eAtual.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoControlador|eAtual.S2~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoControlador|eAtual.S2~q\);

-- Location: LCCOMB_X31_Y21_N12
\BlocoControlador|eProx.S3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|eProx.S3~0_combout\ = (!\BlocoOperativo|geraBz|Equal0~0_combout\ & (\BlocoControlador|eAtual.S2~q\ & ((!\BlocoOperativo|geraAz|Equal0~0_combout\) # (!\BlocoOperativo|geraAz|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|geraBz|Equal0~0_combout\,
	datab => \BlocoOperativo|geraAz|Equal0~1_combout\,
	datac => \BlocoOperativo|geraAz|Equal0~0_combout\,
	datad => \BlocoControlador|eAtual.S2~q\,
	combout => \BlocoControlador|eProx.S3~0_combout\);

-- Location: FF_X31_Y21_N13
\BlocoControlador|eAtual.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoControlador|eProx.S3~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoControlador|eAtual.S3~q\);

-- Location: FF_X30_Y21_N5
\BlocoControlador|eAtual.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BlocoControlador|eAtual.S3~q\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoControlador|eAtual.S4~q\);

-- Location: FF_X30_Y21_N25
\BlocoOperativo|regP|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoOperativo|somasub|Add0~18_combout\,
	clrn => \BlocoControlador|ALT_INV_eAtual.S1~q\,
	ena => \BlocoControlador|eAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regP|q\(6));

-- Location: LCCOMB_X30_Y21_N4
\BlocoOperativo|mux2|y[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux2|y[6]~6_combout\ = (\BlocoControlador|eAtual.S4~q\ & ((\BlocoOperativo|regA|q\(6)))) # (!\BlocoControlador|eAtual.S4~q\ & (\BlocoOperativo|regP|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlocoOperativo|regP|q\(6),
	datac => \BlocoControlador|eAtual.S4~q\,
	datad => \BlocoOperativo|regA|q\(6),
	combout => \BlocoOperativo|mux2|y[6]~6_combout\);

-- Location: LCCOMB_X30_Y21_N20
\BlocoOperativo|somasub|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~14_combout\ = (\BlocoControlador|eAtual.S4~q\ & ((\BlocoOperativo|mux2|y[4]~4_combout\ & (\BlocoOperativo|somasub|Add0~13\ & VCC)) # (!\BlocoOperativo|mux2|y[4]~4_combout\ & (!\BlocoOperativo|somasub|Add0~13\)))) # 
-- (!\BlocoControlador|eAtual.S4~q\ & ((\BlocoOperativo|mux2|y[4]~4_combout\ & (!\BlocoOperativo|somasub|Add0~13\)) # (!\BlocoOperativo|mux2|y[4]~4_combout\ & ((\BlocoOperativo|somasub|Add0~13\) # (GND)))))
-- \BlocoOperativo|somasub|Add0~15\ = CARRY((\BlocoControlador|eAtual.S4~q\ & (!\BlocoOperativo|mux2|y[4]~4_combout\ & !\BlocoOperativo|somasub|Add0~13\)) # (!\BlocoControlador|eAtual.S4~q\ & ((!\BlocoOperativo|somasub|Add0~13\) # 
-- (!\BlocoOperativo|mux2|y[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S4~q\,
	datab => \BlocoOperativo|mux2|y[4]~4_combout\,
	datad => VCC,
	cin => \BlocoOperativo|somasub|Add0~13\,
	combout => \BlocoOperativo|somasub|Add0~14_combout\,
	cout => \BlocoOperativo|somasub|Add0~15\);

-- Location: FF_X30_Y21_N7
\BlocoOperativo|regP|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BlocoOperativo|somasub|Add0~14_combout\,
	clrn => \BlocoControlador|ALT_INV_eAtual.S1~q\,
	sload => VCC,
	ena => \BlocoControlador|eAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regP|q\(4));

-- Location: LCCOMB_X31_Y21_N18
\BlocoOperativo|mux1|y[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux1|y[4]~4_combout\ = (!\BlocoControlador|eAtual.S1~q\ & \BlocoOperativo|somasub|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S1~q\,
	datad => \BlocoOperativo|somasub|Add0~14_combout\,
	combout => \BlocoOperativo|mux1|y[4]~4_combout\);

-- Location: FF_X31_Y21_N19
\BlocoOperativo|regA|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoOperativo|mux1|y[4]~4_combout\,
	ena => \BlocoControlador|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regA|q\(4));

-- Location: LCCOMB_X30_Y21_N2
\BlocoOperativo|mux2|y[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux2|y[4]~4_combout\ = (\BlocoControlador|eAtual.S4~q\ & ((\BlocoOperativo|regA|q\(4)))) # (!\BlocoControlador|eAtual.S4~q\ & (\BlocoOperativo|regP|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regP|q\(4),
	datab => \BlocoOperativo|regA|q\(4),
	datad => \BlocoControlador|eAtual.S4~q\,
	combout => \BlocoOperativo|mux2|y[4]~4_combout\);

-- Location: LCCOMB_X30_Y21_N22
\BlocoOperativo|somasub|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~16_combout\ = ((\BlocoOperativo|mux2|y[5]~5_combout\ $ (\BlocoControlador|eAtual.S4~q\ $ (!\BlocoOperativo|somasub|Add0~15\)))) # (GND)
-- \BlocoOperativo|somasub|Add0~17\ = CARRY((\BlocoOperativo|mux2|y[5]~5_combout\ & ((\BlocoControlador|eAtual.S4~q\) # (!\BlocoOperativo|somasub|Add0~15\))) # (!\BlocoOperativo|mux2|y[5]~5_combout\ & (\BlocoControlador|eAtual.S4~q\ & 
-- !\BlocoOperativo|somasub|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|mux2|y[5]~5_combout\,
	datab => \BlocoControlador|eAtual.S4~q\,
	datad => VCC,
	cin => \BlocoOperativo|somasub|Add0~15\,
	combout => \BlocoOperativo|somasub|Add0~16_combout\,
	cout => \BlocoOperativo|somasub|Add0~17\);

-- Location: LCCOMB_X31_Y21_N24
\BlocoOperativo|mux1|y[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux1|y[5]~5_combout\ = (!\BlocoControlador|eAtual.S1~q\ & \BlocoOperativo|somasub|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S1~q\,
	datad => \BlocoOperativo|somasub|Add0~16_combout\,
	combout => \BlocoOperativo|mux1|y[5]~5_combout\);

-- Location: FF_X31_Y21_N25
\BlocoOperativo|regA|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoOperativo|mux1|y[5]~5_combout\,
	ena => \BlocoControlador|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regA|q\(5));

-- Location: FF_X30_Y21_N29
\BlocoOperativo|regP|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BlocoOperativo|somasub|Add0~16_combout\,
	clrn => \BlocoControlador|ALT_INV_eAtual.S1~q\,
	sload => VCC,
	ena => \BlocoControlador|eAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regP|q\(5));

-- Location: LCCOMB_X31_Y21_N6
\BlocoOperativo|mux2|y[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux2|y[5]~5_combout\ = (\BlocoControlador|eAtual.S4~q\ & (\BlocoOperativo|regA|q\(5))) # (!\BlocoControlador|eAtual.S4~q\ & ((\BlocoOperativo|regP|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlocoOperativo|regA|q\(5),
	datac => \BlocoControlador|eAtual.S4~q\,
	datad => \BlocoOperativo|regP|q\(5),
	combout => \BlocoOperativo|mux2|y[5]~5_combout\);

-- Location: LCCOMB_X30_Y21_N24
\BlocoOperativo|somasub|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~18_combout\ = (\BlocoControlador|eAtual.S4~q\ & ((\BlocoOperativo|mux2|y[6]~6_combout\ & (\BlocoOperativo|somasub|Add0~17\ & VCC)) # (!\BlocoOperativo|mux2|y[6]~6_combout\ & (!\BlocoOperativo|somasub|Add0~17\)))) # 
-- (!\BlocoControlador|eAtual.S4~q\ & ((\BlocoOperativo|mux2|y[6]~6_combout\ & (!\BlocoOperativo|somasub|Add0~17\)) # (!\BlocoOperativo|mux2|y[6]~6_combout\ & ((\BlocoOperativo|somasub|Add0~17\) # (GND)))))
-- \BlocoOperativo|somasub|Add0~19\ = CARRY((\BlocoControlador|eAtual.S4~q\ & (!\BlocoOperativo|mux2|y[6]~6_combout\ & !\BlocoOperativo|somasub|Add0~17\)) # (!\BlocoControlador|eAtual.S4~q\ & ((!\BlocoOperativo|somasub|Add0~17\) # 
-- (!\BlocoOperativo|mux2|y[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S4~q\,
	datab => \BlocoOperativo|mux2|y[6]~6_combout\,
	datad => VCC,
	cin => \BlocoOperativo|somasub|Add0~17\,
	combout => \BlocoOperativo|somasub|Add0~18_combout\,
	cout => \BlocoOperativo|somasub|Add0~19\);

-- Location: LCCOMB_X31_Y21_N26
\BlocoOperativo|mux1|y[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux1|y[6]~6_combout\ = (!\BlocoControlador|eAtual.S1~q\ & \BlocoOperativo|somasub|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S1~q\,
	datad => \BlocoOperativo|somasub|Add0~18_combout\,
	combout => \BlocoOperativo|mux1|y[6]~6_combout\);

-- Location: FF_X31_Y21_N27
\BlocoOperativo|regA|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoOperativo|mux1|y[6]~6_combout\,
	ena => \BlocoControlador|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regA|q\(6));

-- Location: FF_X30_Y21_N27
\BlocoOperativo|regP|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoOperativo|somasub|Add0~20_combout\,
	clrn => \BlocoControlador|ALT_INV_eAtual.S1~q\,
	ena => \BlocoControlador|eAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regP|q\(7));

-- Location: LCCOMB_X31_Y21_N28
\BlocoOperativo|mux2|y[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux2|y[7]~7_combout\ = (\BlocoControlador|eAtual.S4~q\ & ((\BlocoOperativo|regA|q\(7)))) # (!\BlocoControlador|eAtual.S4~q\ & (\BlocoOperativo|regP|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlocoControlador|eAtual.S4~q\,
	datac => \BlocoOperativo|regP|q\(7),
	datad => \BlocoOperativo|regA|q\(7),
	combout => \BlocoOperativo|mux2|y[7]~7_combout\);

-- Location: LCCOMB_X30_Y21_N26
\BlocoOperativo|somasub|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|somasub|Add0~20_combout\ = \BlocoControlador|eAtual.S4~q\ $ (\BlocoOperativo|somasub|Add0~19\ $ (!\BlocoOperativo|mux2|y[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoControlador|eAtual.S4~q\,
	datad => \BlocoOperativo|mux2|y[7]~7_combout\,
	cin => \BlocoOperativo|somasub|Add0~19\,
	combout => \BlocoOperativo|somasub|Add0~20_combout\);

-- Location: LCCOMB_X31_Y21_N0
\BlocoOperativo|mux1|y[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|mux1|y[7]~7_combout\ = (\BlocoOperativo|somasub|Add0~20_combout\ & !\BlocoControlador|eAtual.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlocoOperativo|somasub|Add0~20_combout\,
	datad => \BlocoControlador|eAtual.S1~q\,
	combout => \BlocoOperativo|mux1|y[7]~7_combout\);

-- Location: FF_X31_Y21_N1
\BlocoOperativo|regA|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoOperativo|mux1|y[7]~7_combout\,
	ena => \BlocoControlador|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoOperativo|regA|q\(7));

-- Location: LCCOMB_X31_Y21_N10
\BlocoOperativo|geraAz|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoOperativo|geraAz|Equal0~1_combout\ = (!\BlocoOperativo|regA|q\(6) & (!\BlocoOperativo|regA|q\(7) & (!\BlocoOperativo|regA|q\(4) & !\BlocoOperativo|regA|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|regA|q\(6),
	datab => \BlocoOperativo|regA|q\(7),
	datac => \BlocoOperativo|regA|q\(4),
	datad => \BlocoOperativo|regA|q\(5),
	combout => \BlocoOperativo|geraAz|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y21_N20
\BlocoControlador|eProx.S5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|eProx.S5~0_combout\ = (\BlocoControlador|eAtual.S2~q\ & ((\BlocoOperativo|geraBz|Equal0~0_combout\) # ((\BlocoOperativo|geraAz|Equal0~1_combout\ & \BlocoOperativo|geraAz|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlocoOperativo|geraBz|Equal0~0_combout\,
	datab => \BlocoOperativo|geraAz|Equal0~1_combout\,
	datac => \BlocoOperativo|geraAz|Equal0~0_combout\,
	datad => \BlocoControlador|eAtual.S2~q\,
	combout => \BlocoControlador|eProx.S5~0_combout\);

-- Location: FF_X31_Y21_N21
\BlocoControlador|eAtual.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoControlador|eProx.S5~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoControlador|eAtual.S5~q\);

-- Location: LCCOMB_X30_Y17_N28
\BlocoControlador|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|Selector0~0_combout\ = (!\BlocoControlador|eAtual.S5~q\ & ((\inicio~input_o\) # (\BlocoControlador|eAtual.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inicio~input_o\,
	datac => \BlocoControlador|eAtual.S0~q\,
	datad => \BlocoControlador|eAtual.S5~q\,
	combout => \BlocoControlador|Selector0~0_combout\);

-- Location: FF_X30_Y17_N29
\BlocoControlador|eAtual.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BlocoControlador|Selector0~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlocoControlador|eAtual.S0~q\);

-- Location: LCCOMB_X30_Y17_N30
\BlocoControlador|pronto\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BlocoControlador|pronto~combout\ = (\BlocoControlador|eAtual.S5~q\) # (!\BlocoControlador|eAtual.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlocoControlador|eAtual.S0~q\,
	datad => \BlocoControlador|eAtual.S5~q\,
	combout => \BlocoControlador|pronto~combout\);

ww_pronto <= \pronto~output_o\;

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;
END structure;


