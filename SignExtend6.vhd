library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SE6 is
port (
    ip : in std_logic_vector (5 downto 0);
    op : out std_logic_vector (15 downto 0)
  );
end entity SE6;
--Sign extend of 6 bits to 16bits
--we take the last 6 bits of the Instruction Register

architecture SE_arch of SE6 is
begin
  op(5 downto 0) <= ip;
  process(ip)
  begin
  if ip(5) = '1' then
	op(15 downto 6) <= (others=>'1');
  else
	op(15 downto 6) <= (others=>'0');
end if;
end process;
end SE_arch;
