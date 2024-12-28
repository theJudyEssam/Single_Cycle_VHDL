----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:06:39 10/14/2024 
-- Design Name: 
-- Module Name:    Alu_221000519 - Behavioral 
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

entity Alu_221000519 is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Alu_op : in  STD_LOGIC_VECTOR (3 downto 0);
           Alu_res : out  STD_LOGIC_VECTOR (31 downto 0);
           zero : out  STD_LOGIC);
end Alu_221000519;

architecture Behavioral of Alu_221000519 is
begin
	process(A,B,Alu_op) begin
		if (Alu_op = "0000") then 
			Alu_res <= A and B;
		elsif (Alu_op = "0001") then
			Alu_res <= A or B;
		elsif (Alu_op = "0010") then
			Alu_res <= STD_LOGIC_VECTOR((unsigned(A)) + (unsigned(B)));
		elsif (Alu_op = "0110") then
			Alu_res <= STD_LOGIC_VECTOR((unsigned(A)) - (unsigned(B)));
		elsif (Alu_op = "0111") then
			if (A < B) then
				Alu_res <= X"00000001";
			else 
				Alu_res <= X"00000000";
			end if;
		elsif (Alu_op = "1100") then
			Alu_res <= A nor B;
		end if;
		if (A = B) then 
		zero <= '1';
		else 
		zero <= '0';
		end if;
	end process;	
end Behavioral;

