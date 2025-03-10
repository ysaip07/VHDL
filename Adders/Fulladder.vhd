-- Implementation of full adder
library ieee;
use ieee.std_logic.1164.all;
entity fulladder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end fulladder;
architecture Behavioral of fulladder is
begin
sum<=(a xor b)xor c;
carry<=((a xor b )and c )or(a and b);
end Behavioral;
