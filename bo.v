module bo
(output [6:0] d0, d1, d2, d3,
input LX, LS, LH, _H,
input[1:0] _M0, _M1, _M2,
input clock,
input[2:0] X);

parameter A = 2;
parameter B = 2;
parameter C = 1;

wire[15:0] resultado;
wire[15:0] outM0, outM1, outM2;

reg[15:0] regX, regS, regH;


always @(posedge clock)
begin
	if(LX == 1)
		regX[2:0] <= X;
	if(LS == 1)
		regS[15:0] <= resultado;
	if(LH == 1)
		regH[15:0] <= resultado;
end


mux M0(.A(0), .B(A) , .C(B), .D(C), .CHAVE(_M0), .outMux(outM0)); //1:0
mux M1(.A(outM0), .B(regX) , .C(regS), .D(regH), .CHAVE(_M1), .outMux(outM2)); //3:2
mux M2(.A(regX), .B(outM0) , .C(regS), .D(regH), .CHAVE(_M2), .outMux(outM1)); //5:4
			//00       //01        //10      //11
somador sum(.IN1(outM2), .IN2(outM1), .H(_H), .outSum(resultado));

display dis(.res(regS), .display0(d0), .display1(d1), .display2(d2), .display3(d3));

endmodule
