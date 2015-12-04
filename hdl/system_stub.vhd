-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    RsTx : out std_logic;
    RsRx : in std_logic;
    RESET : in std_logic;
    CLK : in std_logic;
    Seg_GPIO_IO_pin : inout std_logic_vector(7 downto 0);
    Seg_GPIO2_IO_pin : inout std_logic_vector(7 downto 0);
    Button_GPIO_IO_I_pin : in std_logic_vector(3 downto 0);
    Switch_GPIO_IO_I_pin : in std_logic_vector(15 downto 0);
    LED_GPIO_IO_pin : inout std_logic_vector(15 downto 0)
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      RsTx : out std_logic;
      RsRx : in std_logic;
      RESET : in std_logic;
      CLK : in std_logic;
      Seg_GPIO_IO_pin : inout std_logic_vector(7 downto 0);
      Seg_GPIO2_IO_pin : inout std_logic_vector(7 downto 0);
      Button_GPIO_IO_I_pin : in std_logic_vector(3 downto 0);
      Switch_GPIO_IO_I_pin : in std_logic_vector(15 downto 0);
      LED_GPIO_IO_pin : inout std_logic_vector(15 downto 0)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      RsTx => RsTx,
      RsRx => RsRx,
      RESET => RESET,
      CLK => CLK,
      Seg_GPIO_IO_pin => Seg_GPIO_IO_pin,
      Seg_GPIO2_IO_pin => Seg_GPIO2_IO_pin,
      Button_GPIO_IO_I_pin => Button_GPIO_IO_I_pin,
      Switch_GPIO_IO_I_pin => Switch_GPIO_IO_I_pin,
      LED_GPIO_IO_pin => LED_GPIO_IO_pin
    );

end architecture STRUCTURE;

