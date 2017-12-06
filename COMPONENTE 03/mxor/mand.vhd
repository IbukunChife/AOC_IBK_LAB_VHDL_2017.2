library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY mand IS
	PORT(
			A, B: IN STD_LOGIC;
			R: OUT STD_LOGIC
		);
END mand;

architecture behavios OF mand IS
begin
		R<= (A AND B);
end behavios;