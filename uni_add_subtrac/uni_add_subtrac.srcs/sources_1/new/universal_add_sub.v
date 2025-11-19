//---------------------------------------------
// Universal Adder-Subtractor (4-bit default)
//---------------------------------------------
module universal_add_sub #(parameter N = 4)(
    input  [N-1:0] A,
    input  [N-1:0] B,
    input          M,        // Mode: 0 = Add, 1 = Subtract
    output [N-1:0] Result,
    output         Carry_Borrow
);

    wire [N-1:0] B_mod;
    wire         cin;

    // For subtraction: B' = ~B and cin = 1
    assign B_mod = (M) ? ~B : B;
    assign cin   = (M) ? 1'b1 : 1'b0;

    // N-bit Addition
    assign {Carry_Borrow, Result} = A + B_mod + cin;

endmodule
