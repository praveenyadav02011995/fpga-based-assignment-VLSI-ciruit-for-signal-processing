

module dft_32_point#(parameter N = 8)
 (
input [N-1:0] x0_real, // Input real part
input [N-1:0] x0_imag, // Input imaginary part
input [N-1:0] x1_real, 
input [N-1:0] x1_imag, 
input [N-1:0] x2_real, 
input [N-1:0] x2_imag, 
input [N-1:0] x3_real, 
input [N-1:0] x3_imag, 
input [N-1:0] x4_real, 
input [N-1:0] x4_imag, 
input [N-1:0] x5_real, 
input [N-1:0] x5_imag, 
input [N-1:0] x6_real, 
input [N-1:0] x6_imag, 
input [N-1:0] x7_real, 
input [N-1:0] x7_imag, 
input [N-1:0] x8_real, 
input [N-1:0] x8_imag, 
input [N-1:0] x9_real, 
input [N-1:0] x9_imag, 
input [N-1:0] x10_real, 
input [N-1:0] x10_imag, 
input [N-1:0] x11_real, 
input [N-1:0] x11_imag, 
input [N-1:0] x12_real, 
input [N-1:0] x12_imag, 
input [N-1:0] x13_real, 
input [N-1:0] x13_imag, 
input [N-1:0] x14_real, 
input [N-1:0] x14_imag, 
input [N-1:0] x15_real, 
input [N-1:0] x15_imag, 
input [N-1:0] x16_real, 
input [N-1:0] x16_imag, 
input [N-1:0] x17_real, 
input [N-1:0] x17_imag, 
input [N-1:0] x18_real, 
input [N-1:0] x18_imag, 
input [N-1:0] x19_real, 
input [N-1:0] x19_imag, 
input [N-1:0] x20_real, 
input [N-1:0] x20_imag, 
input [N-1:0] x21_real, 
input [N-1:0] x21_imag, 
input [N-1:0] x22_real, 
input [N-1:0] x22_imag, 
input [N-1:0] x23_real, 
input [N-1:0] x23_imag, 
input [N-1:0] x24_real, 
input [N-1:0] x24_imag, 
input [N-1:0] x25_real, 
input [N-1:0] x25_imag, 
input [N-1:0] x26_real, 
input [N-1:0] x26_imag, 
input [N-1:0] x27_real, 
input [N-1:0] x27_imag, 
input [N-1:0] x28_real, 
input [N-1:0] x28_imag, 
input [N-1:0] x29_real, 
input [N-1:0] x29_imag, 
input [N-1:0] x30_real, 
input [N-1:0] x30_imag, 
input [N-1:0] x31_real, 
input [N-1:0] x31_imag, 
output [N-1:0] X0_real, 
output [N-1:0] X0_imag, 
output [N-1:0] X1_real, 
output [N-1:0] X1_imag, 
output [N-1:0] X2_real, 
output [N-1:0] X2_imag, 
output [N-1:0] X3_real, 
output [N-1:0] X3_imag,
output [N-1:0] X4_real, 
output [N-1:0] X4_imag, 
output [N-1:0] X5_real, 
output [N-1:0] X5_imag, 
output [N-1:0] X6_real, 
output [N-1:0] X6_imag, 
output [N-1:0] X7_real, 
output [N-1:0] X7_imag,  
output [N-1:0] X8_real, 
output [N-1:0] X8_imag, 
output [N-1:0] X9_real, 
output [N-1:0] X9_imag, 
output [N-1:0] X10_real, 
output [N-1:0] X10_imag, 
output [N-1:0] X11_real, 
output [N-1:0] X11_imag,
output [N-1:0] X12_real, 
output [N-1:0] X12_imag, 
output [N-1:0] X13_real, 
output [N-1:0] X13_imag, 
output [N-1:0] X14_real, 
output [N-1:0] X14_imag,
output [N-1:0] X15_real,
output [N-1:0] X15_imag,
output [N-1:0] X16_real, 
output [N-1:0] X16_imag, 
output [N-1:0] X17_real, 
output [N-1:0] X17_imag, 
output [N-1:0] X18_real, 
output [N-1:0] X18_imag, 
output [N-1:0] X19_real, 
output [N-1:0] X19_imag,
output [N-1:0] X20_real, 
output [N-1:0] X20_imag, 
output [N-1:0] X21_real, 
output [N-1:0] X21_imag, 
output [N-1:0] X22_real, 
output [N-1:0] X22_imag, 
output [N-1:0] X23_real, 
output [N-1:0] X23_imag,  
output [N-1:0] X24_real, 
output [N-1:0] X24_imag, 
output [N-1:0] X25_real, 
output [N-1:0] X25_imag, 
output [N-1:0] X26_real, 
output [N-1:0] X26_imag, 
output [N-1:0] X27_real, 
output [N-1:0] X27_imag,
output [N-1:0] X28_real, 
output [N-1:0] X28_imag, 
output [N-1:0] X29_real, 
output [N-1:0] X29_imag, 
output [N-1:0] X30_real, 
output [N-1:0] X30_imag,
output [N-1:0] X31_real, 
output [N-1:0] X31_imag   
    );
    
    
 wire [N:0] y0_real;
 wire [N:0] y0_imag;
 wire [N:0] y1_real;
 wire [N:0] y1_imag;
 wire [N:0] y2_real;
 wire [N:0] y2_imag;
 wire [N:0] y3_real;
 wire [N:0] y3_imag; 
 wire [N:0] y4_real;
 wire [N:0] y4_imag;
 wire [N:0] y5_real;
 wire [N:0] y5_imag;
 wire [N:0] y6_real;
 wire [N:0] y6_imag;
 wire [N:0] y7_real;
 wire [N:0] y7_imag;
 wire [N:0] y8_real;
 wire [N:0] y8_imag; 
 wire [N:0] y9_real;
 wire [N:0] y9_imag;
 wire [N:0] y10_real;
 wire [N:0] y10_imag; 
 wire [N:0] y11_real;
 wire [N:0] y11_imag;
 wire [N:0] y12_real;
 wire [N:0] y12_imag;
 wire [N:0] y13_real;
 wire [N:0] y13_imag; 
 wire [N:0] y14_real;
 wire [N:0] y14_imag;
 wire [N:0] y15_real;
 wire [N:0] y15_imag;
 wire [N:0] y16_real;
 wire [N:0] y16_imag;
 wire [N:0] y17_real;
 wire [N:0] y17_imag;
 wire [N:0] y18_real;
 wire [N:0] y18_imag; 
 wire [N:0] y19_real;
 wire [N:0] y19_imag;
 wire [N:0] y20_real;
 wire [N:0] y20_imag;
 wire [N:0] y21_real;
 wire [N:0] y21_imag;
 wire [N:0] y22_real;
 wire [N:0] y22_imag; 
 wire [N:0] y23_real;
 wire [N:0] y23_imag; 
 wire [N:0] y24_real;
 wire [N:0] y24_imag;
 wire [N:0] y25_real;
 wire [N:0] y25_imag;
 wire [N:0] y26_real;
 wire [N:0] y26_imag;
 wire [N:0] y27_real;
 wire [N:0] y27_imag;
 wire [N:0] y28_real;
 wire [N:0] y28_imag; 
 wire [N:0] y29_real;
 wire [N:0] y29_imag;
 wire [N:0] y30_real;
 wire [N:0] y30_imag;
 wire [N:0] y31_real;
 wire [N:0] y31_imag;

 wire [N:0] w17_real;
 wire [N:0] w17_imag;
 wire [N:0] w18_real;
 wire [N:0] w18_imag; 
 wire [N:0] w19_real;
 wire [N:0] w19_imag;
 wire [N:0] w20_real;
 wire [N:0] w20_imag;
 wire [N:0] w21_real;
 wire [N:0] w21_imag;
 wire [N:0] w22_real;
 wire [N:0] w22_imag; 
 wire [N:0] w23_real;
 wire [N:0] w23_imag; 
 wire [N:0] w24_real;
 wire [N:0] w24_imag;
 wire [N:0] w25_real;
 wire [N:0] w25_imag;
 wire [N:0] w26_real;
 wire [N:0] w26_imag;
 wire [N:0] w27_real;
 wire [N:0] w27_imag;
 wire [N:0] w28_real;
 wire [N:0] w28_imag; 
 wire [N:0] w29_real;
 wire [N:0] w29_imag;
 wire [N:0] w30_real;
 wire [N:0] w30_imag;
 wire [N:0] w31_real;
 wire [N:0] w31_imag;
 
 
 
 dft_16_point
 #(.N(N)) DUT1(
 
 .x0_real(x0_real), 
