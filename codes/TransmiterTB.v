`timescale 1ns / 1ns
module TransmiterTB ();
  reg clk = 0, rst = 0, clkEn = 0, SerIn = 1;
  wire P0, P1, P2, P3, SerOutValid, Done;
  wire [6:0] SSD_Out;
  Transmiter CUT3 (
      clk,
      clkEn,
      rst,
      SerIn,
      SerOutValid,
      Done,
      P0,
      P1,
      P2,
      P3,
      SSD_Out
  );

  always #30 clk = ~clk;
  initial begin
    #200 rst = 1;
    #200 rst = 0;
    #200 clkEn = 1;

    #70 SerIn = 0;

    #70 SerIn = 1;
    #70 SerIn = 1;

    #70 SerIn = 1;
    #70 SerIn = 0;
    #70 SerIn = 0;
    #70 SerIn = 0;

    #70 SerIn = 1;
    #70 SerIn = 1;
    #70 SerIn = 0;
    #70 SerIn = 0;
    #70 SerIn = 1;
    #70 SerIn = 1;
    #70 SerIn = 0;

    #70 SerIn = 1;
    #70 SerIn = 0;
    #70 SerIn = 1;
    #70 SerIn = 1;
    #70 SerIn = 0;
    #70 SerIn = 1;
    #70 SerIn = 0;
    #70 SerIn = 1;
    #70 SerIn = 1;
    #70 SerIn = 0;
    #70 SerIn = 1;
    #70 SerIn = 0;
    #70 SerIn = 0;
    #70 SerIn = 0;
    #70 SerIn = 0;
    #70 SerIn = 1;

    #100 SerIn = 0;
    #100 SerIn = 1;



    #3564 $stop;

  end

endmodule

