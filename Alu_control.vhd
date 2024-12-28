----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:10:31 10/21/2024 
-- Design Name: 
-- Module Name:    Alu_control - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Alu_control is
    Port ( instr : in  STD_LOGIC_VECTOR (5 downto 0);
           alu_op : in  STD_LOGIC_VECTOR (1 downto 0);
           operation : out  STD_LOGIC_VECTOR (3 downto 0));
end Alu_control;


architecture Behavioral of Alu_control is

signal  func_field : std_logic_vector(3 downto 0);

begin

	func_field <= instr(3 downto 0);
	process(instr, alu_op, func_field) begin
		if(alu_op = "00") then
		
			operation <= "0010";
			
		elsif( alu_op = "01") then
			operation <= "0110";
			
		elsif(alu_op = "10") then 
			if(func_field = "0000") then
				operation <= "0010";
			elsif(func_field = "0010") then
				operation <= "0110";
			elsif(func_field = "0100") then
				operation <= "0000";
			elsif(func_field = "0101") then
				operation <= "0001";
			elsif(func_field = "1010") then
				operation <= "0111";
			end if;
			
		elsif(alu_op = "11") then
			if(func_field = "0010") then
				operation <= "0110";
			elsif(func_field = "1010") then
				operation <= "0111";
			end if;
			
		end if;
		
			
			
			
			
		
	end process;

end Behavioral;

