library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
--this is to decode the next for state 2
entity nextstate_decoder_1 is
	port(X:in std_logic_vector(7 downto 0);
	Z: out std_logic_vector( 4 downto 0));
	end entity;

	architecture Behave of nextstate_decoder_1 is
	begin
	process(X)
	variable next_state_var: std_logic_vector(4 downto 0);
	begin

	if (X(7 downto 4) = "0001" or X(7 downto 4)="0010") then
		if(X(3 downto 2) = "00") then
			next_state_var := "00011";
		elsif(X(3 downto 2) = "11") then
			next_state_var := "00101";
		elsif (X(3 downto 2) = "01") then
			if(X(0) = '1') then
				next_state_var := "00011";
			else
				next_state_var:= "00001";
			end if;
		elsif(X(3 downto 2) = "10") then
			if(X(1) = '1') then
				next_state_var := "00011";
			else
				next_state_var:= "00001";
			end if;
		else
			next_state_var:="11111";
		end if;
	elsif (X(7 downto 4) = "0000" or X(7 downto 4) = "0111" or X(7 downto 4) = "0101" ) then
		next_state_var := "00011";
	elsif (X(7 downto 4) = "1100" or X(7 downto 4) = "1101") then
		next_state_var := "00110";
	elsif (X(7 downto 4) = "0011") then
		next_state_var := "00100";
	elsif (X(7 downto 4) = "1000") then
		next_state_var := "01111";
   elsif (X(7 downto 4) = "1011") then
		next_state_var := "10100";
	elsif (X(7 downto 4) = "1001" or X(7 downto 4) = "1010") then
		next_state_var := "10001";		
	else
		next_state_var:="11111";
	end if;

	Z <= next_state_var;
	end process;
end architecture Behave;
-------------------------------------
-- this is block is to decode the next state for state 3
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity nextstate_decoder_2 is
	port(X:in std_logic_vector(3 downto 0);
	Z: out std_logic_vector( 4 downto 0));
end entity;

architecture Behave of nextstate_decoder_2 is
	begin
	process(X)
	variable next_state_var: std_logic_vector(4 downto 0);
	begin

	if(X = "0001" or X="0010" or X="0000") then
		next_state_var:= "00100";
	elsif(X = "0111") then
		next_state_var:="00111";
	elsif(X = "0101") then
		next_state_var:="01001";
	else
		next_state_var:="11111";
	end if;

	Z<= next_state_var;
	end process;
end architecture Behave;
-------------------------------------
-- this is block is to decode the next state for state 6
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity nextstate_decoder_3 is
	port(X:in std_logic_vector(3 downto 0);
	Z: out std_logic_vector( 4 downto 0));
end entity;

architecture Behave of nextstate_decoder_3 is
	begin
	process(X)
	variable next_state_var: std_logic_vector(4 downto 0);
	begin

	if(X = "1100" ) then
		next_state_var:= "01010";
	elsif(X = "1101") then
		next_state_var:="01100";
	elsif(X = "0011") then
		next_state_var:="00100";
	else
		next_state_var:="11111";
	end if;

	Z<= next_state_var;
	end process;
end architecture Behave;
-------------------------------------
-- this is block is to decode the next state for state 17
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity nextstate_decoder_4 is
	port(X:in std_logic_vector(3 downto 0);
	Z: out std_logic_vector( 4 downto 0));
end entity;

architecture Behave of nextstate_decoder_4 is
	begin
	process(X)
	variable next_state_var: std_logic_vector(4 downto 0);
	begin

	if(X = "1001" ) then
		next_state_var:= "10010";
	elsif(X = "1011") then
		next_state_var:="10011";
	else
		next_state_var:="11111";
	end if;

	Z<= next_state_var;
	end process;
end architecture Behave;
--------------------------------------
-- this is block is to decode the next state for state 11
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity nextstate_decoder_5 is
	port(X:in std_logic_vector(15 downto 0);
	Z: out std_logic_vector( 4 downto 0));
end entity;

architecture Behave of nextstate_decoder_5 is
	begin
	process(X)
	variable next_state_var: std_logic_vector(4 downto 0);
	begin

	if(X = "0000000000000000" ) then
		next_state_var:= "00001";
	else
		next_state_var:= "01010";
	end if;

	Z<= next_state_var;
	end process;
