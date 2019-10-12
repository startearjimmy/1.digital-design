module Lab2_ripple_borrow_4_bit_sub(X,Y,Bin,Bout,D);
    output       Bout;
    output [3:0] D;
    input        Bin;
    input  [3:0] X,Y;
    wire   [2:0] B;

    Lab2_full_sub	M0(.X(X[0]), .Y(Y[0]), .Z(Bin), .B(B[0]), .D(D[0]));
    Lab2_full_sub	M1(.X(X[1]), .Y(Y[1]), .Z(B[0]), .B(B[1]), .D(D[1]));
    Lab2_full_sub	M2(.X(X[2]), .Y(Y[2]), .Z(B[1]), .B(B[2]), .D(D[2]));
    Lab2_full_sub	M3(.X(X[3]), .Y(Y[3]), .Z(B[2]), .B(Bout), .D(D[3]));
endmodule