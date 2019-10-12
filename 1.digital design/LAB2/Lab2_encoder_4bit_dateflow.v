module Lab2_encoder_4bit_dateflow(D,A,V);
    output       V;
    output [1:0] A;
    input  [3:0] D;

    assign V=D[0]|D[1]|D[2]|D[3];
    assign A[1]=(~D[0])&(D[1]|(~D[2]));
    assign A[0]=(~D[0])&(~D[1]);


endmodule