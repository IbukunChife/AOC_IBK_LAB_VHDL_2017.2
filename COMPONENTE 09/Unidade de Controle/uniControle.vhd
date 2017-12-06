LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity uniControle is
port(clock: in std_logic;
	  opcode: in std_logic_vector(3 downto 0);
	  pc_flag: INOUT std_logic;
	  ler_men: out std_logic;
	  esc_men: out std_logic;
	  memParaReg: out std_logic;
	  ULAop: out std_logic_vector(2 downto 0);
	  esc_reg: out std_logic;
	  ula_fonte: out std_logic	  
    );
end uniControle;

architecture funcao of uniControle is
begin
	process(opcode)
	begin
		IF(clock'EVENT) AND (clock ='1') THEN
			if(opcode = "0000") then --ADIÇÃO
				pc_flag <= '1';
				ler_men <= '0';
				esc_men <= '0';
				memParaReg <= '1';
				ULAop <= "010";
				esc_reg <= '0';
				ula_fonte <= '0';	
			elsif(opcode = "0001") then --SUBTRAÇÃO
				pc_flag <= '1';
				ler_men <= '0';
				esc_men <= '0';
				memParaReg <= '1';
				ULAop <= "011";
				esc_reg <= '0';
				ula_fonte <= '0';
			elsif(opcode = "0010") then --AND
				pc_flag <= '1';
				ler_men <= '0';
				esc_men <= '0';
				memParaReg <= '1';
				ULAop <= "000";
				esc_reg <= '0';
				ula_fonte <= '0';
			elsif(opcode = "0011") then --OR
				pc_flag <= '1';
				ler_men <= '0';
				esc_men <= '0';
				memParaReg <= '1';
				ULAop <= "001";
				esc_reg <= '0';
				ula_fonte <= '0';
			elsif(opcode = "0100") then --MULTIPLICAÇÃO
				pc_flag <= '1';
				ler_men <= '0';
				esc_men <= '0';
				memParaReg <= '1';
				ULAop <= "100";
				esc_reg <= '0';
				ula_fonte <= '1';
			elsif(opcode = "0101") then --Igualdade(BEQ)
				pc_flag <= '1';
				ler_men <= '0';
				esc_men <= '0';
				memParaReg <= '1';
				ULAop <= "110";
				esc_reg <= '0';
				ula_fonte <= '0';	
			elsif(opcode = "0110") then --COMPARAÇÃO(SLT)
				pc_flag <= '1';
				ler_men <= '0';
				esc_men <= '0';
				memParaReg <= '1';
				ULAop <= "101";
				esc_reg <= '0';
				ula_fonte <= '0';	
			elsif(opcode = "1000") then --Load Immed.
				pc_flag <= '1';
				ler_men <= '0';
				esc_men <= '0';
				memParaReg <= '1';
				ULAop <= "010";
				esc_reg <= '0';
				ula_fonte <= '0';
			elsif(opcode = "1001") then --Load
				pc_flag <= '1';
				ler_men <= '0';
				esc_men <= '0';
				memParaReg <= '1';
				ULAop <= "010";
				esc_reg <= '0';
				ula_fonte <= '0';
			elsif(opcode = "1010") then --Store
				pc_flag <= '1';
				ler_men <= '0';
				esc_men <= '0';
				memParaReg <= '1';
				ULAop <= "010";
				esc_reg <= '0';
				ula_fonte <= '0';	
			end if;
		end if;
	end process;
end funcao;