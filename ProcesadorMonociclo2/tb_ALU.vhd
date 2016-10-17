--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:35:11 10/16/2016
-- Design Name:   
-- Module Name:   C:/Users/Propietario_/Arquitectura-de-Computadores/ProcesadorMonociclo/tb_ALU.vhd
-- Project Name:  ProcesadorMonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY tb_ALU IS
END tb_ALU;
 
ARCHITECTURE behavior OF tb_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         ENTRADA_CRS1 : IN  std_logic_vector(31 downto 0);
         ENTRADA_CRS2 : IN  std_logic_vector(31 downto 0);
         OPERADOR_UC : IN  std_logic_vector(5 downto 0);
         SALIDA_ALU : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ENTRADA_CRS1 : std_logic_vector(31 downto 0) := (others => '0');
   signal ENTRADA_CRS2 : std_logic_vector(31 downto 0) := (others => '0');
   signal OPERADOR_UC : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal SALIDA_ALU : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          ENTRADA_CRS1 => ENTRADA_CRS1,
          ENTRADA_CRS2 => ENTRADA_CRS2,
          OPERADOR_UC => OPERADOR_UC,
          SALIDA_ALU => SALIDA_ALU
        );

   -- Stimulus process
   stim_proc: process
   begin		

		
      -- insert stimulus here 
		--ADD
		ENTRADA_CRS1 <= "00000000000000000000000000000111";
		ENTRADA_CRS2 <= "00000000000000000000000000000111";
		OPERADOR_UC <= "000001";
		wait for 20 ns;	
		--SUB
		ENTRADA_CRS1 <= "00000000000000000000000000000111";
		ENTRADA_CRS2 <= "00000000000000000000000000000111";
		OPERADOR_UC <= "000010";
		wait for 20 ns;
		--AND
		ENTRADA_CRS1 <= "00000000000000000000000000000111";
		ENTRADA_CRS2 <= "00000000000000000000000000000111";
		OPERADOR_UC <= "000011";
		wait for 20 ns;
		--ANDN
		ENTRADA_CRS1 <= "00000000000000000000000000000111";
		ENTRADA_CRS2 <= "00000000000000000000000000000111";
		OPERADOR_UC <= "000100";
		wait for 20 ns;
		--OR
		ENTRADA_CRS1 <= "00000000000000000000000000000111";
		ENTRADA_CRS2 <= "00000000000000000000000000000111";
		OPERADOR_UC <= "000101";
		wait for 20 ns;
		--ORN
		ENTRADA_CRS1 <= "00000000000000000000000000000111";
		ENTRADA_CRS2 <= "00000000000000000000000000000111";
		OPERADOR_UC <= "000110";
		wait for 20 ns;
		--XOR		
		ENTRADA_CRS1 <= "00000000000000000000000000000111";
		ENTRADA_CRS2 <= "00000000000000000000000000000111";
		OPERADOR_UC <= "000111";
		wait for 20 ns;
		--XORN
		ENTRADA_CRS1 <= "00000000000000000000000000000111";
		ENTRADA_CRS2 <= "00000000000000000000000000000111";
		OPERADOR_UC <= "001000";
		
      wait;
   end process;

END;