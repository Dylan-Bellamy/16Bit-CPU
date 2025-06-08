LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity register1 IS
	port ( A : in std_logic_vector(15 downto 0) ; -- 8-bit A input
			 enable, reset, clk : in std_logic ;
			 Q : out std_logic_vector(15 downto 0)) ; -- 8-bit output
end register1;

architecture behavior of register1 is
begin
	process (reset, enable, clk)
	begin
		if reset = '1' then
			Q <= "0000000000000000" ;
		elsif (clk'EVENT AND clk = '1' AND enable = '1') then
			Q <= A ;
		end if ;
	end process ;
end behavior ;