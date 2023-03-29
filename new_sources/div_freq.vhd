library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Divisor_frecuencia is
    Port (
        Clk : in STD_LOGIC;
        CLKo : out STD_LOGIC
        );
end Divisor_frecuencia;    

architecture Behavioral of Divisor_frecuencia is

signal Divisor : integer range 0 to 2500;
-- La definición de la variable Divisor se
-- definición de la Arquitectura

begin
 
 div:process(Clk)

if (Clk'event and Clk='1') then
    if(Divisor = 2500)then 
        Divisor<=0;
        CLKo <= not CLKo;
    else
        Divisor <= Divisor + 1;
    end if; 

end Process div;
    
    end Behavioral;