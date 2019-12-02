module freqDivider(input clk1, input[3:0] div, output clk2);
  reg[3:0] counter = 4'b0 ;
  reg clkOut = 1'b0 ;
  assign clk2 = clkOut ;
  always @(clk1) begin
    counter = counter + 1;
    if ( counter == div ) begin
      clkOut = ~clkOut;
      counter = 4'b0;
    end
  end
endmodule