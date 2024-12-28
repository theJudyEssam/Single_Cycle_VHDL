----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:34:16 10/28/2024 
-- Design Name: 
-- Module Name:    register_2 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity register_2 is
    Port ( read_reg1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_reg2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_reg : in  STD_LOGIC_VECTOR (4 downto 0);
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           reg_write : in  STD_LOGIC;
			  clk: in STD_LOGIC;
           read_data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           read_data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end register_2;

architecture Behavioral of register_2 is

type reg is array(0 to 31) of STD_LOGIC_VECTOR (31 downto 0);

signal registers: reg:= (X"00000000",X"00000005",X"00000007",X"00000000",
								 X"00000000",X"00000000",X"00000000",X"00000000",
								 X"00000000",X"00000000",X"00000000",X"00000000",
								 X"00000000",X"00000000",X"00000000",X"00000000",
								 X"00000000",X"00000000",X"00000000",X"00000000",
								 X"00000000",X"00000000",X"00000000",X"00000000",
								 X"00000000",X"00000000",X"00000000",X"00000000",
								 X"00000000",X"00000000",X"00000000",X"00000000");


begin
read_data1 <= registers(to_integer(unsigned(read_reg1)));
read_data2 <=registers(to_integer(unsigned(read_reg2)));
process(reg_write,clk)
begin
if reg_write = '1' and rising_edge(clk) then
registers(to_integer(unsigned(write_reg))) <= write_data;
end if;
end process;



end Behavioral;

