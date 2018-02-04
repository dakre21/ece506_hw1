`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: ECE506
// Engineer: David Akre
// 
// Module - sort_gt
// Description - Comparator module that checks if a is greater than b
//
// INPUTS:-
// a: Value between 0 and 31
// b: Value between 0 and 31
//
// OUTPUTS:-
// c: Output 1 or 0 depending on result
//
// FUNCTIONALITY:-
// Comparator that does a > b
////////////////////////////////////////////////////////////////////////////////

module sort_gt(a, b, c); 

    // Parameter describing the width of N = 32
    parameter DATAWIDTH = 32;

    // Input and output declarations for the reg module
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] c;

    always @(a, b) begin
        if (a > b) begin
            c <= 1;
        end else begin
            c <= 0;
        end
    end

endmodule
