module main
(input[3:0] KEY,
input[9:0] SW,
output[9:0] LEDR,
output [6:0] HEX0, HEX1, HEX2, HEX3);

wire[1:0] m0, m1, m2;
wire lx, ls, lh, h;

bc comandBlock(.clock(KEY[0]), .start(KEY[1]), .reset(KEY[2]), .LX(lx), .LS(ls), .LH(lh), .H(h), .M0(m0), .M1(m1), .M2(m2));
bo operatorBlock(.d0(HEX0), .d1(HEX1), .d2(HEX2),  .d3(HEX3), .LX(lx), .LS(ls), .LH(lh), ._H(h), ._M0(m0), ._M1(m1), ._M2(m2), .clock(KEY[0]), .X(SW[3:0]));

endmodule
