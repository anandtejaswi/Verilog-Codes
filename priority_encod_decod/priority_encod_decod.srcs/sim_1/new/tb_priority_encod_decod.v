`timescale 1ns/1ps

module tb_priority_encod_decod;

    // Encoder signals
    reg  [3:0] din;
    wire [1:0] enc_out;
    wire valid;

    // Decoder signals
    reg  [1:0] sel;
    reg        en;
    wire [3:0] dec_out;

    // Instantiate encoder
    priority_encoder_4to2 ENC (
        .din(din),
        .out(enc_out),
        .valid(valid)
    );

    // Instantiate decoder
    decoder_2to4 DEC (
        .sel(sel),
        .en(en),
        .dout(dec_out)
    );

    initial begin
        $display("\n--- Testing Priority Encoder ---");

        din = 4'b0001; #10;
        din = 4'b0010; #10;
        din = 4'b0100; #10;
        din = 4'b1000; #10;
        din = 4'b0000; #10;

        $display("\n--- Testing Decoder ---");

        en = 1;
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;

        en = 0; #10;

        $stop;
    end

endmodule
