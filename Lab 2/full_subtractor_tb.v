`include "full_subtractor_df.v"
`include "full_subtractor_bh.v"
`include "full_subtractor_st.v"

module full_subtractor_tb;

reg A,B,C;
wire difference,borrow;


initial begin 
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0, full_subtractor_tb);
    $display("A\tB\tC\tDifference\tBorrow");
    $monitor("%b\t%b\t%b\t%b\t\t%b", A,B,C,difference,borrow);
	
	
	
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
    

	
end

// Instantiate the OR gate
full_subtractor_df a_bdiff(difference,borrow,A,B,C); 
full_subtractor_bh a_bdiff2(difference,borrow,A,B,C);
full_subtractor_st a_bdiff3(difference,borrow,A,B,C);


endmodule