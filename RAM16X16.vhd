library ieee;
use ieee.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

entity RAM_16X16 is
	port(address: in std_logic_vector(3 downto 0); 
		 data_in: in std_logic_vector(15 downto 0);
		 write_in: in std_logic; 
		 clock: in std_logic; 
		 data_out: out std_logic_vector(15 downto 0)
	);
end RAM_16X16;

architecture behavior of RAM_16X16 is
	type ram_array is array (0 to 15) of std_logic_vector (15 downto 0);
	signal ram_data: ram_array :=(
	x"10F0",x"01A0",x"7721",x"6427",
	x"9999",x"25EA",x"00FF",x"1A77", 
	x"00F1",x"0000",x"0000",x"0A09",
	x"C18C",x"BB00",x"B034",x"DC06"); 
begin
	process(clock)
	begin
		if(rising_edge(clock)) then
			 if(write_in='1') then 
				ram_data(to_integer(unsigned(address))) <= data_in;
			 end if;
		end if;
	end process;
	data_out <= ram_data(to_integer(unsigned(address)));
end behavior;