module somador
(input [15:0] IN1,IN2,
 input [0:0] H,
 output reg [15:0] outSum);
 
always @(*)
begin
	case(H)
		1'b0 : outSum <= IN1 + IN2;
		1'b1 : outSum <= IN1 * IN2;
	endcase
end
	
endmodule
