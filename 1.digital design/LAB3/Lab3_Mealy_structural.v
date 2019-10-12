module Lab3_Mealy_structural(
  output z,
  input x, clock, reset
);
    wire A,NA,B,NB;
    JK_ff_AR M0(x^B,~x,clock,reset,A,NA);
    JK_ff_AR M1(x|NA,(~x)&NA,clock,reset,B,NB);
    assign z=(~x)&NB;
endmodule // 