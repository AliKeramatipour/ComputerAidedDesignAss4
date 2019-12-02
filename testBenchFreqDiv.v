module TBFD();
  reg clk = 0;
  wire clk2;
  freqDivider fd(clk, 4'b0010, clk2);
  always #500 clk = ~clk;
  initial begin
    #50000 $stop;
  end
endmodule;