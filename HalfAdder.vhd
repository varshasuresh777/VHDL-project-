library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity halfadder_logic is
port (s,t : in std_logic;
sum, carry : out std_logic);
end halfadder_logic;
architecture struct_halfadder of halfadder_logic is
component xor_logic
port (l,m: in std_logic; n: out std_logic);
end component;
component and_logic
port (a,b: in std_logic; c: out std_logic);
end component;begin
S1: xor_logic port map (s, t, sum);
C1: and_logic port map (s, t, carry);
end struct_halfadder;
