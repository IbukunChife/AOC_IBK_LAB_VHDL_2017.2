library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- "ce" habilita a escrita na mémoria quando ce=0
-- "we" identifica se a operação é de leitura "1" ou escrita"0"

ENTITY ram8 is 
Port ( ce,we: in std_logic ;
		 address: in std_logic_vector( 3 downto 0);
		 data_entrada:in std_logic_vector( 7 downto 0);
		 data_saida: out std_logic_vector( 7 downto 0));
end ram8;

architecture behavior of ram8 is 
	type RAM is array (0 to 15) of std_logic_vector(7 downto 0);
	signal mem : RAM;
begin 
	process (ce,address)
	begin 
			if rising_edge(ce)then
					if(we='0')then
						mem(to_integer(unsigned(address))) <= data_entrada;
					end if;
			end if;
		data_saida <= mem(to_integer(unsigned(address)));
	end process;
end behavior;