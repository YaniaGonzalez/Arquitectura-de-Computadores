--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:35:03 10/13/2016
-- Design Name:   
-- Module Name:   C:/Users/Propietario_/Arquitectura-de-Computadores/ProcesadorMonociclo/tb_NPC.vhd
-- Project Name:  ProcesadorMonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: NPC
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
 
ENTITY tb_NPC IS
END tb_NPC;
 
ARCHITECTURE behavior OF tb_NPC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT NPC
    PORT(
         ENTRADA_ADD : IN  std_logic_vector(31 downto 0);
         CLK : IN  std_logic;
         RST : IN  std_logic;
         SALIDA_NPC : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ENTRADA_ADD : std_logic_vector(31 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal SALIDA_NPC : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: NPC PORT MAP (
          ENTRADA_ADD => ENTRADA_ADD,
          CLK => CLK,
          RST => RST,
          SALIDA_NPC => SALIDA_NPC
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
    RST <= '1';
	 wait for 20 ns;
	 RST <= '0';
	 ENTRADA_ADD <= "00111111111100000000111111000100";
	 wait for 20 ns;
	 ENTRADA_ADD <= "00011100001111000100101010000000";
    
	 wait;
   end process;

END;
