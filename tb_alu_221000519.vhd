--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:33:35 10/14/2024
-- Design Name:   
-- Module Name:   D:/Student/Desktop/seifeldin/Seifeldinwalid221000519/tb_alu_221000519.vhd
-- Project Name:  Seifeldinwalid221000519
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Alu_221000519
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
 
ENTITY tb_alu_221000519 IS
END tb_alu_221000519;
 
ARCHITECTURE behavior OF tb_alu_221000519 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Alu_221000519
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         Alu_op : IN  std_logic_vector(3 downto 0);
         Alu_res : OUT  std_logic_vector(31 downto 0);
         zero : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal Alu_op : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Alu_res : std_logic_vector(31 downto 0);
   signal zero : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Alu_221000519 PORT MAP (
          A => A,
          B => B,
          Alu_op => Alu_op,
          Alu_res => Alu_res,
          zero => zero
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A <= X"00000005";
		B <= X"00000007";
		wait for 100 ns; --res = X"00000005"
		Alu_op <= "0001";
		wait for 100 ns;--res = X"00000007"
		Alu_op <= "0010";
		wait for 100 ns;--res = X"0000000c"
		Alu_op <= "0110";
		wait for 100 ns;--res = X"fffffffe"
		Alu_op <= "0111";
		wait for 100 ns;--res = X"00000001"
		Alu_op <= "1100";
		wait for 100 ns;--res = X"fffffff8"
		B <= X"00000005";
		Alu_op <= "0111";
		wait for 100 ns;--res = X"00000000",zero '1'


      wait;
   end process;

END;
