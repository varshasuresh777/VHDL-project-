library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity Incrementer_logic is
port
(
Data1: in std_logic_vector (15 downto 0);
Data2: out std_logic_vector (15 downto 0)
);
end Incrementer_logic;
architecture struct_incrementer of Incrementer_logic is
component halfadder_logic is
port (s,t : in std_logic;
sum, carry : out std_logic);
end component;
signal c: std_logic_vector (15 downto 0);
begin
N1: halfadder_logic port map (Data1(0), '1', Data2(0), c(0));
N2: halfadder_logic port map (Data1(1), c(0), Data2(1), c(1));
N3: halfadder_logic port map (Data1(2), c(1), Data2(2), c(2));
N4: halfadder_logic port map (Data1(3), c(2), Data2(3), c(3));
N5: halfadder_logic port map (Data1(4), c(3), Data2(4), c(4));
N6: halfadder_logic port map (Data1(5), c(4), Data2(5), c(5));
N7: halfadder_logic port map (Data1(6), c(5), Data2(6), c(6));
N8: halfadder_logic port map (Data1(7), c(6), Data2(7), c(7));
N9: halfadder_logic port map (Data1(8), c(7), Data2(8), c(8));
N10: halfadder_logic port map (Data1(9), c(8), Data2(9), c(9));
N11: halfadder_logic port map (Data1(10), c(9), Data2(10), c(10));
N12: halfadder_logic port map (Data1(11), c(10), Data2(11), c(11));
N13: halfadder_logic port map (Data1(12), c(11), Data2(12), c(12));
N14: halfadder_logic port map (Data1(13), c(12), Data2(13), c(13));
N15: halfadder_logic port map (Data1(14), c(13), Data2(14), c(14));
N16: halfadder_logic port map (Data1(15), c(14), Data2(15), c(15));
end struct_incrementer;
