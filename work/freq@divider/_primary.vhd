library verilog;
use verilog.vl_types.all;
entity freqDivider is
    port(
        clk1            : in     vl_logic;
        div             : in     vl_logic_vector(3 downto 0);
        clk2            : out    vl_logic
    );
end freqDivider;
