module verilog(input clk,reset,start,
					output reg [6:0] disp0,disp1,disp2,disp4,disp6,disp3,disp5,disp7);
					
reg [3:0] salise0,salise1,saniye0,dakika0,saat0;
reg [2:0] saniye1,dakika1;
reg [1:0] saat1;

always @(posedge clk or posedge reset)
begin
	if(reset) 
	begin
		salise0 <=0;
		salise1 <=0;
		saniye0 <=0;
		saniye1 <=0;
		dakika0 <=0;
		dakika1 <=0;
		saat0   <=0;
		saat1   <=0;
	end
	
	else if(clk)
	begin
		if(salise0 == 9) //xx xx xxx9
		begin
		salise0 <=0;
			if(salise1 == 9)//xx xx xx99
			begin
			salise1 <=0;
				if(saniye0 == 9)//xx xx x999
				begin
				saniye0 <=0;
					if(saniye1 == 5)//xx xx 5999
					begin
					saniye1 <=0;
						if(dakika0 == 9)//xx x9 5999
						begin
						dakika0 <=0;
							if(dakika1 == 5)//xx 59 5999
							begin
							dakika1 <=0;
								if(saat0 == 9)//x9 59 5999
								begin
								saat0 <=0;
									if(saat1 == 2 & saat0 == 3)//23 59 5999
									begin
										salise0 <=0;
										salise1 <=0;
										saniye0 <=0;
										saniye1 <=0;
										dakika0 <=0;
										dakika1 <=0;
										saat0   <=0;
										saat1   <=0;
									end
									else
									saat1 = saat1 + 1;
								end
								else
								saat0 = saat0 + 1;
							end
							else
							dakika1 = dakika1 + 1;
						end
						else
						dakika0 = dakika0 + 1;
					end
					else
					saniye1 = saniye1 + 1;
				end
				else
				saniye0 = saniye0 + 1;
			end
			else
			salise1 = salise1 + 1;
		end
		else
		salise0 = salise0 + 1;
	end
end


always @ (*) //send number
 begin
  case(salise0)
   4'd0 : disp0 = 7'b1000000;
   4'd1 : disp0 = 7'b1111001;
   4'd2 : disp0 = 7'b0100100;
   4'd3 : disp0 = 7'b0110000;
   4'd4 : disp0 = 7'b0011001;
   4'd5 : disp0 = 7'b0010010;
   4'd6 : disp0 = 7'b0000010;
   4'd7 : disp0 = 7'b1111000;
   4'd8 : disp0 = 7'b0000000;
   4'd9 : disp0 = 7'b0010000;
   default : disp0 <= 7'b0111111; //dash
  endcase
  
  case(salise1)
   4'd0 : disp1 = 7'b1000000;
   4'd1 : disp1 = 7'b1111001;
   4'd2 : disp1 = 7'b0100100;
   4'd3 : disp1 = 7'b0110000;
   4'd4 : disp1 = 7'b0011001;
   4'd5 : disp1 = 7'b0010010;
   4'd6 : disp1 = 7'b0000010;
   4'd7 : disp1 = 7'b1111000;
   4'd8 : disp1 = 7'b0000000;
   4'd9 : disp1 = 7'b0010000;
   default : disp1 = 7'b0111111; //dash
  endcase
  
  case(saniye0)
   4'd0 : disp2 = 7'b1000000;
   4'd1 : disp2 = 7'b1111001;
   4'd2 : disp2 = 7'b0100100;
   4'd3 : disp2 = 7'b0110000;
   4'd4 : disp2 = 7'b0011001;
   4'd5 : disp2 = 7'b0010010;
   4'd6 : disp2 = 7'b0000010;
   4'd7 : disp2 = 7'b1111000;
   4'd8 : disp2 = 7'b0000000;
   4'd9 : disp2 = 7'b0010000;
   default : disp2 = 7'b0111111; //dash
  endcase
  
  case(saniye1)
   3'd0 : disp3 = 7'b1000000;
   3'd1 : disp3 = 7'b1111001;
   3'd2 : disp3 = 7'b0100100;
   3'd3 : disp3 = 7'b0110000;
   3'd4 : disp3 = 7'b0011001;
   3'd5 : disp3 = 7'b0010010;
   default : disp3 = 7'b0111111; //dash
  endcase
  
  case(dakika0)
   4'd0 : disp4 = 7'b1000000;
   4'd1 : disp4 = 7'b1111001;
   4'd2 : disp4 = 7'b0100100;
   4'd3 : disp4 = 7'b0110000;
   4'd4 : disp4 = 7'b0011001;
   4'd5 : disp4 = 7'b0010010;
   4'd6 : disp4 = 7'b0000010;
   4'd7 : disp4 = 7'b1111000;
   4'd8 : disp4 = 7'b0000000;
   4'd9 : disp4 = 7'b0010000;
   default : disp4 = 7'b0111111; //dash
  endcase
  
  case(dakika1)
   3'd0 : disp5 = 7'b1000000;
   3'd1 : disp5 = 7'b1111001;
   3'd2 : disp5 = 7'b0100100;
   3'd3 : disp5 = 7'b0110000;
   3'd4 : disp5 = 7'b0011001;
   3'd5 : disp5 = 7'b0010010;
   default : disp5 = 7'b0111111; //dash
  endcase
  
  case(saat0)
   4'd0 : disp6 = 7'b1000000;
   4'd1 : disp6 = 7'b1111001;
   4'd2 : disp6 = 7'b0100100;
   4'd3 : disp6 = 7'b0110000;
   4'd4 : disp6 = 7'b0011001;
   4'd5 : disp6 = 7'b0010010;
   4'd6 : disp6 = 7'b0000010;
   4'd7 : disp6 = 7'b1111000;
   4'd8 : disp6 = 7'b0000000;
   4'd9 : disp6 = 7'b0010000;
   default : disp6 = 7'b0111111; //dash
  endcase
  
  case(saat1)
   2'd0 : disp7 = 7'b1000000;
   2'd1 : disp7 = 7'b1111001;
   2'd2 : disp7 = 7'b0100100;
   default : disp7 = 7'b0111111; //dash
  endcase
 end
endmodule
