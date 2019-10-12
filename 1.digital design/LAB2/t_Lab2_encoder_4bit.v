module	t_Lab2_encoder_4bit();
	wire       gate_level_V, dataflow_V, behavior_V;
    wire [1:0] gate_level_A, dataflow_A, behavior_A;

	reg	 [3:0] D;
	
	//instantiate device under test
	Lab2_encoder_4bit_gate_level	M0(.D(D), .A(gate_level_A), .V(gate_level_V) );
    Lab2_encoder_4bit_dateflow      M1(.D(D), .A(dataflow_A), .V(dataflow_V) );
    Lab2_encoder_4bit_behavior      M2(.D(D), .A(behavior_A), .V(behavior_V) );

	//apply inputs one at a time
	initial	begin
		       D=4'b0000;
		#50    D=4'b0001;
        #50    D=4'b0010;
        #50    D=4'b0011;
        #50    D=4'b0100;
		#50    D=4'b0101;
        #50    D=4'b0110;
        #50    D=4'b0111;
        #50    D=4'b1000;
		#50    D=4'b1001;
        #50    D=4'b1010;
        #50    D=4'b1011;
        #50    D=4'b1100;
		#50    D=4'b1101;
        #50    D=4'b1110;
        #50    D=4'b1111;
    end
    initial #800 $finish;
endmodule