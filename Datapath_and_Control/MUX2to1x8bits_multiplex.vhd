LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY MUX2to1x8bits IS
  port (A, B : in std_logic_vector(7 downto 0);
        sel : in std_logic;
        MUX_OUT : out std_logic_vector(7 downto 0)
      );
END MUX2to1x8bits;

--
ARCHITECTURE behavioral OF MUX2to1x8bits IS
BEGIN
  process(A, B, sel)
  begin
    case sel is
      when '0' => MUX_OUT <= A;
      when  '1' => MUX_OUT <= B;
      when others => MUX_OUT <= (others => 0);
    end case;
  end process;
END ARCHITECTURE behavioral;

