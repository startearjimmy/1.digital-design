module Lab2_encoder_4bit_gate_level(D,A,V);
    output       V;
    output [1:0] A;
    input  [3:0] D;
    wire    w1,w2,w3,w4,w5,w6,w7;

    or  G1(w1,D[0],D[1]);
    or  G2(w2,D[2],D[3]);
    or  G3(V,w1,w2);
    not G4(w4,D[0]);
    not G5(w5,D[1]);
    and G6(A[0],w4,w5);
    not G7(w6,D[2]);
    or  G8(w7,D[1],w6);
    and G9(A[1],w4,w7);
endmodule