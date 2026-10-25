`timescale 1ns / 1ps
module mux_1024(
input [1023:0] I,
input [9:0] S,
output Y
);
wire  [127:0] W1;wire [15:0] W2;wire [1:0] W3;
genvar i;
generate 
    for(i = 0; i< 128 ; i = i + 1) begin : STAGE1   // stage 1024 -> 128
     mux_8 M1(
       .I(I[i*8 +: 8]) ,
       .S(S[2:0]),
        .Y(W1[i]));
     end
    for(i = 0; i < 16; i = i + 1) begin : STAGE2    // stage 128 - > 16
           mux_8 M2(
              .I(W1[i*8 +: 8]),
              .S(S[5:3]),
             .Y(W2[i]));
      end
      for(i = 0 ; i < 2; i = i + 1) begin   // stage 16 -> 2
          mux_8 M3(
            .I(W2[i*8 +: 8]),
            .S(S[8:6]),
            .Y(W3[i])
            );
            end
        mux2 M4(
          .I(W3),
          .S(S[9]),
           .Y(Y)
         );
endgenerate
endmodule



