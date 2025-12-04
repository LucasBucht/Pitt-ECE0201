LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY DECODER3to8 IS
  port(selection : in std_logic_vector (2 downto 0);
       output : out std_logic_vector (7 downto 0)
      );
END ENTITY DECODER3to8;

--
ARCHITECTURE behavioral OF DECODER3to8 IS
BEGIN
  process (selection)
    begin
      if selection = "000" then
        output <= "00000001";
      elsif selection = "001" then
        output <= "00000010";
      elsif selection = "010" then
        output <= "00000100";
      elsif selection = "011" then
        output <= "00001000";
      elsif selection = "100" then
        output <= "00010000";
      elsif selection = "101" then
        output <= "00100000";
      elsif selection = "110" then
        output <= "01000000"; 
      else
        output <= "10000000";
    end if;
  end process;
END ARCHITECTURE behavioral;

