
module multiplexer_4by1_bh(output  Y,input S0, S1,  I0,I1,I2,I3); // define module to test run
	reg Y;
	always @(S0,S1,I0,I1,I2,I3) begin
	if(S0==0 && S1==0)
		Y=I0;
	if(S0==0 && S1==1)
		Y=I1;
	if(S0==1 && S1==0)
		Y=I2;
	if(S0==1 && S1==1)
		Y=I3;
		
	end
endmodule
