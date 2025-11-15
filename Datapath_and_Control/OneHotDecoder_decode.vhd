LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY OneHotDecoder IS
  port( input : in std_logic;
        output: out std_logic_vector(1 downto 0)
      );
END ENTITY OneHotDecoder;


ARCHITECTURE decode OF OneHotDecoder IS
BEGIN
  process (input)
    begin
      if input = '0' then
        output <= "01";
      elsif input = '1' then
        output <= "10";
      else
        output <= "00";
    end if;
  end process;
END ARCHITECTURE decode;