.x0_imag(x0_imag),
.x1_real(x2_real), 
.x1_imag(x2_imag), 
.x2_real(x4_real), 
.x2_imag(x4_imag),
.x3_real(x6_real), 
.x3_imag(x6_imag), 
.x4_real(x8_real), 
.x4_imag(x8_imag),
.x5_real(x10_real), 
.x5_imag(x10_imag), 
.x6_real(x12_real), 
.x6_imag(x12_imag),
.x7_real(x14_real), 
.x7_imag(x14_imag), 
.x8_real(x16_real), 
.x8_imag(x16_imag),
.x9_real(x18_real), 
.x9_imag(x18_imag), 
.x10_real(x20_real), 
.x10_imag(x20_imag),
.x11_real(x22_real), 
.x11_imag(x22_imag), 
.x12_real(x24_real), 
.x12_imag(x24_imag),
.x13_real(x26_real), 
.x13_imag(x26_imag), 
.x14_real(x28_real), 
.x14_imag(x28_imag),
.x15_real(x30_real), 
.x15_imag(x30_imag), 

.X0_real(y0_real), 
.X0_imag(y0_imag), 
.X1_real(y1_real), 
.X1_imag(y1_imag),
.X2_real(y2_real), 
.X2_imag(y2_imag), 
.X3_real(y3_real), 
.X3_imag(y3_imag),
.X4_real(y4_real), 
.X4_imag(y4_imag),
.X5_real(y5_real), 
.X5_imag(y5_imag), 
.X6_real(y6_real), 
.X6_imag(y6_imag),
.X7_real(y7_real), 
.X7_imag(y7_imag),
.X8_real(y8_real), 
.X8_imag(y8_imag), 
.X9_real(y9_real), 
.X9_imag(y9_imag),
.X10_real(y10_real), 
.X10_imag(y10_imag), 
.X11_real(y11_real), 
.X11_imag(y11_imag),
.X12_real(y12_real), 
.X12_imag(y12_imag),
.X13_real(y13_real), 
.X13_imag(y13_imag), 
.X14_real(y14_real), 
.X14_imag(y14_imag),
.X15_real(y15_real), 
.X15_imag(y15_imag)   
      );
 
     dft_16_point
 #(.N(N)) DUT2(
 
.x0_real(x1_real), 
.x0_imag(x1_imag),
.x1_real(x3_real), 
.x1_imag(x3_imag), 
.x2_real(x5_real), 
.x2_imag(x5_imag),
.x3_real(x7_real), 
.x3_imag(x7_imag), 
.x4_real(x9_real), 
.x4_imag(x9_imag),
.x5_real(x11_real), 
.x5_imag(x11_imag), 
.x6_real(x13_real), 
.x6_imag(x13_imag),
.x7_real(x15_real), 
.x7_imag(x15_imag), 
.x8_real(x17_real), 
.x8_imag(x17_imag),
.x9_real(x19_real), 
.x9_imag(x19_imag), 
.x10_real(x21_real), 
.x10_imag(x21_imag),
.x11_real(x23_real), 
.x11_imag(x23_imag), 
.x12_real(x25_real), 
.x12_imag(x25_imag),
.x13_real(x27_real), 
.x13_imag(x27_imag), 
.x14_real(x29_real), 
.x14_imag(x29_imag),
.x15_real(x31_real), 
.x15_imag(x31_imag), 
.X0_real(y16_real), 
.X0_imag(y16_imag), 
.X1_real(y17_real), 
.X1_imag(y17_imag),
.X2_real(y18_real), 
.X2_imag(y18_imag), 
.X3_real(y19_real), 
.X3_imag(y19_imag),
.X4_real(y20_real), 
.X4_imag(y20_imag),
.X5_real(y21_real), 
.X5_imag(y21_imag), 
.X6_real(y22_real), 
.X6_imag(y22_imag),
.X7_real(y23_real), 
.X7_imag(y23_imag),
.X8_real(y24_real), 
.X8_imag(y24_imag), 
.X9_real(y25_real), 
.X9_imag(y25_imag),
.X10_real(y26_real), 
.X10_imag(y26_imag), 
.X11_real(y27_real), 
.X11_imag(y27_imag),
.X12_real(y28_real), 
.X12_imag(y28_imag),
.X13_real(y29_real), 
.X13_imag(y29_imag), 
.X14_real(y30_real), 
.X14_imag(y30_imag),
.X15_real(y31_real), 
.X15_imag(y31_imag)   
      );
      
 twiddle_factor
 #(.N(N)) DUT3(

