library ieee;
use ieee.std_logic_1164.all;

entity circuit_a is
	port(
		SW  : in  std_logic_vector(3 downto 0);
		aOutput: out std_logic_vector(3 downto 0)
	
	);
end circuit_a;

architecture removeTen of circuit_a is
	
	-- Signal declaration
	signal a, b, c, d, anot, bnot, cnot, dnot : std_logic;
	signal onesPlace : std_logic_vector(3 downto 0);
	
begin
	a <= SW(3);
	b <= SW(2);
	c <= SW(1); 
	d <= SW(0);
	
	anot <= not a;
	bnot <= not b;
	cnot <= not c;
	dnot <= not d;
	
	
	
	onesPlace(3) <= '0';
	onesPlace(2) <= a and b and c;
	onesPlace(1) <= a and b and cnot;
	onesPlace(0) <= (a and b and d) or (a and c and d);
	
	aOutput <= onesPlace;
	
end removeTen;