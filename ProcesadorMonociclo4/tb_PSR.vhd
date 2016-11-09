--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:36:38 11/01/2016
-- Design Name:   
-- Module Name:   C:/Users/Propietario_/Arquitectura-de-Computadores/ProcesadorMonociclo3/tb_PSR.vhd
-- Project Name:  ProcesadorMonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PSR
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_PSR IS
END tb_PSR;
 
ARCHITECTURE behavior OF tb_PSR IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PSR
    PORT(
         ENTRADA_NZVC : IN  std_logic_vector(3 downto 0);
         RST : IN  std_logic;
         CLK : IN  std_logic;
			ENTRADA_NCWP : in  STD_LOGIC;
			SALIDA_CWP : out  STD_LOGIC;
         CARRY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ENTRADA_NZVC : std_logic_vector(3 downto 0) := (others => '0');
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';
	signal ENTRADA_NCWP : std_logic := '0';

 	--Outputs
   signal CARRY : std_logic;
	signal SALIDA_CWP : std_logic;
	
   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PSR PORT MAP (
          ENTRADA_NZVC => ENTRADA_NZVC,
          RST => RST,
          CLK => CLK,
          CARRY => CARRY,
			 ENTRADA_NCWP => ENTRADA_NCWP 
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

 -- Stimulus process
   stim_proc: process
   begin			
      RST <='1';
		ENTRADA_NZVC <="0010";
		wait for 50 ns;
		RST<='0';
		ENTRADA_NCWP <= '1';
		ENTRADA_NZVC <="1010";
		wait for 50 ns;
		ENTRADA_NZVC <="1110";
		wait for 50 ns;
		ENTRADA_NZVC <="0101";
      wait;
   end process;


END;
