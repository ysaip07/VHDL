library ieee;
use ieee.std_logic.1164.all;
entity ripplecarry is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           y : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           sumout : out STD_LOGIC_VECTOR (3 downto 0);
           carry : out STD_LOGIC);
end ripplecarry;
architecture Behavioral of ripplecarry is
component fulladder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           sum : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;
signal c1,c2,c3:std_logic;
begin
s1:fulladder port map(x(0),y(0),cin,sumout(0),c1);
s2:fulladder port map(x(1),y(1),c1,sumout(1),c2);
s3:fulladder port map(x(2),y(2),c2,sumout(2),c3);
s4:fulladder port map(x(3),y(3),c3,sumout(3),carry);
end Behavioral;
