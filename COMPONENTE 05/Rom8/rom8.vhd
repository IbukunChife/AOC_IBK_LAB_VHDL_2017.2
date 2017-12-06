library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity rom8 is
port(address: in std_logic_vector(3 downto 0);
data: out std_logic_vector(7 downto 0));
end rom8;

architecture behavior of rom8 is
type mem is array (0 to 15) of std_logic_vector (7 downto 0);
constant rom: mem := (       0 => "00000000",
									  1 => "00000001",
									  2 => "00000010",
									  3 => "00000011",
									  4 => "00000100",
									  5 => "00000101",
									  6 => "00000110",
									  7 => "00000111",
									  8 => "00001000",
									  9 => "00001001",
									 10 => "00001010",
									 11 => "00001011",
									 12 => "00001100",
									 13 => "00001101",
									 14 => "00001110",
									 15 => "00001111");
begin
	process (address)
	begin
     case address is
       when "0000" => data <= rom(0);
       when "0001" => data <= rom(1);
       when "0010" => data <= rom(2);
       when "0011" => data <= rom(3);
       when "0100" => data <= rom(4);
       when "0101" => data <= rom(5);
       when "0110" => data <= rom(6);
       when "0111" => data <= rom(7);
       when "1000" => data <= rom(8);
       when "1001" => data <= rom(9);
       when "1010" => data <= rom(10);
       when "1011" => data <= rom(11);
       when "1100" => data <= rom(12);
       when "1101" => data <= rom(13);
       when "1110" => data <= rom(14);
       when "1111" => data <= rom(15);
       when others => data <= "00000000";
	 end case;
  end process;
end behavior;