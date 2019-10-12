module t_Lab3_Neg_Edge_D_FF_gatelevel();
    wire Q,NQ;
    reg D,clock;
    Lab3_Neg_Edge_D_FF_gatelevel M0(Q, NQ, D,clock);

    parameter clkper = 20; 
    initial begin
            clock = 1;
            D=0;
      #15   D=1;
      #20   D=0;
      #30   D=1;
      #13   D=0;
      #37   D=1;
      #5    D=0;
    end
    always begin
       # (clkper / 2) clock = ~clock;
    end
    initial #150 $finish;
endmodule // 