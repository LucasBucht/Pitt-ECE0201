library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FibonacciTop is
    Port (
        CLK50MHZ : in  STD_LOGIC;
        RESET_BTN : in  STD_LOGIC;
        GO_BTN    : in  STD_LOGIC;
        LEDs      : out STD_LOGIC_VECTOR(7 downto 0) 
    );
end FibonacciTop;

architecture Structural of FibonacciTop is

    component ClockingCircuitry is
        generic (
            DIV_BITS : integer := 24
        );
        port (
            Clk   : in  STD_LOGIC;
            Reset : in  STD_LOGIC;
            Go    : in  STD_LOGIC;
            Count : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
	 
begin
	ClockUnit : ClockingCircuitry port map (CLK50MHZ, RESET_BTN, GO_BTN, LEDs);

end Structural;