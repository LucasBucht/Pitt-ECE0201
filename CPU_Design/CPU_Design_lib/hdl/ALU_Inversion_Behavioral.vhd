LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY ALU_Inversion IS
  port(data_in : in std_logic_vector(8 downto 0);
       data_out : out std_logic_vector(8 downto 0)
     );
END ENTITY ALU_Inversion;

--
ARCHITECTURE Behavioral OF ALU_Inversion IS
BEGIN
data_out(0) <= not data_in(0);
data_out(1) <= not data_in(1);
data_out(2) <= not data_in(2);
data_out(3) <= not data_in(3);
data_out(4) <= not data_in(4);
data_out(5) <= not data_in(5);
data_out(6) <= not data_in(6);
data_out(7) <= not data_in(7);
data_out(8) <= not data_in(8);

END ARCHITECTURE Behavioral;

