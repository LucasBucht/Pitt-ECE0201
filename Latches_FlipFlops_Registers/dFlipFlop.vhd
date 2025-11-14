library ieee;
use ieee.std_logic_1164.all;

entity dFlipFlop is
	port (D, Clk	:	in		std_logic;
			Q			:	out	std_logic);
end dFlipFlop;

architecture structural of dFlipFlop is
	component gatedDLatch is 
		port (D, Clk	:	in		std_logic;
				Q				:	out	std_logic);
	end component;
	
	
	signal ClkNot, Qm, Qs	: std_logic;
	attribute keep 			: boolean;
	attribute keep of Qm, Qs : signal is true;
begin
	ClkNot <= not Clk;
	x1: gatedDLatch port map (D, ClkNot, Qm);
	x2: gatedDLatch port map (Qm, Clk, Qs);
	Q <= Qs;
end structural;