
-- VHDL Instantiation Created from source file UC.vhd -- 18:22:37 10/17/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT UC
	PORT(
		ENTRADA_OP : IN std_logic_vector(1 downto 0);
		ENTRADA_OP3 : IN std_logic_vector(5 downto 0);          
		SALIDA_UC : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_UC: UC PORT MAP(
		ENTRADA_OP => ,
		ENTRADA_OP3 => ,
		SALIDA_UC => 
	);


