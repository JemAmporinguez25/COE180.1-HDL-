module multiplexer_8by1_df(output Y, input S0, S1, S2, I0, I1, I2, I3, I4, I5, I6, I7);
    assign Y = (~S2 && ~S1 && ~S0 && I7) ||  // Select I0
               (~S2 && ~S1 &&  S0 && I6) ||  // Select I1
               (~S2 &&  S1 && ~S0 && I5) ||  // Select I2
               (~S2 &&  S1 &&  S0 && I4) ||  // Select I3
               ( S2 && ~S1 && ~S0 && I3) ||  // Select I4
               ( S2 && ~S1 &&  S0 && I2) ||  // Select I5
               ( S2 &&  S1 && ~S0 && I1) ||  // Select I6
               ( S2 &&  S1 &&  S0 && I0);    // Select I7
endmodule
