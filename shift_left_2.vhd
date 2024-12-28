----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:26:41 12/02/2024 
-- Design Name: 
-- Module Name:    shift_left_2 - Behavioral 
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

entity shift_left_2 is
    Port ( inn : in  STD_LOGIC_VECTOR (31 downto 0);
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
end shift_left_2;

architecture Behavioral of shift_left_2 is

begin

outt <= inn(29 downto 0) & "00";

end Behavioral;

