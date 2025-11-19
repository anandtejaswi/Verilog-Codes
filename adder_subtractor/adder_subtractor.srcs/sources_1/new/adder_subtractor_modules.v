//--------------------------------------
// Half Adder
//--------------------------------------
module half_adder(
    input a, b,
    output sum, carry
);
    assign sum   = a ^ b;
    assign carry = a & b;
endmodule

//--------------------------------------
// Full Adder
//--------------------------------------
module full_adder(
    input a, b, cin,
    output sum, carry
);
    assign sum   = a ^ b ^ cin;
    assign carry = (a & b) | (b & cin) | (a & cin);
endmodule

//--------------------------------------
// Half Subtractor
//--------------------------------------
module half_subtractor(
    input a, b,
    output diff, borrow
);
    assign diff   = a ^ b;
    assign borrow = (~a) & b;
endmodule

//--------------------------------------
// Full Subtractor
//--------------------------------------
module full_subtractor(
    input a, b, bin,
    output diff, bout
);
    assign diff = a ^ b ^ bin;
    assign bout = (~a & b) | (~(a ^ b) & bin);
endmodule
