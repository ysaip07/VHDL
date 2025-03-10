library ieee;
use ieee.std_logic.1164.all;
entity T_FF is
    Port ( T : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : inout STD_LOGIC:='0');
end T_FF;
architecture Behavioral of T_FF is
begin
process(T)
begin
if (T ='0') then Q<=Q;
elsif (T='1') then Q<=not Q;
end if;
end process;
end Behavioral;