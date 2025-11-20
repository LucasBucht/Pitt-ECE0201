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
  process(A, B, C, D, E, F, G, selection)
  begin
    case selection is
      when "000" => MUX_OUT <= A;
      when "001" => MUX_OUT <= B;
      when "010" => MUX_OUT <= C;
      when "011" => MUX_OUT <= D;
      when "100" => MUX_OUT <= E;
      when "101" => MUX_OUT <= F;
      when "110" => MUX_OUT <= G;
      when others => MUX_OUT <=  H;
    end case;
  end process;
END ARCHITECTURE Multiplex;

