LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MUX3to1x9bits IS
  port (A, B, C : in std_logic_vector(8 downto 0);
        sel : in std_logic_vector(1 downto 0);
        MUX_OUT : out std_logic_vector(8 downto 0)
      );
END MUX3to1x9bits;

--
ARCHITECTURE behavioral OF MUX3to1x9bits IS
BEGIN
  process(A, B, C, sel)
  begin
    case sel is
      when "00" => MUX_OUT <= A;
      when "01" => MUX_OUT <= B;
      when "10" => MUX_OUT <= C;
      when others => MUX_OUT <=  "000000000";
    end case;
  end process;
END ARCHITECTURE behavioral;