.x1_real(y17_real), 
.x1_imag(y17_imag), 
.x2_real(y18_real), 
.x2_imag(y18_imag),
.x3_real(y19_real), 
.x3_imag(y19_imag), 
.x4_real(y20_real), 
.x4_imag(y20_imag),
.x5_real(y21_real), 
.x5_imag(y21_imag), 
.x6_real(y22_real), 
.x6_imag(y22_imag),
.x7_real(y23_real), 
.x7_imag(y23_imag), 
.x8_real(y24_real), 
.x8_imag(y24_imag),
.x9_real(y25_real), 
.x9_imag(y25_imag), 
.x10_real(y26_real), 
.x10_imag(y26_imag),
.x11_real(y27_real), 
.x11_imag(y27_imag), 
.x12_real(y28_real), 
.x12_imag(y28_imag),
.x13_real(y29_real), 
.x13_imag(y29_imag), 
.x14_real(y30_real), 
.x14_imag(y30_imag),
.x15_real(y31_real), 
.x15_imag(y31_imag), 

.X1_real(w17_real), 
.X1_imag(w17_imag),
.X2_real(w18_real), 
.X2_imag(w18_imag), 
.X3_real(w19_real), 
.X3_imag(w19_imag),
.X4_real(w20_real), 
.X4_imag(w20_imag),
.X5_real(w21_real), 
.X5_imag(w21_imag), 
.X6_real(w22_real), 
.X6_imag(w22_imag),
.X7_real(w23_real), 
.X7_imag(w23_imag),
.X8_real(w24_real), 
.X8_imag(w24_imag), 
.X9_real(w25_real), 
.X9_imag(w25_imag),
.X10_real(w26_real), 
.X10_imag(w26_imag), 
.X11_real(w27_real), 
.X11_imag(w27_imag),
.X12_real(w28_real), 
.X12_imag(w28_imag),
.X13_real(w29_real), 
.X13_imag(w29_imag), 
.X14_real(w30_real), 
.X14_imag(w30_imag),
.X15_real(w31_real), 
.X15_imag(w31_imag)   
      );
      
           
 dft_2_point 
 #(.N(N))DUT4(
.x0_real(y0_real), 
.x0_imag(y0_imag),
.x1_real(y16_real), 
.x1_imag(y16_imag), 
.X0_real(X0_real), 
.X0_imag(X0_imag), 
.X1_real(X16_real), 
.X1_imag(X16_imag) 
      );         
       dft_2_point 
 #(.N(N))DUT5(
.x0_real(y1_real), 
.x0_imag(y1_imag),
.x1_real(w17_real), 
.x1_imag(w17_imag), 
.X0_real(X1_real), 
.X0_imag(X1_imag), 
.X1_real(X17_real), 
.X1_imag(X17_imag) 
      );         
       dft_2_point 
 #(.N(N))DUT6(
.x0_real(y2_real), 
.x0_imag(y2_imag),
.x1_real(w18_real), 
.x1_imag(w18_imag), 
.X0_real(X2_real), 
.X0_imag(X2_imag), 
.X1_real(X18_real), 
.X1_imag(X18_imag) 
      );         
       dft_2_point 
 #(.N(N))DUT7(
.x0_real(y3_real), 
.x0_imag(y3_imag),
.x1_real(w19_real), 
.x1_imag(w19_imag), 
.X0_real(X3_real), 
.X0_imag(X3_imag), 
.X1_real(X19_real), 
.X1_imag(X19_imag) 
      );         
      
       dft_2_point 
 #(.N(N))DUT8(
.x0_real(y4_real), 
.x0_imag(y4_imag),
.x1_real(w20_real), 
.x1_imag(w20_imag), 
.X0_real(X4_real), 
.X0_imag(X4_imag), 
.X1_real(X20_real), 
.X1_imag(X20_imag) 
      );         
      
       dft_2_point 
 #(.N(N))DUT9(
.x0_real(y5_real), 
.x0_imag(y5_imag),
.x1_real(w21_real), 
.x1_imag(w21_imag), 
.X0_real(X5_real), 
.X0_imag(X5_imag), 
.X1_real(X13_real), 
.X1_imag(X13_imag) 
      );      
  dft_2_point 
 #(.N(N))DUT10(
.x0_real(y6_real), 
.x0_imag(y6_imag),
.x1_real(w22_real), 
.x1_imag(w22_imag), 
.X0_real(X6_real), 
.X0_imag(X6_imag), 
.X1_real(X22_real), 
.X1_imag(X22_imag) 
      );         
        dft_2_point 
 #(.N(N))DUT11(
.x0_real(y7_real), 
.x0_imag(y7_imag),
.x1_real(w23_real), 
.x1_imag(w23_imag), 
.X0_real(X7_real), 
.X0_imag(X7_imag), 
.X1_real(X23_real), 
.X1_imag(X23_imag) 
      );         
      
           
 dft_2_point 
 #(.N(N))DUT12(
