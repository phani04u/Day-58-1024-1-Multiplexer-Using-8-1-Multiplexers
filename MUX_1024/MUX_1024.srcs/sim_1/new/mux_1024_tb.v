`timescale 1ns / 1ps
module mux_1024_tb;
reg [1023:0]  I;
reg [9:0] S;
wire Y;
mux_1024 UUT(
.I(I),
.S(S),
.Y(Y)
);
integer i;
initial begin
I = 1024'b0;
I[123] = 1'b1;
for(i = 0; i < 1024; i = i + 1) begin      
      S = i;
       #10;
end
$finish;
end
endmodule


