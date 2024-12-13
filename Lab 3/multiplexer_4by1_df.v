
module multiplexer_4by1_df(output Y,input S0, S1,  I0,I1,I2,I3); // define module to test run
	assign Y=(~S0)&&(~S1) && I0 || (~S0) &&S1&& I1 ||S0 && (~S1) && I2 ||S0&&S1 &&I3;
endmodule


