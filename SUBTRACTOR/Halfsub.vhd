library ieee;
use ieee.std_logic.1164.all;
entity halfsubtractor is
    Port ( HSi : in STD_LOGIC_VECTOR (1 downto 0);
           diff : out STD_LOGIC;
           borrow : out STD_LOGIC);
end halfsubtractor;
architecture Behavioral of halfsubtractor is
begin
process(HSi)
begin
case HSi is
when "00" => diff <= '0'; borrow <= '0';
when "01" => diff<= '1'; borrow <= '1';
when "10" => diff <= '1'; borrow <= '0';
when "11" => diff <= '0'; borrow <= '0';
when others => diff <= 'Z'; borrow <= 'Z';
end case;
end process;
