//--------------------------------------
// 2x1 Multiplexer
//--------------------------------------
module mux2x1 (
    input  wire a,
    input  wire b,
    input  wire sel,
    output wire y
);
    assign y = sel ? b : a;
endmodule

//--------------------------------------
// 4x1 Multiplexer
//--------------------------------------
module mux4x1 (
    input  wire i0,
    input  wire i1,
    input  wire i2,
    input  wire i3,
    input  wire [1:0] sel,
    output wire y
);
    assign y = (sel == 2'b00) ? i0 :
               (sel == 2'b01) ? i1 :
               (sel == 2'b10) ? i2 :
                                i3;
endmodule
