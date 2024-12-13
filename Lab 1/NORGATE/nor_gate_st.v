`include "or_gate_df.v"
`include "not_gate_df.v"


module nor_gate_st ( input a ,b,output y) ;
	wire and_out ;
	or_gate_df and1 (a,b,and_out);
	not_gate_df not1 (and_gate_st,y);
endmodule