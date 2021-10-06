library ieee;
use ieee.std_logic_1164.all;
entity not_logic is
port
(g : in std_logic;
h : out std_logic);
end not_logic;
architecture struct_not of not_logic is
begin
h <= not g;
end struct_not;
