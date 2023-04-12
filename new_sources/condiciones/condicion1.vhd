-- (001) Cuando el número X sea mayor que el número A, a la salida en LEDs debe verse  a la salida X menos A; si la condición no se cumple muestra X.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;

entity condicion1 is

Port (A: in STD_LOGIC_VECTOR (3 downto 0);
      X: in STD_LOGIC_VECTOR (3 downto 0);
      sal: out STD_LOGIC_VECTOR (3 downto 0));
end condicion1;

architecture Behavioral of condicion1 is
    begin
        process (A,X)
        begin
            if unsigned(X) > unsigned(A) then
                sal <= std_logic_vector(unsigned(X) - unsigned(A));
            else
                sal <= X;
            end if;


        end process;

end Behavioral;