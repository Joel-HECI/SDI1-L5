-- (011) Si X y Y son mayores que A y B entonces debe realizarse la suma de X y Y; si la condición no se cumple muestra la suma de X y A.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;

entity condicion3 is

Port (A,B: in STD_LOGIC_VECTOR (3 downto 0);
      X,Y: in STD_LOGIC_VECTOR (3 downto 0);
      sal: out STD_LOGIC_VECTOR (3 downto 0));
end condicion3;

architecture Behavioral of condicion3 is
    begin
        process (A,B,X,Y)
        begin
            if unsigned(Y) > unsigned(B) and unsigned(X) > unsigned(A) then
                sal <= std_logic_vector(unsigned(X) + unsigned(Y));
            else
                sal <= std_logic_vector(unsigned(X) + unsigned(A));
            end if;

        end process;

end Behavioral;