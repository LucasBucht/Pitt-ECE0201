library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity Four_Bit_RCA is
	Port ( 	A 	  : in STD_LOGIC_VECTOR  (3 downto 0);
				B 	  : in STD_LOGIC_VECTOR  (3 downto 0);
				Cin  : in STD_LOGIC;
				S    : out STD_LOGIC_VECTOR (3 downto 0);
				Cout : out STD_LOGIC);
	end Four_Bit_RCA;
 
architecture struct of Four_Bit_RCA is
 
	--Full Adder Component Declaration
	component Full_Adder
		Port ( 	x 			 : in STD_LOGIC;
					y 			 : in STD_LOGIC;
					carry_in  : in STD_LOGIC;
					sum 		 : out STD_LOGIC;
					carry_out : out STD_LOGIC);
	end component;
 
--Intermediate Signals
 signal c1,c2,c3: STD_LOGIC;
 
begin
	--Full Adder Instantiations and Port Mappings
	FA0: Full_Adder port map(A(0), B(0), Cin, S(0), c1);
	FA1: Full_Adder port map(A(1), B(1), c1, S(1), c2);
	FA2: Full_Adder port map(A(2), B(2), c2, S(2), c3);
	FA3: Full_Adder port map(A(3), B(3), c3, S(3), Cout);
end struct;