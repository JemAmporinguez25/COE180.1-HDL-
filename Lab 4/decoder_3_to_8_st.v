//JEMUEL AMPORINGUEZ COE180.1- : W56 
//LAB 4:  Design of Decoders
module decoder_3_to_8_st (A2, A1, A0, E, Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0);

    input A2, A1, A0, E;
    output Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0;

    wire not_A2, not_A1, not_A0;

    // Inverters
    not (not_A2, A2);
    not (not_A1, A1);
    not (not_A0, A0);

    // AND gates for each output
    and (Y0, not_A2, not_A1, not_A0, E);  // 000
    and (Y1, not_A2, not_A1, A0, E);      // 001
    and (Y2, not_A2, A1, not_A0, E);      // 010
    and (Y3, not_A2, A1, A0, E);          // 011
    and (Y4, A2, not_A1, not_A0, E);      // 100
    and (Y5, A2, not_A1, A0, E);          // 101
    and (Y6, A2, A1, not_A0, E);          // 110
    and (Y7, A2, A1, A0, E);              // 111

endmodule
