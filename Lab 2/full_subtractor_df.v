module full_subtractor_df(output difference, borrow,input a, b,c);
	wire ab_xor;
	assign ab_xor=((~a) && b) || (a && (~b));
	assign difference=((~ab_xor) && c) || (ab_xor && (~c));
	assign borrow=((~a)&& b)||(b&& c)||((~a)&&c);

endmodule