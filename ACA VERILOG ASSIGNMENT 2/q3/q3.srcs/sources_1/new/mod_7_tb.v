`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 06:21:47 PM
// Design Name: 
// Module Name: mod_7_tb
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


module mod_7_tb();
 reg clk, reset;
    wire [2:0]f;
    
    mod_7 m1 (clk, reset, f);
    initial 
    begin
    
        clk = 0;
        forever #10 clk = ~clk;
        
    end
    
    initial
    begin
    
        reset = 1'b0;
        #30 reset = 1'b1;
        #40 reset = 1'b0;
        #10 reset = 1'b1;
        #5 reset = 1'b0;
        
    end
endmodule
