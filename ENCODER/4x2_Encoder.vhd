library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity encoder4_2 is
    Port ( i : in STD_LOGIC_VECTOR (3 downto 0);
           y : out STD_LOGIC_VECTOR (1 downto 0));
end encoder4_2;
architecture Behavioral of encoder4_2 is
begin
process (i)
begin
if (i="1000") then y<="00";
elsif (i="0100") then y<="01";
elsif (i="0010") then y<="10";
elsif (i="0001") then y<="11";
end if;
end process;
end Behavioral;