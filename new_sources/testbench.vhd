
-- Code your testbench here

-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component


signal a_in, b_in, s_out: std_logic_vector(3 downto 0):= "0000";


begin

  COMP: entity work.sumador port map(
    a=>a_in,
    b=>b_in,

    s=>s_out
      );

  process
  begin


    report "A+B";
    a_in <= "1000";
    b_in <= "0001";
    wait for 1 ns;

    report std_logic'image(s_out(3)) & std_logic'image(s_out(2)) & std_logic'image(s_out(1)) & std_logic'image(s_out(0)) ;
    
  

    -- assert(l='1') report "Fail a<b";
    
    assert false report "Test Done." severity note;
    wait;
   end process;

   
end tb;

