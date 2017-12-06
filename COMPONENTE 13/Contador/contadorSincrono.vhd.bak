LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY contadorSincrono IS 
	PORT (clock, reset, enable	: IN STD_LOGIC;
			q	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END contadorSincrono;

ARCHITECTURE cont OF contadorSincrono IS 
BEGIN
	PROCESS(clock, reset)
	VARIABLE contagem	: INTEGER RANGE 0 TO 15;
	BEGIN
		IF reset = '1' THEN
			contagem := 0;
			
		ELSIF clock'EVENT AND clock='1' THEN 
			IF enable = '1' THEN
				contagem := contagem + 1;
			END IF;
		END IF;
		
		q <= conv_std_logic_vector(contagem, 4);
	END PROCESS;

END cont;