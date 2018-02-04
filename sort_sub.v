`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: ECE506
// Engineer: David Akre
// 
// Module - sort_sub
// Description - Subtractor module that subtracts a from b and returns c
//
// INPUTS:-
// a: Value generated from dec module
// b: Value generated from C_reg
//
// OUTPUTS:-
// c: Value of a - b - 1
//
// FUNCTIONALITY:-
// Subtracts N - 1 
////////////////////////////////////////////////////////////////////////////////

module sort_sub(a, b, c); 

    // Parameter describing the width of N = 32
    parameter DATAWIDTH = 32;

    // Input and output declarations for the reg module
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] c;

    always @(a, b) begin
        c <= a - b - 1;
    end

endmodule


