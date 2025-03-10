library ieee;
use ieee.std_logic.1164.all;

entity JK_FF is
    Port ( j : in STD_LOGIC;
           k : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : inout STD_LOGIC;
           qbar : out STD_LOGIC);
end JK_FF;
architecture Behavioral of JK_FF is
begin
process(j,k,clk)
begin
if (clk='1' and (j='0' and k='0'))then q<=not q ;qbar<=q;
elsif (clk='1' and (j='0' and k='1'))then q<='1' ;qbar<='0';
elsif (clk='1' and (j='1' and k='0'))then q<='0' ;qbar<='1';
elsif (clk='1' and (j='1' and k='1'))then q<=q ;qbar<=not q;
end if;
end process;
end Behavioral;
