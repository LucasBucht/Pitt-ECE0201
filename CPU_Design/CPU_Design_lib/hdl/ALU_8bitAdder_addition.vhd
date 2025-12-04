LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY ALU_9bitAdder IS
  port(data_in1, data_in2 : in std_logic_vector(8 downto 0);
        Cin : in std_logic;
       data_out : out std_logic_vector (8 downto 0)
     );
END ENTITY ALU_9bitAdder;

ARCHITECTURE addition OF ALU_9bitAdder IS
  
  component ALU_Adder
		Port (x 			 : in STD_LOGIC;
					y 			 : in STD_LOGIC;
					carry_in  : in STD_LOGIC;
					sum 		 : out STD_LOGIC;
					carry_out : out STD_LOGIC);
	end component;
	
	signal c : std_logic_vector(8 downto 0);
	
BEGIN

  FA0: ALU_Adder port map(data_in1(0), data_in2(0), Cin, data_out(0), c(0));
  FA1: ALU_Adder port map(data_in1(1), data_in2(1), c(0), data_out(1), c(1)); 
  FA2: ALU_Adder port map(data_in1(2), data_in2(2), c(1), data_out(2), c(2));
  FA3: ALU_Adder port map(data_in1(3), data_in2(3), c(2), data_out(3), c(3));
  FA4: ALU_Adder port map(data_in1(4), data_in2(4), c(3), data_out(4), c(4));
  FA5: ALU_Adder port map(data_in1(5), data_in2(5), c(4), data_out(5), c(5));
  FA6: ALU_Adder port map(data_in1(6), data_in2(6), c(5), data_out(6), c(6));
  FA7: ALU_Adder port map(data_in1(7), data_in2(7), c(6), data_out(7), c(7));
  FA8: ALU_Adder port map(data_in1(8), data_in2(8), c(7), data_out(8), c(8));
  
END ARCHITECTURE addition;

