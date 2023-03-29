-- (110) Realizar la operación XOR de X, Y y D

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
            sal => X xor Y xor D;

        end process;

end Behavioral;