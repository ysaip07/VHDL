library ieee;
use ieee.std_logic.1164.all;
entity D_FF is
    Port ( d : inout STD_LOGIC;
           q : out STD_LOGIC);
end D_FF;
architecture Behavioral of D_FF is
begin
process(d)
begin
if (d='0')then q<=d;
elsif (d='1')then q<=d;
end if;
end process;
end Behavioral;