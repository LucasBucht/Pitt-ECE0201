LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY ALU_Adder IS
  port(x, y, carry_in : in std_logic;
       sum, carry_out : out std_logic
     );
END ENTITY ALU_Adder;

ARCHITECTURE behavioral OF ALU_Adder IS
  signal w : std_logic_vector(6 downto 0);
BEGIN
  
  w(0) <= x and y;
  w(1) <= x and carry_in;
  w(2) <= y and carry_in;
  w(3) <= x xor y;
  w(4) <= w(3) xor carry_in;
  w(5) <= w(0) or w(1);
  w(6) <= w(1) or w(2);
  sum <= w(4);
  carry_out <= w(5) or w(6);
  
END ARCHITECTURE behavioral;
