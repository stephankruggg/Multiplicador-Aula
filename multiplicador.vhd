LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY multiplicador IS
GENERIC (N: INTEGER := 4);
PORT ( inicio, Reset, clk: in std_logic;
		 entA, entB: in std_logic_vector(N-1 downto 0);
		 pronto: out std_logic;
		 saida: out std_logic_vector(2*N-1 downto 0));
END multiplicador;

-- Sinais de comando
-- ini = RstP = mA = CB  => ini=1 somente em S1
-- CA=1 em S1 e em S4
-- dec = op = m1 = m2  => dec=1 somente em S4 (estado no qual ocorre A <= A - 1 )
-- CP=1 somente em S3 (estado no qual ocorre P <= P + B )

ARCHITECTURE estrutura OF multiplicador IS
signal sAz, sBz, sini, sCA, sdec, sCP: std_logic;
signal sA, sB: std_logic_vector(2*N-1 downto 0);
signal ssaida: std_logic_vector(2*N-1 downto 0);
signal zero: INTEGER := 0;
signal rest: std_logic_vector(N-1 downto 0);
	
	COMPONENT bc IS
	PORT (Reset, clk, inicio : IN STD_LOGIC;
			Az, Bz : IN STD_LOGIC;
			pronto : OUT STD_LOGIC;
			ini, CA, dec, CP: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT bo IS
	PORT (clk : IN STD_LOGIC;
			ini, CP, CA, dec : IN STD_LOGIC;
			entA, entB : IN STD_LOGIC_VECTOR(2*N-1 DOWNTO 0);
			Az, Bz : OUT STD_LOGIC;
			saida, conteudoA, conteudoB : OUT STD_LOGIC_VECTOR(2*N-1 DOWNTO 0));
	END COMPONENT;
	
BEGIN
	
	rest <= STD_LOGIC_VECTOR(TO_UNSIGNED(zero, N));
	
	BlocoControlador: bc port map (Reset, clk, inicio, sAz, sBz, pronto, sini, sCA, sdec, sCP);
	BlocoOperativo: bo port map (clk, sini, sCP, sCA, sdec, (rest & entA), (rest & entB), sAz, sBz, saida, sA, sB);
	
END estrutura;