.x0_real(y8_real), 
.x0_imag(y8_imag),
.x1_real(w24_real), 
.x1_imag(w24_imag), 
.X0_real(X8_real), 
.X0_imag(X8_imag), 
.X1_real(X24_real), 
.X1_imag(X24_imag) 
      );         
       dft_2_point 
 #(.N(N))DUT13(
.x0_real(y9_real), 
.x0_imag(y9_imag),
.x1_real(w25_real), 
.x1_imag(w25_imag), 
.X0_real(X9_real), 
.X0_imag(X9_imag), 
.X1_real(X25_real), 
.X1_imag(X25_imag) 
      );         
       dft_2_point 
 #(.N(N))DUT14(
.x0_real(y10_real), 
.x0_imag(y10_imag),
.x1_real(w26_real), 
.x1_imag(w26_imag), 
.X0_real(X10_real), 
.X0_imag(X10_imag), 
.X1_real(X26_real), 
.X1_imag(X26_imag) 
      );         
       dft_2_point 
 #(.N(N))DUT15(
.x0_real(y11_real), 
.x0_imag(y11_imag),
.x1_real(w27_real), 
.x1_imag(w27_imag), 
.X0_real(X11_real), 
.X0_imag(X11_imag), 
.X1_real(X27_real), 
.X1_imag(X27_imag) 
      );         
      
       dft_2_point 
 #(.N(N))DUT16(
.x0_real(y12_real), 
.x0_imag(y12_imag),
.x1_real(w28_real), 
.x1_imag(w28_imag), 
.X0_real(X12_real), 
.X0_imag(X12_imag), 
.X1_real(X28_real), 
.X1_imag(X28_imag) 
      );         
      
       dft_2_point 
 #(.N(N))DUT17(
.x0_real(y13_real), 
.x0_imag(y13_imag),
.x1_real(w29_real), 
.x1_imag(w29_imag), 
.X0_real(X13_real), 
.X0_imag(X13_imag), 
.X1_real(X29_real), 
.X1_imag(X29_imag) 
      );      
  dft_2_point 
 #(.N(N))DUT18(
.x0_real(y14_real), 
.x0_imag(y14_imag),
.x1_real(w30_real), 
.x1_imag(w30_imag), 
.X0_real(X14_real), 
.X0_imag(X14_imag), 
.X1_real(X30_real), 
.X1_imag(X30_imag) 
      );         
        dft_2_point 
 #(.N(N))DUT19(
.x0_real(y15_real), 
.x0_imag(y15_imag),
.x1_real(w31_real), 
.x1_imag(w31_imag), 
.X0_real(X15_real), 
.X0_imag(X15_imag), 
.X1_real(X31_real), 
.X1_imag(X31_imag) 
      );         
      
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2023 22:34:39
// Design Name: 
// Module Name: dft_16_point
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


module dft_16_point
#(parameter N = 8)(
input [N-1:0] x0_real, // Input real part
input [N-1:0] x0_imag, // Input imaginary part
input [N-1:0] x1_real, 
input [N-1:0] x1_imag, 
input [N-1:0] x2_real, 
input [N-1:0] x2_imag, 
input [N-1:0] x3_real, 
input [N-1:0] x3_imag, 
input [N-1:0] x4_real, 
input [N-1:0] x4_imag, 
input [N-1:0] x5_real, 
input [N-1:0] x5_imag, 
input [N-1:0] x6_real, 
input [N-1:0] x6_imag, 
input [N-1:0] x7_real, 
input [N-1:0] x7_imag, 
input [N-1:0] x8_real, 
input [N-1:0] x8_imag, 
input [N-1:0] x9_real, 
input [N-1:0] x9_imag, 
input [N-1:0] x10_real, 
input [N-1:0] x10_imag, 
input [N-1:0] x11_real, 
input [N-1:0] x11_imag, 
input [N-1:0] x12_real, 
input [N-1:0] x12_imag, 
input [N-1:0] x13_real, 
input [N-1:0] x13_imag, 
input [N-1:0] x14_real, 
input [N-1:0] x14_imag, 
input [N-1:0] x15_real, 
input [N-1:0] x15_imag, 
output [N-1:0] X0_real, 
output [N-1:0] X0_imag, 
output [N-1:0] X1_real, 
output [N-1:0] X1_imag, 
output [N-1:0] X2_real, 
output [N-1:0] X2_imag, 
output [N-1:0] X3_real, 
output [N-1:0] X3_imag,
output [N-1:0] X4_real, 
output [N-1:0] X4_imag, 
output [N-1:0] X5_real, 
output [N-1:0] X5_imag, 
output [N-1:0] X6_real, 
output [N-1:0] X6_imag, 
output [N-1:0] X7_real, 
output [N-1:0] X7_imag,  
output [N-1:0] X8_real, 
output [N-1:0] X8_imag, 
output [N-1:0] X9_real, 
output [N-1:0] X9_imag, 
output [N-1:0] X10_real, 
output [N-1:0] X10_imag, 
output [N-1:0] X11_real, 
output [N-1:0] X11_imag,
output [N-1:0] X12_real, 
output [N-1:0] X12_imag, 
output [N-1:0] X13_real, 
output [N-1:0] X13_imag, 
output [N-1:0] X14_real, 
output [N-1:0] X14_imag,
output [N-1:0] X15_real, 
output [N-1:0] X15_imag  
    );
    
 wire [N:0] y0_real;
 wire [N:0] y0_imag;
 wire [N:0] y1_real;
 wire [N:0] y1_imag;
 wire [N:0] y2_real;
 wire [N:0] y2_imag;
 wire [N:0] y3_real;
 wire [N:0] y3_imag; 
 wire [N:0] y4_real;
 wire [N:0] y4_imag;
 wire [N:0] y5_real;
 wire [N:0] y5_imag;
 wire [N:0] y6_real;
 wire [N:0] y6_imag;
 wire [N:0] y7_real;
 wire [N:0] y7_imag;
 wire [N:0] y8_real;
 wire [N:0] y8_imag; 
 wire [N:0] y9_real;
 wire [N:0] y9_imag;
 wire [N:0] y10_real;
 wire [N:0] y10_imag; 
 wire [N:0] y11_real;
 wire [N:0] y11_imag;
 wire [N:0] y12_real;
 wire [N:0] y12_imag;
 wire [N:0] y13_real;
 wire [N:0] y13_imag; 
 wire [N:0] y14_real;
 wire [N:0] y14_imag;
 wire [N:0] y15_real;
 wire [N:0] y15_imag;
 wire [N:0] y16_real;
 wire [N:0] y16_imag;
 wire [N:0] y17_real;
 wire [N:0] y17_imag;
 wire [N:0] y18_real;
 wire [N:0] y18_imag; 
 wire [N:0] y19_real;
 wire [N:0] y19_imag;
 wire [N:0] y20_real;
 wire [N:0] y20_imag;
 wire [N:0] y21_real;
 wire [N:0] y21_imag;
 wire [N:0] y22_real;
 wire [N:0] y22_imag; 
 
  dft_8_point
 #(.N(N)) DUT1(
