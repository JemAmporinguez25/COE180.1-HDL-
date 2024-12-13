`include "multiplexer_4by1_st.v"
`include "multiplexer_4by1_df.v"
`include "multiplexer_4by1_bh.v"
`include "multiplexer_4by1_task2.v"

module multiplexer_4by1_tb;
reg S0, S1, I0, I1, I2, I3; wire Y;

initial begin 
    $dumpfile("multiplexer_4by1.vcd"); $dumpvars(0, multiplexer_4by1_tb);
    $display("I0\tI1\tI2\tI3\tS0\tS1\tY");
    $monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b", I0, I1, I2, I3, S0, S1, Y);

    S0=0; S1=0; I0=1; I1=0; I2=1; I3=0; #5;
    S0=0; S1=1; I0=1; I1=0; I2=1; I3=0; #5;
    S0=1; S1=0; I0=1; I1=0; I2=1; I3=0; #5;
    S0=1; S1=1; I0=1; I1=0; I2=1; I3=0; #5;
    $finish;
end

multiplexer_4by1_df a_bsum(Y,S0,S1,I0,I1,I2,I3); 
multiplexer_4by1_bh a_bsum3(Y,S0,S1,I0,I1,I2,I3);
multiplexer_4by1_st a_bsum4(Y,S0,S1,I0,I1,I2,I3);
multiplexer_4by1_st a_bsum5(Y,S0,S1,I0,I1,I2,I3);

endmodule
