----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:56:10 12/02/2024 
-- Design Name: 
-- Module Name:    sign_extend - Behavioral 
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

entity sign_extend is
    Port ( inn : in  STD_LOGIC_VECTOR (15 downto 0);
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
end sign_extend;

architecture Behavioral of sign_extend is


	begin
    process(inn)
    begin
        if(inn(15) = '0') then
            -- For positive numbers, extend with 0s
            outt <= "0000000000000000" & inn;
        else
            -- For negative numbers, extend with 1s
            outt <= "1111111111111111" & inn;
        end if;
    end process;

end Behavioral;

