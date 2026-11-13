module comparator_1bit(
    input A, B,
    output Gr, Eq, Less
);
assign Gr = A & ~B;
assign Eq = ~(A ^ B);
assign Less = ~A & B;
endmodule

//developing 8 bit comparator using 1 bit comparator
module comparator_8bit(
    input [7:0] A, B,
    output GT, EQ, LT
);
wire [7:0] g, e, l;
genvar i;
generate
    for(i=0; i<8; i=i+1) begin
        comparator_1bit c(A[i], B[i], g[i], e[i], l[i]);
    end
endgenerate
assign GT = g[7] | (e[7] & g[6]) | (e[7] & e[6] & g[5]) | (e[7] & e[6] & e[5] & g[4]) | (e[7] & e[6] & e[5] & e[4] & g[3]) | (e[7] & e[6] & e[5] & e[4] & e[3] & g[2]) | (e[7] & e[6] & e[5] & e[4] & e[3] & e[2] & g[1]) | (e[7] & e[6] & e[5] & e[4] & e[3] & e[2] & e[1] & g[0]);
assign LT = l[7] | (e[7] & l[6]) | (e[7] & e[6] & l[5]) | (e[7] & e[6] & e[5] & l[4]) | (e[7] & e[6] & e[5] & e[4] & l[3]) | (e[7] & e[6] & e[5] & e[4] & e[3] & l[2]) | (e[7] & e[6] & e[5] & e[4] & e[3] & e[2] & l[1]) | (e[7] & e[6] & e[5] & e[4] & e[3] & e[2] & e[1] & l[0]);
assign EQ = ~GT&~LT;
endmodule
