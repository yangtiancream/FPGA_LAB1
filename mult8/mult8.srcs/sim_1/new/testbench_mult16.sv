`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 14:18:50
// Design Name: 
// Module Name: testbench_mult16
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench_mult16;

reg [15:0] a,b;
wire [31:0] c;
mult16 u_mult16(a,b,c);

initial begin
a = 16'd67;
b = 16'd454;
#20;
a = 16'd0;
b = 16'd2;
#20;
a = 16'd56;
b = 16'd34;
#20;
a = 16'd111;
b = 16'd0;
#20;
a = 16'd97;
b = 16'd77;
#20;
a = 16'd2;
b = 16'd3;
#20;




end



endmodule
