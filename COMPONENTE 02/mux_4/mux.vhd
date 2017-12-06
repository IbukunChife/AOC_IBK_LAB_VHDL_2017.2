library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY mux is 
Port (A,B,C,D: in Bit;
		S: std_logic_vector(1 downto 0);
		R: out Bit);
end mux;

Architecture Behavior of mux is 
begin
	Process (S)
	begin
		case S is 
		When "00"=> R <= A;
		When "01"=> R <= B;
		When "10"=> R <= C;
		When "11"=> R <= D;
		when others => null;
		end case;
	end Process;
end Behavior;
