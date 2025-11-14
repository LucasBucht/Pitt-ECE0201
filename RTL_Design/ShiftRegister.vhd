library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegister is
    port (
        Clk      : in  std_logic;
        Reset      : in  std_logic;
        Data       : in  std_logic_vector(7 downto 0);
        Shift_In   : in  std_logic;
        Shift_Load : in  std_logic;
        Shift_Out  : out std_logic
    );
end ShiftRegister;

architecture Behavioral of ShiftRegister is
    signal reg : std_logic_vector(7 downto 0);
begin

    Shift_Out <= reg(0);

    process(Clk, Reset)
    begin
        if Reset = '1' then
            reg <= (others => '0');

        elsif rising_edge(Clk) then
            if Shift_Load = '1' then
                reg <= Data;
            else
                reg <= Shift_In & reg(7 downto 1);
            end if;
        end if;
    end process;
	 
end Behavioral;