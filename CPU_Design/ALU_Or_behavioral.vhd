--
-- VHDL Architecture lmb_ECE0201_lib.ALU_Or.behavioral
--
-- Created:
--          by - lmb290.UNKNOWN (SSOE-COELABS09)
--          at - 15:08:17 11/13/2025
--
-- using Siemens HDL Designer(TM) 2024.1 Built on 24 Jan 2024 at 17:42:50
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY ALU_Or IS
  port(data_in1, data_in2 : in std_logic_vector(8 downto 0);
       data_out : out std_logic_vector(8 downto 0)
     );
END ENTITY ALU_Or;


ARCHITECTURE behavioral OF ALU_Or IS
BEGIN
data_out(0) <= data_in1(0) or data_in2(0);
data_out(1) <= data_in1(1) or data_in2(1);
data_out(2) <= data_in1(2) or data_in2(2);
data_out(3) <= data_in1(3) or data_in2(3);
data_out(4) <= data_in1(4) or data_in2(4);
data_out(5) <= data_in1(5) or data_in2(5);
data_out(6) <= data_in1(6) or data_in2(6);
data_out(7) <= data_in1(7) or data_in2(7);
data_out(8) <= data_in1(8) or data_in2(8);


END ARCHITECTURE behavioral;

