
-- VHDL Instantiation Created from source file PSR.vhd -- 18:04:45 11/06/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PSR
	PORT(
		ENTRADA_NZVC : IN std_logic_vector(3 downto 0);
		RST : IN std_logic;
		CLK : IN std_logic;
		ENTRADA_NCWP : IN std_logic;          
		CARRY : OUT std_logic;
		SALIDA_CWP : OUT std_logic
		);
	END COMPONENT;

	Inst_PSR: PSR PORT MAP(
		ENTRADA_NZVC => ,
		RST => ,
		CLK => ,
		CARRY => ,
		ENTRADA_NCWP => ,
		SALIDA_CWP => 
	);


