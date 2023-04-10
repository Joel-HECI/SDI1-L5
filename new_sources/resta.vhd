library library IEEE;
use IEEE.std_logic_1164.all;

entity restador is
port(
    a,b: in std_logic_vector(3 downto 0);
    ci: in std_logic_vector(3 downto 0);
    d: out std_logic_vector(3 downto 0);
    p: out std_logic_vector(3 downto 0);
    -- co: out std_logic(3 downto 0)
);
end restador;

architecture Behavioral of restador is
begin
    process (a,b)
    begin
        for i in 0 to 3 loop

            d<= (not a(i) and not b(i) and c(i)) or (not a(i) and b(i) and c(i)) or (a(i) and not b(i) and not c(i)) or (a(i) and b(i) and c(i));
            
            end loop;
    end process;

end Behavioral;
