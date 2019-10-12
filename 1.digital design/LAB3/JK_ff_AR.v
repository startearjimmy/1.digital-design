module JK_ff_AR(J,K,CLK,reset,Q,NQ);
       output Q,NQ;
       input J,K,CLK,reset;
   
       reg Q;
       assign NQ = ~ Q ; 
   
       always @ (posedge CLK, negedge reset)
       if(reset == 0) Q = 1'b0;
       else case ({J,K})
              2'b00: Q = Q;
              2'b01: Q = 1'b0;
              2'b10: Q = 1'b1;
              2'b11: Q = ~ Q;
       endcase
endmodule