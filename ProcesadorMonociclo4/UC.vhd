----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:11:08 10/16/2016 
-- Design Name: 
-- Module Name:    UC - Behavioral 
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

entity UC is
    Port ( ENTRADA_OP : in  STD_LOGIC_VECTOR (1 downto 0);
           ENTRADA_OP3 : in  STD_LOGIC_VECTOR (5 downto 0);
           SALIDA_UC : out  STD_LOGIC_VECTOR (5 downto 0));
end UC;

architecture Behavioral of UC is

begin

process(ENTRADA_OP,ENTRADA_OP3)
begin
if (ENTRADA_OP ="10")then
			case ENTRADA_OP3 is 
				
									when "000000" => -- ADD
										SALIDA_UC  <= "000000";
											
										when "010000" => -- ADDcc
										SALIDA_UC  <= "010000";
											
										when "001000" => -- ADDX
										SALIDA_UC  <= "001000";
										
										when "011000" => -- ADDXcc
										SALIDA_UC  <= "011000";

										when "000100" => -- SUB
										SALIDA_UC <= "000100";
									 
										when "010100" => -- SUBcc
									   SALIDA_UC <= "010100";	
											 
										when "001100" => -- SUBX
										SALIDA_UC <= "001100";	
										
										when "011100" => -- SUBXcc
										SALIDA_UC <= "011100";							
											 
										when "000001" => -- AND
										SALIDA_UC <= "000001";
											 
										when "000101" => -- ANDN
										SALIDA_UC <= "000101";
										
										when "010101" => -- ANDNcc
										SALIDA_UC <= "010101";
											 
										when "010001" => -- ANDcc
										SALIDA_UC <= "010001";							
											 
										when "000010" => -- OR
										SALIDA_UC <= "000010";
											
										when "000110" => -- ORN
										SALIDA_UC <= "000110";
											
										when "010010" => -- ORcc
										SALIDA_UC <= "010010";
											
										when "010110" => -- ORNcc
										SALIDA_UC <= "010110";	
											 
										when "000011" => -- XOR
										SALIDA_UC  <= "000011"; 
											
										when "000111" => -- XNOR
										SALIDA_UC <= "000111";
										
										when "010011" => -- XORcc
										SALIDA_UC  <= "010011"; 
											
										when "010111" => -- XNORcc
										SALIDA_UC <= "010111";	
											
										when others => --otras instrucciones
										SALIDA_UC <= "111111"; 
												
						end case;
				 end if;
end process;


end Behavioral;


