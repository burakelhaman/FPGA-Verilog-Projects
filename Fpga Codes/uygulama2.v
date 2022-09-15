`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:48 02/06/2018 
// Design Name: 
// Module Name:    uygulama2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module uygulama2(yonbelirleme, sayacdegeri, clk
    );

input yonbelirleme;
input clk;
output [3:0] sayacdegeri;
reg [3:0] sayacdegeri = 0;

reg [3:0] sayac=4'h0;
wire clk_yavas; 

frequency frequency56( 
.clk (clk),
.clk_out (clk_yavas)
);


always @(posedge clk_yavas)
begin
if (yonbelirleme==1) 
sayac=sayac+1;
else sayac=sayac-1;

assign sayacdegeri=sayac;

end
endmodule   