`include "not_gate_bh.v"
`include "not_gate_df.v"
`include "not_gate_st.v"

module notgate_tb;

reg ain;
wire cout;


initial begin 
    $dumpfile("notgate.vcd");
    $dumpvars(0, notgate_tb);
    $display("p\t-p");
    $monitor("%b\t%b", ain,cout);
    
    // Initialize inputs
    ain = 0;


    #5; // Wait 5 time units
    
    // Apply test vectors
    ain = 1;
	#5;

    $finish;
end

// Instantiate the OR gate
not_gate_df not1 (ain,cout);
not_gate_bh not2 (ain,cout);
not_gate_st not3 (ain,cout);



endmodule