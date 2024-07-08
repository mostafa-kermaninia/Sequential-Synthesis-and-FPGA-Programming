
module OnePulser(input clk, clkPB, rst, output reg clkEn);
	parameter A = 2'b00 , B = 2'b01, C = 2'b10;
	reg [1:0] ns, ps;
	always @(posedge clk, posedge rst)
		if (rst)
			ps <= A;
		else
			ps <= ns;

	always @(ps, clkPB)begin
		clkEn = 1'b0;
		case(ps)
		A: ns = clkPB ? B : A;
		B: begin ns = C; clkEn = 1'b1; end
		C: ns = clkPB ? C : A;
		endcase
	end
endmodule  