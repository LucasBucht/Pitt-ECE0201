library ieee;
use ieee.std_logic_1164.all;

entity dual_digit_display is
	port(
		SW  : in  std_logic_vector(3 downto 0);
		SW1  : in  std_logic_vector(3 downto 0);
		HEX1 : out std_logic_vector(6 downto 0);
		HEX : out std_logic_vector(6 downto 0)
	
	);
end dual_digit_display;

architecture dual_display of dual_digit_display is

	-- Declare display decoder
	component display_decoder is
		Port (
			SW  : in  std_logic_vector(3 downto 0);
			HEX: out std_logic_vector(6 downto 0)
		);
	end component;
	
	-- Signal declaration
	signal display, display1 : std_logic_vector(6 downto 0);
	
begin
		x1: display_decoder port map (SW, HEX);
		x2: display_decoder port map (SW1, HEX1);
		
end dual_display;