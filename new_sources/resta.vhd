library IEEE;
use IEEE.std_logic_1164.all;

entity restador is
port(
    a,b: in std_logic_vector(3 downto 0);
    -- c: in std_logic;
    d: out std_logic_vector(3 downto 0)
    -- co: out std_logic(3 downto 0)
);
end restador;

architecture Behavioral of restador is
    signal ci:std_logic_vector(3 downto 0):="0000";
begin
    process (a,b)
    begin
        -- ci(3)<=c;
        for i in 0 to 3 loop

            d(i) <= (a(i) xor b(i)) xor ci(i);
                if i<3 then
                    ci(i+1) <=(not a(i) and b(i)) or (not a(i) and ci(i)) or (b(i) and ci(i));
                end if;
            end loop;

    end process;

end Behavioral;
