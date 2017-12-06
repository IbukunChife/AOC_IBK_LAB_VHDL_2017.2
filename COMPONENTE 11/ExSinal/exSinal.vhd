LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


ENTITY exSinal IS
PORT(a: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
     s: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	 );
END exSinal;

ARCHITECTURE extensor OF exSinal IS
BEGIN
	s <= ("0000" & a);
END extensor;