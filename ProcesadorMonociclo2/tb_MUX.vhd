--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:14:24 10/16/2016
-- Design Name:   
-- Module Name:   E:/Mis Documentos/Escritorio/ProcesadorMonocicloterminar/tb_MUX.vhd
-- Project Name:  ProcesadorMonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX
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
 
ENTITY tb_MUX IS
END tb_MUX;
 
ARCHITECTURE behavior OF tb_MUX IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX
    PORT(
         ENTRADA_CRS2 : IN  std_logic_vector(31 downto 0);
         ENTRADA_SEU : IN  std_logic_vector(31 downto 0);
         i : IN  std_logic;
         SALIDA_MUX : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ENTRADA_CRS2 : std_logic_vector(31 downto 0) := (others => '0');
   signal ENTRADA_SEU : std_logic_vector(31 downto 0) := (others => '0');
   signal i : std_logic := '0';

 	--Outputs
   signal SALIDA_MUX : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX PORT MAP (
          ENTRADA_CRS2 => ENTRADA_CRS2,
          ENTRADA_SEU => ENTRADA_SEU,
          i => i,
          SALIDA_MUX => SALIDA_MUX
        );

 
   -- Stimulus process
   stim_proc: process
   begin		
    i <='1';
		ENTRADA_SEU  <= "00000000000000000000000000000000";
		ENTRADA_CRS2 <= "00000000000000000000000000000000";
      wait;
   end process;

END;
