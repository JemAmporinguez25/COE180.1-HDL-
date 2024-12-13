`include "mux21_st.v"
`include "multiplexer_4by1_task2.v"

module multiplexer_8by1_task2(output Y, input S0, S1, S2, input I0, I1, I2, I3, I4, I5, I6, I7);

  wire y0, y1; // Outputs of the 4-to-1 multiplexers
  
  // First 4-to-1 multiplexer for the inputs I0 to I3
  multiplexer_4by1_task2 mux_lower(y0, S0, S1, I0, I1, I2, I3);
  
  // Second 4-to-1 multiplexer for the inputs I4 to I7
  multiplexer_4by1_task2 mux_upper(y1, S0, S1, I4, I5, I6, I7);
  
  // 2-to-1 multiplexer to combine the results of the two 4-to-1 multiplexers
  multiplexer_4by1_task2 final_mux(Y, y0, y1, S2);

endmodule
