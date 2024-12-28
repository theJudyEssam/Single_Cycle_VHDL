----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Judy Essam :>>>
-- 
-- Create Date:    11:28:31 12/02/2024 
-- Design Name: 
-- Module Name:    MIPS - Behavioral 
-- Project Name:  MIPS
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
-- ghdl -a 
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


entity MIPS is
    Port ( CLK : in  STD_LOGIC);
end MIPS;




architecture Behavioral of MIPS is



component adder32 is -- this is the adder
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           sum : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Alu_221000519 is  -- this is the ALU
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Alu_op : in  STD_LOGIC_VECTOR (3 downto 0);
           Alu_res : out  STD_LOGIC_VECTOR (31 downto 0);
           zero : out  STD_LOGIC);
end component;
-- AluOP, AluControl_in, AluControl_Out
component Alu_control is  -- ALU_control
    Port ( instr : in  STD_LOGIC_VECTOR (5 downto 0);
           alu_op : in  STD_LOGIC_VECTOR (1 downto 0);
           operation : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

--OPcode, RegDst, AluSrc, MemToReg, RegWrite, MemRead, MemWrite, Branch, AluOP
component alu_control_22 is  -- Control Unit
    Port ( inst : in  STD_LOGIC_VECTOR (5 downto 0);
           regDst : out  STD_LOGIC;
           aluSrc : out  STD_LOGIC;
           memtoreg : out  STD_LOGIC;
           regWrite : out  STD_LOGIC;
           memRead : out  STD_LOGIC;
           memWrite : out  STD_LOGIC;
           branch : out  STD_LOGIC;
           aluOp : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

component MUX32 is
    Port ( inA : in  STD_LOGIC_VECTOR (31 downto 0);
           inB : in  STD_LOGIC_VECTOR (31 downto 0);
           Sel : in  STD_LOGIC;
           OutRes : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


component MUX_5_Bits is
    Port ( inA : in  STD_LOGIC_VECTOR (4 downto 0);
           inB : in  STD_LOGIC_VECTOR (4 downto 0);
           Sel : in  STD_LOGIC;
           OutRes : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

--  Clk, NextPc, InstructionMemoryAddress
component pc is  -- This the program counter
    Port ( clk:in std_logic;
		     inn : in  STD_LOGIC_VECTOR (31 downto 0);
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--Rs, Rt, RegWriteData, RegWriteDataIn, RegWrite, Clk, RegReadData_1, RegReadData_2
component register_2 is -- this the register for reading and writing data
    Port ( read_reg1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_reg2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_reg : in  STD_LOGIC_VECTOR (4 downto 0);
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           reg_write : in  STD_LOGIC;
		     clk: in STD_LOGIC;
           read_data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           read_data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component shift_left_2 is  -- this shifts left by 2 
    Port ( inn : in  STD_LOGIC_VECTOR (31 downto 0);
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

 
component sign_extend is  -- this sign extends
    Port ( inn : in  STD_LOGIC_VECTOR (15 downto 0);
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


component Instruction_Memory is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--AluRes, CLK, RegReadData_2, MemWrite, MemRead, DataMemoryReadData
component Memory is
    Port (  Address : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           WriteData : in  STD_LOGIC_VECTOR (31 downto 0);
           MemW : in  STD_LOGIC;
           MemR : in  STD_LOGIC;
           ReadData : out  STD_LOGIC_VECTOR (31 downto 0));
end component;



-- here will be the signals 
------------------------------------------------------------------------

signal NextPc : STD_LOGIC_VECTOR (31 downto 0);


-- the control unit signals
signal OpCode: STD_LOGIC_VECTOR (5 downto 0);
signal RegDst: STD_LOGIC;
signal Branch: STD_LOGIC;
signal MemRead: STD_LOGIC;
signal MemToReg: STD_LOGIC;
signal AluOp: STD_LOGIC_VECTOR (1 downto 0);
signal MemWrite: STD_LOGIC;
signal AluSrc: STD_LOGIC;
signal RegWrite: STD_LOGIC;


signal Rs: STD_LOGIC_VECTOR (4 downto 0);
signal Rt: STD_LOGIC_VECTOR (4 downto 0);
signal Rd: STD_LOGIC_VECTOR (4 downto 0);
signal RegWriteData: STD_LOGIC_VECTOR (4 downto 0); 
signal ReadReg1 : STD_LOGIC_VECTOR (31 downto 0);
signal ReadReg2 : STD_LOGIC_VECTOR (31 downto 0);
signal RegWriteDataIn : STD_LOGIC_VECTOR (31 downto 0); 


signal InstructionMemoryAddress : STD_LOGIC_VECTOR (31 downto 0);
signal InstructionMemoryOutput : STD_LOGIC_VECTOR (31 downto 0);

signal AluIn_1: STD_LOGIC_VECTOR (31 downto 0); 
signal AluIn_2: STD_LOGIC_VECTOR (31 downto 0); 
signal AluRes: STD_LOGIC_VECTOR (31 downto 0);
signal Zero: STD_LOGIC;
signal BranchAndZero : std_logic;

signal DataMemoryReadData: STD_LOGIC_VECTOR (31 downto 0);

-- sign extend in and out
signal SignExtendIn: STD_LOGIC_VECTOR (15 downto 0);
signal SignExtendOut: STD_LOGIC_VECTOR (31 downto 0);
signal ShiftOut32: STD_LOGIC_VECTOR (31 downto 0);


-- ALU control, it also takes ALUop
signal AluControl_in: STD_LOGIC_VECTOR (5 downto 0);
signal AluControl_Out: STD_LOGIC_VECTOR (3 downto 0);


signal PCAdder_Out: STD_LOGIC_VECTOR (31 downto 0);
signal BranchAdder_out: STD_LOGIC_VECTOR (31 downto 0);



begin

-----------------------------------------------------------------------------------------------
-- the components that deal with the clock and memory and all that stuff


PC_Component : pc port map ( clk => CLK 
							,inn => NextPc
							,outt => InstructionMemoryAddress);

IR_Component: Instruction_Memory port map(
								Address => InstructionMemoryAddress,
								Instruction => InstructionMemoryOutput);


Control_Unit_Component: alu_control_22 port map(
									inst => InstructionMemoryOutput(31 downto 26), 
									regDst => RegDst,
									aluSrc => AluSrc,
									memtoreg => MemToReg,
									regWrite => RegWrite,
									memRead => MemRead,
									memWrite => MemWrite,
									branch => Branch,
									aluOP=> AluOP);



Register_Component: register_2 port map(
										read_reg1 => InstructionMemoryOutput(25 downto 21), 
										read_reg2 => InstructionMemoryOutput(20 downto 16),
										write_reg => RegWriteData,
										write_data => RegWriteDataIn,
										reg_write => RegWrite,
										clk => CLK,
										read_data1 => ReadReg1, 
										read_data2 => ReadReg2);




-----------------------------------------------------------------------------------------------
AluControl_Component: Alu_control port map(
								instr => InstructionMemoryOutput(5 downto 0),
								alu_op => AluOP,
								operation =>AluControl_Out);

AluIn_1 <= ReadReg1;  -- cuz ALU input 1 will always be rs


Alu_Component: Alu_221000519 port map(AluIn_1, AluIn_2, AluControl_Out, AluRes, Zero);

Data_Memory_Component: Memory port map(AluRes, CLK, ReadReg2, MemWrite, MemRead, DataMemoryReadData);




-----------------------------------------------------------------------------------------------
-- Adder

PCAdder: adder32 port map(
								a => InstructionMemoryAddress,
								b => X"00000004",
								sum=> PCAdder_Out);

BranchAdder: adder32 port map(
								a => PCAdder_Out, 
								b => ShiftOut32, 
								sum => BranchAdder_out);



-----------------------------------------------------------------------------------------------
-- The port mappings for the sign extnd

SignExtend: sign_extend port map(
									inn => InstructionMemoryOutput(15 downto 0), 
									outt => SignExtendOut);

ShiftLeft_2: shift_left_2 port map(SignExtendOut, ShiftOut32);



-----------------------------------------------------------------------------------------------
--- The port mappings for all the muxes

MemToRegMux: MUX32 port map( 
								inA => AluRes, 
								inB => DataMemoryReadData,
								Sel => MemToReg, 
								OutRes => RegWriteDataIn);


BranchAndZero <= Branch AND Zero;
BranchMux: MUX32 port map(
						inA => PCAdder_Out, 
						inB => BranchAdder_out,
						Sel => BranchAndZero ,
						OutRes => NextPc); 

AluSrcMux: MUX32 port map(
					inA=> ReadReg2,
					inB=> SignExtendOut,
					Sel =>AluSrc,
					OutRes => AluIn_2);
					
					
RegDstMux: MUX_5_Bits port map(
										inA => InstructionMemoryOutput(20 downto 16),
										inB => InstructionMemoryOutput(15 downto 11),
										Sel => RegDst, 
										OutRes => RegWriteData);
										
								
								
end Behavioral;

