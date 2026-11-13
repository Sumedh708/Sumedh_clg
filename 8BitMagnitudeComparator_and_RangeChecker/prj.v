`timescale 1ns / 1ps

module prj(
input [7:0] value, boundary, input push, output [3:0] LD
    );
wire G,L,E;
wire InRange;

RangeChecker uut1(.Min(boundary[7:4]), .Max(boundary[3:0]), .value(value), .InRange(InRange));
comparator_8bit uut2(.A(value), .B(boundary), .GT(G), .LT(L), .EQ(E));

//works as comparator only when push btn is pressed
assign LD[0] = push & G;
assign LD[1] = push & E;
assign LD[2] = push & L;

//works as a range checker untill push btn is pressed
assign LD[3] = ~push & InRange;

endmodule
