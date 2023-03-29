library library IEEE;
use IEEE.std_logic_1164.all;

entity main is
    Port (
        clk_in: in std_logic;

        display: out std_logic_vector(3 downto 0);
        slct: in std_logic_vector(2 downto 0);

        num_out: out std_logic_vector(6 downto 0);
        );

end main;

architecture Behavioral of main is

signal CLK: std_logic;
signal S: std_logic_vector(4 downto 0);

-- A:7, B:4, C:5, D:2

begin

    div: entity work.div_freq port map(
            clk => clk_in,
            CLKo => CLK);

    vis: entity work.vis_dinamica port map(
            clk => CLK,
            BCD1 => "0111", -- A:7
            BCD2 => "0100", -- B:4
            BCD3 => "0101", -- C:5
            BCD4 => "0010", -- D:2
            ANODS => display,
            SAL7SEG => num_out,
            S => S);

    
end Behavioral;