module trafficLight(input clk, input l1, l2, l3, l4, output[4:0] countDown);
    wire waitingCar = l1 or l2 or l3 or l4;
    reg flg;
    reg[4:0] counter = 2'd20 ;
    assign countDown = counter ;
    always @(posedge clk) begin
        if ( line != 4'b0 )

    end
endmodule

module lsfr(input clk, input ld, input[6:0] in_seed, output reg[6:0] out_ff);
  integer i = 0;
  always @(posedge clk , ld) begin
    if ( ld )
        out_ff <= in_seed ;
    else begin
      
      for ( i = 1 ; i < 7 ; i = i + 1 )
        out_ff[i] <= out_ff[i - 1];
      out_ff[0] <= out_ff[6] ^ out_ff[1];
    end 
  end
endmodule