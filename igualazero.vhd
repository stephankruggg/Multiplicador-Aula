LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY igualazero IS
GENERIC (N: INTEGER := 4);
PORT (a : IN STD_LOGIC_VECTOR(2*N-1 DOWNTO 0);
igual : OUT STD_LOGIC);
END igualazero;

ARCHITECTURE estrutura OF igualazero IS

CONSTANT ZEROS: STD_LOGIC_VECTOR(2*N-1 DOWNTO 0) := (OTHERS => '0');

BEGIN
	igual <= '1' WHEN a = ZEROS ELSE '0';
END estrutura;