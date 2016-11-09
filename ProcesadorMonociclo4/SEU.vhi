
-- VHDL Instantiation Created from source file SEU.vhd -- 18:13:46 10/17/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SEU
	PORT(
		ENTRADA_INMEDIATO : IN std_logic_vector(12 downto 0);          
		SALIDA_SEU : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_SEU: SEU PORT MAP(
		ENTRADA_INMEDIATO => ,
		SALIDA_SEU => 
	);


