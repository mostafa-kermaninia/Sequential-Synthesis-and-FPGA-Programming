module Port_cnt (
    input clk,
    rst,
    clkEn,
    cnt1,
    output reg co1
);
  reg count;
  always @(posedge clk, posedge rst) begin
    if (rst) count <= 0;
    else if (clkEn)
     if (cnt1) count = count + 1;
  end
    assign co1 = &count;
endmodule