.x0_real(x0_real), 
.x0_imag(x0_imag),
.x1_real(x2_real), 
.x1_imag(x2_imag), 
.x2_real(x4_real), 
.x2_imag(x4_imag),
.x3_real(x6_real), 
.x3_imag(x6_imag), 
.x4_real(x8_real), 
.x4_imag(x8_imag),
.x5_real(x10_real), 
.x5_imag(x10_imag), 
.x6_real(x12_real), 
.x6_imag(x12_imag),
.x7_real(x14_real), 
.x7_imag(x14_imag), 
.X0_real(y0_real), 
.X0_imag(y0_imag), 
.X1_real(y1_real), 
.X1_imag(y1_imag),
.X2_real(y2_real), 
.X2_imag(y2_imag), 
.X3_real(y3_real), 
.X3_imag(y3_imag),
.X4_real(y4_real), 
.X4_imag(y4_imag),
.X5_real(y5_real), 
.X5_imag(y5_imag), 
.X6_real(y6_real), 
.X6_imag(y6_imag),
.X7_real(y7_real), 
.X7_imag(y7_imag)   
      );
 
 
 dft_8_point
 #(.N(N)) DUT2(
.x0_real(x1_real), 
.x0_imag(x1_imag),
.x1_real(x3_real), 
.x1_imag(x3_imag), 
.x2_real(x5_real), 
.x2_imag(x5_imag),
.x3_real(x7_real), 
.x3_imag(x7_imag), 
.x4_real(x9_real), 
.x4_imag(x9_imag),
.x5_real(x11_real), 
.x5_imag(x11_imag), 
.x6_real(x13_real), 
.x6_imag(x13_imag),
.x7_real(x15_real), 
.x7_imag(x15_imag), 
.X0_real(y8_real), 
.X0_imag(y8_imag), 
.X1_real(y9_real), 
.X1_imag(y9_imag),
.X2_real(y10_real), 
.X2_imag(y10_imag), 
.X3_real(y11_real), 
.X3_imag(y11_imag),
.X4_real(y12_real), 
.X4_imag(y12_imag),
.X5_real(y13_real), 
.X5_imag(y13_imag), 
.X6_real(y14_real), 
.X6_imag(y14_imag),
.X7_real(y15_real), 
.X7_imag(y15_imag)   
      );
 
  complex_m
 #(.N(N)) DUT3(
.x0_real(y9_real), 
.x0_imag(y9_imag),
.x1_real( 8'd125), 
.x1_imag(-8'd24), 
.X0_real(y16_real), 
.X0_imag(y16_imag) 
      );     
       complex_m
 #(.N(N)) DUT4(
.x0_real(y10_real), 
.x0_imag(y10_imag),
.x1_real( 8'd118), 
.x1_imag(-8'd48), 
.X0_real(y17_real), 
.X0_imag(y17_imag) 
      );     
       complex_m
 #(.N(N)) DUT5(
.x0_real(y11_real), 
.x0_imag(y11_imag),
.x1_real( 8'd106), 
.x1_imag(-8'd71), 
.X0_real(y18_real), 
.X0_imag(y18_imag) 
      );     
       complex_m
 #(.N(N)) DUT6(
.x0_real(y12_real), 
.x0_imag(y12_imag),
.x1_real( 8'd90), 
.x1_imag(-8'd90), 
.X0_real(y19_real), 
.X0_imag(y19_imag) 
      );     
       complex_m
 #(.N(N)) DUT7(
.x0_real(y13_real), 
.x0_imag(y13_imag),
.x1_real( 8'd71), 
.x1_imag(-8'd106), 
.X0_real(y20_real), 
.X0_imag(y20_imag) 
      );     
       complex_m
 #(.N(N)) DUT8(
.x0_real(y14_real), 
.x0_imag(y14_imag),
.x1_real( 8'd48), 
.x1_imag(-8'd118), 
.X0_real(y21_real), 
.X0_imag(y21_imag) 
      );     
       complex_m
 #(.N(N)) DUT9(
.x0_real(y15_real), 
.x0_imag(y15_imag),
.x1_real( 8'd24), 
.x1_imag(-8'd125), 
.X0_real(y22_real), 
.X0_imag(y22_imag) 
      ); 
      
      
 dft_2_point 
 #(.N(N))DUT10(
.x0_real(y0_real), 
.x0_imag(y0_imag),
.x1_real(y8_real), 
.x1_imag(y8_imag), 
.X0_real(X0_real), 
.X0_imag(X0_imag), 
.X1_real(X8_real), 
.X1_imag(X8_imag) 
      );         
       dft_2_point 
 #(.N(N))DUT11(
.x0_real(y1_real), 
.x0_imag(y1_imag),
.x1_real(y16_real), 
.x1_imag(y16_imag), 
.X0_real(X1_real), 
.X0_imag(X1_imag), 
.X1_real(X9_real), 
.X1_imag(X9_imag) 
      );         
       dft_2_point 
 #(.N(N))DUT12(
.x0_real(y2_real), 
.x0_imag(y2_imag),
.x1_real(y17_real), 
.x1_imag(y17_imag), 
.X0_real(X2_real), 
.X0_imag(X2_imag), 
.X1_real(X10_real), 
.X1_imag(X10_imag) 
      );         
       dft_2_point 
 #(.N(N))DUT13(
.x0_real(y3_real), 
.x0_imag(y3_imag),
.x1_real(y18_real), 
.x1_imag(y18_imag), 
.X0_real(X3_real), 
.X0_imag(X3_imag), 
.X1_real(X11_real), 
.X1_imag(X11_imag) 
      );         
      
       dft_2_point 
 #(.N(N))DUT14(
.x0_real(y4_real), 
.x0_imag(y4_imag),
.x1_real(y19_real), 
.x1_imag(y19_imag), 
.X0_real(X4_real), 
.X0_imag(X4_imag), 
.X1_real(X12_real), 
.X1_imag(X12_imag) 
      );         
      
       dft_2_point 
 #(.N(N))DUT15(
.x0_real(y5_real), 
.x0_imag(y5_imag),
.x1_real(y20_real), 
.x1_imag(y20_imag), 
.X0_real(X5_real), 
.X0_imag(X5_imag), 
.X1_real(X13_real), 
.X1_imag(X13_imag) 
      );      
  dft_2_point 
 #(.N(N))DUT16(
.x0_real(y6_real), 
.x0_imag(y6_imag),
.x1_real(y21_real), 
.x1_imag(y21_imag), 
.X0_real(X6_real), 
.X0_imag(X6_imag), 
.X1_real(X14_real), 
.X1_imag(X14_imag) 
      );         
        dft_2_point 
 #(.N(N))DUT17(
