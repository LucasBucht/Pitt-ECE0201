-- A Moore machine implementation of the first six values
-- of the Recamán sequence: 0, 1, 3, 6, 2, 7
-- The output depends only on the current state.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity recaman_6 is
    port(
        clk       : in  std_logic;
        reset     : in  std_logic;
        data_out  : out std_logic_vector(3 downto 0)  -- enough for values up to 7
    );
end entity;

architecture rtl of recaman_6 is

    -- Enumerated states for each step in the sequence
    type state_type is (s0, s1, s2, s3, s4, s5);
    signal state : state_type;

begin

    -- State transition logic
    process(clk, reset)
    begin
        if reset = '1' then
            state <= s0;
        elsif rising_edge(clk) then
            case state is
                when s0 =>
                    state <= s1;
                when s1 =>
                    state <= s2;
                when s2 =>
                    state <= s3;
                when s3 =>
                    state <= s4;
                when s4 =>
                    state <= s5;
                when s5 =>
                    state <= s0;  -- wrap around (optional)
            end case;
        end if;
    end process;

    -- Output logic depends only on current state
    process(state)
    begin
        case state is
            when s0 =>
                data_out <= "0000";  -- 0
            when s1 =>
                data_out <= "0001";  -- 1
            when s2 =>
                data_out <= "0011";  -- 3
            when s3 =>
                data_out <= "0110";  -- 6
            when s4 =>
                data_out <= "0010";  -- 2
            when s5 =>
                data_out <= "0111";  -- 7
        end case;
    end process;

end rtl;
