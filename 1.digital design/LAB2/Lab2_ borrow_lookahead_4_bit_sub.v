module Lab2_borrow_lookahead_4_bit_sub(X,Y,Bin,Bout,D);
    output       Bout;
    output [3:0] D;
    input        Bin;
    input  [3:0] X,Y;
    wire   [2:0] B;
    wire   [3:0] P,G;

    assign P=(~X)^Y;
    assign G=(~X)&Y;
    assign B[0]=G[0]+(P[0]&Bin);
    assign B[1]=G[1]+(P[1]&G[0])+(P[1]&P[0]&Bin);
    assign B[2]=G[2]+(P[2]&G[1])+(P[2]&P[1]&G[0])+(P[2]&P[1]&P[0]&Bin);
    assign Bout=G[3]+(P[3]&G[2])+(P[3]&P[2]&G[1])+(P[3]&P[2]&P[1]&G[0])+(P[3]&P[2]&P[1]&P[0]&Bin);
    assign D=P^B;
endmodule