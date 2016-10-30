----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:36:58 10/30/2016 
-- Design Name: 
-- Module Name:    PSR_MODIFIER - Behavioral 
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

entity PSR_MODIFIER is
    Port ( RST : in  STD_LOGIC;
           ENTRADA_MUX : in  STD_LOGIC_VECTOR (31 downto 0);
           CRS1 : in  STD_LOGIC_VECTOR (31 downto 0);
           SALIDA_UC : in  STD_LOGIC_VECTOR (5 downto 0);
           SALIDA_ALU : in  STD_LOGIC_VECTOR (31 downto 0);
           SALIDA_NZVC : in  STD_LOGIC_VECTOR (3 downto 0));
end PSR_MODIFIER;

architecture Behavioral of PSR_MODIFIER is

begin


end Behavioral;

