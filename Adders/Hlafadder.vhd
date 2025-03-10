library ieee;
use ieee.std_logic.1164.all;
entity halfadder is
    Port ( Hai : in STD_LOGIC_VECTOR (1 downto 0);
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end halfadder;
architecture Behavioral of halfadder is
begin
process(Hai)
begin
case Hai is
when "00" => sum <= '0'; carry <= '0';
when "01" => sum <= '1'; carry <= '0';
when "10" => sum <= '1'; carry <= '0';
when "11" => sum <= '0'; carry <= '1';
when others => sum <= 'Z'; carry <= 'Z';
end case;
end process;
end Behavioral;
