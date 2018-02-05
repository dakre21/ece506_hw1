`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ECE506
// Engineer: Ali Akoglu
// Student-Modified by: David Akre
// 
// Create Date:     
// Design Name: 
// Module Name:    sort_top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sort_top(t_go, t_rst, t_clk, t_n, t_sorted_data);

    parameter DATAWIDTH = 8;

    // Inputs and outputs to module datapath
    input t_go, t_rst, t_clk;
    input [DATAWIDTH-1:0] t_n;
    output [DATAWIDTH-1:0] t_sorted_data;

    // Internal wires and reg declarations
    wire [DATAWIDTH-1:0] t_address, t_wdata;
    wire t_read, t_write, t_c_clr, t_c_ld, t_d_ld, t_d_clr, t_sel_add, t_sel_data, t_t1_clr, 
        t_t1_ld, t_t2_clr, t_t2_ld, t_c_lt_n_1, t_t1_gt_t2, t_d_lt_n_c_1;
    
    // Instantiate the controller, datapath, and data memory modules here and connect 
    // the componenets
    sort_controller #(DATAWIDTH) controller(t_clk, t_rst, t_go, t_c_lt_n_1, t_d_lt_n_c_1, 
        t_t1_gt_t2, t_sel_add, t_sel_data, t_c_clr, t_c_ld, t_d_clr, t_d_ld, 
        t_t1_clr, t_t1_ld, t_t2_clr, t_t2_ld, t_read, t_write);
    sort_datapath #(DATAWIDTH) datapath(t_n, t_clk, t_c_clr, t_c_ld, t_d_clr, t_d_ld, 
        t_sel_add, t_sel_data, t_sorted_data, t_t1_clr, t_t1_ld, t_t2_clr, t_t2_ld, t_c_lt_n_1, 
        t_d_lt_n_c_1, t_t1_gt_t2, t_address, t_wdata);
    DataMemory #(DATAWIDTH) memory(t_address, t_wdata, t_clk, t_write, t_read, t_sorted_data); 


endmodule
