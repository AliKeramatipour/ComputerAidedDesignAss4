library verilog;
use verilog.vl_types.all;
entity trafficLight is
    port(
        l1              : in     vl_logic;
        l2              : in     vl_logic;
        l3              : in     vl_logic;
        l4              : in     vl_logic;
        countDown       : out    vl_logic_vector(4 downto 0);
        green           : out    vl_logic;
        red             : out    vl_logic
    );
end trafficLight;
