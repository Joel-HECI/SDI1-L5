library library IEEE;
use IEEE.std_logic_1164.all;

entity main is
    Port (
        num_in1: in std_logic_vector(3 downto 0);
        num_in2: in std_logic_vector(3 downto 0);

        clk_in: in std_logic;
       
        display: out std_logic_vector(3 downto 0);
        -- slct: in std_logic_vector(2 downto 0);
        num_out:out std_logic_vector(6 downto 0);
        );

end main;

architecture Behavioral of main is

signal CLK: std_logic;

constant a: std_logic_vector(3 downto 0) := "0111"; -- 7
constant b: std_logic_vector(3 downto 0) := "0100"; -- 4
constant c: std_logic_vector(3 downto 0) := "0101"; -- 5 
constant d: std_logic_vector(3 downto 0) := "0010"; -- 2

signal inA: std_logic_vector(3 downto 0);
signal inB: std_logic_vector(3 downto 0);
signal inC: std_logic_vector(3 downto 0);
signal inD: std_logic_vector(3 downto 0);
signal inE: std_logic_vector(3 downto 0);
signal inG: std_logic_vector(3 downto 0);
signal inH: std_logic_vector(3 downto 0);

signal op_out: std_logic_vector(3 downto 0);

-- A:7, B:4, C:5, D:2
 
begin

    -- selector

    -- cond1: work.condicion1 port map(

    -- A => a,
    -- B => b,
    -- C => c,
    -- D => d,
    -- X => num_in1,
    -- Y => num_in2,
    -- sal=> inA);



    -- cond2: work.condicion2 port map(

    -- A => a,
    -- B => b,
    -- C => c,
    -- D => d,
    -- X => num_in1,
    -- Y => num_in2,
    -- sal=> inB);

    -- cond3: work.condicion3 port map(

    -- A => a,
    -- B => b,
    -- C => c,
    -- D => d,
    -- X => num_in1,
    -- Y => num_in2,
    -- sal=> inC);

    -- cond4: work.condicion4 port map(

    -- A => a,
    -- B => b,
    -- C => c,
    -- D => d,
    -- X => num_in1,
    -- Y => num_in2,
    -- sal=> inD);

    -- cond5: work.condicion5 port map(

    -- A => a,
    -- B => b,
    -- C => c,
    -- D => d,
    -- X => num_in1,
    -- Y => num_in2,
    -- sal=> inE);
        
    -- cond6: work.condicion6 port map(

    -- A => a,
    -- B => b,
    -- C => c,
    -- D => d,
    -- X => num_in1,
    -- Y => num_in2,
    -- sal=> inG);
        
    -- cond7: work.condicion7 port map(

    -- A => a,
    -- B => b,
    -- C => c,
    -- D => d,
    -- X => num_in1,
    -- Y => num_in2,
    -- sal=> inH);

    -- mux: work.mux7a1 port map(
    --     IA => inA,
    --     IB => inB,
    --     IC => inC,
    --     ID => inD,
    --     IE => inE,
    --     IG => inG,
    --     IH => inH,
    --     Y => op_out,
    --     S => slct
    --     );
        
    div: entity work.div_freq port map(
            clk => clk_in,
            CLKo => CLK);


    -- selector implementado
    -- vis: entity work.vis_dinamica port map(
    --         clk => CLK,
    --         BCD1 => num_in1 
    --         BCD2 => num_in2, 
    --         BCD3 => "0001" WHEN op_out > "0101" ELSE "0000";,
    --         BCD4 => op_out-"1010" WHEN op_out > "0101" ELSE op_out;, 
    --         ANODS => display,
    --         SAL7SEG => num_out);

    vis: entity work.vis_dinamica port map(
            clk => CLK,
            BCD1 => num_in1 
            BCD2 => num_in2, 
            BCD3 => a,
            BCD4 => b, 
            ANODS => display,
            SAL7SEG => num_out);
    
end Behavioral;