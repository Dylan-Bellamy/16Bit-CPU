LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity ALU_unit is -- ALU unit 
	port ( clk, reset : in std_logic ;
			Reg1, Reg2: in std_logic_vector(15 downto 0); -- 16-bit inputs A & B from Reg. 1 & Reg. 2
			opcode : in std_logic_vector(15 downto 0); -- 16-bit opcode from Decoder
			result : buffer std_logic_vector(15 downto 0));	-- 16-bit Result
end ALU_unit ;

architecture calculation of ALU_unit is
begin
	process ( clk, reset )
	begin
		if reset = '1' then
		elsif (clk'EVENT AND clk = '1') then
			case opcode is
				when "0000000000000001" =>
					result <= Reg1 + Reg2;
				when "0000000000000010" =>
					result <= Reg1 - Reg2;
				when "0000000000000100" =>
					result <= NOT Reg1;
				when "0000000000001000" =>
					result <= Reg1 NAND Reg2; 
				when "0000000000010000" =>
					result <= Reg1 NOR Reg2;
				when "0000000000100000" =>
					result <= Reg1 AND Reg2;
				when "0000000001000000" =>
					result <= Reg1 XOR Reg2;
				when "0000000010000000" =>
					result <= Reg1 OR Reg2;
				when others =>
					result <= "----------------";
			end case ;
		end if ;
	end process ;
end calculation ;