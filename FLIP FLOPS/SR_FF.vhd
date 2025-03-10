library ieee;
use ieee.std_logic.1164.all;

entity sr_ff is
    Port ( s : in STD_LOGIC_vector(1 downto 0);
    clk : in STD_LOGIC;
    q : inout STD_LOGIC;
    qbar : out STD_LOGIC);
end sr_ff;
architecture Behavioral of sr_ff is
begin
process(s)
begin
    if (clk='1' and s="00")then q<=q ;qbar<=not q;
    elsif (clk='1' and s="01")then q<='0';qbar<='1';
    elsif (clk='1' and s="10")then q<='1';qbar<='0';
    elsif (clk='1' and s="11")then q<='Z';qbar<='Z';    
end if;
end process;
end Behavioral;