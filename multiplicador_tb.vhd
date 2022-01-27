library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity multiplicador_tb is
GENERIC (N: integer := 4);
end multiplicador_tb;

architecture tb of multiplicador_tb is
    constant clk_period: time := 20ns;
	 signal inicio, Reset, clk: std_logic;
	 signal entA, entB: std_logic_vector(N-1 downto 0);
	 signal pronto: std_logic;
	 signal saida: std_logic_vector(2*N-1 downto 0);

begin
    UUT : entity work.multiplicador port map 
	            (inicio => inicio, Reset => Reset, clk => clk,
					 entA => entA, entB => entB,
					 pronto => pronto,
					 saida => saida);
	 
	 Reset <= '1', '0' after clk_period/2;
	 inicio <= '0', '1' after clk_period, '0' after 2*clk_period, '1' after 11*clk_period, '0' after 12*clk_period, '1' after 39*clk_period, '0' after 40*clk_period, '1' after 88*clk_period,
	 '0' after 89*clk_period, '1' after 92*clk_period, '0' after 93*clk_period;
	 entA <= "0000", "0010" after clk_period, "1000" after 11*clk_period, "1111" after 39*clk_period, "0001" after 88*clk_period, "0100" after 92*clk_period;
	 entB <= "0000", "0100" after clk_period, "1000" after 11*clk_period, "1111" after 39*clk_period, "0000" after 88*clk_period, "0010" after 92*clk_period;
	 
	 
	 clk_gen : process
        begin
				clk <= '1';
            wait for clk_period/2; -- 50% do periodo pra cada nivel
				clk <= '0';
				wait for clk_period/2;
        end process;	
	
end tb;
