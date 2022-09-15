module verilogcode(input [3:0] bcd, output reg [6:0] sevenseg);

always @(*)
	case (bcd)

	4'b0000:sevenseg = 7'b1111110;
	4'b0001:sevenseg = 7'b0110000;
	4'b0010:sevenseg = 7'b1101101;
	4'b0011:sevenseg = 7'b1111001;
	4'b0100:sevenseg = 7'b0110011;
	4'b0101:sevenseg = 7'b1011011;
	4'b0110:sevenseg = 7'b1011111;
	4'b0111:sevenseg = 7'b1110000;
	4'b1000:sevenseg = 7'b1111111;
	4'b1001:sevenseg = 7'b1111011;
	default:sevenseg = 7'b0110110;
	endcase
endmodule
	