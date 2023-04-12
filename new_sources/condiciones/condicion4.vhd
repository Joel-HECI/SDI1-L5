-- (100) Si X y Y son menores que A y B debe observarse la resta de  Y y X; si la condición no se cumple muestra la resta de  C y D.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;


entity condicion4 is

Port (A,B,C,D: in STD_LOGIC_VECTOR (3 downto 0);
      X,Y: in STD_LOGIC_VECTOR (3 downto 0);
      sal: out STD_LOGIC_VECTOR (3 downto 0));
end condicion4;

architecture Behavioral of condicion4 is
    begin
        process (A,B,C,D,X,Y)
        begin
            if unsigned(Y) < unsigned(B) and unsigned(X) < unsigned(A) then
                sal <= std_logic_vector(unsigned(Y) - unsigned(X));
                -- aplicar logica 2's complement
            else
                sal <= std_logic_vector(unsigned(C) - unsigned(D));
                -- aplicar logica 2's complement

            end if;

        end process;

end Behavioral;