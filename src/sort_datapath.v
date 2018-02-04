`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: ECE506
// Engineer: David Akre
// 
// Module - sort_datapath
// Description - Module that creates the structure design for the datapath
//
// INPUTS:-
// 
//
// OUTPUTS:-
// 
//
// FUNCTIONALITY:-
// Module creates the datapath 
////////////////////////////////////////////////////////////////////////////////

module sort_datapath(d_n, dp_clk, c_clr, c_ld, d_clr, d_ld, sel_add, sel_data, rdata, 
    t1_clr, t1_ld, t2_clr, t2_ld, c_lt_n_1, d_lt_n_c_1, t1_gt_t2, address, wdata); 

    // Parameter describing the width of N = 32
    parameter DATAWIDTH = 32;
    
    // Inputs and outputs to module datapath
    input [DATAWIDTH-1:0] d_n, rdata;
    input dp_clk, c_clr, c_ld, d_clr, d_ld, sel_add, sel_data,
        t1_clr, t1_ld, t2_clr, t2_ld;
    output [DATAWIDTH-1:0] address, wdata;
    output c_lt_n_1, d_lt_n_c_1, t1_gt_t2;
    
    // Internal wires
    wire [DATAWIDTH-1:0] c_dec, c_inc_out, c_inc_in, c_sub_out,
        d_inc_out, d_inc_in, t1_out, t2_out;
    
    /* Create structural design for datapath */

    // Create datapath for first for loop
    sort_reg #(DATAWIDTH) c_reg_m(c_inc_out, c_inc_in, dp_clk, c_clr, c_ld);
    sort_dec #(DATAWIDTH) c_dec_m(d_n, c_dec);
    sort_inc #(DATAWIDTH) c_inc_m(c_inc_in, c_inc_out);
    sort_lt #(DATAWIDTH) c_lt_m(c_inc_in, c_dec, c_lt_n_1);
    sort_sub #(DATAWIDTH) c_sub_m(c_dec, c_inc_in, c_sub_out);
   
    // Create datapath for second for loop
    sort_reg #(DATAWIDTH) d_reg_m(d_inc_out, d_inc_in, dp_clk, d_clr, d_ld);
    sort_inc #(DATAWIDTH) d_inc_m(d_inc_in, d_inc_out);
    sort_lt #(DATAWIDTH) d_lt_m(d_inc_in, c_sub_out, d_lt_n_c_1);
    sort_mux #(DATAWIDTH) d_mux_m(d_inc_in, d_inc_out, sel_add, address);
    
    // Create datapath for temp regs
    sort_reg #(DATAWIDTH) t1_reg_m(rdata, t1_out, dp_clk, t1_clr, t1_ld);
    sort_reg #(DATAWIDTH) t2_reg_m(rdata, t2_out, dp_clk, t2_clr, t2_ld);
    sort_gt #(DATAWIDTH) t12_gt_m(t1_out, t2_out, t1_gt_t2);
    sort_mux #(DATAWIDTH) t12_mux_m(t1_out, t2_out, sel_data, wdata);

endmodule
