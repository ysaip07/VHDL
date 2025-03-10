library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity decadecounter is
    Port ( clk,res : in STD_LOGIC;
           q : inout STD_LOGIC_VECTOR (3 downto 0));
end decadecounter;
architecture Behavioral of decadecounter is
begin
process(clk,res)
begin
if (res='1') then
q<="0000";
elsif clk'event and clk='1' then
if (q="1001") then
q<="0000";
else
q<=q+1;
end if;
end if;
end process;
end Behavioral;
