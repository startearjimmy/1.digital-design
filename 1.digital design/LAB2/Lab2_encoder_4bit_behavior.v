module Lab2_encoder_4bit_behavior(D,A,V);
    output       V;
    output [1:0] A;
    input  [3:0] D;

    reg          V;
    reg    [1:0] A;

    always@(D) begin
      V<=D[0]|D[1]|D[2]|D[3];
      A[1]<=(~D[0])&(D[1]|(~D[2]));
      A[0]<=(~D[0])&(~D[1]);
      
    end
endmodule