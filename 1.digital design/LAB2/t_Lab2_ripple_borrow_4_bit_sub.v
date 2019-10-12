module t_Lab2_ripple_borrow_4_bit_sub();
    wire [3:0] D1,D2,X,Y;
    wire Bout1,Bout2,Bin;
    reg  [8:0] in;
    integer i;

    Lab2_ripple_borrow_4_bit_sub M0(.X(in[3:0]), .Y(in[7:4]), .Bin(in[8]), .Bout(Bout1), .D(D1));
    Lab2_borrow_lookahead_4_bit_sub M1(.X(in[3:0]), .Y(in[7:4]), .Bin(in[8]), .Bout(Bout2), .D(D2));
    assign Bin=in[8];
    assign X=in[3:0];
    assign Y=in[7:4];

    initial	begin
		       in=8'b00000000;
		for(i=1;i<256;i=i+1)begin
            #50 in=in+1;
        end
    end
    initial #12800 $finish;
endmodule