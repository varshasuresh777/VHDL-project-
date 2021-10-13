library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity barrelshift_logic is
port
( P: in std_Logic_vector (15 downto 0);
Q : out std_logic_vector (15 downto 0)
);
end barrelshift_logic;
architecture struct_barrel of barrelshift_logic is
component mux2to1_logic
port ( I0: in std_logic;
 I1 : in std_logic;
 S : in std_logic;
 Y : out std_logic);
end component;
begin
M1: mux2to1_logic port map (P(15), '0', '1', Q(15));
M2: mux2to1_logic port map (P(14), '0', '1', Q(14));
M3: mux2to1_logic port map (P(13), P(15), '1', Q(13));
M4: mux2to1_logic port map (P(12), P(14), '1', Q(12));
M5: mux2to1_logic port map (P(11), P(13), '1', Q(11));
M6: mux2to1_logic port map (P(10), P(12), '1', Q(10));
M7: mux2to1_logic port map (P(9), P(11), '1', Q(9));
M8: mux2to1_logic port map (P(8), P(10), '1', Q(8));
M9: mux2to1_logic port map (P(7), P(9), '1', Q(7));
M10: mux2to1_logic port map (P(6), P(8), '1', Q(6));
M11: mux2to1_logic port map (P(5), P(7), '1', Q(5));
M12: mux2to1_logic port map (P(4), P(6), '1', Q(4));
M13: mux2to1_logic port map (P(3), P(5), '1', Q(3));
M14: mux2to1_logic port map (P(2), P(4), '1', Q(2));
M15: mux2to1_logic port map (P(1), P(3), '1', Q(1));
M16: mux2to1_logic port map (P(0), P(2), '1', Q(0));
end struct_barrel;
