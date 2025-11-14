library ieee;
use ieee.std_logic_1164.all;

entity circuit_b is
	port(
		readComp  : in  std_logic;
		bOut: out std_logic_vector(3 downto 0)
		
	);
end circuit_b;

architecture unload of circuit_b is

	-- Signal declaration
	signal tensPlace : std_logic_vector(3 downto 0);
	
begin
	tensPlace(0) <= readComp;
	bOut <= tensPlace;
	
end unload;