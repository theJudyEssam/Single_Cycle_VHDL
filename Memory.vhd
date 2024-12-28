library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Memory is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           WriteData : in  STD_LOGIC_VECTOR (31 downto 0);
           MemW : in  STD_LOGIC;
           MemR : in  STD_LOGIC;
           ReadData : out  STD_LOGIC_VECTOR (31 downto 0));
end Memory;



architecture Behave of Memory is
type Ram is array (0 to 35) of STD_LOGIC_VECTOR (7 downto 0);

signal MiniRam : Ram := (X"AB", X"CD", X"EF", X"00", 
						 X"75", X"74", X"65", X"72", 
						 X"20", X"41", X"72", X"63", 
						 X"68", X"69", X"74", X"65", 
						 X"12", X"34", X"56", X"78",
						 X"7F", X"7F", X"7D", X"7D", 
						 X"00", X"00", X"00", X"00", 
						 X"78", X"78", X"6A", X"6A", 
						 X"00", X"00", X"00", X"01");
								 
begin
process (MemR, MemW, Address, clk)
begin 

if MemR = '1' and MemW = '0' 
	then 
	ReadData(31 downto 24) <= MiniRam (to_integer(unsigned(Address)));
	ReadData(23 downto 16) <= MiniRam (to_integer(unsigned(Address ) + 1));
	ReadData(15 downto 8) <= MiniRam (to_integer(unsigned(Address ) + 2));
	ReadData(7 downto 0) <= MiniRam (to_integer(unsigned(Address ) + 3));

elsif MemR = '0' and MemW = '1' and rising_edge (clk)
	then
	 MiniRam(to_integer(unsigned(Address))) <= WriteData(31 downto 24);
	 MiniRam(to_integer(unsigned(Address) + 1)) <= WriteData(23 downto 16);
	 MiniRam(to_integer(unsigned(Address) + 2)) <= WriteData(15 downto 8);
	 MiniRam(to_integer(unsigned(Address) + 3)) <= WriteData(7 downto 0);

	end if ;
		end process;

end Behave;

