library IEEE;
use IEEE.std_logic_1164.all;

entity main is
    Port (

        num_in1: in std_logic_vector(3 downto 0);
        num_in2: in std_logic_vector(3 downto 0);

        clk_in: in std_logic;
       
        display: out std_logic_vector(3 downto 0);
        slct: in std_logic_vector(2 downto 0);
        num_out:out std_logic_vector(6 downto 0)
        );

end main;

architecture Behavioral of main is

signal CLK: std_logic;

constant a: std_logic_vector(3 downto 0) := "0111"; -- 7
constant b: std_logic_vector(3 downto 0) := "0100"; -- 4
constant c: std_logic_vector(3 downto 0) := "0101"; -- 5 
constant d: std_logic_vector(3 downto 0) := "0010"; -- 2

signal shown1: std_logic_vector(3 downto 0);
signal shown2: std_logic_vector(3 downto 0);
signal shown3: std_logic_vector(3 downto 0);
signal shown4: std_logic_vector(3 downto 0);

signal inA: std_logic_vector(3 downto 0);
signal inB: std_logic_vector(3 downto 0);
signal inC: std_logic_vector(3 downto 0);
signal inD: std_logic_vector(3 downto 0);
signal inE: std_logic_vector(3 downto 0);
signal inG: std_logic_vector(3 downto 0);
signal inH: std_logic_vector(3 downto 0);

signal op_out: std_logic_vector(3 downto 0);
 
begin

    -- selector

    cond1: entity work.condicion1 port map(

        A => a,
        X => num_in1,
        sal=> inA);

    cond2: entity work.condicion2 port map(

        B => b,
        Y => num_in2,
        sal=> inB);

    cond3: entity work.condicion3 port map(

        A => a,
        B => b,
        X => num_in1,
        Y => num_in2,
        sal=> inC);

    cond4: entity work.condicion4 port map(

        A => a,
        B => b,
        C => c,
        D => d,
        X => num_in1,
        Y => num_in2,
        sal=> inD);

    cond5: entity work.condicion5 port map(

        X => num_in1,
        Y => num_in2,
        sal=> inE);
        
    cond6: entity work.condicion6 port map(

        D => d,
        X => num_in1,
        Y => num_in2,
        sal=> inG);
                
    cond7: entity work.condicion7 port map(

        A => a,
        B => b,
        C => c,
        D => d,
        X => num_in1,
        Y => num_in2,
        sal=> inH);

    mux: entity work.mux7a1 port map(
        IA => inA,
        IB => inB,
        IC => inC,
        ID => inD,
        II => inE,
        IG => inG,
        IH => inH,
        Y => op_out,
        S => slct
        );
        
    div: entity work.Divisor_frecuencia port map(
        clk => clk_in,
        CLK_o => CLK);

    vis: entity work.VIS_DIN_4DIG port map(
        clk => CLK,
        BCD1 => shown1,
        BCD2 => shown2, 
        BCD3 => shown3,
        BCD4 => shown4,
        ANODS => display,
        SAL7SEG => num_out);

        process
        begin

        shown1 <= a;
        shown2 <= b;
        shown3 <= c;
        shown4 <= d;

        wait for 2500 ms;
        
        shown1 <= num_in1;
        shown2 <= num_in2;
        shown3 <= x"F";
        shown4 <= op_out;

                

        end process;
                
end Behavioral;