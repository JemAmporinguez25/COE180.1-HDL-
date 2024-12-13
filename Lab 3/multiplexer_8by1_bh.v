
module multiplexer_8by1_bh(output Y,input S0, S1,S2,I0,I1,I2,I3,I4,I5,I6,I7); // define module to test run
	reg Y;
	always @(S0,S1,S2,I0,I1,I2,I3,I4,I5,I6,I7) begin
		if(S0==0 && S1==0 && S2==0)
			Y=I0;
		if(S0==0 && S1==0 && S2==1)
			Y=I1;
		if(S0==0 && S1==1 && S2==0)
			Y=I2;
		if(S0==0 && S1==1 && S2==1)
			Y=I3;
		if(S0==1 && S1==0 && S2==0)
			Y=I4;
		if(S0==1 && S1==0 && S2==1)
			Y=I5;
		if(S0==1 && S1==1 && S2==0)
			Y=I6;
		if(S0==1&& S1==1 && S2==1)
			Y=I7;
	end
endmodule
