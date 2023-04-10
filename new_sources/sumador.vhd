library IEEE;
use IEEE.std_logic_1164.all;
use std.textio.all;

entity sumador is
port(
    a,b: in std_logic_vector(3 downto 0);
    
    s: out std_logic_vector(3 downto 0)
    -- co: out std_logic(3 downto 0)
);
end sumador;

architecture Behavioral of sumador is
    signal ci: std_logic_vector(3 downto 0):="0000";

begin
    process (a,b)
    begin
        for i in 0 to 3 loop
            s(i)<=(a(i) XOR b(i)) XOR ci(i);
            if i<3 then
                ci(i+1)<=(a(i) and b(i)) or (a(i) and ci(i)) or (b(i) and ci(i));
            end if;
        end loop;

    end process;

end Behavioral;
