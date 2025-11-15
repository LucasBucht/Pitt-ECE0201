LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY registerStorage IS
  port(data_in : in std_logic_vector(7 downto 0);
       clk, rst, en : in std_logic;
       data_out : out std_logic_vector(7 downto 0)
  );
END ENTITY registerStorage;

--
ARCHITECTURE behavioral OF registerStorage IS
  signal data_minus2sigbits : std_logic_vector(7 downto 0);
BEGIN
  data_minus2sigbits(5 downto 0) <= data_in(5 downto 0);
  data_minus2sigbits(7 downto 6) <= "00";
  process(clk, rst, data_minus2sigbits)
    begin
      if rst = '1' then
        data_out <= "00000000";
      elsif (rising_edge(clk) AND en = '1') then
        data_out <= data_minus2sigbits;
    end if;
  end process;
END ARCHITECTURE behavioral;

