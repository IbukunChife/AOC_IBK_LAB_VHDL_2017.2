library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mxor is
port (A, B: IN STD_LOGIC;
S: OUT STD_LOGIC);
end mxor;

architecture structure of mxor is

component mnot is
port ( A:in std_logic;
s: out std_logic);
end component;

component mand is
PORT(A, B: IN STD_LOGIC;
R: OUT STD_LOGIC);
end component;

component mor is
PORT(A, B: IN STD_LOGIC;
R: OUT STD_LOGIC);
end component;

SIGNAL GR1, GR2, ANR, BNR: STD_LOGIC;

BEGIN
	AN: mnot PORT MAP(A, ANR);
	BN: mnot PORT MAP(B, BNR);
	G1: mand PORT MAP(ANR, B, GR1);
	G2: mand PORT MAP(A, BNR, GR2);
	G3: mor PORT MAP(GR1,GR2, S);
END structure;