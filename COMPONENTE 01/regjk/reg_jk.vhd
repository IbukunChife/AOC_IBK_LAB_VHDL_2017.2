library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity reg_jk is
    Port ( J         : in  STD_LOGIC;
              K         : in  STD_LOGIC;
              Clk      : in  STD_LOGIC;
              Q_out : out  STD_LOGIC);
end reg_jk ;

architecture Behavioral of reg_jk  is
    signal Q:std_logic;
     begin
         process(clk)
              variable JK:std_logic_vector(1 downto 0);
              begin
                  if(Clk'event and Clk='1')then 
                     JK:= J&K;
                      case JK is 
                          when "01" => Q <= '0';
                          when "10" => Q <= '1';
                          when "11" => Q <= not Q;
                          when others =>  null;
                     end case; 
							end if;
        end process;
    Q_out<=Q;
end Behavioral;