library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity somador8 is
 port (cin: in STD_LOGIC;
 a,b: in STD_LOGIC_VECTOR(7 DOWNTO 0);
 cout: out STD_LOGIC;
 s: out STD_LOGIC_VECTOR(7 DOWNTO 0));
 end somador8;
 
 architecture somador8bits_arch of somador8 is
 begin
 process(a,b,cin)
 variable soma:std_logic_vector(7 downto 0);
 variable c:std_logic;
 begin
 c := cin;
 for i in 0 to 7 loop
soma(i) := a(i) xor b(i) xor c;
c := (a(i) and b(i)) or ((a(i) xor b(i)) and c);
end loop;
cout <= c;
s <= soma;
end process;
end somador8bits_arch;