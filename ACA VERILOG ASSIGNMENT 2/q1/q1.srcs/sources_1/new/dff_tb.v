`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 04:53:01 PM
// Design Name: 
// Module Name: dff_tb
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


module dff_tb();
 reg d, clk, reset;
    wire q, qb;
    
    d_ff dff1(d, clk, reset, q, qb);
    initial
    begin
    
        clk = 0;
        forever #10 clk = ~clk;
        
    end
    
    initial 
    begin
    
        reset = 1'b0; d = 1'b1; 
        #10 reset = 1'b1;  
        #50 reset = 1'b0; 
        #10 d = 1'b0;
        #10 d = 1'b1; 
        
    end
endmodule
