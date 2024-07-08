module SSD (
    input [3:0] Count,
    output reg [6:0] SSDout
);
  always @(Count) begin
    case (Count)
      4'h0: SSDout = 7'h40;
      4'h1: SSDout = 7'h79;
      4'h2: SSDout = 7'h24;
      4'h3: SSDout = 7'h30;
      4'h4: SSDout = 7'h19;
      4'h5: SSDout = 7'h12;
      4'h6: SSDout = 7'h02;
      4'h7: SSDout = 7'h78;
      4'h8: SSDout = 7'h00;
      4'h9: SSDout = 7'h10;
      4'ha: SSDout = 7'h08;
      4'hb: SSDout = 7'h03;
      4'hc: SSDout = 7'h46;
      4'hd: SSDout = 7'h21;
      4'he: SSDout = 7'h06;
      4'hf: SSDout = 7'h0e;

    endcase
  end
endmodule
