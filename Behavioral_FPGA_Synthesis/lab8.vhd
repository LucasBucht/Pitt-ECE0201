library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
 
entity lab8 is
	Port ( 	A_top   : in STD_LOGIC_VECTOR  (7 downto 0);
				B_top	  : in STD_LOGIC_VECTOR  (7 downto 0);
				Cin_top : in STD_LOGIC;
				S_top   : out STD_LOGIC_VECTOR (7 downto 0);
				Cout_top: out STD_LOGIC);
	end lab8;
 
architecture struct of lab8 is
 
	--Full Adder Component Declaration
	component Four_Bit_RCA
		Port ( 	A 	  : in STD_LOGIC_VECTOR  (3 downto 0);
					B 	  : in STD_LOGIC_VECTOR  (3 downto 0);
					Cin  : in STD_LOGIC;
					S    : out STD_LOGIC_VECTOR (3 downto 0);
					Cout : out STD_LOGIC);
	end component;
 
	signal C4 : std_logic;
begin

	RCA0: Four_Bit_RCA port map(A_top(3 downto 0), B_top(3 downto 0), Cin_top, S_top(3 downto 0), C4);
	RCA1: Four_Bit_RCA port map(A_top(7 downto 4), B_top(7 downto 4), C4, S_top(7 downto 4), Cout_top);

end struct;