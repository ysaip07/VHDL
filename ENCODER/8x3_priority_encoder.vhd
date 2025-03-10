library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity priorityencoder8_3 is
    Port ( i : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (2 downto 0));
end priorityencoder8_3;
architecture Behavioral of priorityencoder8_3 is
begin
process (i)
begin
if i(7)='1' then y<="111";
elsif i(6)='1' then y<="110";
elsif i(5)='1' then y<="101";
elsif i(4)='1' then y<="100";
elsif i(3)='1' then y<="011";
elsif i(2)='1' then y<="010";
elsif i(1)='1' then y<="001";
elsif i(0)='1' then y<="000";
end if;
end process;
end Behavioral;
