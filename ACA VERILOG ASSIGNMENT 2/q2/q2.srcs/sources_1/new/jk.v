`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 05:17:58 PM
// Design Name: 
// Module Name: jk
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


module jk(input j, k, reset, clk,
    output reg q, reg qb);
    always @ (posedge clk or reset)
    begin
    
        if (!reset)
        begin
        case({j, k})
            2'b00: q = q;
            2'b01: q = 1'b0;
            2'b10: q = 1'b1;
            2'b11: q = ~q;
        endcase
        end
        else
           q = 1'b0;
        qb = !q;
        
    end
endmodule
