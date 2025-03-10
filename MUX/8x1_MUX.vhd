library ieee;
use ieee .std_logic_1164 .all ;
entity mux8to1 is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : out STD_LOGIC;
           s : in STD_LOGIC_VECTOR (2 downto 0));
end mux8to1;
architecture Behavioral of mux8to1 is
begin
process(a,s)
begin
case s is
when "000"=>b<=a(0);
when "001"=>b<=a(1);
when "010"=>b<=a(2);
when "011"=>b<=a(3);
when "100"=>b<=a(4);
when "101"=>b<=a(5);
when "110"=>b<=a(6);
when "111"=>b<=a(7);
when others=>
b<='Z';
end case;
end process;
end Behavioral;