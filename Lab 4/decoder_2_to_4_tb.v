`include "decoder_2_to_4_bh.v"
`include "decoder_2_to_4_df.v"
`include "decoder_2_to_4_st.v"

module decoder_2_to_4_tb;
    reg A1, A0, E;  // Inputs
    wire Y3, Y2, Y1, Y0;  // Outputs

    initial begin 
        $dumpfile("decoder_2_to_4.vcd");
        $dumpvars(0, decoder_2_to_4_tb);
        $display("E\tA1\tA0\tY3\tY2\tY1\tY0");
        $monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b", E, A1, A0, Y3, Y2, Y1, Y0);
        
        // Test cases with specific output values
        E = 0; A1 = 0; A0 = 0; #5;  // All outputs should be 0 because E = 0
        E = 1; A1 = 0; A0 = 0; #5;  // Y0 should be 1, others 0
        E = 1; A1 = 0; A0 = 1; #5;  // Y1 should be 1, others 0
        E = 1; A1 = 1; A0 = 0; #5;  // Y2 should be 1, others 0
        E = 1; A1 = 1; A0 = 1; #5;  // Y3 should be 1, others 0

        $finish;
    end

    // Instantiate one of the decoders (you can switch between bh, df, or st)
    decoder_2_to_4_bh ans1(A1, A0, E, Y3, Y2, Y1, Y0);
    
    decoder_2_to_4_df ans2(A1, A0, E, Y3, Y2, Y1, Y0);
    decoder_2_to_4_st ans3(A1, A0, E, Y3, Y2, Y1, Y0);
	

endmodule
