LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY registrador_r IS
GENERIC (N: INTEGER := 4);
PORT (clk, reset, carga : IN STD_LOGIC;
	  d : IN STD_LOGIC_VECTOR(2*N-1 DOWNTO 0);
	  q : OUT STD_LOGIC_VECTOR(2*N-1 DOWNTO 0));
END registrador_r;

ARCHITECTURE estrutura OF registrador_r IS
BEGIN
	PROCESS(clk, reset, carga)
	BEGIN
		IF(reset = '1') THEN
			q <= (OTHERS => '0');
		ELSIF(clk'EVENT AND clk = '1' AND carga = '1') THEN
			q <= d;
		END IF;
	END PROCESS;
END estrutura;