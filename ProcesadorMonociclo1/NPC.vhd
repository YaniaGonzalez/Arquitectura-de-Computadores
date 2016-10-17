----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:14:46 10/13/2016 
-- Design Name: 
-- Module Name:    NPC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity NPC is
    Port ( ENTRADA_ADD : in  STD_LOGIC_VECTOR (31 downto 0);
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           SALIDA_NPC : out  STD_LOGIC_VECTOR (31 downto 0));
end NPC;

architecture Behavioral of NPC is

begin
	process (ENTRADA_ADD, CLK, RST)
		begin
		if (rising_edge (CLK)) then
			if (RST = '1') then
					SALIDA_NPC <= "00000000000000000000000000000000";
			else 
					SALIDA_NPC <= ENTRADA_ADD;
			end if;
		end if;
	end process;
					
end Behavioral;

