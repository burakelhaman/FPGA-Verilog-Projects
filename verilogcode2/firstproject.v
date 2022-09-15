module firstproject(input [2:0] A, output reg [3:0] B);
always @(*)
	case (A)
	3'b000:B = 4'b1001;
	3'b001:B = 4'b1010;
	3'b010:B = 4'b1100;
	3'b011:B = 4'b0110;
	3'b100:B = 4'b0101;
	3'b101:B = 4'b0011;
	default:B= 4'b1111;
	endcase
endmodule
