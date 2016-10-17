--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:26:42 10/16/2016
-- Design Name:   
-- Module Name:   C:/Users/Propietario_/Arquitectura-de-Computadores/ProcesadorMonociclo/tb_UC.vhd
-- Project Name:  ProcesadorMonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UC
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
-- that these types always be used for the tENTRADA_ENTRADA_OP-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_UC IS
END tb_UC;
 
ARCHITECTURE behavior OF tb_UC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UC
    PORT(
         ENTRADA_OP : IN  std_logic_vector(1 downto 0);
         ENTRADA_OP3 : IN  std_logic_vector(5 downto 0);
         SALIDA_UC : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ENTRADA_OP : std_logic_vector(1 downto 0) := (others => '0');
   signal ENTRADA_OP3 : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal SALIDA_UC : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- apprENTRADA_ENTRADA_OPriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UC PORT MAP (
          ENTRADA_OP => ENTRADA_OP,
          ENTRADA_OP3 => ENTRADA_OP3,
          SALIDA_UC => SALIDA_UC
        );



   -- Stimulus process
   stim_proc: process
   begin		
	
		ENTRADA_OP <= "10";
		ENTRADA_OP3<="000000";
		wait for 20 ns;
		ENTRADA_OP3<="010000";
		wait for 20 ns;
		ENTRADA_OP3<="011000";
		wait for 20 ns;
		ENTRADA_OP3<="001000";
		wait for 20 ns;
		ENTRADA_OP3<="000100";
		wait for 20 ns;
		ENTRADA_OP3<="010100";
		wait for 20 ns;
		ENTRADA_OP3<="001100";
		wait for 20 ns;
		ENTRADA_OP3<="011100";
		wait for 20 ns;
		ENTRADA_OP3<="000001";
		wait for 20 ns;
		ENTRADA_OP3<="000101";
		wait for 20 ns;
		ENTRADA_OP3<="010101";
		wait for 20 ns;
		ENTRADA_OP3<="010001";
		wait for 20 ns;
		ENTRADA_OP3<="000010";
		wait for 20 ns;
		ENTRADA_OP3<="000110";
		wait for 20 ns;
		ENTRADA_OP3<="010010";
		wait for 20 ns;
		ENTRADA_OP3<="010110";
		wait for 20 ns;
		ENTRADA_OP3<="000011";
		wait for 20 ns;
		ENTRADA_OP3<="000111";
		wait for 20 ns;
		ENTRADA_OP3<="010011";
		wait for 20 ns;
		ENTRADA_OP3<="010111";
		wait for 20 ns;
	
      wait;
   end process;

END;
