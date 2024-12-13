`include "half_adder_df.v"
`include "half_adder_bh.v"
`include "half_adder_st.v"

module half_adder_tb;

reg A,B;
wire sum,carry;


initial begin 
    $dumpfile("half_adder.vcd");
    $dumpvars(0, half_adder_tb);
    $display("A\tB\tSum\tCarry");
    $monitor("%b\t%b\t%b\t%b", A,B,sum,carry);
	
	
	
    //$monitor("%b\t%b\t%b", ain,bin,cout);
    // Initialize inputs
    A = 0;
	B =0;
    #5; // Wait 5 time units
    A = 0;
	B =1;
    #5; 
	A = 1;
	B =0;
    #5; //
	A = 1;
	B =1;
	
end

// Instantiate the OR gate
half_adder_df a_bsum(sum,carry,A,B); 
half_adder_bh a_bsum2(sum,carry,A,B);
half_adder_st a_bsum3(sum,carry,A,B);


endmodule