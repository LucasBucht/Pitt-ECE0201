library ieee;
use ieee.std_logic_1164.all;

entity gatedDLatch is
	port (D, Clk	:	in		std_logic;
			Q				:	out	std_logic);
end gatedDLatch;

architecture structural of gatedDLatch is
	signal R_g, S_g, Qa, Qb, S, R	: std_logic;
	attribute keep 			: boolean;
	attribute keep of R_g, S_g, Qa, Qb : signal is true;
begin
	R <= not D;
	S <= D;
	
	R_g <= R nand Clk;
	S_g <= S nand Clk;
	Qa <= not(R_g and Qb);
	Qb <= not(S_g and Qa);
	
	Q <= not Qa;
	
end structural;