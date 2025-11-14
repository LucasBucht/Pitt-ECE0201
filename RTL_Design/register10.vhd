library ieee;
use ieee.std_logic_1164.all;

entity register10 is
	port(
		Clk, en, rst : in std_logic;
		data : in std_logic_vector(7 downto 0);
		q : out std_logic_vector(7 downto 0)
	);
end register10;

architecture reg of register10 is

	component dFlipFlop is
		port (Clk, d ,Enable, Reset	:	in		std_logic;
		Q			:	out	std_logic);
	end component;
	
begin

q0: dFlipFlop port map (clk, data(0), en, rst, q(0));
q1: dFlipFlop port map (clk, data(1), en, rst, q(1));
q2: dFlipFlop port map (clk, data(2), en, rst, q(2));
q3: dFlipFlop port map (clk, data(3), en, rst, q(3));
q4: dFlipFlop port map (clk, data(4), en, rst, q(4));
q5: dFlipFlop port map (clk, data(5), en, rst, q(5));
q6: dFlipFlop port map (clk, data(6), en, rst, q(6));
q7: dFlipFlop port map (clk, data(7), en, rst, q(7));

end reg;