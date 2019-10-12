module Lab2_full_sub(X,Y,Z,B,D);
    output  B,D;
    input   X,Y,Z;

    assign D=X^Y^Z;
    assign B=((~X)&Y)|(Y&Z)|(Z&(~X));
endmodule