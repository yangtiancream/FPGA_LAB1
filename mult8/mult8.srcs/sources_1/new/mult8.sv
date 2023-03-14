`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 13:12:28
// Design Name: 
// Module Name: mult8
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


module mult8(
    input   [7:0]      x1,
    input   [7:0]      x2,
    output  reg [15:0]     y
    );
    
    integer i;
    always@(x1 or x2)
    begin
        y = 16'b0;
        for(i=0;i<8;i=i+1)
            if(x1[i])
                y = y + (x2 << i);
    end
        
    
endmodule
