module full_adder_df(output sum, carry,input a, b,c);
	wire a_and_b,a_xor_b,c_and_axorb;
	wire ab_xor;
	and(a_and_b,a,b);
	xor(a_xor_b,a,b);
	and(c_and_axorb,c,a_xor_b);
	or(carry,c_and_axorb,a_and_b);
	
	xor(ab_xor,a,b);
	xor(sum,ab_xor,c);
	
	
endmodule
