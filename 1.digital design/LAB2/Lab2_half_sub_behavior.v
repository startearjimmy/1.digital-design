module Lab2_half_sub_behavior(X,Y,B,D);
    output  B,D;
    input   X,Y;

    reg     B,D;

    always@(X or Y) begin
      D<=X^Y;
      B<=(~X)&Y;
    end 
endmodule