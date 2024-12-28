--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:39:43 10/28/2024
-- Design Name:   
-- Module Name:   D:/Student/Desktop/Seifeldinwalid221000519/tb_register_2.vhd
-- Project Name:  Judy
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register_2
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
 
ENTITY tb_register_2 IS
END tb_register_2;
 
ARCHITECTURE behavior OF tb_register_2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_2
    PORT(
         read_reg1 : IN  std_logic_vector(4 downto 0);
         read_reg2 : IN  std_logic_vector(4 downto 0);
         write_reg : IN  std_logic_vector(4 downto 0);
         write_data : IN  std_logic_vector(31 downto 0);
         reg_write : IN  std_logic;
         clk : IN  std_logic;
         read_data1 : OUT  std_logic_vector(31 downto 0);
         read_data2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal read_reg1 : std_logic_vector(4 downto 0) := (others => '0');
   signal read_reg2 : std_logic_vector(4 downto 0) := (others => '0');
   signal write_reg : std_logic_vector(4 downto 0) := (others => '0');
   signal write_data : std_logic_vector(31 downto 0) := (others => '0');
   signal reg_write : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal read_data1 : std_logic_vector(31 downto 0);
   signal read_data2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_2 PORT MAP (
          read_reg1 => read_reg1,
          read_reg2 => read_reg2,
          write_reg => write_reg,
          write_data => write_data,
          reg_write => reg_write,
          clk => clk,
          read_data1 => read_data1,
          read_data2 => read_data2
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
		read_reg1 <= "00001";
		read_reg2 <= "00010";
		
		wait for 100 ns;
		
		reg_write <= '1';
		write_reg <= "00111";
		write_data <= X"00000670";
      wait;
   end process;

END;
