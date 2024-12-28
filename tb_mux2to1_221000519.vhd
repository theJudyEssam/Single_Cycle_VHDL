--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:17:43 10/07/2024
-- Design Name:   
-- Module Name:   D:/Student/Desktop/seifeldin/Seifeldinwalid221000519/tb_mux2to1_221000519.vhd
-- Project Name:  Seifeldinwalid221000519
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux2to1_221000519
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
 
ENTITY tb_mux2to1_221000519 IS
END tb_mux2to1_221000519;
 
ARCHITECTURE behavior OF tb_mux2to1_221000519 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2to1_221000519
    PORT(
         i0 : IN  std_logic;
         i1 : IN  std_logic;
         s : IN  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i0 : std_logic := '0';
   signal i1 : std_logic := '0';
   signal s : std_logic := '0';

 	--Outputs
   signal y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux2to1_221000519 PORT MAP (
          i0 => i0,
          i1 => i1,
          s => s,
          y => y
        );

   -- Stimulus  process		
	stim_proc: process
	begin
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		i0 <= '1';
		wait for 100 ns;
		s <= '1';
		wait for 100 ns;


      -- insert stimulus here 

      wait;
   end process;

END;
