//--------------------------------------
// 4-to-2 Priority Encoder
//--------------------------------------
module priority_encoder_4to2 (
    input  [3:0] din,     // d3 is highest priority
    output reg [1:0] out,
    output reg valid
);

    always @(*) begin
        casez (din)
            4'b1???: begin out = 2'b11; valid = 1; end   // d3 highest
            4'b01??: begin out = 2'b10; valid = 1; end   // d2
            4'b001?: begin out = 2'b01; valid = 1; end   // d1
            4'b0001: begin out = 2'b00; valid = 1; end   // d0 lowest
            default: begin out = 2'b00; valid = 0; end   // none active
        endcase
    end
endmodule

//--------------------------------------
// 2-to-4 Decoder
//--------------------------------------
module decoder_2to4 (
    input  [1:0] sel,
    input        en,
    output reg [3:0] dout
);

    always @(*) begin
        if (!en)
            dout = 4'b0000;
        else begin
            case (sel)
                2'b00: dout = 4'b0001;
                2'b01: dout = 4'b0010;
                2'b10: dout = 4'b0100;
                2'b11: dout = 4'b1000;
            endcase
        end
    end
endmodule
