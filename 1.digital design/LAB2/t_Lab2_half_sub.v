module	t_Lab2_half_sub();
	wire	X,Y;
    wire    gate_level_B, gate_level_D, dataflow_B, dataflow_D, behavior_B, behavior_D;

	reg	[1:0] in;
	
	//instantiate device under test
	Lab2_half_sub_gate_level	M0(.X(in[0]), .Y(in[1]), .B(gate_level_B), .D(gate_level_D));
    Lab2_half_sub_dataflow      M1(.X(in[0]), .Y(in[1]), .B(dataflow_B), .D(dataflow_D));
    Lab2_half_sub_behavior      M2(.X(in[0]), .Y(in[1]), .B(behavior_B), .D(behavior_D));
	
    assign X=in[0];
    assign Y=in[1];
	//apply inputs one at a time
	initial	begin
		       in=2'b00;
		#50    in=2'b01;
        #50    in=2'b10;
        #50    in=2'b11;
    end
    initial #200 $finish;
endmodule