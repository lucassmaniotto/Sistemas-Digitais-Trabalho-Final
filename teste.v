module teste
(output [6:0] HEX0, HEX1, HEX2,HEX3, 
input[9:0] SW, input[3:0] KEY);

parameter A = 2;
parameter B = 2;
parameter C = 1;

wire[15:0] resultado;
wire[15:0] outM0, outM1, outM2;

reg[15:0] regX, regS, regH;


always @(posedge KEY[0])
begin
	if(SW[9] == 1)
		regX[2:0] <= KEY[3:1];
	if(SW[8] == 1)
		regS[15:0] <= resultado;
	if(SW[7] == 1)
		regH[15:0] <= resultado;
end


mux M0(.A(0), .B(A) , .C(B), .D(C), .CHAVE(SW[1:0]), .outMux(outM0)); //1:0
mux M1(.A(outM0), .B(regX) , .C(regS), .D(regH), .CHAVE(SW[3:2]), .outMux(outM2)); //3:2
mux M2(.A(regX), .B(outM0) , .C(regS), .D(regH), .CHAVE(SW[5:4]), .outMux(outM1)); //5:4
			//00       //01        //10      //11
somador sum(.IN1(outM2), .IN2(outM1), .H(SW[6]), .outSum(resultado));

display dis(.res(regS), .display0(HEX0), .display1(HEX1), .display2(HEX2), .display3(HEX3));

endmodule
