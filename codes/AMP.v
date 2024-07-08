module DMUX(input [1:0] slc, input data, output reg p0, p1, p2, p3);
	always @(slc, data)begin
		{p0,p1,p2,p3} = 4'b0000;
		case(slc)
		2'b00: p0 = data;
		2'b01: p1 = data;
		2'b10: p2 = data;
		2'b11: p3 = data;
		endcase
	end
endmodule

