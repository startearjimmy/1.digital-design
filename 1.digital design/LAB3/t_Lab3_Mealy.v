module t_Lab3_Mealy();
    wire  [1:0] z;
    reg   x; 
    reg   clock, reset;
    Lab3_Mealy_state_diagram M0(z[0], x, clock, reset);
    Lab3_Mealy_structural M1(z[1], x, clock, reset);

    parameter clkper = 20; 
    initial begin
              reset=0; clock = 1;
        #20   x=0; reset=1;
        #20   x=0;
        #20   x=0;
        #20   x=0;
        #20   x=1;
        #20   x=0;
        #20   x=1;
        #20   x=1;
        #20   x=0;
        #20   x=0;
        #20   x=0;
        #20   x=1;
    end
    always begin
       # (clkper / 2) clock = ~clock;
    end
endmodule //