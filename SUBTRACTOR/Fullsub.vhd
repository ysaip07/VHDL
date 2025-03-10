library ieee;
use ieee.std_logic.1164.all;
entity FULLSUBTRACTOR is
    Port ( FSi : in STD_LOGIC_VECTOR (2 downto 0);
           diff : out STD_LOGIC;
           borrow : out STD_LOGIC);
end FULLSUBTRACTOR;
architecture Behavioral of FULLSUBTRACTOR is
begin
process(FSi)
begin
case FSi is
when "000" => diff <= '0'; borrow <= '0';
when "001" => diff<= '1'; borrow <= '1';
when "010" => diff <= '1'; borrow <= '1';
when "011" => diff <= '0'; borrow <= '1';
when "100" => diff <= '1'; borrow <= '0';
when "101" => diff <= '0'; borrow <= '0';
when "110" => diff <= '0'; borrow <= '0';
when "111" => diff <= '1'; borrow <= '1';
when others => diff <= 'Z'; borrow <= 'Z';
end case;
end process;
end Behavioral;
