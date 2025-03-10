library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity priorityencoder4_2 is
    Port ( i : in STD_LOGIC_VECTOR (3 downto 0);
           y : out STD_LOGIC_VECTOR (1 downto 0));
end priorityencoder4_2;
architecture Behavioral of priorityencoder4_2 is
begin
process (i)
begin
if i(3)='1' then y<="11";
elsif i(2)='1' then y<="10";
elsif i(1)='1' then y<="01";
elsif i(0)='1' then y<="00";
end if;
end process;
end Behavioral;