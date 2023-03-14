`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 13:40:34
// Design Name: 
// Module Name: mult16
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


module mult16(
    input [15:0] a,
    input [15:0] b,
    output reg [31:0] c
    );
wire [15:0] OUT_1;
wire [15:0] OUT_2;
wire [15:0] OUT_3 ;
wire [15:0] OUT_4 ;    
    
mult8 mult16_0(
.x1  (a[7:0]),
.x2  (b[7:0]),
.y   (OUT_1)
);
    
mult8 mult16_1(
.x1  (a[7:0]),
.x2  (b[15:8]),
.y   (OUT_2)
);

mult8 mult16_2(
.x1  (a[15:8]),
.x2  (b[15:8]),
.y   (OUT_3)
);

mult8 mult16_3(
.x1  (a[15:8]),
.x2  (b[7:0]),
.y   (OUT_4)
);

assign c = {OUT_3,16'b0} + {8'b0,OUT_2,8'b0}+ {8'b0,OUT_4,8'b0} + {16'b0,OUT_1};




endmodule
