library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity nand_logic2 is
port (o, p, q : in std_logic ;
r: out std_logic);
end nand_logic2;
architecture struct_nand1 of nand_logic2 is
begin
r <= not(o and (p and q));
end struct_nand1;
