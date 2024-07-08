module Transmiter(input clk, clkEn, rst, SerIn, output SerOutValid, Done, P0, P1, P2, P3,
			 output [6:0] SSD_Out);
	wire Co1, Co2, CoD, Cnt1, Cnt2, CntD, ldcntD, Sh_enP, Sh_enD;
	Controller C(clk, clkEn, rst, SerIn, Co1, Co2, CoD, Cnt1, Cnt2, CntD, ldcntD,
			 Sh_enP, Sh_enD, SerOutValid, Done);
	DataPath D(clk, clkEn, rst, SerIn, Cnt1, Cnt2, CntD, ldcntD, Sh_enP, Sh_enD, 
			Co1, Co2, CoD, P0, P1, P2, P3, SSD_Out);
endmodule