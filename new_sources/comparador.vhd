library IEEE;
use IEEE.std_logic_1164.all;

entity comparador is
port(
  a: in std_logic_vector(3 downto 0);
  b: in std_logic_vector(3 downto 0);
  equal: out std_logic;
  g_th: out std_logic;
  l_th: out std_logic);
   
end comparador;

architecture rtl of comparador is

    signal y : std_logic_vector(3 downto 0);


begin
    process(a, b)
    begin

        y(3) <= (a(3) and b(3))or (not a(3) and not b(3));
        y(2) <= (a(2) and b(2))or (not a(2) and not b(2));
        y(1) <= (a(1) and b(1))or (not a(1) and not b(1));
        y(0) <= (a(0) and b(0))or (not a(0) and not b(0));


        equal <= y(3) and y(2) and y(1) and y(0);
        g_th <=(a(3) and not b(3)) or (y(3) and a(2) and not b(2)) or (y(3) and y(2) and a(1) and not b(1)) or (y(3) and y(2) and y(1) and a(0) and not b(0));
        l_th <=(not a(3) and b(3)) or (y(3) and not a(2) and b(2)) or (y(3) and y(2) and not a(1) and b(1)) or (y(3) and y(2) and y(1) and not a(0) and b(0));
    -- 1*0 + 1*1*0 + 1*1*1*1 + 1*1*0*0*0
    end process;
end rtl; 