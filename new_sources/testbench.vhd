
-- Code your testbench here

-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_arith.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is
-- DUT component

signal a_in, b_in, d_out: std_logic_vector(3 downto 0):= "0000";
signal o_out: integer:=0;

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
    
    a_in<="1000";
    b_in<="0001";
    
    o_out<=conv_integer(unsigned(d_out));
    
	report "d: " & integer'image(o_out);
    wait for 1 ms;
    
   
    a_in<="1000";
    b_in<="0101";
    
	o_out<=conv_integer(unsigned(d_out));
    
	report "d: " & integer'image(o_out);
    wait for 1 ms;
    

    assert false report "Test Done." severity note;
    wait;
   end process;

   
end tb;

