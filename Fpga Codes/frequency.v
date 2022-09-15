`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:07:12 09/25/2017 
// Design Name: 
// Module Name:    frequency 
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
module frequency(clk,clk_out);

input clk;
output clk_out;
reg clk_out_hz = 0;
reg [27:0] counter = 28'h0000000; //50 MHze gore hesaplanmýþtýr. 

always @(posedge clk)
begin
if (counter==28'h2FAF080)//50 MHze gore hesaplanmýþtýr. 2 sn periyot için 50.000.000 'nun hex karsiligi
begin
counter = 28'h0000000;
clk_out_hz =~ clk_out_hz;
end
else counter = counter + 1;   

end

assign clk_out = clk_out_hz;
endmodule



