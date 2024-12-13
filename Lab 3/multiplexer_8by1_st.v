`include "not_gate_df.v"
`include "or_gate_df.v"
`include "and_gate_df.v"

module multiplexer_8by1_st (
    output y,
    input s0, s1, s2,
    input I0, I1, I2, I3, I4, I5, I6, I7
);

    // Declare intermediate wires
    wire inv_s0, inv_s1, inv_s2;
    wire and_out0, and_out1, and_out2, and_out3, and_out4, and_out5, and_out6, and_out7;
    wire or_out1, or_out2, or_out3, or_out4;

    // Invert select lines
    not_gate_df not_s0_inv(inv_s0, s0);
    not_gate_df not_s1_inv(inv_s1, s1);
    not_gate_df not_s2_inv(inv_s2, s2);

    // Create AND gates for each input with unique outputs
    and_gate_df and0(and_out0, inv_s2, inv_s1); // AND gate for I0
    and_gate_df and_I0(I0_out, and_out0, inv_s0); // Final AND gate for I0 with unique output

    and_gate_df and1(and_out1, inv_s2, inv_s1); // AND gate for I1
    and_gate_df and_I1(I1_out, and_out1, s0); // Final AND gate for I1 with unique output

    and_gate_df and2(and_out2, inv_s2, s1); // AND gate for I2
    and_gate_df and_I2(I2_out, and_out2, inv_s0); // Final AND gate for I2 with unique output

    and_gate_df and3(and_out3, inv_s2, s1); // AND gate for I3
    and_gate_df and_I3(I3_out, and_out3, s0); // Final AND gate for I3 with unique output

    and_gate_df and4(and_out4, s2, inv_s1); // AND gate for I4
    and_gate_df and_I4(I4_out, and_out4, inv_s0); // Final AND gate for I4 with unique output

    and_gate_df and5(and_out5, s2, inv_s1); // AND gate for I5
    and_gate_df and_I5(I5_out, and_out5, s0); // Final AND gate for I5 with unique output

    and_gate_df and6(and_out6, s2, s1); // AND gate for I6
    and_gate_df and_I6(I6_out, and_out6, inv_s0); // Final AND gate for I6 with unique output

    and_gate_df and7(and_out7, s2, s1); // AND gate for I7
    and_gate_df and_I7(I7_out, and_out7, s0); // Final AND gate for I7 with unique output

    // Combine the AND gate outputs using OR gates
    or_gate_df or1(or_out1, I0_out, I1_out); // Combine outputs from I0 and I1
    or_gate_df or2(or_out2, I2_out, I3_out); // Combine outputs from I2 and I3
    or_gate_df or3(or_out3, or_out1, or_out2); // Combine previous OR results

    or_gate_df or4(or_out4, or_out3, I4_out); // Combine with I4
    or_gate_df or5(y, or_out4, I5_out); // Final OR with I5 and output y
    or_gate_df or6(y, y, I6_out); // Final OR with I6
    or_gate_df or7(y, y, I7_out); // Final OR with I7

endmodule
