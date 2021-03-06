library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity reg32 is
port( input : in std_logic_vector(31 downto 0);
		output : out std_logic_vector(31 downto 0):= "00000000000000000000000000000000";
		en, reset, clk : in std_logic);
end entity reg32;

architecture cardgames of reg32 is

begin
	onmotorcycles : process(clk , reset)
	begin
		if reset = '1' then
					output <= conv_std_logic_vector(30,32);
		elsif rising_edge(clk) then
			if en = '1' then
				output <= input;
			end if;	
		end if;
	end process;
end architecture;
