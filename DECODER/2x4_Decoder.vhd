library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity decoder2x4 is
    Port ( y : in STD_LOGIC_VECTOR (1 downto 0);
           i : out STD_LOGIC_VECTOR (3 downto 0));
end decoder2x4;

architecture Behavioral of decoder2x4 is
begin
process(y)
begin
if(y="00")then i<="0001";
elsif(y="01")then i<="0010";
elsif(y="10")then i<="0100";
elsif(y="11")then i<="1000";
end if;
end process;
end Behavioral;