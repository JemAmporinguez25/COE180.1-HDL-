module full_adder_bh(sum, carry, a, b,c);
	output sum, carry;
	input a, b,c;
	reg sum, carry;
	reg xor_ab;
	always @(a,b,c) begin
		xor_ab =(((~a) & b) || (a & (~b)));
		sum=(((~xor_ab) & c) || (xor_ab &(~c)));
		carry=(a && b) || (c && ((((~a) && b) || (a && (~b)))));
	end
endmodule