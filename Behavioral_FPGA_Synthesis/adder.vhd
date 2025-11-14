library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder is
	port (	A, B 	:in std_logic_vector(7 downto 0);
				S		:out std_logic_vector(7 downto 0);
				Cout	:out std_logic
			);
end adder;

architecture behavioral of adder is
	signal Au, Bu, Su : unsigned(7 downto 0);
begin
	Au <= unsigned(A);
	Bu <= unsigned(B);
	Su <= Au + Bu;
	S <= std_logic_vector(Su);
	Cout <= '1' when (Au + Bu > 255) else '0';
end behavioral;
