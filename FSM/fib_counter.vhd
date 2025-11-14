library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fib_counter is
    port(
        Go      : in  std_logic;
        Clk     : in  std_logic;
        Enable  : in  std_logic;
        Rst     : in  std_logic;
        Count   : out std_logic_vector(7 downto 0)
    );
end fib_counter;

architecture Behavioral of fib_counter is

    type state_type is (IDLE, CALCULATE, UPDATE);
    signal state : state_type := IDLE;

    signal a, b, fib_val : unsigned(7 downto 0) := (others => '0');
    signal index : integer range 0 to 13 := 0;

begin
    process(Clk)
    begin
        if rising_edge(Clk) then
            if Rst = '1' then
                state   <= IDLE;
                a       <= (others => '0');
                b       <= to_unsigned(1, 8);
                fib_val <= (others => '0');
                index   <= 0;

            elsif Enable = '1' then
                case state is

                    when IDLE =>
                        if Go = '1' then
                            state <= CALCULATE;
                        end if;

                    when CALCULATE =>
                        fib_val <= a;
                        a <= b;
                        b <= a + b;
                        if index = 13 then
                            index <= 0;
                            a <= (others => '0');
                            b <= to_unsigned(1, 8);
                        else
                            index <= index + 1;
                        end if;
                        state <= UPDATE;

                    when UPDATE =>
                        state <= IDLE;

                    when others =>
                        state <= IDLE;

                end case;
            end if;
        end if;
    end process;

    Count <= std_logic_vector(fib_val);

end Behavioral;
