`timescale 1ns / 1ps
module mux_8(
input [7:0] I,
input [2:0] S,
output Y
);

assign Y = I[S];
endmodule


   