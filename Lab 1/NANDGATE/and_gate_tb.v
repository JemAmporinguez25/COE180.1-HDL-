`include "or_gate_df.v"
`include "or_gate_bh.v"
`include "or_gate_st.v"

module or_gate_tb ;
2 reg a , b;
3 wire y;
4
5 // Instantiate the design under test ( DUT )
6
7 initial begin
8 $dumpfile (" or_gate_tb .vcd"); // Specify the VCD filename
9 $dumpvars (0 , or_gate_tb ); // Dump all variables in the
10 // testbench ( hierarchical )
11
12 $monitor ("a = %b, b = %b, y = %b", a , b , y);
13
14 a = 0; b = 0; #10;
15 a = 0; b = 1; #10;
16 a = 1; b = 0; #10;
17 a = 1; b = 1; #10;
18
19 $finish ;
20 end

or_gate_df dut (a , b , y); 
or_gate_bh dut (a , b , y); 
or_gate_st dut (a , b , y); 
21 endmodule