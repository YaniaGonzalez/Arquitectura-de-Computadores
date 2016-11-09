--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:49:53 11/06/2016
-- Design Name:   
-- Module Name:   C:/UseRS/Propietario_/Arquitectura-de-Computadores/ProcesadorMonociclo4/tb_WINDOWS_MANAGER.vhd
-- Project Name:  ProcesadorMonociclo
-- Target Device:  
-- Tool veRSions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: WINDOWS_MANAGER
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
-- that these types always be used for the top-level I/O of a design in oRDer
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_WINDOWS_MANAGER IS
END tb_WINDOWS_MANAGER;
 
ARCHITECTURE behavior OF tb_WINDOWS_MANAGER IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT WINDOWS_MANAGER
    PORT(
         RS1 : IN  std_logic_vector(4 downto 0);
         RS2 : IN  std_logic_vector(4 downto 0);
         RD : IN  std_logic_vector(4 downto 0);
         OP : IN  std_logic_vector(1 downto 0);
         OP3 : IN  std_logic_vector(5 downto 0);
         CWP : IN  std_logic;
         SALIDA_NRS1 : OUT  std_logic_vector(5 downto 0);
         SALIDA_NRS2 : OUT  std_logic_vector(5 downto 0);
         SALIDA_NRD : OUT  std_logic_vector(5 downto 0);
         SALIDA_NCWP : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RS1 : std_logic_vector(4 downto 0) := (otheRS => '0');
   signal RS2 : std_logic_vector(4 downto 0) := (otheRS => '0');
   signal RD : std_logic_vector(4 downto 0) := (otheRS => '0');
   signal OP : std_logic_vector(1 downto 0) := (otheRS => '0');
   signal OP3 : std_logic_vector(5 downto 0) := (otheRS => '0');
   signal CWP : std_logic := '0';

 	--Outputs
   signal SALIDA_NRS1 : std_logic_vector(5 downto 0);
   signal SALIDA_NRS2 : std_logic_vector(5 downto 0);
   signal SALIDA_NRD : std_logic_vector(5 downto 0);
   signal SALIDA_NCWP : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: WINDOWS_MANAGER PORT MAP (
          RS1 => RS1,
          RS2 => RS2,
          RD => RD,
          OP => OP,
          OP3 => OP3,
          CWP => CWP,
          SALIDA_NRS1 => SALIDA_NRS1,
          SALIDA_NRS2 => SALIDA_NRS2,
          SALIDA_NRD => SALIDA_NRD,
          SALIDA_NCWP => SALIDA_NCWP
        );



   -- Stimulus process
   stim_proc: process
   begin		
				RS1 <= "10001";
				RS2 <= "10010";
				RD <=  "10011";
				CWP <=  '0';
				OP <=  "10";
				OP3 <= "000000";
		wait for 20 ns;
		
				CWP <= '1';
		
				wait for 20 ns;
		
				RS1 <= "11000";
				RS2 <= "11001";
				RD <= "11010";
		
				wait for 20 ns;
		
				CWP <= '0';
		
				wait for 20 ns;
		
				RS1 <= "00000";
				RS2 <= "00001";
				RD <= "00010";

      -- insert stimulus here 

      wait;
   end process;

END;
