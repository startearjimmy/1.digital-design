module Lab3_Neg_Edge_D_FF_gatelevel(Q, NQ, D,clock);
    output Q, NQ;
    input  D,clock;
    wire R,S,w1,w2,w3;
    or or1(w1,R,clock);
    Lab3_SR_Latch_gatelevel M0(w2,clock,w3,R);
    Lab3_SR_Latch_gatelevel M1(w1,D,S,w2);
    Lab3_SR_Latch_gatelevel M2(R,S,Q,NQ);
endmodule // 