.x0_real(y7_real), 
.x0_imag(y7_imag),
.x1_real(y22_real), 
.x1_imag(y22_imag), 
.X0_real(X7_real), 
.X0_imag(X7_imag), 
.X1_real(X15_real), 
.X1_imag(X15_imag) 
      );         
endmodule

module dft_8_point
#(parameter N = 8)
 (
 input [N-1:0] x0_real, // Input real part
input [N-1:0] x0_imag, // Input imaginary part
input [N-1:0] x1_real, 
input [N-1:0] x1_imag, 
input [N-1:0] x2_real, 
input [N-1:0] x2_imag, 
input [N-1:0] x3_real, 
input [N-1:0] x3_imag, 
input [N-1:0] x4_real, 
input [N-1:0] x4_imag, 
input [N-1:0] x5_real, 
input [N-1:0] x5_imag, 
input [N-1:0] x6_real, 
input [N-1:0] x6_imag, 
input [N-1:0] x7_real, 
input [N-1:0] x7_imag, 
output [N-1:0] X0_real, // Output real part
output [N-1:0] X0_imag, // Output imaginary part
output [N-1:0] X1_real, 
output [N-1:0] X1_imag, 
output [N-1:0] X2_real, 
output [N-1:0] X2_imag, 
output [N-1:0] X3_real, 
output [N-1:0] X3_imag,
output [N-1:0] X4_real, 
output [N-1:0] X4_imag, 
output [N-1:0] X5_real, 
output [N-1:0] X5_imag, 
output [N-1:0] X6_real, 
output [N-1:0] X6_imag, 
output [N-1:0] X7_real, 
output [N-1:0] X7_imag  
   );
   
 wire [N:0] y0_real;
 wire [N:0] y0_imag;
 wire [N:0] y1_real;
 wire [N:0] y1_imag;
 wire [N:0] y2_real;
 wire [N:0] y2_imag;
 wire [N:0] y3_real;
 wire [N:0] y3_imag; 
 wire [N:0] y4_real;
 wire [N:0] y4_imag;
 wire [N:0] y5_real;
 wire [N:0] y5_imag;
 wire [N:0] y6_real;
 wire [N:0] y6_imag;
 wire [N:0] y7_real;
 wire [N:0] y7_imag;
 wire [N:0] y8_real;
 wire [N:0] y8_imag; 
 wire [N:0] y9_real;
 wire [N:0] y9_imag;
 wire [N:0] y10_real;
 wire [N:0] y10_imag; 
 
 dft_4_point
 #(.N(N)) DUT1(
.x0_real(x0_real), 
.x0_imag(x0_imag),
.x1_real(x2_real), 
.x1_imag(x2_imag), 
.x2_real(x4_real), 
.x2_imag(x4_imag),
.x3_real(x6_real), 
.x3_imag(x6_imag), 
.X0_real(y0_real), 
.X0_imag(y0_imag), 
.X1_real(y1_real), 
.X1_imag(y1_imag),
.X2_real(y2_real), 
.X2_imag(y2_imag), 
.X3_real(y3_real), 
.X3_imag(y3_imag)  
      );
   
    dft_4_point
 #(.N(N)) DUT2(
.x0_real(x1_real), 
.x0_imag(x1_imag),
.x1_real(x3_real), 
.x1_imag(x3_imag), 
.x2_real(x5_real), 
.x2_imag(x5_imag),
.x3_real(x7_real), 
.x3_imag(x7_imag),
.X0_real(y4_real), 
.X0_imag(y4_imag), 
.X1_real(y5_real), 
.X1_imag(y5_imag),
.X2_real(y6_real), 
.X2_imag(y6_imag), 
.X3_real(y7_real), 
.X3_imag(y7_imag)  
      );
   // passing the values of twiddle factors and 4 point dft output to the multiplier 
      
 complex_m
 #(.N(N)) DUT3(
