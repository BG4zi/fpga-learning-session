library ieee;
use ieee.std_logic_1164.all;

entity xor_gate is
  port (
    a : in  std_logic;
    b : in  std_logic;
    y : out std_logic
  );
end entity;

architecture structural of xor_gate is
  signal na_and_b, a_and_b, a_or_b : std_logic;
begin
  u_and : entity work.and_gate
    port map (a => a, b => b, y => a_and_b);
  u_or: entity work.or_gate
    port map (a => a, b => b, y => a_or_b);

  -- xor = not (a and b) and (a or b)
  u_not_and: entity work.not_gate
    port map (a => a_and_b, y => na_and_b);

  y <= a_or_b and na_and_b;
end architecture;
