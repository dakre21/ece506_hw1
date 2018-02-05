`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: ECE506
// Engineer: David Akre
// 
// Module - sort_controller
// Description - Module that creates the structure design for the controller
// 
//
// FUNCTIONALITY:-
// Module creates the controller 
////////////////////////////////////////////////////////////////////////////////

module sort_controller(c_n, c_clk, rst, go, c_lt_n_1, d_lt_n_c_1, t1_gt_t2, sel_add, 
    sel_data, c_clr, c_ld, d_clr, d_ld, t1_clr, t1_ld, t2_clr, t2_ld, ren, wen);

    // Parameter describing the width of N = 32
    parameter DATAWIDTH = 32;
    parameter [4:0] s_wait = 0, s_init_c = 1, s_check_c = 2, s_init_d = 3, s_check_d = 4,
        s_read_t1 = 5, s_read_t2 = 6, s_check_t1t2 = 7, s_write_t1 = 8, s_write_t2 = 9, 
        s_inc_d = 10, s_inc_c = 11; 
    
    // Inputs and outputs to module datapath
    input [DATAWIDTH-1:0] c_n;
    input go, c_clk, rst, c_lt_n_1, d_lt_n_c_1, t1_gt_t2;
    output reg c_clr, c_ld, d_clr, d_ld, t1_clr, t1_ld, t2_clr, t2_ld, sel_add, sel_data,
        ren, wen;
    
    // Internal controller regs and input/outputs
    reg [4:0] state, nstate;
    
    // Define the combinational logic that will control configuration of datapath
    // aznd determine the next state
    always @(state, go, c_lt_n_1, d_lt_n_c_1, t1_gt_t2) begin 
        case (state)
            s_wait: begin
                if (go == 0) begin
                    nstate <= s_wait;
                end else begin
                    nstate <= s_init_c;
                end
            end
            s_init_c: begin
                c_clr <= 1;
                c_ld <= 0;
                sel_add <= 0;
                sel_data <= 0;
                nstate <= s_check_c;
            end
            s_check_c: begin
                c_clr <= 0;
                c_ld <= 0;
                if (c_lt_n_1 == 0) begin
                    nstate <= s_wait;
                end else begin
                    nstate <= s_init_d;
                end
            end
            s_init_d: begin
                d_clr <= 1;
                d_ld <= 0;
                nstate <= s_check_d;
            end
            s_check_d: begin
                d_clr <= 0;
                d_ld <= 0;
                t1_clr <= 1;
                t1_ld <= 0;
                t2_clr <= 1;
                t2_ld <= 0;
                ren <= 0;
                wen <= 0;
                if (d_lt_n_c_1 == 0) begin
                    nstate <= s_inc_c;
                end else begin
                    nstate <= s_read_t1;
                end
            end
            s_read_t1: begin
                t1_ld <= 1;
                ren <= 1;
                t1_clr <= 0;
                t2_clr <= 0;
                sel_add <= 0;
                nstate <= s_read_t2;
            end
            s_read_t2: begin
                t2_ld <= 1;
                t1_ld <= 0;
                sel_add <= 1;
                nstate <= s_check_t1t2;
            end
            s_check_t1t2: begin
                ren <= 0;
                t2_ld <= 0;
                if (t1_gt_t2 == 1) begin
                    nstate <= s_write_t1;
                end else begin
                    nstate <= s_inc_d;
                end
            end
            s_write_t1: begin
                wen <= 1;
                sel_data <= 0;
                sel_add <= 1;
                nstate <= s_write_t2;
            end
            s_write_t2: begin
                sel_data <= 1;
                sel_add <= 0;
                nstate <= s_inc_d;
            end
            s_inc_d: begin
                t2_ld <= 0;
                wen <= 0;
                d_ld <= 1;
                nstate <= s_check_d;
            end
            s_inc_c: begin
                t1_clr <= 0;
                t2_clr <= 0;
                c_ld <= 1;
                nstate <= s_check_c;
            end
        endcase
    end
    
    // Define the state transition in each clock cycle based on the state determined above
    always @(posedge c_clk) begin
        if (rst == 1) begin
            state <= s_wait;
        end else begin
            state <= nstate;
        end
    end
    

endmodule