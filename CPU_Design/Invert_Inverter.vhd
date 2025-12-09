--
-- VHDL Architecture CPU_Design_lib.Invert.Inverter
--
-- Created:
--          by - lmb290.UNKNOWN (SSOE-COELABS17)
--          at - 15:54:43 12/ 7/2025
--
-- using Siemens HDL Designer(TM) 2024.1 Built on 24 Jan 2024 at 17:42:50
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Invert IS
  port(
  clockIn : in std_logic;
  resetIn : in std_logic;
  clockOut : out std_logic;
  resetOut : out std_logic
  );
END ENTITY Invert;

--
ARCHITECTURE Inverter OF Invert IS
BEGIN
  clockOut <= not clockIn;
  resetOut <= not resetIn;
  
END ARCHITECTURE Inverter;

