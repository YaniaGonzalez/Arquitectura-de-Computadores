----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:29:14 10/17/2016 
-- Design Name: 
-- Module Name:    Procesador1 - arq_Procesador1 
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

entity Procesador1 is
    Port ( RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           SALIDA_PROCESADOR : out  STD_LOGIC_VECTOR (31 downto 0));
end Procesador1;

architecture arq_Procesador1 of Procesador1 is

	COMPONENT ADD
	PORT(
		DIRECCION_A_PC : IN std_logic_vector(31 downto 0);
		ENTRADA_SUMADOR : IN std_logic_vector(31 downto 0);          
		SALIDA_A_NPC : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;


	COMPONENT NPC
	PORT(
		ENTRADA_ADD : IN std_logic_vector(31 downto 0);
		CLK : IN std_logic;
		RST : IN std_logic;          
		SALIDA_NPC : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT PC
	PORT(
		ENTRADA_NPC : IN std_logic_vector(31 downto 0);
		CLK : IN std_logic;
		RST : IN std_logic;          
		SALIDA_PC : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	COMPONENT IM
	PORT(
		ENTRADA_PC : IN std_logic_vector(31 downto 0);
		RST : IN std_logic;          
		SALIDA_IM : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT UC
	PORT(
		ENTRADA_OP : IN std_logic_vector(1 downto 0);
		ENTRADA_OP3 : IN std_logic_vector(5 downto 0);          
		SALIDA_UC : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

COMPONENT RF
	PORT(
		RS1 : IN std_logic_vector(4 downto 0);
		RS2 : IN std_logic_vector(4 downto 0);
		DW : IN std_logic_vector(31 downto 0);
		RST : IN std_logic;
		RD : IN std_logic_vector(4 downto 0);          
		CRS1 : OUT std_logic_vector(31 downto 0);
		CRS2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT ALU
	PORT(
		ENTRADA_RS1 : IN std_logic_vector(31 downto 0);
		ENTRADA_RS2 : IN std_logic_vector(31 downto 0);
		OPERADOR_UC : IN std_logic_vector(5 downto 0);          
		SALIDA_ALU : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

signal ADD_NPC, NPC_PC, PC_IM, IM_UC_RF, ALU_RF, CRS1_ALU,CRS2_ALU:  STD_LOGIC_VECTOR (31 downto 0);
signal UC_ALU : STD_LOGIC_VECTOR (5 downto 0);
begin

	Inst_ADD: ADD PORT MAP(
		DIRECCION_A_PC => "00000000000000000000000000000001",
		ENTRADA_SUMADOR => NPC_PC ,
		SALIDA_A_NPC => ADD_NPC
	);
	
	Inst_NPC: NPC PORT MAP(
		ENTRADA_ADD => ADD_NPC,
		CLK => CLK,
		RST => RST,
		SALIDA_NPC => NPC_PC
	);


	Inst_PC: PC PORT MAP(
		ENTRADA_NPC => NPC_PC,
		CLK => CLK,
		RST => RST,
		SALIDA_PC => PC_IM
	);

	Inst_IM: IM PORT MAP(
		ENTRADA_PC => PC_IM,
		RST => RST,
		SALIDA_IM => IM_UC_RF
	);

	Inst_UC: UC PORT MAP(
		ENTRADA_OP => IM_UC_RF(31 downto 30),
		ENTRADA_OP3 => IM_UC_RF(24 downto 19),
		SALIDA_UC => UC_ALu
	);

	Inst_RF: RF PORT MAP(
		RS1 => IM_UC_RF (18 downto 14) ,
		RS2 => IM_UC_RF (4 downto 0),
		DW => ALU_RF,
		RST => RST ,
		RD => IM_UC_RF (29 downto 25),
		CRS1 => CRS1_ALU,
		CRS2 => CRS2_ALU
	);

	Inst_ALU: ALU PORT MAP(
		ENTRADA_RS1 => CRS1_ALU ,
		ENTRADA_RS2 => CRS2_ALU,
		OPERADOR_UC => UC_ALU,
		SALIDA_ALU => ALU_RF
	);

 SALIDA_PROCESADOR <= ALU_RF;
end arq_Procesador1;

