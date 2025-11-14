library ieee;
use ieee.std_logic_1164.all;

entity storageElementComparison is
	port (D, Clk	:	in		std_logic;
			Qa, Qb, Qc			:	out	std_logic);
end storageElementComparison;

architecture compare of storageElementComparison is
	component gatedDLatch is 
		port (D, Clk	:	in		std_logic;
				Q				:	out	std_logic);
	end component;

	component dFlipFlop is
	port (D, Clk	:	in		std_logic;
			Q			:	out	std_logic);
	end component;
	
	signal ClkNot : std_logic;
begin
	ClkNot <= not Clk;
	latch: gatedDLatch port map (D, Clk, Qa);
	flop1: dFlipFlop port map (D, Clk, Qb );
	flop2: dFlipFlop port map (D, ClkNot, Qc );
end compare;