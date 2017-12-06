library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mnot is
port ( A:in std_logic;
s: out std_logic);
end mnot;

architecture behavior of mnot is
begin
	s <= not A;
end behavior;