library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder is
	Port ( x : in STD_LOGIC;
		y : in STD_LOGIC;
		carry_in : in STD_LOGIC;
		sum : out STD_LOGIC;
		carry_out : out STD_LOGIC);
	end Full_Adder;
	

architecture struct of Full_Adder is
	--internal signal declarations
	signal w0,w1,w2,w3,w4,w5,w6: STD_LOGIC;
	begin
		--Full Adder Using only "2 input" gates (i.e. AND2, OR2 and XOR2)
		w0 <= x AND y after 2 ns;
		w1 <= x AND carry_in after 2 ns;
		w2 <= y AND carry_in after 2 ns;
		w3 <= x XOR y after 4 ns;
		w4 <= w3 XOR carry_in after 4 ns;
		w5 <= w0 OR w1 after 2 ns;
		w6 <= w1 OR w2 after 2 ns;
		Sum <= w4;
		carry_out <= w5 OR w6 after 2 ns;
end struct;
