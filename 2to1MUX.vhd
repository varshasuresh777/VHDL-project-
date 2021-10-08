library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity mux2to1_logic is
 port ( I0: in std_logic;
 I1 : in std_logic;
 S : in std_logic;
 Y : out std_logic);
end mux2to1_logic;
architecture struct_mux of mux2to1_logic is
component and_logic
port (a,b : in std_logic;
 c : out std_logic);
end component;
component not_logic
port
(g : in std_logic;
h : out std_logic);
end component;
component or_logic
port (d,e : in std_logic;
 f: out std_logic);
end component;
signal Sb,y1,y2 :std_logic;
begin
v1:not_logic port map(S,Sb);
v2:and_logic port map(Sb,I0,y1);
v3:and_logic port map(S,I1,y2);
v4:or_logic port map(y1,y2,Y);
end struct_mux;
