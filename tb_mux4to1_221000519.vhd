--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:43:41 10/07/2024
-- Design Name:   
-- Module Name:   D:/Student/Desktop/seifeldin/Seifeldinwalid221000519/tb_mux4to1_221000519.vhd
-- Project Name:  Seifeldinwalid221000519
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux4to1_221000519
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
 
ENTITY tb_mux4to1_221000519 IS
END tb_mux4to1_221000519;
 
ARCHITECTURE behavior OF tb_mux4to1_221000519 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux4to1_221000519
    PORT(
         I0 : IN  std_logic;
         I1 : IN  std_logic;
         I2 : IN  std_logic;
         I3 : IN  std_logic;
         s1 : IN  std_logic;
         s2 : IN  std_logic;
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I0 : std_logic := '0';
   signal I1 : std_logic := '0';
   signal I2 : std_logic := '0';
   signal I3 : std_logic := '0';
   signal s1 : std_logic := '0';
   signal s2 : std_logic := '0';

 	--Outputs
   signal output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux4to1_221000519 PORT MAP (
          I0 => I0,
          I1 => I1,
          I2 => I2,
          I3 => I3,
          s1 => s1,
          s2 => s2,
          output => output
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		I0 <='0';
	   wait for 100 ns;
		I1 <='1';	     
		wait for 100 ns;
		I2 <='0';
	   wait for 100 ns;	
		I3 <='1';
	   wait for 100 ns;	
		s1 <='1';
	   wait for 100 ns;
      s2 <='0';		







      -- insert stimulus here 

      wait;
   end process;

END;
