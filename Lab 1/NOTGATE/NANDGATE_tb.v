`include "nand_gate_bh.v"
`include "nand_gate_df.v"
`include "nand_gate_st.v"

module nandgate_tb;

reg ain,bin;
wire cout;


initial begin 
    $dumpfile("nandgate.vcd");
    $dumpvars(0, nandgate_tb);
    $display("p\tv\t NAND");
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
nand_gate_bh nand1 (ain,bin,cout);
nand_gate_df nand2 (ain,bin,cout);
nand_gate_st nand3 (ain,bin,cout);



endmodule