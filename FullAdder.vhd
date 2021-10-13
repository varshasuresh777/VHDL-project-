library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity fulladder_logic is
port (a,b,c: in std_logic;
 sum1, carry1 : out std_logic);
end fulladder_logic;
architecture struct_fulladder of fulladder_logic is
component halfadder_logic
port (s, t : in std_logic; sum,carry : out std_logic);
end component;
component or_logic
port (d,e: in std_logic; f: out std_logic);
end component;
signal s1, c1, c2: std_logic;
begin
x1: halfadder_logic port map (a, b, s1, c1);
x2: halfadder_logic port map (s1, c, sum1, c2);
x3: or_logic port map (c1, c2, carry1);
end struct_fulladder;
