----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:53:16 12/25/2024 
-- Design Name: 
-- Module Name:    Instruction_Memory - Behavioral 
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

-- this will be the intruction memory and it will basically take an input and store the instruction or
-- smth like that i am not sure elsraha

entity Instruction_Memory is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0));
end Instruction_Memory;

architecture Behavioral of Instruction_Memory is
type InstructionMemoryType is array (0 to 23) of STD_LOGIC_VECTOR (7 downto 0);
signal array_InstructionMemory : InstructionMemoryType := (     
		X"00", X"85", X"10", X"20", 
		X"AC", X"02", x"00", X"09", 
		X"8C", X"06", X"00", X"08", 
		X"10", X"46", X"00", X"01",
		X"00", X"46", X"88", X"2A", 
		X"00", X"A6", X"88", X"22"
); 

begin

 Instruction (31 downto 24) <= array_InstructionMemory(to_integer(unsigned(Address)));
 Instruction(23 downto 16) <= array_InstructionMemory(to_integer(unsigned(Address) +1));
 Instruction(15 downto  8) <= array_InstructionMemory(to_integer(unsigned(Address) +2));
 Instruction(7  downto  0) <= array_InstructionMemory(to_integer(unsigned(Address) +3));


end Behavioral;




