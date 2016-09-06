----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:57:37 09/05/2016 
-- Design Name: 
-- Module Name:    registro - Behavioral 
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

entity registro is
    Port ( rst : in  STD_LOGIC;
           sunal : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salida : out  STD_LOGIC);
end registro;

architecture Behavioral of registro is

begin
		process (clk,rst,sunal)
		begin
		
	if rst = '1' then
		salida <= '0';
		else 
			if(rising_edge(clk)) then 
				salida<=sunal;
			end if;
	end if;
	
		end process;
		
		
end Behavioral;