.x0_real(y5_real), 
.x0_imag(y5_imag),
.x1_real( 8'd90), 
.x1_imag(-8'd90), 
.X0_real(y8_real), 
.X0_imag(y8_imag) 
      );     
      
      complex_m
 #(.N(N)) DUT4(
.x0_real(y6_real), 
.x0_imag(y6_imag),
.x1_real( 8'd0), 
.x1_imag(-8'd1), 
.X0_real(y9_real), 
.X0_imag(y9_imag) 
      ); 
      
            complex_m
 #(.N(N)) DUT5(
.x0_real(y7_real), 
.x0_imag(y7_imag),
.x1_real(-8'd90), 
.x1_imag(-8'd90), 
.X0_real(y10_real), 
.X0_imag(y10_imag) 
      );  
      
 dft_2_point 
 #(.N(N))DUT6(
.x0_real(y0_real), 
.x0_imag(y0_imag),
.x1_real(y4_real), 
.x1_imag(y4_imag), 
.X0_real(X0_real), 
.X0_imag(X0_imag), 
.X1_real(X4_real), 
.X1_imag(X4_imag) 
      );  
    
       
 dft_2_point 
 #(.N(N))DUT7(
.x0_real(y1_real), 
.x0_imag(y1_imag),
.x1_real(y8_real), 
.x1_imag(y8_imag), 
.X0_real(X1_real), 
.X0_imag(X1_imag), 
.X1_real(X5_real), 
.X1_imag(X5_imag) 
      );           
      
 dft_2_point 
 #(.N(N))DUT8(
.x0_real(y2_real), 
.x0_imag(y2_imag),
.x1_real(y9_real), 
.x1_imag(y9_imag), 
.X0_real(X2_real), 
.X0_imag(X2_imag), 
.X1_real(X6_real), 
.X1_imag(X6_imag) 
      );    
 dft_2_point 
 #(.N(N))DUT9(
.x0_real(y3_real), 
.x0_imag(y3_imag),
.x1_real(y10_real), 
.x1_imag(y10_imag), 
.X0_real(X3_real), 
.X0_imag(X3_imag), 
.X1_real(X7_real), 
.X1_imag(X7_imag) 
      );      
endmodule

module dft_4_point
#(parameter N = 8)
(  
input [N-1:0] x0_real, // Input real part
input [N-1:0] x0_imag, // Input imaginary part
input [N-1:0] x1_real, 
input [N-1:0] x1_imag, 
input [N-1:0] x2_real, 
input [N-1:0] x2_imag, 
input [N-1:0] x3_real, 
input [N-1:0] x3_imag, 
output [N-1:0] X0_real, 
output [N-1:0] X0_imag, // Output imaginary part
output [N-1:0] X1_real, // Output real part
output [N-1:0] X1_imag, 
output [N-1:0] X2_real, 
output [N-1:0] X2_imag, 
output [N-1:0] X3_real, 
output [N-1:0] X3_imag 
    );
    
 wire [N:0] y0_real;
 wire [N:0] y0_imag;
 wire [N:0] y1_real;
 wire [N:0] y1_imag;
 wire [N:0] y2_real;
 wire [N:0] y2_imag;
 wire [N:0] y3_real;
 wire [N:0] y3_imag; 
 wire [N:0] y4_real;
 wire [N:0] y4_imag;
 
  dft_2_point
  #(.N(N)) DUT1(
.x0_real(x0_real), 
.x0_imag(x0_imag),
.x1_real(x2_real), 
.x1_imag(x2_imag), 
.X0_real(y0_real), 
.X0_imag(y0_imag), 
.X1_real(y1_real), 
.X1_imag(y1_imag) 
      );
      
 dft_2_point
 #(.N(N)) DUT2(
.x0_real(x1_real), 
.x0_imag(x1_imag),
.x1_real(x3_real), 
.x1_imag(x3_imag), 
.X0_real(y2_real), 
.X0_imag(y2_imag), 
.X1_real(y3_real), 
.X1_imag(y3_imag) 
      );

complex_m
 #(.N(N)) DUT3(
.x0_real(y3_real), 
.x0_imag(y3_imag),
.x1_real(8'b0), 
.x1_imag(~(8'b1)+1'b1), 
.X0_real(y4_real), 
.X0_imag(y4_imag) 
      );

 dft_2_point 
 #(.N(N))DUT4(
.x0_real(y0_real), 
.x0_imag(y0_imag),
.x1_real(y2_real), 
.x1_imag(y2_imag), 
.X0_real(X0_real), 
.X0_imag(X0_imag), 
.X1_real(X2_real), 
.X1_imag(X2_imag) 
      );
      
      dft_2_point 
 #(.N(N))DUT5(
.x0_real(y1_real), 
.x0_imag(y1_imag),
.x1_real(y4_real), 
.x1_imag(y4_imag), 
.X0_real(X1_real), 
.X0_imag(X1_imag), 
.X1_real(X3_real), 
.X1_imag(X3_imag) 
      );

endmodule


module dft_2_point
#(parameter N = 8)
(
input [N-1:0] x0_real, // Input real part
input [N-1:0] x0_imag, // Input imaginary part
input [N-1:0] x1_real, // Input real part
input [N-1:0] x1_imag, // Input imaginary part
output [N-1:0] X0_real, // Output real part
output [N-1:0] X0_imag, // Output imaginary part
output [N-1:0] X1_real, // Output real part
output [N-1:0] X1_imag // Output imaginary part
    );
      
  assign X0_real = x0_real + x1_real;
  assign X1_real = x0_real - x1_real;
  assign X0_imag = x0_imag + x1_imag;
  assign X1_imag = x0_imag - x1_imag;
 
endmodule



