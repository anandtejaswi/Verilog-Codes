`timescale 1ns/1ps

module tb_d_jk_flipflops;

    // Clock
    reg clk;

    // D Flip-Flop signals
    reg D;
    wire Qd, Qbar_d;

    // JK Flip-Flop signals
    reg J, K;
    wire Qjk, Qbar_jk;

    // Instantiate D FF
    d_flipflop D1 (
        .D(D),
        .clk(clk),
        .Q(Qd),
        .Qbar(Qbar_d)
    );

    // Instantiate JK FF
    jk_flipflop JK1 (
        .J(J),
        .K(K),
        .clk(clk),
        .Q(Qjk),
        .Qbar(Qbar_jk)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $display("\n--- TESTING D FLIP-FLOP ---");
        D = 0; #10;
        D = 1; #10;
        D = 0; #10;
        D = 1; #10;

        $display("\n--- TESTING JK FLIP-FLOP ---");
        
        // J=0, K=0 -> No change
        J = 0; K = 0; #10;
        
        // J=1, K=0 -> Set
        J = 1; K = 0; #10;
        
        // J=0, K=1 -> Reset
        J = 0; K = 1; #10;
        
        // J=1, K=1 -> Toggle
        J = 1; K = 1; #10;
        #10;
        #10;

        $stop;
    end

endmodule
