--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:12:26 11/01/2016
-- Design Name:   
-- Module Name:   C:/Users/Propietario_/Arquitectura-de-Computadores/ProcesadorMonociclo3/tb_PSR_MODIFIER.vhd
-- Project Name:  ProcesadorMonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PSR_MODIFIER
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
 
ENTITY tb_PSR_MODIFIER IS
END tb_PSR_MODIFIER;
 
ARCHITECTURE behavior OF tb_PSR_MODIFIER IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PSR_MODIFIER
    PORT(
         RST : IN  std_logic;
         SALIDA_MUX_CRS2 : IN  std_logic_vector(31 downto 0);
         CRS1 : IN  std_logic_vector(31 downto 0);
         SALIDA_UC : IN  std_logic_vector(5 downto 0);
         SALIDA_ALU : IN  std_logic_vector(31 downto 0);
         SALIDA_NZVC : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RST : std_logic := '0';
   signal SALIDA_MUX_CRS2 : std_logic_vector(31 downto 0) := (others => '0');
   signal CRS1 : std_logic_vector(31 downto 0) := (others => '0');
   signal SALIDA_UC : std_logic_vector(5 downto 0) := (others => '0');
   signal SALIDA_ALU : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal SALIDA_NZVC : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PSR_MODIFIER PORT MAP (
          RST => RST,
          SALIDA_MUX_CRS2 => SALIDA_MUX_CRS2,
          CRS1 => CRS1,
          SALIDA_UC => SALIDA_UC,
          SALIDA_ALU => SALIDA_ALU,
          SALIDA_NZVC => SALIDA_NZVC
        );


    -- Stimulus process
   stim_proc: process
   begin				
      -- hold reset state for 100 ns.
		SALIDA_ALU <= x"00000000";
		CRS1 <= "1111111111111111111111111111111";
 		SALIDA_MUX_CRS2  <= "1111111111111111111111111111111";
		SALIDA_UC <= "001001";
      wait for 100 ns;	
		SALIDA_ALU <= x"0000000F";
		CRS1 <= "1111111111111111111111111111111";
 		SALIDA_MUX_CRS2  <= "00000000000000000000000000000000";
		SALIDA_UC <= "001100";
		wait for 100 ns;
		SALIDA_ALU <= x"F000010F";
		CRS1 <= "00000000000000000000000000000000";
 		SALIDA_MUX_CRS2  <= "1111111111111111111111111111111";
		SALIDA_UC <= "001011";
		wait for 100 ns;
		SALIDA_ALU <= x"F0000000";
		CRS1 <= "00000000000000000000000000000000";
 		SALIDA_MUX_CRS2  <= "00000000000000000000000000000000";
		SALIDA_UC <= "010001";
      wait;
   end process;

END;
