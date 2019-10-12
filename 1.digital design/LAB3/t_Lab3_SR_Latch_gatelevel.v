module t_Lab3_SR_Latch_gatelevel();
    reg R,S;
    wire Q,NQ;
    Lab3_SR_Latch_gatelevel M0(R,S,Q,NQ);
    initial	begin
		       R=1'b0;  S=1'b0;
		#10    R=1'b0;  S=1'b0;
        #10    R=1'b0;  S=1'b1;
        #10    R=1'b0;  S=1'b0;
        #10    R=1'b1;  S=1'b0;
        #10    R=1'b0;  S=1'b0;
        #10    R=1'b1;  S=1'b1;
        #10    R=1'b0;  S=1'b0;
    end
    initial #80 $finish;
endmodule // 