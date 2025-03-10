LIBRARY IEEE:
use IEEE . STD_LOGIC_1164 . ALL;
use IEEE . STD_LOGIC_UNSIGNED. ALL;
entity alu is 
Port ( p , q : in STD_LOGIC_VECTOR ( 7 downto 0 ) ;
 r : in STD_LOGIC_VECTOR ( 2 downto 0 ) ;
result : out STD_LOGIC_VECTOR ( 7 downto 0 ) ) ;
 end alu ;
architecture behavioral of alu is 
begin
process(p,q,r)
begin
case r is
when ”000” =>result<=p+q ;
when ”001” =>result<=p=q ;
when ”010” =>result<=p and q ;
when ”011” =>result<=p or q ;
when ”100” =>result<=p xor q ;
when ”101” =>result<=p nor q ;
when ”110” =>result<=p nand q ;
when ”111” =>result<=not p ;
when o thers =>result <=”00000000”;
end case ;
end process ; 
end Behavioral;