-- (111) Elija varias operaciones aritméticas que involucren todos los números X, Y, A, B, C y D.  ( por ejemplo: (A+Y)+(B-X)+(C-Y)-(C-D) )

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;

entity condicion7 is

Port (A,B,C,D: in STD_LOGIC_VECTOR (3 downto 0);
      X,Y: in STD_LOGIC_VECTOR (3 downto 0);
      sal: out STD_LOGIC_VECTOR (3 downto 0));
end condicion7;

architecture Behavioral of condicion7 is

    signal n_A : unsigned(3 downto 0);
    signal n_B : unsigned(3 downto 0);
    signal n_C : unsigned(3 downto 0);
    signal n_D : unsigned(3 downto 0);

    signal n_X : unsigned(3 downto 0);
    signal n_Y : unsigned(3 downto 0);


    
    begin
        process(A,B,C,D,X,Y)
        begin
        
        	n_A<=unsigned(A);
            n_B<=unsigned(B);
            n_C<=unsigned(C);
            n_D<=unsigned(D);
        
            n_X<=unsigned(X);
            n_Y<=unsigned(Y);
     
            sal<= std_logic_vector((n_A+n_D)+(n_B+n_C)-(n_A-n_X)-(n_C-n_Y)-(n_Y+n_X));
        end process;

end Behavioral;