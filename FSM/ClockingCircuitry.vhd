library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ClockingCircuitry is
    generic (
        DIV_BITS : integer := 24   
		  );
    port (
        Clk     : in  std_logic;
        Reset   : in  std_logic;
        Go      : in  std_logic;
        Count   : out std_logic_vector(7 downto 0)
    );
end ClockingCircuitry;

architecture Behavioral of ClockingCircuitry is

    component fib_counter is
        port(
            Go       : in  std_logic;
            Clk      : in  std_logic;
            Enable   : in  std_logic;
            Rst    : in  std_logic;
            Count    : out std_logic_vector(7 downto 0)
        );
    end component;
	 
	 signal ResetNot : std_logic;
    signal Enable  : std_logic := '0';
    signal counter : unsigned(DIV_BITS-1 downto 0) := (others => '0');

begin

	ResetNot <= not Reset;
	
    process(Clk)
    begin
        if rising_edge(Clk) then
            if ResetNot = '1' then
                counter <= (others => '0');
                Enable  <= '0';
            else
                counter <= counter + 1;
                if counter = 0 then
                    Enable <= '1';
                else
                    Enable <= '0';
                end if;
            end if;
        end if;
    end process;

    FSM: fib_counter port map(Go, Clk, Enable, ResetNot, Count);

end Behavioral;