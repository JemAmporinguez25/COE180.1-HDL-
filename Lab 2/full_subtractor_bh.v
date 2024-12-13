module full_subtractor_bh(difference, borrow, a, b,c);
	reg ab_xorl;
	output difference,borrow;
	input a,b,c;
	reg difference,borrow;
	always @(a,b,c) begin
		ab_xorl=((~a) && b) || (a && (~b));
		difference=((~ab_xorl) && c) || (ab_xorl && (~c));
		borrow=((~a)&& b)||(b&& c)||((~a)&&c);
	end
endmodule