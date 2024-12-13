module half_subtractor_df(difference, borrow, a, b);
	output difference,borrow;
	input a,b;
	assign difference= ((~a) && b) || (a && (~b));
	assign borrow=(~a)&& b;
endmodule