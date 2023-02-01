module display 
(input [9:0] res, 
output reg[6:0] display0, display1, display2, display3);

wire[15:0] dif, dif2, dif3, dif4;
wire[15:0] div, div2, div3, div4;

assign div = res/10; //3426/10 >>> 342
assign dif = div*10; //342*10 >>> 3420
wire[3:0] numeroDisplay0 = res-dif; //3426-3420 >>> 6

assign div2 = div/10; //342/10 >>> 34
assign dif2 = div2*10; //34*10 >>> 340
wire[3:0] numeroDisplay1 = div-dif2; //342-340 >>> 2

assign div3 = div2/10; //34/10 >>> 3
assign dif3 = div3*10; //3*10 >>> 30
wire[3:0] numeroDisplay2 = div2-dif3; //34-30 >>> 4

wire[3:0] numeroDisplay3 = div3; //3

always @(*)
begin
	case(numeroDisplay0) 
		4'b0000 : display0 <= 7'b1000000; 
		4'b0001 : display0 <= 7'b1111001; 
		4'b0010 : display0 <= 7'b0100100; 
		4'b0011 : display0 <= 7'b0110000; 
		4'b0100 : display0 <= 7'b0011001; 
		4'b0101 : display0 <= 7'b0010010; 
		4'b0110 : display0 <= 7'b0000010; 
		4'b0111 : display0 <= 7'b1011000; 
		4'b1000 : display0 <= 7'b0000000;
		4'b1001 : display0 <= 7'b0010000; 
		default : display0 <= 7'b0111111;
	endcase
	
	case(numeroDisplay1) 
		4'b0000 : display1 <= 7'b1000000; 
		4'b0001 : display1 <= 7'b1111001; 
		4'b0010 : display1 <= 7'b0100100; 
		4'b0011 : display1 <= 7'b0110000; 
		4'b0100 : display1 <= 7'b0011001; 
		4'b0101 : display1 <= 7'b0010010; 
		4'b0110 : display1 <= 7'b0000010; 
		4'b0111 : display1 <= 7'b1011000; 
		4'b1000 : display1 <= 7'b0000000;
		4'b1001 : display1 <= 7'b0010000; 
		default : display1 <= 7'b0111111;
	endcase
	
	case(numeroDisplay2) 
		4'b0000 : display2 <= 7'b1000000; 
		4'b0001 : display2 <= 7'b1111001; 
		4'b0010 : display2 <= 7'b0100100; 
		4'b0011 : display2 <= 7'b0110000; 
		4'b0100 : display2 <= 7'b0011001; 
		4'b0101 : display2 <= 7'b0010010; 
		4'b0110 : display2 <= 7'b0000010; 
		4'b0111 : display2 <= 7'b1011000; 
		4'b1000 : display2 <= 7'b0000000;
		4'b1001 : display2 <= 7'b0010000; 
		default : display2 <= 7'b0111111;
	endcase
	
	case(numeroDisplay3) 
		4'b0000 : display3 <= 7'b1000000; 
		4'b0001 : display3 <= 7'b1111001; 
		4'b0010 : display3 <= 7'b0100100; 
		4'b0011 : display3 <= 7'b0110000; 
		4'b0100 : display3 <= 7'b0011001; 
		4'b0101 : display3 <= 7'b0010010; 
		4'b0110 : display3 <= 7'b0000010; 
		4'b0111 : display3 <= 7'b1011000; 
		4'b1000 : display3 <= 7'b0000000;
		4'b1001 : display3 <= 7'b0010000; 
		default : display3 <= 7'b0111111;
	endcase

end
endmodule
