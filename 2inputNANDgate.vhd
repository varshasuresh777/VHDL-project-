library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity nand_logic1 is
port (i : in std_logic ;
j : in std_logic ;
k : out std_logic);
end nand_logic1;
architecture struct_nand of nand_logic1 is
begin
k <= i NAND j;
end struct_nand;
