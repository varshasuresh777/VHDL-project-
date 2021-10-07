library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity xor_logic is
port (l,m : in std_logic;
n : out std_logic);
end xor_logic;
architecture struct_xor of xor_logic is
begin
n <= (not (l) and m) or (l and not(m) );
end struct_xor;
