`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: ECE506
// Engineer: David Akre
// 
// Module - sort_mux
// Description - Multiplexer module that selects either one of two inputs
//
// INPUTS:-
// a: Value between 0 and 31
// b: Value between 0 and 31
// sel_add: Mux selector bit
//
// OUTPUTS:-
// address: address of the value selected
//
// FUNCTIONALITY:-
// Multiplexer that selects either a or b and returns address
////////////////////////////////////////////////////////////////////////////////

module sort_mux(a, b, sel_add, address); 

    // Parameter describing the width of N = 32
    parameter DATAWIDTH = 32;

    // Input and output declarations for the reg module
    input [DATAWIDTH-1:0] a, b;
    input sel_add;
    output reg [DATAWIDTH-1:0] address;

    always @(a, b, sel_add) begin
        if (sel_add == 1'b0) begin
            address <= a;
        end else begin
            address <= b;
        end
    end

endmodule
