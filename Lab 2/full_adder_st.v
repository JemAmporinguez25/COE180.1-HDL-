`include "xor_gate_df.v"
`include "and_gate_df.v"
`include "or_gate_df.v"
module full_adder_st(output sum, carry, input a, b,c);
	wire xor_ab;
	wire ab_and,ab_xor,axorbc_and;

	
	and_gate_df and1(ab_and,a,b);
	xor_gate_df xor2(ab_xor,a,b);
	and_gate_df and2(axorbc_and,c,ab_xor);
	or_gate_df orrr(carry,axorbc_and,ab_and);
	
	xor_gate_df aa(xor_ab,a,b);
	xor_gate_df bb(sum,xor_ab,c);
	
	
endmodule