library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY MUX4to1 IS
    PORT (
        U  : IN  STD_LOGIC_VECTOR(1 downto 0);
        V  : IN  STD_LOGIC_VECTOR(1 downto 0);
        W  : IN  STD_LOGIC_VECTOR(1 downto 0);
        X  : IN  STD_LOGIC_VECTOR(1 downto 0);
        s0 : IN  STD_LOGIC;
        s1 : IN  STD_LOGIC;
        M  : OUT STD_LOGIC_VECTOR(1 downto 0)
    );
END MUX4to1;

ARCHITECTURE DATAFLOW OF MUX4to1 IS
    SIGNAL a, b, c, d, e, f, g, h : STD_LOGIC;
BEGIN
	 
	 -- M1
	 a <= (NOT s1 AND NOT s0 AND U(1));
	 b <= (NOT s1 AND s0 AND V(1));
	 c <= (s1 AND NOT s0 AND W(1));
	 d <= (s1 AND s0 AND X(1));
	 
	 -- M0
	 e <= (NOT s1 AND NOT s0 AND U(0));
	 f <= (NOT s1 AND s0 AND V(0));
	 g <= (s1 AND NOT s0 AND W(0));
	 h <= (s1 AND s0 AND X(0));
 	 
	 
    M(1) <= a OR b OR c OR d;

    M(0) <= e OR f OR g OR h;
	 

END DATAFLOW;
