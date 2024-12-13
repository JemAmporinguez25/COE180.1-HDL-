
module not_gate_bh(input a,output reg y); // define module to test run
	always @ (*) begin
	if ( !a)
		y=1;
	else
		y=0;
	end
endmodule
