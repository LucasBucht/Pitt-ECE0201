LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY DECODER2to4 IS
  port(selection : in std_logic_vector (1 downto 0);
       output : out std_logic_vector (3 downto 0)
      );
END ENTITY DECODER2to4;

--
ARCHITECTURE behavioral OF DECODER2to4 IS
BEGIN
  process (selection)
    begin
      if selection = "00" then
        output <= "0001";
      elsif selection = "01" then
        output <= "0010";
      elsif selection = "10" then
        output <= "0100";
      elsif selection = "11" then
        output <= "1000";
      else
        output <= "0000";
    end if;
  end process;
END ARCHITECTURE behavioral;

