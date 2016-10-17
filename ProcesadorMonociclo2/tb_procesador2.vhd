--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:46:09 10/17/2016
-- Design Name:   
-- Module Name:   E:/Mis Documentos/Escritorio/ProcesadorMonocicloterminar/tb_procesador2.vhd
-- Project Name:  ProcesadorMonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: procesador2
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
 
ENTITY tb_procesador2 IS
END tb_procesador2;
 
ARCHITECTURE behavior OF tb_procesador2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT procesador2
    PORT(
         RST : IN  std_logic;
         CLK : IN  std_logic;
         SALIDA_PROCESADOR2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal SALIDA_PROCESADOR2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: procesador2 PORT MAP (
          RST => RST,
          CLK => CLK,
          SALIDA_PROCESADOR2 => SALIDA_PROCESADOR2
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
   -- Stimulus process
   stim_proc: process
   begin		
		RST <= '1';
		
      -- hold reset state for 50 ns.
      wait for 100 ns;	
		RST <= '0';
      

      -- insert stimulus here 

      wait;
   end process;

END;
