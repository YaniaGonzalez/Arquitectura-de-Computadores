----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:20:21 10/16/2016 
-- Design Name: 
-- Module Name:    SEU - Behavioral 
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

entity SEU is
    Port ( ENTRADA_INMEDIATO : in  STD_LOGIC_VECTOR (12 downto 0);
           SALIDA_SEU : out  STD_LOGIC_VECTOR (31 downto 0));
end SEU;

architecture Behavioral of SEU is

begin

process(ENTRADA_INMEDIATO)
begin
if(ENTRADA_INMEDIATO(12) = '1')then
			SALIDA_SEU(12 downto 0) <= ENTRADA_INMEDIATO;
			SALIDA_SEU(31 downto 13) <= (others=>'1');
		else
			SALIDA_SEU(12 downto 0) <= ENTRADA_INMEDIATO;
			SALIDA_SEU(31 downto 13) <= (others=>'0');
		end if;
end process; 

end Behavioral;

