library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MIPS_test_bench is
end MIPS_test_bench;

architecture Behavioral of MIPS_test_bench is

    -- Component Declaration for the Unit Under Test (UUT)
    component MIPS
        Port ( clk : in  STD_LOGIC);
    end component;

    -- Signals for the testbench
    signal clk : STD_LOGIC := '0';

    -- Clock period definition
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: MIPS
        port map (
            clk => clk
        );

    -- Clock generation process
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus process
    stimulus_process : process
    begin
        -- Initialize signals
      
        wait for 20 ns;  -- Hold reset for a while
       
        
        -- Add your test cases here
        -- For example, you can load instructions into the instruction memory
        -- and check the outputs after certain clock cycles.

        -- Wait for a certain number of clock cycles to observe behavior
        wait for 1000 ns;  -- Adjust this time as needed for your tests

        -- Finish simulation
        wait;
    end process;

end Behavioral;