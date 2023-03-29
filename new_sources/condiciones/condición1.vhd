-- (001) Cuando el número X sea mayor que el número A, a la salida en LEDs debe verse  a la salida X menos A; si la condición no se cumple muestra X.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity condicion1 is

Port (A,B,C,D: in STD_LOGIC_VECTOR (3 downto 0);
      X,Y: in STD_LOGIC_VECTOR (3 downto 0);
      sal: out STD_LOGIC_VECTOR (3 downto 0));
end condicion1;

architecture Behavioral of condicion1 is
    begin
        process (A,B,C,D,X,Y)
        begin
            if X > A then
                sal <= X - A;
            else
                sal <= X;
            end if;


        end process;

end Behavioral;