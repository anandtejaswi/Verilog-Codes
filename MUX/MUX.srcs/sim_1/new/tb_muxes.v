`timescale 1ns/1ps

module tb_muxes;

    // Signals for 2x1 MUX
    reg a, b, sel1;
    wire y1;

    // Signals for 4x1 MUX
    reg i0, i1, i2, i3;
    reg [1:0] sel4;
    wire y4;

    // Instantiate 2x1 MUX
    mux2x1 M1 (
        .a(a),
        .b(b),
        .sel(sel1),
        .y(y1)
    );

    // Instantiate 4x1 MUX
    mux4x1 M2 (
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .sel(sel4),
        .y(y4)
    );

    initial begin
        $display("---- Testing 2x1 MUX ----");
        a = 0; b = 1;

        sel1 = 0; #10;
        sel1 = 1; #10;

        $display("---- Testing 4x1 MUX ----");
        i0 = 0; i1 = 1; i2 = 0; i3 = 1;

        sel4 = 2'b00; #10;
        sel4 = 2'b01; #10;
        sel4 = 2'b10; #10;
        sel4 = 2'b11; #10;

        $stop;
    end

endmodule
