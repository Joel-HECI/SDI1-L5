-- (010) Cuando el número Y sea mayor que el número B, debe verse la resta de Y y B; si la condición no se cumple muestra Y.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;


entity condicion2 is

Port (B: in STD_LOGIC_VECTOR (3 downto 0);
      Y: in STD_LOGIC_VECTOR (3 downto 0);
      sal: out STD_LOGIC_VECTOR (3 downto 0));
end condicion2;

architecture Behavioral of condicion2 is
    begin
        process (B,Y)
        begin
            if unsigned(Y) > unsigned(B) then
                sal <= std_logic_vector(unsigned(Y) - unsigned(B));
            else
                sal <= Y;
            end if;

        end process;

end Behavioral;