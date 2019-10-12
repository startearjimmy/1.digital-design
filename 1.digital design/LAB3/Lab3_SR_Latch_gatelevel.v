module Lab3_SR_Latch_gatelevel(R,S,Q,NQ);
    input S;
    input R;
    output Q,NQ;
    
    nor #(2) n1(Q,R,NQ);
    nor #(2) n2(NQ,S,Q);

endmodule