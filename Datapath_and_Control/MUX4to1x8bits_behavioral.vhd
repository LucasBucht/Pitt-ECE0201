LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY MUX4to1x8bits IS
  port (A, B, C, D : in std_logic_vector(7 downto 0);
        sel : in std_logic_vector(1 downto 0);
        MUX_OUT : out std_logic_vector(7 downto 0)
      );
END MUX4to1x8bits;

--
ARCHITECTURE behavioral OF MUX4to1x8bits IS
BEGIN
  process(A, B, C, D, sel)
  begin
    case sel is
      when "00" => MUX_OUT <= A;
      when "01" => MUX_OUT <= B;
      when "10" => MUX_OUT <= C;
      when others => MUX_OUT <=  D;
    end case;
  end process;
END ARCHITECTURE behavioral;

