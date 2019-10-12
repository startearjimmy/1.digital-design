module Lab2_half_sub_gate_level(X,Y,B,D);
    output  B,D;
    input   X,Y;
    wire    w1,w2,w3,w4,w5,w6,w7;

    xor G1(D,X,Y);
    not G2(w1,X);
    and G3(B,w1,Y);
endmodule