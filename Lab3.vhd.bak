library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Lab3 is
Port (
    clk     : in STD_LOGIC;                      -- 50 MHz
    key     : in STD_LOGIC_VECTOR(0 downto 0);   -- KEY0
    uart_tx : out STD_LOGIC;                     -- TX pin
    ledr    : out STD_LOGIC_VECTOR(0 downto 0)   -- LED індикація
);
end Lab3;

architecture Behavioral of Lab3 is
    -- Для швидкої симуляції ставимо 10 замість 5208
    constant BAUD_DIV: integer := 10; 
    signal counter: integer range 0 to BAUD_DIV-1 := 0;
    signal tick: std_logic := '0';
    signal bit_count: integer range 0 to 10 := 0;
    signal tx_reg: std_logic := '1';
    signal data_byte: std_logic_vector(7 downto 0) := x"48"; -- 'H' = 0x48
    signal sending: std_logic := '0';
    signal key_prev: std_logic := '1';
begin
    -- Генератор бодрейту (Baud rate generator)
    process(clk)
    begin
        if rising_edge(clk) then
            if counter = BAUD_DIV-1 then
                counter <= 0;
                tick <= '1';
            else
                counter <= counter + 1;
                tick <= '0';
            end if;
        end if;
    end process;

    -- Логіка передавача (UART transmitter)
    process(clk)
    begin
        if rising_edge(clk) then
            key_prev <= key(0);

            -- Старт передачі при натисканні (спадний фронт '1' -> '0')
            if key_prev = '1' and key(0) = '0' and sending = '0' then
                sending <= '1';
                bit_count <= 0;
            end if;

            if tick = '1' and sending = '1' then
                case bit_count is
                    when 0 =>
                        tx_reg <= '0'; -- Стартовий біт
                        bit_count <= bit_count + 1;
                    when 1 to 8 =>
                        tx_reg <= data_byte(bit_count - 1); -- Біти даних LSB -> MSB
                        bit_count <= bit_count + 1;
                    when 9 =>
                        tx_reg <= '1'; -- Стоповий біт
                        bit_count <= bit_count + 1;
                    when 10 =>
                        sending <= '0'; -- Завершення
                        bit_count <= 0;
                    when others =>
                        bit_count <= 0;
                end case;
            end if;
        end if;
    end process;

    uart_tx <= tx_reg;
    ledr(0) <= sending;
end Behavioral;