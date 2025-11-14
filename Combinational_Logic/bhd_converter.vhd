library ieee;
use ieee.std_logic_1164.all;

entity bhd_converter is
	port(
		
		switches  : in  std_logic_vector(3 downto 0);
		HEX: out std_logic_vector(6 downto 0);
		HEX1: out std_logic_vector(6 downto 0);
		HEXreal: out std_logic_vector(6 downto 0)
		
	);
end bhd_converter;

architecture converter of bhd_converter is

	-- Display Decoder
	component display_decoder is
		port (
        SW  : in  std_logic_vector(3 downto 0);
        HEX: out std_logic_vector(6 downto 0)
    );
	end component;
	
	-- Comparator
	component comparator is
		port(
			SW  : in  std_logic_vector(3 downto 0);
			compOut: out std_logic
	
	);
	end component;
	
	-- Circuit A
	component circuit_a is
		port(
			SW  : in  std_logic_vector(3 downto 0);
			aOutput: out std_logic_vector(3 downto 0)
	
	);
	end component;
	
	-- Circuit B
	component circuit_b is
		port(
			readComp  : in  std_logic;
			bOut: out std_logic_vector(3 downto 0)
		
	);
	end component;
	
	-- MUX
	component mux_4b_2to1 is
		port(
			readComp  : in  std_logic;
			readSWa  : in  std_logic_vector(3 downto 0);
			readSWv  : in  std_logic_vector(3 downto 0);
			HEXmux: out std_logic_vector(3 downto 0)
		
	);
	end component;
	
	signal compOut : std_logic;
	signal HEXmuxOutput, aOut, bOut : std_logic_vector(3 downto 0);

begin

comp: comparator port map(switches, compOut);

circa: circuit_a port map(switches, aOut);

circb: circuit_b port map(compOut, bOut);

mux: mux_4b_2to1 port map(compOut, aOut, switches, HEXmuxOutput);

bit0: display_decoder port map(HEXmuxOutput, HEX);

bit1: display_decoder port map(bOut, HEX1);

bitreal: display_decoder port map(switches, HEXreal);

end converter;
