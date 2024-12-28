----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:32:38 10/07/2024 
-- Design Name: 
-- Module Name:    mux4to1_221000519 - Behavioral 
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

entity mux4to1_221000519 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           s2 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end mux4to1_221000519;

architecture Behavioral of mux4to1_221000519 is

component mux2to1_221000519 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           s : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;
signal sig1, sig2: STD_LOGIC;
begin
m1: mux2to1_221000519 port map(I0, I1, s1, sig1);
m2: mux2to1_221000519 port map(I2, I3, s2, sig2);
m3: mux2to1_221000519 port map(i0=>sig1, i1=>sig2, s=>s1, y=>output);
end Behavioral;

