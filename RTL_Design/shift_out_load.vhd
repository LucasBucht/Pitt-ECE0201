library ieee;
use ieee.std_logic_1164.all;

entity shift_out_load is 
	port(
		Clk, Reset, EN0, EN1 : in std_logic;
		Data : in std_logic_vector(7 downto 0);
		shiftOut : out std_logic
	);
		
end shift_out_load;

architecture shift_load_storage of shift_out_load is
	component register10 is
		port(
			Clk, en, rst : in std_logic;
			data : in std_logic_vector(7 downto 0);
			q : out std_logic_vector(7 downto 0)
		);
	end component;

	component ShiftRegister is
		port (
        Clk      : in  std_logic;
        Reset      : in  std_logic;
        Data       : in  std_logic_vector(7 downto 0);
        Shift_In   : in  std_logic;
        Shift_Load : in  std_logic;
        Shift_Out  : out std_logic
		);
	end component;

	signal mux0, mux1, mux2, shift_load, shift_in, shift_out : std_logic;
	signal q2, q1, q0, multiplex : std_logic_vector(7 downto 0);

begin

	mux0 <= not EN0 and not EN1;
	mux1 <= EN0 and not EN1;
	mux2 <= not EN0 and EN1;
	
	shift_load <= '1';
	shift_in <= '0';
	
	reg2: register10 port map (Clk, mux2, Reset, Data, q2);
	reg1: register10 port map (Clk, mux1, Reset, Data, q1);
	reg0: register10 port map (Clk, mux0, Reset, Data, q0);
	
	process(mux0, mux1, mux2, multiplex, q0, q1, q2)
		begin
			if mux0 = '1' then
				multiplex <= q0;
			elsif mux1 = '1' then
				multiplex <= q1;
			elsif mux2 = '1' then 
				multiplex <= q2;
			end if;
		end process;
	
	shift: ShiftRegister port map (Clk, Reset, multiplex, shift_in, shift_load, shift_out);
	
	shiftOut <= shift_out;
	
end shift_load_storage;