
-- VHDL Instantiation Created from source file WINDOWS_MANAGER.vhd -- 18:14:57 11/06/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT WINDOWS_MANAGER
	PORT(
		RS1 : IN std_logic_vector(4 downto 0);
		RS2 : IN std_logic_vector(4 downto 0);
		RD : IN std_logic_vector(4 downto 0);
		OP : IN std_logic_vector(1 downto 0);
		OP3 : IN std_logic_vector(5 downto 0);
		CWP : IN std_logic;          
		SALIDA_NRS1 : OUT std_logic_vector(5 downto 0);
		SALIDA_NRS2 : OUT std_logic_vector(5 downto 0);
		SALIDA_NRD : OUT std_logic_vector(5 downto 0);
		SALIDA_NCWP : OUT std_logic
		);
	END COMPONENT;

	Inst_WINDOWS_MANAGER: WINDOWS_MANAGER PORT MAP(
		RS1 => ,
		RS2 => ,
		RD => ,
		OP => ,
		OP3 => ,
		CWP => ,
		SALIDA_NRS1 => ,
		SALIDA_NRS2 => ,
		SALIDA_NRD => ,
		SALIDA_NCWP => 
	);


