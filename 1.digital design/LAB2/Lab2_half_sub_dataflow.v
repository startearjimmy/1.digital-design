module Lab2_half_sub_dataflow(X,Y,B,D);
    output  B,D;
    input   X,Y;

    assign D=X^Y;
    assign B=(~X)&Y;
endmodule