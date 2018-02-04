`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: ECE506
// Engineer: David Akre
// 
// Module - sort_dec
// Description - Subtractor module that subtracts one to N
//
// INPUTS:-
// a: Value between 0 and 31
//
// OUTPUTS:-
// b: Value of a - 1
//
// FUNCTIONALITY:-
// Subtracts a - 1 
////////////////////////////////////////////////////////////////////////////////

module sort_dec(a, b); 

    // Parameter describing the width of N = 32
    parameter DATAWIDTH = 32;

    // Input and output declarations for the reg module
    input [DATAWIDTH-1:0] a;
    output reg [DATAWIDTH-1:0] b;

    always @(a) begin
        b <= a - 1;
    end

endmodule
