----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:56:57 11/25/2024 
-- Design Name: 
-- Module Name:    alu_control_22 - Behavioral 
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

entity alu_control_22 is
    Port ( inst : in  STD_LOGIC_VECTOR (5 downto 0);
           regDst : out  STD_LOGIC;
           aluSrc : out  STD_LOGIC;
           memtoreg : out  STD_LOGIC;
           regWrite : out  STD_LOGIC;
           memRead : out  STD_LOGIC;
           memWrite : out  STD_LOGIC;
           branch : out  STD_LOGIC;
           aluOp : out  STD_LOGIC_VECTOR (1 downto 0));
end alu_control_22;

architecture Behavioral of alu_control_22 is

begin
process(inst)
begin
	if(inst = "000000") then --r
		regDst <= '1';
		aluSrc <= '0';
		memtoreg <= '0';
		regWrite <= '1';
		memRead <= '0';
		memWrite <= '0';
		branch <= '0';
		aluOp <= "10";
		
	elsif(inst = "100011") then 
		regDst <= '0';
		aluSrc <= '1';
		memtoreg <= '1';
		regWrite <= '1';
		memRead <= '1';
		memWrite <= '0';
		branch <= '0';
		aluOp <= "00";
		
	elsif(inst = "101011") then
		regDst <= '0';
		aluSrc <= '1';
		memtoreg <= '1';
		regWrite <= '0';
		memRead <= '0';
		memWrite <= '1';
		branch <= '0';
		aluOp <= "00";
		
	elsif(inst = "000100") then 
		regDst <= '0';
		aluSrc <= '0';
		memtoreg <= '1';
		regWrite <= '0';
		memRead <= '0';
		memWrite <= '0';
		branch <= '1';
		aluOp <= "01";
		
		
	end if;



end process;


end Behavioral;

