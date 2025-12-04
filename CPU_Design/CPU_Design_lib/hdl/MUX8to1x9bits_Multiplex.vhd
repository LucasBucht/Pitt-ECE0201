--
-- VHDL Architecture CPU_Design_lib.MUX8to1x9bits.Multiplex
--
-- Created:
--          by - lmb290.UNKNOWN (SSOE-COELABS19)
--          at - 12:52:15 11/20/2025
--
-- using Siemens HDL Designer(TM) 2024.1 Built on 24 Jan 2024 at 17:42:50
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY MUX8to1x9bits IS
  port( A, B, C, D, E, F, G, H : in std_logic_vector(8 downto 0);
        selection : in std_logic_vector(2 downto 0);
        output : out std_logic_vector(8 downto 0)
  );
END ENTITY MUX8to1x9bits;

--
ARCHITECTURE Multiplex OF MUX8to1x9bits IS
BEGIN
  process(A, B, C, D, E, F, G, H, selection, output)
  begin
    case selection is
      when "000" => output <= A;
      when "001" => output <= B;
      when "010" => output <= C;
      when "011" => output <= D;
      when "100" => output <= E;
      when "101" => output <= F;
      when "110" => output <= G;
      when others => output <=  H;
    end case;
  end process;
END ARCHITECTURE Multiplex;

