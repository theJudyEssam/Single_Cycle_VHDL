--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:10:23 12/02/2024
-- Design Name:   
-- Module Name:   F:/JU/adder_tb.vhd
-- Project Name:  Judy
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder32
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
 
ENTITY adder_tb IS
END adder_tb;
 
ARCHITECTURE behavior OF adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder32
    PORT(
         a : IN  std_logic_vector(31 downto 0);
         b : IN  std_logic_vector(31 downto 0);
         sum : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(31 downto 0) := (others => '0');
   signal b : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal sum : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder32 PORT MAP (
          a => a,
          b => b,
          sum => sum
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      a <= X"05070507";
		b<= X"07050705";

      -- insert stimulus here 

      wait;
   end process;

END;
