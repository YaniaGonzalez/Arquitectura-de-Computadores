----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:09:31 11/06/2016 
-- Design Name: 
-- Module Name:    WINDOWS_MANAGER - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity WINDOWS_MANAGER is
    Port ( RS1 : in  STD_LOGIC_VECTOR (4 downto 0);
           RS2 : in  STD_LOGIC_VECTOR (4 downto 0);
           RD : in  STD_LOGIC_VECTOR (4 downto 0);
           OP : in  STD_LOGIC_VECTOR (1 downto 0);
           OP3 : in  STD_LOGIC_VECTOR (5 downto 0);
           CWP : in  STD_LOGIC;
           SALIDA_NRS1 : out  STD_LOGIC_VECTOR (5 downto 0);
           SALIDA_NRS2 : out  STD_LOGIC_VECTOR (5 downto 0);
           SALIDA_NRD : out  STD_LOGIC_VECTOR (5 downto 0);
           SALIDA_NCWP : out  STD_LOGIC := '0');
			  
end WINDOWS_MANAGER;

architecture Behavioral of WINDOWS_MANAGER is

	signal RS1_INT,RS2_INT,RD_INT: integer range 0 to 39 := 0;
	signal CWP_INT : integer := conv_integer(CWP);
	
begin
	process(RS1,RS2,RD,OP,OP3,CWP,RS1_INT,RS2_INT,RD_INT,CWP_INT)
	begin
			if(OP = "10" and OP3 = "111100")then--SAVE
				if CWP = '1' then
					SALIDA_NCWP <= '1';
					CWP_INT <= 0;
				else
					SALIDA_NCWP <= '0';
					CWP_INT <= 1;
				end if;
			else
				if(OP = "10" and OP3 = "111101")then--RESTORE
					if CWP = '1' then
						SALIDA_NCWP <= '0';
						CWP_INT <= 0;
					else
						SALIDA_NCWP <= '1';
						CWP_INT <= 1;
					end if;
				end if;
			end if;
		
		if(RS1>="00000" and RS1<="00111") then --Globales
			RS1_INT <= conv_integer(RS1);
		else
			if(RS1>="11000" and RS1<="11111") then --Entrada
				RS1_INT <= conv_integer(RS1)-(conv_integer(CWP_INT)*16);
			else
				if(RS1>="10000" and RS1<="10111") then --Locales
					RS1_INT <= conv_integer(RS1)+(conv_integer(CWP_INT)*16);
				else
					if(RS1>="01000" and RS1<="01111") then --Salida
						RS1_INT <= conv_integer(RS1)+ (conv_integer(CWP_INT)*16);
					end if;
				end if;
			end if;
		end if;
			
		if(RS2>="00000" and RS2<="00111") then --Globales
			RS2_INT <= conv_integer(RS2);
		else
			if(RS2>="11000" and RS2<="11111") then
				RS2_INT <= conv_integer(RS2) - (conv_integer(CWP_INT)*16); --Entrada
			else
				if(RS2>="10000" and RS2<="10111") then
					RS2_INT <= conv_integer(RS2)+ (conv_integer(CWP_INT)*16); --Locales
				else
					if(RS2>="01000" and RS2<="01111") then
						RS2_INT <= conv_integer(RS2)+ (conv_integer(CWP_INT)*16); --Salida
					end if;
				end if;
			end if;
		end if;
		
		if(RD>="00000" and RD<="00111") then --Globales
			RD_INT <= conv_integer(RD);
		else
			if(RD>="11000" and RD<="11111") then --Entrada
				RD_INT <= conv_integer(RD)  - (conv_integer(CWP_INT)*16);
			else
				if(RD>="10000" and RD<="10111") then --Locales
					RD_INT <= conv_integer(RD)+ (conv_integer(CWP_INT)*16);
				else
					if(RD>="01000" and RD<="01111") then --Salida
						RD_INT <= conv_integer(RD)+ (conv_integer(CWP_INT)*16);
					end if;
				end if;
			end if;
		end if; 
	end process;
	
	SALIDA_NRS1 <= conv_std_logic_vector(RS1_INT, 6);
	SALIDA_NRS2 <= conv_std_logic_vector(RS2_INT, 6);
	SALIDA_NRD <= conv_std_logic_vector(RD_INT, 6);
	
end Behavioral;

