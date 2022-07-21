library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
  port(alu_op: in std_logic_vector(2 downto 1);
      alu_a: in std_logic_vector(15 downto 0);
      alu_b: in std_logic_vector(15 downto 0);
      alu_c: out std_logic;
      alu_z: out std_logic;
      alu_out: out std_logic_vector(15 downto 0));
end entity;

architecture al of ALU is

begin

  process(alu_op, alu_a, alu_b)
  variable aa, ab : std_logic_vector(16 downto 0);
  variable ao : std_logic_vector(16 downto 0);
  
	 begin
    
    aa(15 downto 0) := alu_a;
    aa(16) := '0';
    ab(15 downto 0) := alu_b;
    ab(16) := '0';

	 case (alu_op) is
		when "00" =>
			ao := std_logic_vector(unsigned(aa) + unsigned(ab));
		when "01" =>
			ao(15 downto 0) := std_logic_vector(unsigned(aa(15 downto 0)) - unsigned(ab(15 downto 0)));
			ao(16) := '0';
		when "10" =>
			ao(15 downto 0) := aa(15 downto 0) nand ab(15 downto 0);
			ao(16) := '0';
		when others =>
			ao(16 downto 0) := (others=>'0');
    end case;
    alu_out <= ao(15 downto 0);
    alu_c <= ao(16);
    alu_z <= not (ao(15) or ao(14) or ao(13) or ao(12) or ao(11) or ao(10) or ao(9) or ao(8) or ao(7) or ao(6) or ao(5) or ao(4) or ao(3) or ao(2) or ao(1) or ao(0));
  end process;
end architecture al;
