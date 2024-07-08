module Controller(input clk, clkEn, rst, SerIn, Co1, Co2, CoD, 
			output reg Cnt1, Cnt2, CntD, ldcntD, Sh_enP, Sh_enD, SerOutValid, Done);
	parameter Idle = 3'b000, get_port = 3'b001, get_DataNum = 3'b010,
		 transmit_Data = 3'b011, Done_transmit = 3'b100;
	reg [2:0] ps, ns;
	always @(posedge clk, posedge rst)begin
		if (rst)
			ps <= Idle;
		else if (clkEn)
			ps <= ns;
	end
	
	always @(ps, SerIn, Co1, Co2, CoD)begin
		case(ps)
		Idle: ns = SerIn ? Idle : get_port;
		get_port: ns = Co1 ? get_DataNum : get_port;
		get_DataNum: ns = Co2 ? transmit_Data : get_DataNum;
		transmit_Data: ns = CoD ? Done_transmit : transmit_Data;
		Done_transmit: ns = SerIn ? Idle : get_port;
		default ns = Idle;
		endcase
	end

	always @(ps)begin
		{Cnt1, Cnt2, CntD, ldcntD, Sh_enP, Sh_enD, SerOutValid, Done} = 8'b0000_0000;
		case(ps)
		Idle: ;
		get_port: {Cnt1,Sh_enP} = 2'b11 ;
		get_DataNum: {Cnt2,Sh_enD} = 2'b11;
		transmit_Data: {CntD,SerOutValid} = 2'b11;
		Done_transmit: Done = 1'b1;
		endcase
	end
	assign ldcntD = Co2;
endmodule