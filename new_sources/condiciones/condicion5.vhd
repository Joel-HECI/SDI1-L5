-- (101) Realizar la operación OR de los dos números X y Y

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity condicion5 is

Port (X,Y: in STD_LOGIC_VECTOR (3 downto 0);
      sal: out STD_LOGIC_VECTOR (3 downto 0));
end condicion5;

architecture Behavioral of condicion5 is
    begin
        process (X,Y)
        begin
            for i in 0 to 3 loop
            sal(i)<=X(i) or Y(i);
            end loop;

        end process;

end Behavioral;