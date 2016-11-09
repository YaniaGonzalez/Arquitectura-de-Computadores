--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:54:32 10/13/2016
-- Design Name:   
-- Module Name:   C:/Users/Propietario_/Arquitectura-de-Computadores/ProcesadorMonociclo/tb_ADD.vhd
-- Project Name:  ProcesadorMonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADD
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
 
ENTITY tb_ADD IS
END tb_ADD;
 
ARCHITECTURE behavior OF tb_ADD IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADD
    PORT(
         DIRECCION_A_PC : IN  std_logic_vector(31 downto 0);
         ENTRADA_SUMADOR : IN  std_logic_vector(31 downto 0);
         SALIDA_A_NPC : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DIRECCION_A_PC : std_logic_vector(31 downto 0) := (others => '0');
   signal ENTRADA_SUMADOR : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal SALIDA_A_NPC : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADD PORT MAP (
          DIRECCION_A_PC => DIRECCION_A_PC,
          ENTRADA_SUMADOR => ENTRADA_SUMADOR,
          SALIDA_A_NPC => SALIDA_A_NPC
        );
	stim_proc: process
	begin
	
		 DIRECCION_A_PC <= "00000000000000000000000000000001";
		 ENTRADA_SUMADOR <="00000000000000000000000000000000";
		 wait for 20ns;
		 DIRECCION_A_PC <= "00000110000000000000011111111111";
		 ENTRADA_SUMADOR <="00001000000000001100000000000000";
		 wait for 20 ns;
		 DIRECCION_A_PC <= "00000000001111111111111111111111";
		 ENTRADA_SUMADOR <="00000000000111111111111110000000";
		 wait;
	end process;	 

END;