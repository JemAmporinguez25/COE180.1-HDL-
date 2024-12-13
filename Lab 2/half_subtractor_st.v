`include "xor_gate_df.v"
`include "and_gate_df.v"
`include "not_gate_df.v"
module half_subtractor_st(difference, borrow, a, b);
	output difference, borrow;
	input a, b;
	wire nota;
	xor_gate_df xor1(difference, a, b); 
	not_gate_df not1(nota,a);
	and_gate_df andnot1(borrow, nota, b);
endmodule