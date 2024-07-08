module PortNum_Shr (
    input clk,
    rst,
    clkEn,
    SerIn,
    Sh_enP,
    output reg [1:0] Port_num
);

  always @(posedge clk, posedge rst) begin
    if (rst) Port_num <= 0;
    else if (clkEn) 
        if (Sh_enP) Port_num <= {Port_num[0], SerIn};
  end

endmodule
