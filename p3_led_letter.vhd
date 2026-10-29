library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity led_letter is
    port(
        en      : in  std_logic;
        sel     : in  std_logic_vector(2 downto 0);
        display : out std_logic_vector(7 downto 0)
    );
end entity led_letter;

architecture bhv of led_letter is
begin
    process(en, sel)
    begin
        if en = '0' then
            display <= "00000000";
        else
            case sel is
                when "000"  => display <= "11101110";
                when "001"  => display <= "00111110";
                when "010"  => display <= "10011100";
                when "011"  => display <= "01111010";
                when "100"  => display <= "10001110";
                when "101"  => display <= "11110110";
                when others => display <= "00000000";
            end case;
        end if;
    end process;
end architecture bhv;
