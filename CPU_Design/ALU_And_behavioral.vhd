LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ALU_And IS
  port(data_in1, data_in2 : in std_logic_vector(8 downto 0);
       data_out : out std_logic_vector(8 downto 0)
     );
END ENTITY ALU_And;


ARCHITECTURE behavioral OF ALU_And IS
BEGIN
data_out(0) <= data_in1(0) and data_in2(0);
data_out(1) <= data_in1(1) and data_in2(1);
data_out(2) <= data_in1(2) and data_in2(2);
data_out(3) <= data_in1(3) and data_in2(3);
data_out(4) <= data_in1(4) and data_in2(4);
data_out(5) <= data_in1(5) and data_in2(5);
data_out(6) <= data_in1(6) and data_in2(6);
data_out(7) <= data_in1(7) and data_in2(7);
data_out(8) <= data_in1(8) and data_in2(8);



END ARCHITECTURE behavioral;

