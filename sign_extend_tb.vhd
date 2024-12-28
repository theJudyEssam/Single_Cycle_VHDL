--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:58:50 12/02/2024
-- Design Name:   
-- Module Name:   F:/JU/sign_extend_tb.vhd
-- Project Name:  Judy
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sign_extend
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
 
ENTITY sign_extend_tb IS
END sign_extend_tb;
 
ARCHITECTURE behavior OF sign_extend_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sign_extend
    PORT(
         inn : IN  std_logic_vector(15 downto 0);
         outt : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inn : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal outt : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sign_extend PORT MAP (
          inn => inn,
          outt => outt
        );

   -- Clock process definitions
  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		inn <= X"ABC7";
		
		wait for 100 ns;
		
		inn <= X"7BC7";
		
      -- insert stimulus here 

      wait;
   end process;

END;
