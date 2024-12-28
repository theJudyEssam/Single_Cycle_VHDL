--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:25:50 10/21/2024
-- Design Name:   
-- Module Name:   D:/Student/Desktop/Seifeldinwalid221000519/alu_control_test.vhd
-- Project Name:  Judy
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Alu_control
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
 
ENTITY alu_control_test IS
END alu_control_test;
 
ARCHITECTURE behavior OF alu_control_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Alu_control
    PORT(
         instr : IN  std_logic_vector(5 downto 0);
         alu_op : IN  std_logic_vector(1 downto 0);
         operation : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal instr : std_logic_vector(5 downto 0) := (others => '0');
   signal alu_op : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal operation : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Alu_control PORT MAP (
          instr => instr,
          alu_op => alu_op,
          operation => operation
        );

  
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	--0010
		
		alu_op <= "01";
		
		wait for 100 ns; -- 0110
		
		
		
		alu_op <= "10";
		instr <= "110000";
		
		wait for 100 ns;
		
		instr <= "110010";
		
		wait for 100 ns;
		
		instr <= "110100";
		
		wait for 100 ns;
		
		instr <= "110101";
		
		wait for 100 ns;
		
		instr <= "111010";
		
		wait for 100 ns;
		
		alu_op <= "11";
		instr <= "110010";
		
		wait for 100 ns;
		
		instr <= "111010";
		
		wait for 100 ns;
	
      -- insert stimulus here 

      wait;
   end process;

END;
