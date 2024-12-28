--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:11:13 11/25/2024
-- Design Name:   
-- Module Name:   F:/JU/alu_control_test_bench.vhd
-- Project Name:  Judy
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu_control_22
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
 
ENTITY alu_control_test_bench IS
END alu_control_test_bench;
 
ARCHITECTURE behavior OF alu_control_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu_control_22
    PORT(
         inst : IN  std_logic_vector(5 downto 0);
         regDst : OUT  std_logic;
         aluSrc : OUT  std_logic;
         memtoreg : OUT  std_logic;
         regWrite : OUT  std_logic;
         memRead : OUT  std_logic;
         memWrite : OUT  std_logic;
         branch : OUT  std_logic;
         aluOp : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inst : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal regDst : std_logic;
   signal aluSrc : std_logic;
   signal memtoreg : std_logic;
   signal regWrite : std_logic;
   signal memRead : std_logic;
   signal memWrite : std_logic;
   signal branch : std_logic;
   signal aluOp : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu_control_22 PORT MAP (
          inst => inst,
          regDst => regDst,
          aluSrc => aluSrc,
          memtoreg => memtoreg,
          regWrite => regWrite,
          memRead => memRead,
          memWrite => memWrite,
          branch => branch,
          aluOp => aluOp
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      inst <= "000000";
		
		wait for 100 ns;
		
		inst <= "100011";
		
		wait for 100 ns;
		
		inst <= "101011";
		
		wait for 100 ns;
		
		inst <= "000100";

      -- insert stimulus here 

      wait;
   end process;

END;
