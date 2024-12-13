//JEMUEL AMPORINGUEZ COE180.1- : W56 
//LAB 4:  Design of Decoders
module decoder_3_to_8_bh(A2, A1, A0, E, Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0);
    input A2, A1, A0, E;
    output reg Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0;

    always @(*) begin
        // Default all outputs to 0
        {Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0} = 8'b00000000;
        
        if (E) begin
            case ({A2, A1, A0}) // Select based on concatenation of A2, A1, A0
                3'b000: Y0 = 1;
                3'b001: Y1 = 1;
                3'b010: Y2 = 1;
                3'b011: Y3 = 1;
                3'b100: Y4 = 1;
                3'b101: Y5 = 1;
                3'b110: Y6 = 1;
                3'b111: Y7 = 1;
            endcase
        end
    end
endmodule
