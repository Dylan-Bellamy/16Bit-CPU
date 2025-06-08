LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity machine IS
	port (data_in, clk, reset : in std_logic ;
		current_state : out std_logic_vector(3 downto 0));
end machine ;

architecture fsm of machine is
	type state_type is (s0, s1, s2, s3, s4, s5, s6, s7,
							s8, s9, s10, s11, s12, s13, s14,
							s15);
	signal yfsm : state_type ;
BEGIN
	PROCESS ( clk, reset )
	BEGIN
		if reset = '0' then
			yfsm <= s0 ;
		elsif (clk'EVENT AND clk = '1') then
			case yfsm is
				when s0 =>
					if data_in = '1' then
						yfsm <= s1 ;
					else
						yfsm <= s0 ;
					end if;
				when s1 =>
					if data_in = '1' then
						yfsm <= s2 ;
					else
						yfsm <= s1 ;
					end if;
				when s2 =>
					if data_in = '1' then
						yfsm <= s3 ;
					else
						yfsm <= s2 ;
					end if;
				when s3 =>
					if data_in = '1' then
						yfsm <= s4 ;
					else
						yfsm <= s3 ;
					end if;
				when s4 =>
					if data_in = '1' then
						yfsm <= s5 ;
					else
						yfsm <= s4 ;
					end if;
				when s5 =>
					if data_in = '1' then
						yfsm <= s6 ;
					else
						yfsm <= s5 ;
					end if;
				when s6 =>
					if data_in = '1' then
						yfsm <= s7 ;
					else
						yfsm <= s6 ;
					end if;
				when s7 =>
						if data_in = '1' then
						yfsm <= s8 ;
					else
						yfsm <= s7 ;
					end if;
					
					when s8 =>
					if data_in = '1' then
						yfsm <= s9 ;
					else
						yfsm <= s8 ;
					end if;
				when s9 =>
					if data_in = '1' then
						yfsm <= s10 ;
					else
						yfsm <= s9 ;
					end if;
				when s10 =>
					if data_in = '1' then
						yfsm <= s11 ;
					else
						yfsm <= s10 ;
					end if;
				when s11 =>
					if data_in = '1' then
						yfsm <= s12 ;
					else
						yfsm <= s11 ;
					end if;
				when s12 =>
					if data_in = '1' then
						yfsm <= s13 ;
					else
						yfsm <= s12 ;
					end if;
				when s13 =>
					if data_in = '1' then
						yfsm <= s14 ;
					else
						yfsm <= s13 ;
					end if;
				when s14 =>
					if data_in = '1' then
						yfsm <= s15 ;
					else
						yfsm <= s14 ;
					end if;
				when s15 =>
						if data_in = '1' then
						yfsm <= s0 ;
					else
						yfsm <= s15 ;
					end if;
			end case ;
		end if ;
	end PROCESS ;
PROCESS ( yfsm )
BEGIN
	case yfsm is
		when s0 => current_state <= "0000" ;
			
		when s1 => current_state <= "0001" ;
			
		when s2 => current_state <= "0010" ;
			
		when s3 => current_state <= "0011" ;
			
		when s4 => current_state <= "0100" ;
			
		when s5 => current_state <= "0101" ;
			
		when s6 => current_state <= "0110" ;
			
		when s7 => current_state <= "0111" ;
		
		when s8 => current_state <= "1000" ;
			
		when s9 => current_state <= "1001" ;
			
		when s10 => current_state <= "1010" ;
			
		when s11 => current_state <= "1011" ;
			
		when s12 => current_state <= "1100" ;
			
		when s13 => current_state <= "1101" ;
			
		when s14 => current_state <= "1110" ;
			
		when s15 => current_state <= "1111" ;
			
		end case ; -- d1 d2 d3 d4 d5 d6 d7 d8 d9
	end PROCESS; -- 5 0 1 2 4 5 8 0 8
end fsm ; -- states: s0 s1 s2 s3 s4 s5 s6 s7