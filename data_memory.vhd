--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:41:22 11/18/2024
-- Design Name:   
-- Module Name:   D:/Student/Desktop/Abdallah Amr/Judy_Temp_Project/data_memory_test.vhd
-- Project Name:  Judy_Temp_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: data_memory_judy
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY data_memory_test IS
END data_memory_test;
 
ARCHITECTURE behavior OF data_memory_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT data_memory_judy
    PORT(
         address : IN  std_logic_vector(31 downto 0);
         write_data : IN  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         mem_write : IN  std_logic;
         mem_read : IN  std_logic;
         read_data : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(31 downto 0) := (others => '0');
   signal write_data : std_logic_vector(31 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal mem_write : std_logic := '0';
   signal mem_read : std_logic := '0';

 	--Outputs
   signal read_data : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: data_memory_judy PORT MAP (
          address => address,
          write_data => write_data,
          clk => clk,
          mem_write => mem_write,
          mem_read => mem_read,
          read_data => read_data
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		
		mem_read <= '1';
		mem_write <= '0';
		address <= X"00000000";
		
		wait for 100ns;
		
			
		mem_read <= '0';
		mem_write <= '1';
		address <= X"0000000C";
		write_data <= X"ffffffff";
		
		wait for 100ns;
		
      wait;
   end process;

END;
