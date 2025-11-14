library ieee;
use ieee.std_logic_1164.all;

entity RegisterStorage is
	port ( Clk, Reset, EN0, EN1 : in std_logic;
			 Data : in std_logic_vector(7 downto 0);
			 Initial0, Initial1, Initial2, Initial3, Initial4, Initial5 : out std_logic_vector(7 downto 0));
end RegisterStorage;

architecture structural of RegisterStorage is

	component display_decoder is
		Port (
        SW  : in  std_logic_vector(3 downto 0);
        HEX: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component dFlipFlop is
	port (D, Clk, Enable, Reset	:	in		std_logic;
			Q			:	out	std_logic);
	end component;
	
	signal upper, lower : std_logic_vector(3 downto 0);
	signal initialLower0, initialUpper0, initialLower1, initialUpper1, initialLower2, initialUpper2 : std_logic_vector(3 downto 0);
	signal initialTemp0, initialTemp1, initialTemp2 :  std_logic_vector(7 downto 0);
	signal Enable0, Enable1, Enable2, ClkNot, ResetNot : std_logic;
	
begin
	
	Enable0 <= not EN0 and not EN1;
	Enable1 <= EN0 and not EN1;
	Enable2 <= not EN0 and EN1;
	
	ResetNot <= not Reset;
	ClkNot <= not Clk;
	
	upper <= Data(7 downto 4);
	lower <= Data(3 downto 0);
	
	
	
	reg0: for i in 0 to 3 generate
        bit0upper: dFlipFlop port map (upper(i), ClkNot, Enable0, ResetNot, initialUpper0(i));
		  bit0lower: dFlipFlop port map (lower(i), ClkNot, Enable0, ResetNot, InitialLower0(i));
	end generate;
	
	display0upper: display_decoder port map (initialUpper0, Initial1);
	display0lower: display_decoder port map (initialLower0, Initial0);
	
	
	reg1: for i in 0 to 3 generate
        bit1upper: dFlipFlop port map (upper(i), ClkNot, Enable1, ResetNot, initialUpper1(i));
		  bit1lower: dFlipFlop port map (lower(i), ClkNot, Enable1, ResetNot, InitialLower1(i));
	end generate;
	
	display1upper: display_decoder port map (initialUpper1, Initial3);
	display1lower: display_decoder port map (initialLower1, Initial2);
	
	
	reg2: for i in 0 to 3 generate
        bit2upper: dFlipFlop port map (upper(i), ClkNot, Enable2, ResetNot, initialUpper2(i));
		  bit2lower: dFlipFlop port map (lower(i), ClkNot, Enable2, ResetNot, InitialLower2(i));
	end generate;
	
	display2upper: display_decoder port map (initialUpper2, Initial5);
	display2lower: display_decoder port map (initialLower2, Initial4);
	
	
end structural;	 