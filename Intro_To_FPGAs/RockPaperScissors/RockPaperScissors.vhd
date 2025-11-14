library ieee;
use ieee.std_logic_1164.all;

entity RockPaperScissors is 
port(
	a1 : in std_logic;
	a0 : in std_logic;
	b1 : in std_logic;
	b0 : in std_logic;
	wL : out std_logic;
	wR : out std_logic;
	er : out std_logic
);
end entity;

architecture rps of RockPaperScissors is
	signal u, v, w, x, y, z : std_logic;
begin
	u <= a1 XOR b0;
	v <= a0 AND b1;
	wL <= u OR v;
	
	w <= a0 XOR b1;
	x <= A1 AND b0;
	wR <= w OR x;
	
	y <= a1 AND a0;
	z <= b1 AND b0;
	er <= y OR z;
	
end rps;
