//--------------------------------------
// D Flip-Flop (Edge Triggered)
//--------------------------------------
module d_flipflop (
    input D,
    input clk,
    output reg Q,
    output Qbar
);

    assign Qbar = ~Q;

    always @(posedge clk) begin
        Q <= D;
    end

endmodule

//--------------------------------------
// JK Flip-Flop (Edge Triggered)
//--------------------------------------
module jk_flipflop (
    input J,
    input K,
    input clk,
    output reg Q,
    output Qbar
);

    assign Qbar = ~Q;

    always @(posedge clk) begin
        case ({J, K})
            2'b00: Q <= Q;        // No change
            2'b01: Q <= 1'b0;     // Reset
            2'b10: Q <= 1'b1;     // Set
            2'b11: Q <= ~Q;       // Toggle
        endcase
    end

endmodule
