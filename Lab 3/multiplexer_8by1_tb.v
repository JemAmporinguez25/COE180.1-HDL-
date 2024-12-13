`include "multiplexer_8by1_st.v"
`include "multiplexer_8by1_df.v"
`include "multiplexer_8by1_bh.v"


module multiplexer_8by1_tb;
reg S0, S1, S2, I0, I1, I2, I3, I4, I5, I6, I7; wire Y;

initial begin 
    $dumpfile("multiplexer_8by1.vcd"); $dumpvars(0, multiplexer_8by1_tb);
    $display("I0\tI1\tI2\tI3\tI4\tI5\tI6\tI7\tS0\tS1\tS2\tY");
    $monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2, Y);

    S0=0; S1=0; S2=0; I0=1; I1=0; I2=1; I3=0; I4=1; I5=1; I6=1; I7=1; #5;
    S0=0; S1=0; S2=1; I0=1; I1=0; I2=1; I3=0; I4=1; I5=1; I6=1; I7=1; #5;
    S0=0; S1=1; S2=0; I0=1; I1=0; I2=1; I3=0; I4=1; I5=1; I6=1; I7=1; #5;
    S0=0; S1=1; S2=1; I0=1; I1=0; I2=1; I3=0; I4=1; I5=1; I6=1; I7=1; #5;
    S0=1; S1=0; S2=0; I0=1; I1=0; I2=1; I3=0; I4=1; I5=1; I6=1; I7=1; #5;
    S0=1; S1=0; S2=1; I0=1; I1=0; I2=1; I3=0; I4=1; I5=1; I6=1; I7=1; #5;
    S0=1; S1=1; S2=0; I0=1; I1=0; I2=1; I3=0; I4=1; I5=1; I6=1; I7=1; #5;
    S0=1; S1=1; S2=1; I0=1; I1=0; I2=1; I3=0; I4=1; I5=1; I6=1; I7=1; #5;

    $finish;
end

// Instantiate the multiplexer
multiplexer_8by1_df a_bsum(Y, S0, S1, S2, I0, I1, I2, I3, I4, I5, I6, I7); 
//multiplexer_8by1_bh a_bsum2(Y, S0, S1, S2, I0, I1, I2, I3, I4, I5, I6, I7); 
//multiplexer_8by1_st a_bsum3(Y, S0, S1, S2, I0, I1, I2, I3, I4, I5, I6, I7);

endmodule
