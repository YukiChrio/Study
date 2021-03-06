`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:54:48 10/26/2018 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [31:0] A,
    input [31:0] B,
    input [2:0] ALUOp,
    output reg [31:0] C
    );
	always@(*) begin
	if(ALUOp==3'b000)
		C = A + B;
	else if(ALUOp==3'b001)
		C = A - B;
	else if(ALUOp==3'b010)
		C = A & B;
	else if(ALUOp==3'b011)
		C = A | B;
	else if(ALUOp==3'b100)
		C = A >> B;
	else if(ALUOp==3'b101)
		C = $signed(A) >>> $signed(B);
	end

endmodule
