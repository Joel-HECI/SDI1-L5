-- (010) Cuando el número Y sea mayor que el número B, debe verse la resta de Y y B; si la condición no se cumple muestra Y.

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
            if Y > B then
                sal <= Y - B;
            else
                sal <= Y;
            end if;

        end process;

end Behavioral;