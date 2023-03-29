library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux7a1 is
    Port ( 
        IA : in STD_LOGIC_VECTOR (3 downto 0);
        IB : in STD_LOGIC_VECTOR (3 downto 0);
        IC : in STD_LOGIC_VECTOR (3 downto 0);
        ID : in STD_LOGIC_VECTOR (3 downto 0);
        II : in STD_LOGIC_VECTOR (3 downto 0);
        IG : in STD_LOGIC_VECTOR (3 downto 0);
        IH : in STD_LOGIC_VECTOR (3 downto 0);
 
        S : in STD_LOGIC_VECTOR (2 downto 0);
        Y : out STD_LOGIC_VECTOR (3 downto 0)
    );
 end mux7a1;

architecture arch_mux71 of mux7a1 is
    begin

    -- process mux41
    -- begin
        
    Y <= IA WHEN S="001" 
    ELSE IB WHEN S="010" 
    ELSE IC WHEN S="011" 
    ELSE ID WHEN S="100" 
    ELSE II WHEN S="101" 
    ELSE IG WHEN S="110" 
    ELSE IH WHEN S="111" 
    ELSE "0000"; 

    --end process;
end arch_mux71;