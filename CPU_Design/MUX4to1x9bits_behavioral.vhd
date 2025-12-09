LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MUX4to1x9bits IS
  port (A, B, C, D : in std_logic_vector(8 downto 0);
        sel : in std_logic_vector(1 downto 0);
        MUX_OUT : out std_logic_vector(8 downto 0)
      );
END MUX4to1x9bits;

--
ARCHITECTURE behavioral OF MUX4to1x9bits IS
BEGIN
 with sel select MUX_OUT <= 
 A when "00",
 B when "01",
 C when "10",
 D when "11",
 "000000000" when others;
END ARCHITECTURE behavioral;

