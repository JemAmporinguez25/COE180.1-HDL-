`include "and_gate_df.v"
`include "or_gate_df.v"
`include "not_gate_df.v"

module multiplexer_4by1_st(
    output y,          // Output of the 4-to-1 multiplexer
    input s1, s0,      // Selector bits
    input i0, i1, i2, i3  // Inputs
);
    wire s0_not, s1_not;
    wire and0_input, and1_input, and2_input, and3_input;
    wire and0, and1, and2, and3;
    wire or1, or2;

    // Negating the select lines using not_gate_df (1 output, 1 input)
    not_gate_df not1(s0_not, s0);
    not_gate_df not2(s1_not, s1);

    // AND gates for each condition (each AND gate has 1 output and 2 inputs)
    and_gate_df and_gate0_1(and0_input, s1_not, s0_not);  // s1 = 0, s0 = 0
    and_gate_df and_gate0_2(and0, and0_input, i0);        // i0 is selected

    and_gate_df and_gate1_1(and1_input, s1_not, s0);      // s1 = 0, s0 = 1
    and_gate_df and_gate1_2(and1, and1_input, i1);        // i1 is selected

    and_gate_df and_gate2_1(and2_input, s1, s0_not);      // s1 = 1, s0 = 0
    and_gate_df and_gate2_2(and2, and2_input, i2);        // i2 is selected

    and_gate_df and_gate3_1(and3_input, s1, s0);          // s1 = 1, s0 = 1
    and_gate_df and_gate3_2(and3, and3_input, i3);        // i3 is selected

    // OR gates to combine the results (each OR gate has 1 output and 2 inputs)
    or_gate_df or_gate1(or1, and0, and1);  // Combine outputs of and0 and and1
    or_gate_df or_gate2(or2, and2, and3);  // Combine outputs of and2 and and3
    or_gate_df or_gate_final(y, or1, or2); // Final output

endmodule
