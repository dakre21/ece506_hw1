`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ECE506
// Engineer: Ali Akoglu
// Student/Modified-by: David Akre
// 
// Create Date:     
// Design Name: 
// Module Name:    sort_TB 
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
module sort_TB();
    reg clk, go, rst, flag;
    reg [8:0] n;
    wire [8:0] sorted_data;
    integer i;
    
    parameter DATAWIDTH = 8;
    parameter DATACOUNT = 33;
    parameter TIMECOUNT = 50000;

    sort_top #(DATAWIDTH) my_sort(go, rst, clk, n, sorted_data);
    
    // Start clock
    always begin
        #5 clk <= ~clk;
    end

    // Run simulation code once
    initial begin
        rst <= 1;
        go <= 0;
        clk <= 0;
        n <= DATACOUNT;
        flag <= 0;

        @(posedge clk);
        rst <= 0;
        #10 go <= 1;
        @(posedge clk);
        #10 go <= 0;

        // Delay for 10000 clock cycles to get the sorted data
        for (i = 0; i < TIMECOUNT; i = i + 1) begin
            @(posedge clk);
            $display("Clock cycle %d", i);
        end
           
    end
endmodule