end architecture Behave;
------------------------------
-- this is block is to decode the next state for state 14
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity nextstate_decoder_6 is
	port(X:in std_logic_vector(15 downto 0);
	Z: out std_logic_vector( 4 downto 0));
end entity;

architecture Behave of nextstate_decoder_6 is
	begin
	process(X)
	variable next_state_var: std_logic_vector(4 downto 0);
	begin

	if(X = "0000000000000000" ) then
		next_state_var:= "00001";
	else
		next_state_var:= "01100";
	end if;

	Z<= next_state_var;
	end process;
end architecture Behave;


-----------------------------------------
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity Next_state is 
	port( x : in std_logic_vector(39 downto 0); z : out std_logic_vector(4 downto 0));
end entity;

architecture Behave of Next_state is

component nextstate_decoder_1 is
	port(X:in std_logic_vector(7 downto 0);
	Z: out std_logic_vector( 4 downto 0));
end component;

component nextstate_decoder_2 is
	port(X:in std_logic_vector(3 downto 0);
	Z: out std_logic_vector( 4 downto 0));
end component;

component nextstate_decoder_3 is
	port(X:in std_logic_vector(3 downto 0);
	Z: out std_logic_vector( 4 downto 0));
end component;

component nextstate_decoder_4 is
	port(X:in std_logic_vector(3 downto 0);
	Z: out std_logic_vector( 4 downto 0));
end component;

component nextstate_decoder_5 is
	port(X:in std_logic_vector(15 downto 0);
	Z: out std_logic_vector( 4 downto 0));
end component;

component nextstate_decoder_6 is
	port(X:in std_logic_vector(15 downto 0);
	Z: out std_logic_vector( 4 downto 0));
end component;

signal sig1,sig2,sig3,sig4,sig5,sig6: std_logic_vector(4 downto 0);

begin
-------------------------------------
a: nextstate_decoder_1 port map(X(7 downto 4)=>x(39 downto 36),X(3 downto 2)=>x(25 downto 24),X(1 downto 0)=>x(23 downto 22),Z=>sig1);
b: nextstate_decoder_2 port map (X(3 downto 0)=>x(39 downto 36),Z=>sig2);
c: nextstate_decoder_3 port map (X(3 downto 0)=>x(39 downto 36),Z=>sig3);
d: nextstate_decoder_4 port map (X(3 downto 0)=>x(39 downto 36),Z=>sig4);
e: nextstate_decoder_5 port map (X(15 downto 0)=>x(21 downto 6),Z=>sig5);
f: nextstate_decoder_6 port map (X(15 downto 0)=>x(21 downto 6),Z=>sig6);
--------------------------------------
--which ever state has only one possible next state has been directly set
-- if a state has multiple possible next state the next state has to be decided using the decoder
process(x,sig1,sig2,sig3,sig4,sig5,sig6)
begin
if(x(4 downto 0) = "00001") then
	z<="00010"; 
	-- state1 goes to state2 only
elsif (x(4 downto 0) = "00010") then
	z<=sig1; 
	--state2 has multiple possibilities hence we need decoder	
elsif (x(4 downto 0) = "00011") then
	z<=sig2;
elsif (x(4 downto 0) = "00100") then
	z<="00001";
elsif (x(4 downto 0) = "00110" )then
	z<=sig3;	
elsif (x(4 downto 0) = "00111") then
	z<="01000";
elsif (x(4 downto 0) = "01000") then
	z<="00001";	
elsif (x(4 downto 0) = "01001") then
	z<="00001";		
elsif (x(4 downto 0) = "01010") then
	z<="01011";	
elsif (x(4 downto 0) = "01011") then
	z<=sig5;
elsif (x(4 downto 0) = "01100") then
	z<="01101";	
elsif (x(4 downto 0) = "01101") then
	z<="01110";	
elsif (x(4 downto 0) = "01110") then
	z<=sig6;
elsif (x(4 downto 0) = "01111") then
	z<="10000";	
elsif (x(4 downto 0) = "10000") then
	z<="00001";		
elsif (x(4 downto 0) = "10001") then
	z<=sig4;
elsif (x(4 downto 0) = "10010") then
	z<="00001";	
elsif (x(4 downto 0) = "10011") then
	z<="00001";
elsif (x(4 downto 0) = "10100") then
	z<="00001";	
elsif (x(4 downto 0) = "00101") then
	z<="00100";	
else
	z<="11111";
end if;

end process;

end Behave;							