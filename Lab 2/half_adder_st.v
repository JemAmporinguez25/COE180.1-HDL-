`include "xor_gate_st.v"
`include "and_gate_st.v"
module half_adder_st(sum, carry, a, b);
	output sum, carry;
	input a, b;
	xor_gate_st xor12(sum, a, b); 
	and_gate_st and12( carry,a, b);
endmodule