// -------------------------------------------
// Basic Logic Gate Implementations in Verilog
// -------------------------------------------

// NOT Gate
module NOT_gate(
    input A,
    output Y
);
assign Y = ~A;
endmodule

// AND Gate
module AND_gate(
    input A, B,
    output Y
);
assign Y = A & B;
endmodule

// OR Gate
module OR_gate(
    input A, B,
    output Y
);
assign Y = A | B;
endmodule

// NAND Gate
module NAND_gate(
    input A, B,
    output Y
);
assign Y = ~(A & B);
endmodule

// NOR Gate
module NOR_gate(
    input A, B,
    output Y
);
assign Y = ~(A | B);
endmodule

// XOR Gate
module XOR_gate(
    input A, B,
    output Y
);
assign Y = A ^ B;
endmodule

// XNOR Gate
module XNOR_gate(
    input A, B,
    output Y
);
assign Y = ~(A ^ B);
endmodule
