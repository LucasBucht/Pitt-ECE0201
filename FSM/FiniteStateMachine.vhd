LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity FiniteStateMachine is
	port( Go, Clk, Enable, Rst : in std_logic;
			Count : out std_logic_vector(2 downto 0)
	);
end FiniteStateMachine;

architecture behavioral of FiniteStateMachine is

	component dFlipFlop is
		port (Clk, d, Enable, Reset	:	in		std_logic;
				Q			:	out	std_logic);
	end component;
	
	
	signal Q2, Q1, Q0, Qnext2, Qnext1, Qnext0, EnableGo	: std_logic;
	signal currentCount : std_logic_vector(2 downto 0);

begin 

	EnableGo <= Enable and Go;
	
	Q2 <= currentCount(2);
	Q1 <= currentCount(1);
	Q0 <= currentCount(0);

	Qnext2 <= (not Go and Q2) or (Go and not Q2 and Q1);
	Qnext1 <= (not Go and Q1) or (not Q0 and Q1) or (Go and not Q2 and Q0);
	Qnext0 <= (not Go and Q0) or (Go and not Q1) or (Go and not Q2 and not Q0);
	
	Q2next: dFlipFlop port map (Clk, Qnext2, EnableGo, Rst, currentCount(2));
	Q1next: dFlipFlop port map (Clk, Qnext1, EnableGo, Rst, currentCount(1));
	Q0next: dFlipFlop port map (Clk, Qnext0, EnableGo, Rst, currentCount(0));
	
	Count <= currentCount;	
	
end behavioral;
