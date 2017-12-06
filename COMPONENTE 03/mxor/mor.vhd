library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY mor IS
	PORT(
			A, B: IN STD_LOGIC;
			R: OUT STD_LOGIC
		);
END mor;

architecture sentido OF mor IS
BEGIN
		R<= (A OR B);
END sentido;