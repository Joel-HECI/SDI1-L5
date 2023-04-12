-- (110) Realizar la operación XOR de X, Y y D

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity condicion6 is

Port (D: in STD_LOGIC_VECTOR (3 downto 0);
      X,Y: in STD_LOGIC_VECTOR (3 downto 0);
      sal: out STD_LOGIC_VECTOR (3 downto 0));
end condicion6;

architecture Behavioral of condicion6 is
    begin
        process (D,X,Y)
        begin
            for i in 0 to 3 loop
                sal(i) <= X(i) xor Y(i) xor D(i);
            end loop;
        end process;

end Behavioral;