LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY DisplayDecoder IS
  port(
    SW : in std_logic_vector(3 downto 0);
    HEX : out std_logic_vector(7 downto 0)
    );
END ENTITY DisplayDecoder;

--
ARCHITECTURE display OF DisplayDecoder IS
  signal anot, bnot, cnot, dnot, a, b, c, d : std_logic;
BEGIN
  a <= SW(3);
  b <= SW(2);
  c <= SW(1);
  d <= SW(0);
  
  anot <= not a;
  bnot <= not b;
  cnot <= not c;
  dnot <= not d;
  
  HEX(7) <= '0';
  HEX(6) <= ((a and b and cnot and dnot) or (anot and b and c and d) or (anot and bnot and cnot));
  HEX(5) <= ((a and b and cnot and d) or (anot and c and d) or (anot and bnot and d) or (anot and bnot and c));
  HEX(0) <= ((a and bnot and c and d) or (a and b and cnot and d) or (anot and b and cnot and dnot) or (anot and bnot and cnot and d));
  HEX(1) <= ((a and b and dnot) or (a and b and c) or (b and c and dnot) or (anot and b and cnot and d) or (a and c and d));
  HEX(2) <= ((anot and bnot and c and dnot) or (a and b and (c or dnot)));
  HEX(3) <= ((anot and bnot and cnot and d) or (b and c and d) or (anot and b and cnot and dnot) or (a and bnot and c and dnot));
  HEX(4) <= ((anot and d) or (anot and b and cnot) or (bnot and cnot and d));
  
END ARCHITECTURE display;

