module MUX4 (
    input [1:0] sel,
    input [31:0] in1,
    in2,
    in3,
    in4,
    output reg [31:0] out
);
  always @(sel, in1, in2, in3, in4) begin
    out = 0;
    case (sel)
      2'b00: out = in1;
      2'b01: out = in2;
      2'b10: out = in3;
      2'b11: out = in4;
    endcase
  end
endmodule
