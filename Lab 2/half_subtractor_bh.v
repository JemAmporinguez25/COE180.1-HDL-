module half_subtractor_bh(difference, borrow, a, b);
	output difference,borrow;
	input a,b;
	reg difference,borrow;
	always @(a,b) begin
		difference=((~a) && b) || (a && (~b));
		borrow=(~a)&& b;
	end
endmodule