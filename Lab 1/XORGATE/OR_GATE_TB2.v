`include "or_gate_bh.v"
`include "or_gate_df.v"
`include "or_gate_st.v"

module ORGATE_tb2;

reg ain, bin;
wire cout;


initial begin 
    $dumpfile("orgatetb.vcd");
    $dumpvars(0, ORGATE_tb2);
    $display("p\tq\tpVq");
    $monitor("%b\t%b\t%b", ain, bin,cout);
    
    // Initialize inputs
    ain = 0;
    bin = 0;

    #5; // Wait 5 time units
    
    // Apply test vectors
    ain = 0;
    bin = 1;
    #5;
    
    ain = 1;
    bin = 0;
    #5;
    
    ain = 1;
    bin = 1;
    #5;

    $finish;
end

// Instantiate the OR gate
or_gate_df or1 (ain,bin,cout);
or_gate_bh or2 (ain,bin,cout);
or_gate_st or3 (ain,bin,cout);



endmodule