LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY MUX2to1x9bits IS
  port (A, B : in std_logic_vector(8 downto 0);
        sel : in std_logic;
        MUX_OUT : out std_logic_vector(8 downto 0)
      );
END MUX2to1x9bits;

--
ARCHITECTURE behavioral OF MUX2to1x9bits IS
BEGIN
  process(A, B, sel)
  begin
    case sel is
      when '1' => MUX_OUT <= B;
      when others => MUX_OUT <= A;
    end case;
  end process;
END ARCHITECTURE behavioral;

