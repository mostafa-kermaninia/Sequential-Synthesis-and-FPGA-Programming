module DataNum_cnt (
    input clk,
    rst,
    clkEn,
    cnt2,
    output reg co2
);
  reg [1:0] count;
  always @(posedge clk, posedge rst) begin
    if (rst) count <= 0;
    else if (clkEn) 
        if (cnt2) {co2,count} = count + 1;
  end
  assign co2 = &count;

endmodule

