`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 06:45:52 PM
// Design Name: 
// Module Name: moore_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module moore_tb();
reg clk, reset, x;
    wire z;
    
    moore sdme(clk, reset, x, z);
    
    initial
    begin
        clk = 1'b1;
        forever #5 clk = ~clk;
    end
    
    initial
    begin
        reset = 1'b1;
        #10 reset = 1'b0;
        x = 1'b0;
        #10 x = 1'b1; #10 x = 1'b0; #10 x = 1'b1; #10 x = 1'b1; #10 x = 1'b0;
        #10 x = 1'b1; #10 x = 1'b1; #10 x = 1'b0; #10 x = 1'b0; #10 x = 1'b1;
        #10 x = 1'b1; #10 x = 1'b0; #10 x = 1'b1; #10 x = 1'b1; #10 x = 1'b1;
        #10 x = 1'b0; #10 x = 1'b1; #10 x = 1'b1; #10 x = 1'b0; #10 x = 1'b1;
    end
endmodule
