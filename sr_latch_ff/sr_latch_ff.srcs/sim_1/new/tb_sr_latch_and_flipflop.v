`timescale 1ns/1ps

module tb_sr_latch_and_flipflop;

    // SR Latch signals
    reg  S_l, R_l;
    wire Q_l, Qbar_l;

    // SR FF signals
    reg  S_ff, R_ff, clk;
    wire Q_ff, Qbar_ff;

    // Instantiate SR Latch
    sr_latch L1 (
        .S(S_l), .R(R_l),
        .Q(Q_l), .Qbar(Qbar_l)
    );

    // Instantiate SR Flip-Flop
    sr_flipflop F1 (
        .S(S_ff), .R(R_ff), .clk(clk),
        .Q(Q_ff), .Qbar(Qbar_ff)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $display("\n--- TESTING SR LATCH ---");
        S_l = 0; R_l = 0; #10;
        S_l = 1; R_l = 0; #10;   // Set
        S_l = 0; R_l = 0; #10;
        S_l = 0; R_l = 1; #10;   // Reset
        S_l = 0; R_l = 0; #10;

        $display("\n--- TESTING CLOCKED SR FLIP-FLOP ---");
        S_ff = 0; R_ff = 0; #10;
        S_ff = 1; R_ff = 0; #10;  // Set on next clock edge
        S_ff = 0; R_ff = 0; #20;
        S_ff = 0; R_ff = 1; #10;  // Reset on next clock edge
        S_ff = 0; R_ff = 0; #20;

        $stop;
    end

endmodule