module twiddle_factor 
#(parameter N = 8)
(
input [N-1:0]x1_real, // Input real part
input [N-1:0] x1_imag, 
input [N-1:0] x2_real, 
input [N-1:0] x2_imag, 
input [N-1:0] x3_real, 
input [N-1:0] x3_imag, 
input [N-1:0] x4_real, 
input [N-1:0] x4_imag, 
input [N-1:0] x5_real, 
input [N-1:0] x5_imag, 
input [N-1:0] x6_real, 
input [N-1:0] x6_imag, 
input [N-1:0] x7_real, 
input [N-1:0] x7_imag, 
input [N-1:0] x8_real, 
input [N-1:0] x8_imag, 
input [N-1:0] x9_real, 
input [N-1:0] x9_imag, 
input [N-1:0] x10_real, 
input [N-1:0] x10_imag, 
input [N-1:0] x11_real, 
input [N-1:0] x11_imag, 
input [N-1:0] x12_real, 
input [N-1:0] x12_imag, 
input [N-1:0] x13_real, 
input [N-1:0] x13_imag, 
input [N-1:0] x14_real, 
input [N-1:0] x14_imag, 
input [N-1:0] x15_real, 
input [N-1:0] x15_imag, 
 
output [N-1:0] X1_real, 
output [N-1:0] X1_imag, 
output [N-1:0] X2_real, 
output [N-1:0] X2_imag, 
output [N-1:0] X3_real, 
output [N-1:0] X3_imag,
output [N-1:0] X4_real, 
output [N-1:0] X4_imag, 
output [N-1:0] X5_real, 
output [N-1:0] X5_imag, 
output [N-1:0] X6_real, 
output [N-1:0] X6_imag, 
output [N-1:0] X7_real, 
output [N-1:0] X7_imag,  
output [N-1:0] X8_real, 
output [N-1:0] X8_imag, 
output [N-1:0] X9_real, 
output [N-1:0] X9_imag, 
output [N-1:0] X10_real, 
output [N-1:0] X10_imag, 
output [N-1:0] X11_real, 
output [N-1:0] X11_imag,
output [N-1:0] X12_real, 
output [N-1:0] X12_imag, 
output [N-1:0] X13_real, 
output [N-1:0] X13_imag, 
output [N-1:0] X14_real, 
output [N-1:0] X14_imag,
output [N-1:0] X15_real, 
output [N-1:0] X15_imag    
    );
      
     
        complex_m
 #(.N(N)) DUT1(
.x0_real(x1_real), 
.x0_imag(x1_imag),
.x1_real( 8'd127), 
.x1_imag(-8'd6), 
.X0_real(X1_real), 
.X0_imag(X1_imag) 
      );     
        complex_m
 #(.N(N)) DUT2(
.x0_real(x2_real), 
.x0_imag(x2_imag),
.x1_real( 8'd127), 
.x1_imag(-8'd12), 
.X0_real(X2_real), 
.X0_imag(X2_imag) 
      );     
        complex_m
 #(.N(N)) DUT3(
.x0_real(x3_real), 
.x0_imag(x3_imag),
.x1_real( 8'd127), 
.x1_imag(-8'd18), 
.X0_real(X3_real), 
.X0_imag(X3_imag) 
      );     
         complex_m
 #(.N(N)) DUT4(
.x0_real(x4_real), 
.x0_imag(x4_imag),
.x1_real( 8'd127), 
.x1_imag(-8'd25), 
.X0_real(X4_real), 
.X0_imag(X4_imag) 
      );     
        complex_m
 #(.N(N)) DUT5(
.x0_real(x5_real), 
.x0_imag(x5_imag),
.x1_real( 8'd127), 
.x1_imag(-8'd31), 
.X0_real(X5_real), 
.X0_imag(X5_imag) 
      );     
        complex_m
 #(.N(N)) DUT6(
.x0_real(x6_real), 
.x0_imag(x6_imag),
.x1_real( 8'd127), 
.x1_imag(-8'd37), 
.X0_real(X6_real), 
.X0_imag(X6_imag) 
      );     
        complex_m
 #(.N(N)) DUT7(
.x0_real(x7_real), 
.x0_imag(x7_imag),
.x1_real( 8'd127), 
.x1_imag(-8'd43), 
.X0_real(X7_real), 
.X0_imag(X7_imag) 
      );     
      
         complex_m
 #(.N(N)) DUT8(
.x0_real(x8_real), 
.x0_imag(x8_imag),
.x1_real( 8'd127), 
.x1_imag(-8'd50), 
.X0_real(X8_real), 
.X0_imag(X8_imag) 
      );     
        complex_m
 #(.N(N)) DUT9(
.x0_real(x9_real), 
.x0_imag(x9_imag),
.x1_real( 8'd127), 
.x1_imag(-8'd56), 
.X0_real(X9_real), 
.X0_imag(X9_imag) 
      );     
        complex_m
 #(.N(N)) DUT10(
.x0_real(x10_real), 
.x0_imag(x10_imag),
.x1_real( 8'd127), 
.x1_imag(-8'd62), 
.X0_real(X10_real), 
.X0_imag(X10_imag) 
      );     
        complex_m
 #(.N(N)) DUT11(
.x0_real(x11_real), 
.x0_imag(x11_imag),
.x1_real( 8'd127), 
.x1_imag(-8'd68), 
.X0_real(X11_real), 
.X0_imag(X11_imag) 
      );     
         complex_m
 #(.N(N)) DUT12(
.x0_real(x12_real), 
.x0_imag(x12_imag),
.x1_real( 8'd127), 
.x1_imag(-8'd75), 
.X0_real(X12_real), 
.X0_imag(X12_imag) 
      );     
        complex_m
 #(.N(N)) DUT13(
.x0_real(x13_real), 
.x0_imag(x13_imag),
.x1_real( 8'd127), 
.x1_imag(-8'd81), 
.X0_real(X13_real), 
.X0_imag(X13_imag) 
      );     
        complex_m
 #(.N(N)) DUT14(
.x0_real(x14_real), 
.x0_imag(x14_imag),
.x1_real( 8'd127), 
.x1_imag(-8'd87), 
.X0_real(X14_real), 
.X0_imag(X14_imag) 
      );     
        complex_m
 #(.N(N)) DUT15(
.x0_real(x15_real), 
.x0_imag(x15_imag),
.x1_real( 8'd127), 
.x1_imag(-8'd92), 
.X0_real(X15_real), 
.X0_imag(X15_imag) 
      );     
          
endmodule





module complex_m
#(parameter N = 8)(
input [N-1:0] x0_real, // Input real part
input [N-1:0] x0_imag, // Input imaginary part
input [N-1:0] x1_real, // Input real part
input [N-1:0] x1_imag, // Input imaginary part 
output [N-1:0] X0_real, // Output real part
output [N-1:0] X0_imag // Output imaginary part
);

  
assign X0_real = (x0_real*x1_real)+  ~(x0_imag*x1_imag)+1'b1 ;
assign X0_imag = (x0_real*x1_imag)+  (x0_imag*x1_real) ;

endmodule 