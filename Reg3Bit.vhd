library ieee;
use ieee.std_logic_1164.all;

entity Reg3Bit is
  port (EN, reset, CLK: in std_logic;
        ip: in std_logic_vector(2 downto 0);
        op: out std_logic_vector(2 downto 0)
		  );
end entity;
--Reg3Bit is for choosing the register to which the data is to be stored or taken
--register file is basically an array of 8 elements

architecture reg3arch of Reg3Bit is
begin
reg1 : process(CLK, reset, EN, ip)
begin
  if CLK'event and CLK = '1' then
  if reset = '1' then
    op(2 downto 0) <= (others=>'0');
  elsif EN = '1' then
      op <= ip;
    end if;
  end if;
end process;

end reg3arch;
