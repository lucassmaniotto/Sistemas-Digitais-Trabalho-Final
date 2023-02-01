module mux
(input[15:0] A, B, C, D,
 input[1:0] CHAVE,
 output reg[15:0] outMux);
 
always @(*)
begin
	case(CHAVE)
		2'b00 : outMux <= A;
		2'b01 : outMux <= B;
		2'b10 : outMux <= C;
		2'b11 : outMux <= D;
	endcase
end

endmodule
 