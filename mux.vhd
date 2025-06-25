LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux16to4 IS
	PORT (w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,wa,wb,
		wc,wd,we,wf : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			s		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			f		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
END mux16to4;

ARCHITECTURE Behavoir OF mux16to4 IS
BEGIN 
	WITH s SELECT 
		f<= w0 WHEN "0000",
			 w1 WHEN "0001",
			 w2 WHEN "0010",
			 w3 WHEN "0011",
			 w4 WHEN "0100",
			 w5 WHEN "0101",
			 w6 WHEN "0110",
			 w7 WHEN "0111",
			 w8 WHEN "1000",
			 w9 WHEN "1001",
			 wa WHEN "1010",
			 wb WHEN "1011",
			 wc WHEN "1100",
			 wd WHEN "1101",
			 we WHEN "1110",
			 wf WHEN "1111";
END Behavoir;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
PACKAGE mux16to4_package IS
	COMPONENT mux16to4
		PORT (w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,wa,wb,
		wc,wd,we,wf : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				s		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
				f		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
	END COMPONENT;
END mux16to4_package;
	