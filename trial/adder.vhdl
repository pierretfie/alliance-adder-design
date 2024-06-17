library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
        port(A : in std_logic;
                B : in std_logic;
                Cin : in std_logic;
                Sum : out std_logic;
                Cout : out std_logic);
end full_adder;
architecture Behavioral of full_adder is
begin
        process (A, B, Cin)
        begin
                sum <= A xor B xor Cin;
                Cout <= (A and B) or (B and Cin) or (Cin and A);
        end process;
end Behavioral;
        


