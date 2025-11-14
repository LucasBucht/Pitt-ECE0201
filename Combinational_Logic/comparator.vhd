library ieee;
use ieee.std_logic_1164.all;

entity comparator is
	port(
		SW  : in  std_logic_vector(3 downto 0);
		compOut: out std_logic
	
	);
end comparator;

architecture compare of comparator is

	-- Signal declaration
	signal a, b, c, d : std_logic;
	
begin
	a <= SW(3);
	b <= SW(2);
	c <= SW(1); 
	d <= SW(0);
	
	compOut <= a and (b or c);
		
	
end compare;