library ieee;
use ieee.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

entity instruction is
	port(address : in std_logic_vector(15 downto 0);
			opcode : out std_logic_vector(15 downto 0));
end instruction;

architecture behavior of instruction is
	signal instr_addr : std_logic_vector(15 downto 0);
	type instr_array is array (0 to 15) of std_logic_vector (15 downto 0);
	signal instr_data: instr_array :=(
	"0000010100000010", -- NOP, r5, r0 -> r2
	"0001000100100011", -- ADD, r1 + r2 -> r3
	"0010001110110111", -- SUB, r3 - r11 -> r7
	"0011011110100100", -- NOT r7, r10(useless) -> r4
	"0100010001101010", -- NAND, r4 NAND r6 -> r10
	"0101101000111111", -- NOR, r10 NOR r3 -> r15
	"0110111111001000", -- AND, r15 AND r12 -> r8
	"0111100010110000"); -- OR, r8 OR r13 -> r0
begin
	instr_addr <= address(15 downto 0);
   opcode <= instr_data(to_integer(unsigned(instr_addr))) when address < x"0010" else x"0000";
end behavior;
