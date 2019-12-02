module TB();
  reg l1 = 0, l2 = 0, l3 = 0, l4 = 0;
  wire[4:0] countDown;
  wire green, red;

  trafficLight UUT(l1, l2, l3, l4, countDown, green, red);
  initial begin
    #100 l1 = 1;
    #100 l2 = 1;
    #100 l3 = 1;
    l4 = 1;
    #100 l1 = 0;
    l2 = 0;
    l3 = 0;
    l4 = 0;
    #1000 $stop;
  end
endmodule