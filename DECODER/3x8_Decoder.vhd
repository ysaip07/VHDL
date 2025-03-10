library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity decoder3x8 is
    Port ( y : in STD_LOGIC_VECTOR (2 downto 0);
           enable : in STD_LOGIC;
           i : out STD_LOGIC_VECTOR (7 downto 0));
end decoder3x8;
architecture Behavioral of decoder3x8 is
begin
process(y)
begin
if(y="000"and enable='1') then i<="00000001";
elsif(y="001"and enable='1')then i<="00000010";
elsif(y="010"and enable='1')then i<="00000100";
elsif(y="011"and enable='1')then i<="00001000";
elsif(y="100"and enable='1')then i<="00010000";
elsif(y="101"and enable='1')then i<="00100000";
elsif(y="110"and enable='1')then i<="01000000";
elsif(y="111"and enable='1')then i<="10000000";
end if;
end process;
end Behavioral;
