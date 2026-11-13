`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2026 10:15:18
// Design Name: 
// Module Name: RangeChecker
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


module RangeChecker(
    input [3:0] Min, Max, input [7:0] value, output InRange
        );
    wire GrMin, LsMax;
    comparator_8bit uut1(.A(value), .B({4'b0,Max}), .GT(), .LT(LsMax), .EQ());
    comparator_8bit uut2(.A(value), .B({4'b0,Min}), .GT(GrMin), .LT(), .EQ());
    //InRange is high only when value is greater than MinRange and less than MaxRange
    assign InRange = GrMin & LsMax; 
endmodule
