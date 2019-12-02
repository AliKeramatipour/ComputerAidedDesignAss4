module trafficLight(input l1, l2, l3, l4, output[4:0] countDown,output green , output red);
    wire waitingCar = l1 | l2 | l3 | l4;
    reg[4:0] counter = 5'b10100 ;
    reg color = 1'b0;
    assign red = ~color ;
    assign green = color ;
    assign countDown = counter ;
    
    reg clk = 1'b0;
    always #10 clk = ~clk;
    wire clk1;
    wire clk2;
    assign clk1 = clk ;
    freqDivider fd(clk1, 4'b0010, clk2);
    
    always @(posedge clk1) begin
        if ( green ) counter = counter - 1;
        else if ( waitingCar ) counter = counter - 1;
        
        if ( counter == 0 ) begin 
          counter = 5'b10100;
          color = ~color ;
        end
    end
    always @(posedge clk2) begin
      if ( !waitingCar && red ) counter = counter - 1;
    end
endmodule