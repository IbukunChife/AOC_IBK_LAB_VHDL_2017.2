library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity maq_est is
port(ck: in Bit;						--relogio borda subida
	  P: in Bit;						   --P=1, R=0,1 
	  iniciar : in Bit; 				   --iniciar=1 , R=0
	  R : out std_logic --saida
		);
end maq_est;

 architecture teste of maq_est is 
 
	TYPE state is  (caso_a,caso_b,caso_c,caso_d);
	SIGNAL estado:state;
	begin 
	abcd: process(ck,iniciar)
		begin 
		if iniciar = '1' then
			estado <= caso_a;
		elsif (ck'event and ck ='1')then
			 case estado is
				when caso_a => 
				if P='1' then estado <=caso_b;
				end if;
				when caso_b => 
				if P='1' then estado <=caso_c;
				end if;
				when caso_c => 
				if P='1' then estado <=caso_d;
				end if;
				when caso_d => 
				if P='1' then estado <=caso_b;
				else estado <= caso_a;
				end if;
			 end case;
		 end if;
		end process abcd;
	 with estado  select 
	 R <= '0' when caso_a,
			'0' when caso_b,
			'0' when caso_c,
			'1' when caso_d;
 end teste;