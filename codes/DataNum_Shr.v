module DataNum_Shr (
    input clk,
    rst,
    clkEn,
    SerIn,
    Sh_enD,
    output reg [3:0] NumData
);

  always @(posedge clk, posedge rst) begin
    if (rst) NumData <= 0;
    else if (clkEn)
     if (Sh_enD) 
     NumData <= {NumData[2:0], SerIn};
  end

endmodule

