library ieee;
use ieee.std_logic_1164.all;

entity ff_c is
  port (D, CLEAR, EN, CLK: in std_logic; Q: out std_logic);
end entity;
--this is a flip flop with clear switch 
architecture ff_c_arch of ff_c is
signal temporary: std_logic;
begin

   process(CLK, CLEAR, EN)
   begin

	 if CLK'event and (CLK = '1') then
		if(EN='1') then
	      temporary <=D;
			Q <= temporary	and (not CLEAR);
      else
        Q <= temporary and (not CLEAR);
      end if;
	 end if;
   end process;

end ff_c_arch;
