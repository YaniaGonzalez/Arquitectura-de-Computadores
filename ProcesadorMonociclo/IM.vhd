----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:04:02 09/30/2016 
-- Design Name: 
-- Module Name:    IM - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IM is
		Port ( DireccionPC : in  STD_LOGIC_VECTOR (31 downto 0);
				 Instruccion : out  STD_LOGIC_VECTOR (31 downto 0):= "00000000000000000000000000000000"
			   );
end IM;

architecture Behavioral of IM is
	type Memory is array (0 to 31)of std_logic_vector (31 downto 0);
	signal Posicion : Memory :=  (				
		"00000000000000000000000000000000", --0		
		"00000010001100100010000000100000", --1 		
		"00000010011101000010100000100000", --2 	   	
		"00000000100001011000000000100000", --3		
		"00000010001100101010100000100100", --4 		
		"00010010000000000000000001000000", --5 		
		"00000000000000000101000000100000", --6 		
		"00100001000010011111111111111111", --7 		
		"00010001001000000000000000110000", --8 	   
		"00000001010100100101000000100000", --9 		
		"00100001001010011111111111111111", --10 		
		"00010001010000000000000000111000", --11	   
		"00000000000010101001000000100000", --12 		
		"00100001000010001111111111111111", --13 	   
		"00100010010100100000000000000001", --14 	   
		"11111111111111111111111111111111", --15 	   
		others=>x"00000000");

begin
	process(DireccionPC)
		begin
				Instruccion <= Posicion(conv_integer(DireccionPC(4 downto 0)));						
		end process;

end Behavioral;

