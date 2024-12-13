`include "or_gate_df.v"
`include "and_gate_df.v"
`include "not_gate_df.v"
`include "xor_gate_df.v"

module full_subtractor_st(output difference, borrow,input a, b,c);
	wire ab_xor;
	wire not_a;
	wire firstterm;
	wire secondterm;
	wire thirdterm;
	wire firstans;
	
	xor_gate_df ab_xora(ab_xor,a,b);
	xor_gate_df ab_c_xor(difference,ab_xor,c);
	
	
	not_gate_df an(not_a,a);
	and_gate_df andanota(firstterm,not_a,b);
	and_gate_df bandaa(secondterm,b,c);
	and_gate_df andanota2(thirdterm,not_a,c);
	or_gate_df or1(firstans,firstterm,secondterm);
	or_gate_df or2(borrow,firstans,thirdterm);

	
	
	
endmodule