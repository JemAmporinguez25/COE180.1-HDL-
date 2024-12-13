// JEMUEL AMPORINGUEZ COE180.1- : W56 
// LAB 4: Design of Decoders

`include "decoder_4to16_bh.v"  // Behavioral implementation
`include "decoder_4to16_df.v"  // Dataflow implementation
`include "decoder_4to16_st.v"  // Structural implementation

module decoder_4to16_tb;
    reg [3:0] inputs;              // 4-bit inputs
    reg enable;                    // Enable input
    wire [15:0] outs_bh;           // Outputs for behavioral decoder
    wire [15:0] outs_df;           // Outputs for dataflow decoder
    wire [15:0] outs_st;           // Outputs for structural decoder

    // Instantiate the behavioral decoder
    decoder_4to16_bh bh_inst (
        .A(inputs),
        .enable(enable),
        .out(outs_bh)
    );
    
    // Instantiate the dataflow decoder
    decoder_4to16_df df_inst (
        .A(inputs),
        .enable(enable),
        .out(outs_df)
    );
    
    // Instantiate the structural decoder
    decoder_4to16_st st_inst (
        .A(inputs),
        .enable(enable),
        .out(outs_st)
    );

    initial begin
        // Generate the waveform dump file
        $dumpfile("decoder_4to16.vcd");
        $dumpvars(0, decoder_4to16_tb);
        $display("enable\tinputs\tBehavioral\t\tDataflow\t\tStructural");
        $monitor("%b\t%b\t%b\t%b\t%b", enable, inputs, outs_bh, outs_df, outs_st);

        // Test cases for all input combinations
        enable = 0; inputs = 4'b0000; #5;
        enable = 1; inputs = 4'b0000; #5;
        enable = 1; inputs = 4'b0001; #5;
        enable = 1; inputs = 4'b0010; #5;
        enable = 1; inputs = 4'b0011; #5;
        enable = 1; inputs = 4'b0100; #5;
        enable = 1; inputs = 4'b0101; #5;
        enable = 1; inputs = 4'b0110; #5;
        enable = 1; inputs = 4'b0111; #5;
        enable = 1; inputs = 4'b1000; #5;
        enable = 1; inputs = 4'b1001; #5;
        enable = 1; inputs = 4'b1010; #5;
        enable = 1; inputs = 4'b1011; #5;
        enable = 1; inputs = 4'b1100; #5;
        enable = 1; inputs = 4'b1101; #5;
        enable = 1; inputs = 4'b1110; #5;
        enable = 1; inputs = 4'b1111; #5;

        // Finish the simulation
        $finish;
    end
endmodule
