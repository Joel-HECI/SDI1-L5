-- (011) Si X y Y son mayores que A y B entonces debe realizarse la suma de X y Y; si la condición no se cumple muestra la suma de X y A.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity condicion3 is

Port (A,B,C,D: in STD_LOGIC_VECTOR (3 downto 0);
      X,Y: in STD_LOGIC_VECTOR (3 downto 0);
      sal: out STD_LOGIC_VECTOR (3 downto 0));
end condicion3;

architecture Behavioral of condicion3 is
    begin
        process (A,B,C,D,X,Y)
        begin
            if Y > B and X > A then
                sal <= X + Y;
            else
                sal <= X + A;
            end if;

        end process;

end Behavioral;