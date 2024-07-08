module DataPath(input clk, clkEn, rst, SerIn, Cnt1, Cnt2, CntD, ldcntD, Sh_enP, Sh_enD,
			 output Co1, Co2, CoD, P0, P1, P2, P3, output [6:0] SSD_out);
 	wire [3:0] NumData, count;
	wire [1:0] Port_num;
	wire SerOut;
	assign SerOut = SerIn;
	DataTrans_Cnt DTC(clk , clkEn, rst, ldcntD, CntD, NumData, CoD, count);
	PortNum_Shr PNS(clk, rst, clkEn, SerIn, Sh_enP, Port_num);
	Port_cnt PCnt (clk, rst, clkEn, Cnt1, Co1);
	DataNum_Shr DNS(clk, rst, clkEn, SerIn, Sh_enD, NumData);
	DataNum_cnt DNC(clk,  rst, clkEn, Cnt2, Co2);
	DMUX DM(Port_num, SerOut, P0, P1, P2, P3);
	SSD ssd(count, SSD_out);
endmodule