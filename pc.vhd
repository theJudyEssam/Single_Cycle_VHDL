----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:15:04 12/02/2024 
-- Design Name: 
-- Module Name:    pc - Behavioral 
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

entity pc is
    Port ( clk:in std_logic;
			  inn : in  STD_LOGIC_VECTOR (31 downto 0);
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
end pc;

architecture Behavioral of pc is
	signal tempo: std_logic_vector(31 downto 0) := X"00000000";

begin
	process(clk , inn)
	begin
		if(rising_edge(clk)) then
			outt<=tempo;
		elsif (falling_edge(clk)) then
			tempo <= inn;
			
		end if;
	
	
	end process;


end Behavioral;

