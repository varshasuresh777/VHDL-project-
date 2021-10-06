library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity or_logic is
port (d,e : in std_logic;
 f: out std_logic);
end or_logic;
architecture struct_or of or_logic is
begin
f <= d or e;
end struct_or;
