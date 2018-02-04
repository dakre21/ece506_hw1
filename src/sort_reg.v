`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: ECE506
// Engineer: David Akre
// 
// Module - sort_reg
// Description - Register module for the datapath
//
// INPUTS:-
// a: Value between 0 and 31
//
// OUTPUTS:-
// b: Value between 0 and 31 
//
// FUNCTIONALITY:-
// Sets register with value a
////////////////////////////////////////////////////////////////////////////////

module sort_reg(a, b, clk, clr, ld); 
    // Parameter describing the width of N = 31
    parameter DATAWIDTH = 32;

    // Input and output declarations for the reg module
    input [DATAWIDTH-1:0] a;
    input clk, clr, ld;
    output reg [DATAWIDTH-1:0] b;

    always @(posedge clk) begin
        if (clr == 1) begin
            b <= 0;
        end else if (ld == 1) begin
            b <= a;
        end
    end

endmodule
