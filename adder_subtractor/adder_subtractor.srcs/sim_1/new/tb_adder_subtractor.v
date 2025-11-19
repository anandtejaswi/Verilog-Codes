`timescale 1ns/1ps

module tb_adder_subtractor;

    // Half Adder
    reg  ha_a, ha_b;
    wire ha_sum, ha_carry;

    // Full Adder
    reg  fa_a, fa_b, fa_cin;
    wire fa_sum, fa_carry;

    // Half Subtractor
    reg  hs_a, hs_b;
    wire hs_diff, hs_borrow;

    // Full Subtractor
    reg  fs_a, fs_b, fs_bin;
    wire fs_diff, fs_bout;

    // Instantiate Half Adder
    half_adder HA (
        .a(ha_a), .b(ha_b),
        .sum(ha_sum), .carry(ha_carry)
    );

    // Instantiate Full Adder
    full_adder FA (
        .a(fa_a), .b(fa_b), .cin(fa_cin),
        .sum(fa_sum), .carry(fa_carry)
    );

    // Instantiate Half Subtractor
    half_subtractor HS (
        .a(hs_a), .b(hs_b),
        .diff(hs_diff), .borrow(hs_borrow)
    );

    // Instantiate Full Subtractor
    full_subtractor FS (
        .a(fs_a), .b(fs_b), .bin(fs_bin),
        .diff(fs_diff), .bout(fs_bout)
    );

    initial begin
        // ---------- Half Adder ----------
        $display("\n--- HALF ADDER ---");
        ha_a = 0; ha_b = 0; #10;
        ha_a = 0; ha_b = 1; #10;
        ha_a = 1; ha_b = 0; #10;
        ha_a = 1; ha_b = 1; #10;

        // ---------- Full Adder ----------
        $display("\n--- FULL ADDER ---");
        fa_a = 0; fa_b = 0; fa_cin = 0; #10;
        fa_a = 0; fa_b = 1; fa_cin = 1; #10;
        fa_a = 1; fa_b = 0; fa_cin = 1; #10;
        fa_a = 1; fa_b = 1; fa_cin = 0; #10;

        // ---------- Half Subtractor ----------
        $display("\n--- HALF SUBTRACTOR ---");
        hs_a = 0; hs_b = 0; #10;
        hs_a = 0; hs_b = 1; #10;
        hs_a = 1; hs_b = 0; #10;
        hs_a = 1; hs_b = 1; #10;

        // ---------- Full Subtractor ----------
        $display("\n--- FULL SUBTRACTOR ---");
        fs_a = 0; fs_b = 0; fs_bin = 0; #10;
        fs_a = 0; fs_b = 1; fs_bin = 1; #10;
        fs_a = 1; fs_b = 0; fs_bin = 1; #10;
        fs_a = 1; fs_b = 1; fs_bin = 0; #10;

        $stop;
    end

endmodule
