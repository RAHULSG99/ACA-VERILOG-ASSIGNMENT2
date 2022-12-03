`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 05:21:35 PM
// Design Name: 
// Module Name: jk_tb
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


module jk_tb();
 reg j, k, clk, reset;
    wire q, qb;
    
    jk jkff(j, k, reset, clk, q, qb);
    
    initial 
    begin   
    
        clk = 1'b0;
        forever #10 clk = ~clk;
        
    end
    
    initial 
    begin
    
        j = 1'b1; k = 1'b0; reset = 1'b1;
        #10 reset = 1'b0;
        #10 j = 1'b0; k = 1'b0;
        #10 j = 1'b0; k = 1'b1;
        #10 j = 1'b1; k = 1'b1; 
        
    end    
endmodule
