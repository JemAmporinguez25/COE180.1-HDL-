`include "or_gate_df.v"
`include "not_gate_df.v"
`include "and_gate_df.v"


module xnor_gate_st ( input a ,b,output y) ;
	wire not_p ;
	wire not_q;
	wire andnotpq;
	wire andpnotq;
	not_gate_df notp1 (a,not_p);
	not_gate_df notq1 (b,not_q);
	and_gate_df andnotpq1 (not_p,not_q,andnotpq);
	and_gate_df andpnotq1 (a,b,andpnotq);
	or_gate_df or1 (andnotpq,andpnotq,y);
endmodule

