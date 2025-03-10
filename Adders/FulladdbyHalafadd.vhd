library ieee;
use ieee.std_logic.1164.all;
entity fulladder_halfadder is
    Port ( a,b : in STD_LOGIC;
           c : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end fulladder_halfadder;

architecture Behavioral of fulladder_halfadder is
component halfaddar is
    Port ( x1,x2 : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end component halfaddar;
signal X1,X2,X3:STD_LOGIC;
begin
A1:halfaddar port map(a,b,X1,X2);
A2:halfaddar port map(c,X1,sum,X3);
carry<=X2 and X3;

end Behavioral;
