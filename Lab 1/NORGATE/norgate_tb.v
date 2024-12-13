`include "nor_gate_bh.v"
`include "nor_gate_df.v"
`include "nor_gate_st.v"

module norgate_tb;

reg ain,bin;
wire cout;


initial begin 
    $dumpfile("norgate.vcd");
    $dumpvars(0, norgate_tb);
    $display("p\tv\t NOR");
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
nor_gate_bh nor1 (ain,bin,cout);
nor_gate_df nor2 (ain,bin,cout);
nor_gate_st nor3 (ain,bin,cout);



endmodule