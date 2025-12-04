LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY ALU_And IS
  port(data_in1, data_in2 : in std_logic_vector(8 downto 0);
       data_out : out std_logic_vector(8 downto 0)
     );
END ENTITY ALU_And;


ARCHITECTURE behavioral OF ALU_And IS
BEGIN
data_out <= data_in1 and data_in2;


END ARCHITECTURE behavioral;

