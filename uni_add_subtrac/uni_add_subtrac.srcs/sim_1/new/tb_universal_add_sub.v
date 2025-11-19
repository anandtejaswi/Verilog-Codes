`timescale 1ns/1ps

module tb_universal_add_sub;

    reg  [3:0] A, B;
    reg        M;
    wire [3:0] Result;
    wire       Carry_Borrow;

    // Instantiate DUT
    universal_add_sub #(4) UUT (
        .A(A),
        .B(B),
        .M(M),
        .Result(Result),
        .Carry_Borrow(Carry_Borrow)
    );

    initial begin
        $display("\n---- UNIVERSAL ADDER-SUBTRACTOR TEST ----");

        // ADDITION TESTS (M = 0)
        M = 0;
        A = 4'b0101; B = 4'b0011; #10;   // 5 + 3
        A = 4'b1111; B = 4'b0001; #10;   // 15 + 1
        A = 4'b1001; B = 4'b0110; #10;   // 9 + 6

        // SUBTRACTION TESTS (M = 1)
        M = 1;
        A = 4'b0101; B = 4'b0011; #10;   // 5 - 3
        A = 4'b0110; B = 4'b1001; #10;   // 6 - 9 (borrow)
        A = 4'b1111; B = 4'b0001; #10;   // 15 - 1

        $stop;
    end

endmodule
