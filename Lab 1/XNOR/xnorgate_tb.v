`include "xnor_gate_bh.v"
`include "xnor_gate_df.v"
`include "xnor_gate_st.v"

module xnorgate_tb;

reg ain,bin;
wire cout;


initial begin 
    $dumpfile("xnorgate.vcd");
    $dumpvars(0, xnorgate_tb);
    $display("p\tv\t XNOR");
    $monitor("%b\t%b\t%b", ain,bin,cout);
    
    // Initialize inputs
    ain = 0;
	bin =0;
    #5; // Wait 5 time units
    ain = 0;
	bin =1;
    #5; // 
	ain = 1;
	bin =0;
    #5; // 
	ain = 1;
	bin =1;
    #5; // 

    $finish;
end

// Instantiate the OR gate
xnor_gate_bh xnor1 (ain,bin,cout);
xnor_gate_df xnor2 (ain,bin,cout);
xnor_gate_st xnor3 (ain,bin,cout);



endmodule