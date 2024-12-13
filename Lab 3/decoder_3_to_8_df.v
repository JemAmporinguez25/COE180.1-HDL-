//JEMUEL AMPORINGUEZ COE180.1- : W56 
//LAB 4:  Design of Decoders
module decoder_3_to_8_df (A2, A1, A0, E, Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0);

    input A2, A1, A0, E;
    output Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0;

    assign Y0 = (~A2 & ~A1 & ~A0 & E);
    assign Y1 = (~A2 & ~A1 & A0 & E);
    assign Y2 = (~A2 & A1 & ~A0 & E);
    assign Y3 = (~A2 & A1 & A0 & E);
    assign Y4 = (A2 & ~A1 & ~A0 & E);
    assign Y5 = (A2 & ~A1 & A0 & E);
    assign Y6 = (A2 & A1 & ~A0 & E);
    assign Y7 = (A2 & A1 & A0 & E);

endmodule
