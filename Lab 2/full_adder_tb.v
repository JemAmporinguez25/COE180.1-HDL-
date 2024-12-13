`include "full_adder_df.v"
`include "full_adder_bh.v"
`include "full_adder_st.v"

module full_adder_tb;

reg A,B,C;
wire sum,carry;


initial begin 
    $dumpfile("full_adder.vcd");
    $dumpvars(0, full_adder_tb);
    $display("A\tB\tC\tSum\tCarry");
    $monitor("%b\t%b\t%b\t%b\t\t%b", A,B,C,sum,carry);
	
	
	
    // Initialize inputs
    A = 0;
	B =0;
	C=0;
    #5; // Wait 5 time units
	A = 0;
	B =0;
	C=1;
    #5; // Wait 5 time units
	A = 0;
	B =1;
	C=0;
    #5; // Wait 5 time units
	A = 0;
	B =1;
	C=1;
    #5; // Wait 5 time units
	A = 1;
	B =0;
	C=0;
    #5; // Wait 5 time units
	A = 1;
	B =0;
	C=1;
    #5; // Wait 5 time units
	A = 1;
	B =1;
	C=0;
    #5; // Wait 5 time units
	A = 1;
	B =1;
	C=1;
    
	$finish;
	
end

// Instantiate the OR gate
full_adder_df a_bsum(sum,carry,A,B,C); 
full_adder_bh a_bsum2(sum,carry,A,B,C);
full_adder_st a_bsum3(sum,carry,A,B,C);


endmodule