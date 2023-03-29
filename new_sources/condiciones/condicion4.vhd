-- (100) Si X y Y son menores que A y B debe observarse la resta de  Y y X; si la condición no se cumple muestra la resta de  C y D.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity condicion2 is

Port (A,B,C,D: in STD_LOGIC_VECTOR (3 downto 0);
      X,Y: in STD_LOGIC_VECTOR (3 downto 0);
      sal: out STD_LOGIC_VECTOR (3 downto 0));
end condicion2;

architecture Behavioral of condicion2 is
    begin
        process (A,B,C,D,X,Y)
        begin
            if Y < B and X < A then
                sal <= X - Y;
            else
                sal <= C - D;
            end if;

        end process;

end Behavioral;