--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:44:10 10/13/2016
-- Design Name:   
-- Module Name:   C:/Users/Propietario_/Arquitectura-de-Computadores/ProcesadorMonociclo/tb_IM.vhd
-- Project Name:  ProcesadorMonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IM
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
 
ENTITY tb_IM IS
END tb_IM;
 
ARCHITECTURE behavior OF tb_IM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IM
    PORT(
         ENTRADA_PC : IN  std_logic_vector(31 downto 0);
         RST : IN  std_logic;
         SALIDA_IM : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ENTRADA_PC : std_logic_vector(31 downto 0) := (others => '0');
   signal RST : std_logic := '0';

 	--Outputs
   signal SALIDA_IM : std_logic_vector(31 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IM PORT MAP (
          ENTRADA_PC => ENTRADA_PC,
          RST => RST,
          SALIDA_IM => SALIDA_IM
        );

   -- Stimulus process
   stim_proc: process
   begin		
      RST <= '0';
		wait for 20 ns;
		ENTRADA_PC <= "00010010101111111111111111111100";
		wait for 20 ns;
		RST <= '1';
		wait for 20 ns;
		RST <='0';
		ENTRADA_PC <= "10000010000100000010000000000000";
      wait;
   end process;

END;