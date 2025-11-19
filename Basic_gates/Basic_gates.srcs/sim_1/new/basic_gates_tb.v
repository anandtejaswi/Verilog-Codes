`timescale 1ns / 1ps

module basic_gates_tb;

reg A, B;
wire Y_not, Y_and, Y_or, Y_nand, Y_nor, Y_xor, Y_xnor;

// Instantiate all gates
NOT_gate   u1 (.A(A),   .Y(Y_not));
AND_gate   u2 (.A(A),   .B(B), .Y(Y_and));
OR_gate    u3 (.A(A),   .B(B), .Y(Y_or));
NAND_gate  u4 (.A(A),   .B(B), .Y(Y_nand));
NOR_gate   u5 (.A(A),   .B(B), .Y(Y_nor));
XOR_gate   u6 (.A(A),   .B(B), .Y(Y_xor));
XNOR_gate  u7 (.A(A),   .B(B), .Y(Y_xnor));

initial begin
    $display("Time A B | NOT AND OR NAND NOR XOR XNOR");
    $monitor("%4d  %b %b |  %b   %b   %b    %b    %b    %b     %b",
             $time, A, B, Y_not, Y_and, Y_or, Y_nand, Y_nor, Y_xor, Y_xnor);

    // Apply inputs
    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $stop;
end

endmodule
