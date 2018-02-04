`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ECE506
// Engineer: Ali Akoglu
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
/*module sort_TB();
    reg Clk;
    reg Go, Rst;
    reg[4:0] N;
    wire [7:0] Sorted_Data


    integer i;

    sort_top my_sort( Go, Rst, Clk, N, Sorted_Data);
    always begin
        Clk <=1;
        #5;
        Clk<=0;
        #5;
    end

    initial begin
        Rst <=1;
        Go<=0;
        N<=31;

        @(posedge Clk);
        #5;
        Rst <=0;
        Go <= 1;
        @(posedge Clk);
        #5;
        Go <=0;

        // you may need to replace 5000 with larger value to accomodate 
        // displaying the sorted data
        for (i=0; i<5000;i=i+1) begin
            @(posedge Clk);

          
        end
    end
endmodule*/
