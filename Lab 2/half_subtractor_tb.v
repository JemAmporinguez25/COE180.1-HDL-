`include "half_subtractor_df.v"
`include "half_subtractor_bh.v"
`include "half_subtractor_st.v"

module half_subtractor_tb;

reg ain,bin;
wire difference, borrow;

initial begin 
    $dumpfile("half_subtractor_tb.vcd");
    $dumpvars(0, half_subtractor_tb);
    $display("A\tB\tDifference\tBorrow");
    $monitor("%b\t%b\t%b\t\t%b", ain,bin,difference,borrow);
	
	
	
    //$monitor("%b\t%b\t%b", ain,bin,cout);
    // Initialize inputs
    ain = 0;
	bin =0;	
	#5;
	ain =0;
	bin=1;
	#5;
	ain=1;
	bin=0;
	#5;
	ain=1;
	bin=1;
	
	
end

// Instantiate the OR gate
half_subtractor_df diff(difference,borrow,ain,bin); 
half_subtractor_bh diff2 (difference,borrow,ain,bin);
half_subtractor_st diff3(difference,borrow,ain,bin);




endmodule