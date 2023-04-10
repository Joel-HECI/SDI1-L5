
-- Code your testbench here

-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component


signal a_in, b_in, d_out: std_logic_vector(3 downto 0):= "0000";
-- signal c_in: std_logic:='0';
begin

  COMP: entity work.restador port map(
    a=>a_in,
    b=>b_in,
    -- c=>c_in,
    d=>d_out
      );

  process
  begin


    report "A-B";
    -- c_in<='0';
    a_in <= "1000";
    b_in <= "0001";
    wait for 1 ns;

    report std_logic'image(d_out(3)) & std_logic'image(d_out(2)) & std_logic'image(d_out(1)) & std_logic'image(d_out(0));
    
  

    -- assert(l='1') report "Fail a<b";
    
    assert false report "Test Done." severity note;
    wait;
   end process;

   
end tb;

