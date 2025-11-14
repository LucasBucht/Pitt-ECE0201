library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4b_4to1 is
	Port ( 	U, V, W, X 	  : in STD_LOGIC_VECTOR  (3 downto 0);
				S	  			  : in STD_LOGIC_VECTOR  (1 downto 0);
				M	  			  : out STD_LOGIC_VECTOR (3 downto 0)
				);
	end mux_4b_4to1;
 
architecture behavioral of mux_4b_4to1 is

begin
	process(S)
		begin
			case S is
				when "00" =>
				M <= U;
				when "01" =>
				M <= V;
				when "10" =>
				M <= W;
				when "11" =>
				M <= X;
			end case;
		end process;
end behavioral;