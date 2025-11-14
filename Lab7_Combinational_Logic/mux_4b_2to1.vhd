library ieee;
use ieee.std_logic_1164.all;

entity mux_4b_2to1 is
	port(
		readComp : in  std_logic;
		readSWa  : in  std_logic_vector(3 downto 0);
		readSWv  : in  std_logic_vector(3 downto 0);
		HEXmux	: out std_logic_vector(3 downto 0)
		
	);
end mux_4b_2to1;

architecture multiplex of mux_4b_2to1 is
	
	signal compVector : std_logic_vector(3 downto 0);
	
	begin

		compVector(0) <= (readSWv(0) and (not readComp)) or (readSWa(0) and readComp);
		compVector(1) <= (readSWv(1) and (not readComp)) or (readSWa(1) and readComp);
		compVector(2) <= (readSWv(2) and (not readComp)) or (readSWa(2) and readComp);
		compVector(3) <= (readSWv(3) and (not readComp)) or (readSWa(3) and readComp);
		
		HEXmux <= compVector;
	
	
end multiplex;