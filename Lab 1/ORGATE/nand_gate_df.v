
module nand_gate_df(input a,input b,output y); // define module to test run
	assign y=~(a&&b);
endmodule