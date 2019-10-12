module	t_Lab2_full_sub();
	wire	X,Y,Z;
    wire    B,D;

	reg	[2:0] in;
	
	//instantiate device under test
	Lab2_full_sub	M0(.X(in[0]), .Y(in[1]), .Z(in[2]), .B(B), .D(D));
	
    assign X=in[0];
    assign Y=in[1];
    assign Z=in[2];
	//apply inputs one at a time
	initial	begin
		       in=3'b000;
		#50    in=3'b001;
        #50    in=3'b010;
        #50    in=3'b011;
        #50	   in=3'b100;
		#50    in=3'b101;
        #50    in=3'b110;
        #50    in=3'b111;
    end
    initial #400 $finish;
endmodule