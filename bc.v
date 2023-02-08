module bc
(input clock, start,  
 output reg flag,
 output reg LX, LS, LH, H,
 output reg[1:0] M0, M1, M2);

reg[3:0] state = 0;

always @(posedge clock)
	begin
		if(start == 1)//start
			begin
				state <= 1;
				flag <= 0;
			end
		if(start == 0)//reset
			begin
				state <= 0;
				flag <= 1;
			end
		else
		begin 
			case(state)
				3'd1 : begin
							LX <= 1;
							LS <= 0;
							LH <= 0;
							H <= 0;
							M0 <= 2'b00;
							M1 <= 2'b00;
							M2 <= 2'b00;
							flag <= 3'd0;
							state <= 2;
						end
								
				3'd2 : begin
							LX <= 0;
							LS <= 1;
							LH <= 0;
							H <= 1;
							M0 <= 2'b00;
							M1 <= 2'b01;
							M2 <= 2'b00;
							state <= 3;
						end

				3'd3 : begin
							LX <= 0;
							LS <= 0;
							LH <= 1;
							H <= 1;
							M0 <= 2'b01;
							M1 <= 2'b00;
							M2 <= 2'b10;
							state <= 4;
						end
							
				3'd4 : begin
							LX <= 0;
							LS <= 1;
							LH <= 0;
							H <= 1;
							M0 <= 2'b10;
							M1 <= 2'b00;
							M2 <= 2'b00;
							state <= 5;
						end
							
				3'd5 : begin
							LX <= 0;
							LS <= 1;
							LH <= 0;
							H <= 0;
							M0 <= 2'b10;
							M1 <= 2'b11;
							M2 <= 2'b10;
							state <= 6;
						end
							
				3'd6 : begin
							LX <= 0;
							LS <= 1;
							LH <= 0;
							H <= 0;
							M0 <= 2'b11;
							M1 <= 2'b00;
							M2 <= 2'b10;
							state <= 7;
						end		
				3'd7 : begin
							LX <= 0;
							LS <= 1;
							LH <= 0;
							H <= 0;
							M0 <= 2'b11;
							M1 <= 2'b00;
							M2 <= 2'b10;
							flag <= 3'd1;
							state <= 1;
						end
			endcase
		end
	end
endmodule
	 