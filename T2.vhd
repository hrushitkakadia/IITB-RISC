library ieee;
use ieee.std_logic_1164.all;

entity T2 is
  port (EN, CLK: in std_logic;
        D, clr: in std_logic_vector(15 downto 0);
        Q: out std_logic_vector(15 downto 0));
end entity;

architecture reg_with_clear_arch of T2 is

component ff_c is
  port (D, CLEAR, EN, CLK: in std_logic; Q: out std_logic);

end component;

begin
s00: ff_c port map(D => D(00), CLEAR=>clr(00), EN=>EN, Q=>Q(00), CLK=> CLK);
s01: ff_c port map(D => D(01), CLEAR=>clr(01), EN=>EN, Q=>Q(01), CLK=> CLK);
s02: ff_c port map(D => D(02), CLEAR=>clr(02), EN=>EN, Q=>Q(02), CLK=> CLK);
s03: ff_c port map(D => D(03), CLEAR=>clr(03), EN=>EN, Q=>Q(03), CLK=> CLK);
s04: ff_c port map(D => D(04), CLEAR=>clr(04), EN=>EN, Q=>Q(04), CLK=> CLK);
s05: ff_c port map(D => D(05), CLEAR=>clr(05), EN=>EN, Q=>Q(05), CLK=> CLK);
s06: ff_c port map(D => D(06), CLEAR=>clr(06), EN=>EN, Q=>Q(06), CLK=> CLK);
s07: ff_c port map(D => D(07), CLEAR=>clr(07), EN=>EN, Q=>Q(07), CLK=> CLK);
s08: ff_c port map(D => D(08), CLEAR=>clr(08), EN=>EN, Q=>Q(08), CLK=> CLK);
s09: ff_c port map(D => D(09), CLEAR=>clr(09), EN=>EN, Q=>Q(09), CLK=> CLK);
s10: ff_c port map(D => D(10), CLEAR=>clr(10), EN=>EN, Q=>Q(10), CLK=> CLK);
s11: ff_c port map(D => D(11), CLEAR=>clr(11), EN=>EN, Q=>Q(11), CLK=> CLK);
s12: ff_c port map(D => D(12), CLEAR=>clr(12), EN=>EN, Q=>Q(12), CLK=> CLK);
s13: ff_c port map(D => D(13), CLEAR=>clr(13), EN=>EN, Q=>Q(13), CLK=> CLK);
s14: ff_c port map(D => D(14), CLEAR=>clr(14), EN=>EN, Q=>Q(14), CLK=> CLK);
s15: ff_c port map(D => D(15), CLEAR=>clr(15), EN=>EN, Q=>Q(15), CLK=> CLK);
end reg_with_clear_arch;
