//--------------------------------------
// SR Latch (NOR-based, Level Sensitive)
//--------------------------------------
module sr_latch (
    input S,
    input R,
    output Q,
    output Qbar
);
    // NOR latch equations
    assign Q    = ~(R | Qbar);
    assign Qbar = ~(S | Q);
endmodule

//--------------------------------------
// Clocked SR Flip-Flop (Edge Triggered)
//--------------------------------------
module sr_flipflop (
    input S,
    input R,
    input clk,
    output reg Q,
    output Qbar
);

    assign Qbar = ~Q;

    always @(posedge clk) begin
        if (S == 1'b1 && R == 1'b0)
            Q <= 1'b1;    // Set
        else if (S == 1'b0 && R == 1'b1)
            Q <= 1'b0;    // Reset
        // S=R=0 -> No change
        // S=R=1 -> Invalid, Q holds previous value here
    end

endmodule
