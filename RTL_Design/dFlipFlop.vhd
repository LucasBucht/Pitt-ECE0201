library ieee;
use ieee.std_logic_1164.all;

entity dFlipFlop is
	port (Clk, d, Enable, Reset	:	in		std_logic;
			Q			:	out	std_logic);
end dFlipFlop;

architecture structural of dFlipFlop is
	component gatedDLatch is 
		port (D, Clk	:	in		std_logic;
				Q				:	out	std_logic);
	end component;
	
	
	signal dHold, Qm, Qs, notClock	: std_logic;
	attribute keep 			: boolean;
	attribute keep of Qm, Qs : signal is true;
begin

	notClock <= not Clk;

    dHold <= D when Enable = '1' else Qs;
    m: gatedDLatch port map (dHold, Clk, Qm);
    s: gatedDLatch port map (Qm, notClock, Qs);
	 
	 -- Gavin Jacobs helped me with this process
	 process(Clk, Enable, Reset)
		begin
			if Reset = '1' then
				Q <= '0';
			elsif Clk'event and Clk = '1' and Enable = '1' then
				Q <= D;
			end if;
	end process;
end structural;
