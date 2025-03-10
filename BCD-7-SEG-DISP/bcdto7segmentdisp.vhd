library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity bcdtosegdis is
    Port ( i : in STD_LOGIC_VECTOR (3 downto 0);
           y : out STD_LOGIC_VECTOR (6 downto 0));
end bcdtosegdis;

architecture Behavioral of bcdtosegdis is

begin
process(i)
begin
if (i="0000") then y<="1111110";
elsif (i="0001") then y<="0110000";
elsif (i="0010") then y<="1101101";
elsif (i="0011") then y<="1111001";
elsif (i="0100") then y<="0110011";
elsif (i="0101") then y<="1011011";
elsif (i="0110") then y<="1011111";
elsif (i="0111") then y<="1111001";
elsif (i="1000") then y<="1111111";
elsif (i="1001") then y<="1111011";
end if;
end process;
end Behavioral;
