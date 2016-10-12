----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:47:33 09/30/2016 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
	Port ( Dato_Entrada1 : in  STD_LOGIC_VECTOR (31 downto 0);
          Dato_Entrada2 : in  STD_LOGIC_VECTOR (31 downto 0);
          Operador : in  STD_LOGIC_VECTOR (2 downto 0);
          Resultado : out  STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000"
			 );
end ALU;

architecture Behavioral of ALU is

begin
	 process (Operador, Dato_Entrada1, Dato_Entrada2)
 begin
		if (Operador = "000") then --Suma
			Resultado <= Dato_Entrada1 + Dato_Entrada2;
		end if;
		if (Operador = "001") then --Resta
			if (Dato_Entrada1 <= Dato_Entrada2) then
					Resultado <= (others => '0');
			end if;
			if (Dato_Entrada1 > Dato_Entrada2) then
				Resultado <= Dato_Entrada1 - Dato_Entrada2;
			end if;
		end if;
		if (Operador = "010") then --And
			Resultado <= Dato_Entrada1 and Dato_Entrada2;
		end if;
		if (Operador = "100") then --Or
			Resultado <= Dato_Entrada1 or Dato_Entrada2;
		end if;
		if (Operador = "101") then --Menor Que --slt
			if Dato_Entrada1 < Dato_Entrada2 then 
				Resultado <= "00000000000000000000000000000001";
			else
				Resultado <= (others => '0'); --Mayor que
			end if;
		end if;
		if (Operador = "011") then --beq
			if Dato_Entrada1 = Dato_Entrada2 then
				Resultado <= (others => '0');
			else
				Resultado <= (others => '0');
			end if;
		end if;
		if (Operador = "111") then --bne
			if Dato_Entrada1 = Dato_Entrada2 then
				Resultado <= (others => '0');
			else
				Resultado <= (others => '0');
			end if;
		end if;

	end process;
end Behavioral;

