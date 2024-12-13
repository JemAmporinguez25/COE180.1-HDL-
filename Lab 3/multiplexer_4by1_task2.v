`include "mux21_bh.v"  // Assuming this contains the mux21_df module

module multiplexer_4by1_task2
(
    output y,        // Output of the 4-to-1 multiplexer
    input s0, s1,    // Selector bits
    input i0, i1, i2, i3  // Inputs
);
    wire y0, y1;

    // First stage: Select between i0 and i1 based on s0
    mux21_bh mux1(y0, i1, i0, s0);

    // First stage: Select between i2 and i3 based on s0
    mux21_bh mux2(y1, i3, i2, s0);

    // Second stage: Select between y0 and y1 based on s1
    mux21_bh mux3(y, y1, y0, s1);
    
endmodule
