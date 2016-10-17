
-- VHDL Instantiation Created from source file ALU.vhd -- 16:20:48 10/17/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		ENTRADA_RS1 : IN std_logic_vector(31 downto 0);
		ENTRADA_RS2 : IN std_logic_vector(31 downto 0);
		OPERADOR_UC : IN std_logic_vector(5 downto 0);          
		SALIDA_ALU : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		ENTRADA_RS1 => ,
		ENTRADA_RS2 => ,
		OPERADOR_UC => ,
		SALIDA_ALU => 
	);


