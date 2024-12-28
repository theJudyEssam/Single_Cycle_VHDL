----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:31:54 12/25/2024 
-- Design Name: 
-- Module Name:    MUX32 - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MUX32 is
    Port ( inA : in  STD_LOGIC_VECTOR (31 downto 0);
           inB : in  STD_LOGIC_VECTOR (31 downto 0);
           Sel : in  STD_LOGIC;
           OutRes : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX32;

architecture Behavioral of MUX32 is
begin
process(inA, inB, Sel)
begin 
if Sel = '0'
	then OutRes <= inA;
else
	OutRes<= inB;
	end if ;
		end process;
end Behavioral;


