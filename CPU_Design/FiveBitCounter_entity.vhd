--
-- VHDL Entity CPU_Design_lib.FiveBitCounter.arch_name
--
-- Created:
--          by - lmb290.UNKNOWN (SSOE-COELABS17)
--          at - 14:36:25 12/ 8/2025
--
-- using Siemens HDL Designer(TM) 2024.1 Built on 24 Jan 2024 at 17:42:50
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY FiveBitCounter IS
   PORT( 
      clock : IN     std_logic;
      reset : IN     std_logic;
      count : OUT    std_logic_vector (4 DOWNTO 0)
   );

-- Declarations

END FiveBitCounter ;

