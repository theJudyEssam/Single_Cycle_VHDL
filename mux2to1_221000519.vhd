----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:11:22 10/07/2024 
-- Design Name: 
-- Module Name:    mux2to1_221000519 - Behavioral 
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

entity mux2to1_221000519 is
    Port ( i0 : in  STD_LOGIC_VECTOR(31 downto 0);
           i1 : in  STD_LOGIC_VECTOR(31 downto 0);
           s : in  STD_LOGIC;
           y : out  STD_LOGIC_VECTOR(31 downto 0)
			  );
end mux2to1_221000519;

architecture Behavioral of mux2to1_221000519 is

begin
process(i0, i1, s) begin 
if (s='0') then 
y<=i0; 
else y<=i1;
end if;
 end process;
end Behavioral;

