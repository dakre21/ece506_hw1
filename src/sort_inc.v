`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: ECE506
// Engineer: David Akre
// 
// Module - sort_inc
// Description - Adder module that adds one to either c_reg or d_reg
//
// INPUTS:-
// a: Value between 0 and 31
//
// OUTPUTS:-
// b: Value of a + 1
//
// FUNCTIONALITY:-
// Adder that does  a + 1 
////////////////////////////////////////////////////////////////////////////////

module sort_inc(a, b); 

    // Parameter describing the width of N = 32
    parameter DATAWIDTH = 32;

    // Input and output declarations for the reg module
    input [DATAWIDTH-1:0] a;
    output reg [DATAWIDTH-1:0] b;

    always @(a) begin
        b <= a + 1;
    end

endmodule
