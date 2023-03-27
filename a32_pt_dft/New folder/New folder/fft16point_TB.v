
module fft16point_TB( );
parameter N=16;
reg [N-1:0] X0r,X0i,X1r,X1i,X2r,X2i,X3r,X3i,X4r,X4i,X5r,X5i,X6r,X6i,X7r,X7i,X8r,X8i,X9r,X9i,X10r,X10i,X11r,X11i,X12r,X12i,X13r,X13i,X14r,X14i,X15r,X15i;
wire [2*N+1:0]p0r,p0i,p1r,p1i,p2r,p2i,p3r,p3i,p4r,p4i,p5r,p5i,p6r,p6i,p7r,p7i,p8r,p8i,p9r,p9i,p10r,p10i,p11r,p11i,p12r,p12i,p13r,p13i,p14r,p14i,p15r,p15i;
fft16point UUT(.X0r(X0r),.X0i(X0i),.X1r(X1r),.X1i(X1i),.X2r(X2r),.X2i(X2i),.X3r(X3r),.X3i(X3i),.X4r(X4r),.X4i(X4i),.X5r(X5r),.X5i(X5i),.X6r(X6r),.X6i(X6i),.X7r(X7r),.X7i(X7i),.X8r(X8r),.X8i(X8i),.X9r(X9r),.X9i(X9i),.X10r(X10r),.X10i(X10i),.X11r(X11r),.X11i(X11i),.X12r(X12r),.X12i(X12i),.X13r(X13r),.X13i(X13i),.X14r(X14r),.X14i(X14i),.X15r(X15r),.X15i(X15i),.p0r(p0r),.p0i(p0i),.p1r(p1r),.p1i(p1i),.p2r(p2r),.p2i(p2i),.p3r(p3r),.p3i(p3i),.p4r(p4r),.p4i(p4i),.p5r(p5r),.p5i(p5i),.p6r(p6r),.p6i(p6i),.p7r(p7r),.p7i(p7i),.p8r(p8r),.p8i(
p8i),.p9r(p9r),.p9i(p9i),.p10r(p10r),.p10i(p10i),.p11r(p11r),.p11i(p11i),.p12r(p12r),.p12i(p12i),.p13r(p13r),.p13i(p13i),.p14r(p14r),.p14i(p4i),.p15r(p15r),.p15i(p15i));
initial
begin
#10 X0r = 1'b0; X0i = 1'b0; X1r =1'b1; X1i =1'b0; X2r =1'b1; X2i =1'b0; X3r =1'b0; X3i =1'b0; X4r = 1'b0; X4i = 1'b0; X5r =1'b1; X5i =1'b0; X6r =1'b1; X6i =1'b0; X7r =1'b0; X7i =1'b0; X8r = 1'b0; X8i = 1'b0; X9r =1'b1; X9i =1'b0; X10r =1'b1; X10i =1'b0; X11r =1'b0; X11i =1'b0; X12r = 1'b0; X12i = 1'b0; X13r =1'b1; X13i =1'b0; X14r =1'b1; X14i =1'b0; X15r =1'b0; X15i =1'b0;
#100
#100
begin
$display(" X0r=%d,X0i=%d,X1r=%d,X1i=%d,X2r=%d,X2i=%d,X3r=%d,X3i=%d,X4r=%d,X4i=%d,X5r=%d,X5i=%d,X6r=%d,X6i=%d,X7r=%d,X7i=%d,X8r=%d,X8i=%d,X9r=%d,X9i=%d,X10r=%d,X10i=%d,X11r=%d,X11i=%d,X12r=%d,X12i=%d,X13r=%d,X13i=%d,X14r=%d,X14i=%d,X15r=%d,X15i=%d,p0r=%d,p0i=%d,p1r=%d,p1i=%d,p2r=%d,p2i=%d,p3r=%d,p3i=%d,p4r=%d,p4i=%d,p5r=%d,p5i=%d,p6r=%d,p6i=%d,p7r=%d,p7i=%d,p8r=%d,p8i=%d,p9r=%d,p9i=%d,p10r=%d,p10i=%d,p11r=%d,p11i=%d,p12r=%d,p12i=%d,p13r=%d,p13i=%d,p14r=%d,p14i=%d,p15r=%d,p15i=%d,",X0r,X0i,X1r,X1i,X2r,X2i,X3r,X3i,X4r,X4i,X5r,X5i,X6r,X6i,X7r,X7i,X8r,X8i,X9r,X9i,X10r,X10i,X11r,X11i,X12r,X12i,X13r,X13i,X14r,X14i,X15r,X15i,p0r,p0i,p1r,p1i,p2r,p2i,p3r,p3i,p4r,p4i,p5r,p5i,p6r,p6i,p7r,p7i,p8r,p8i,p9r,p9i,p10r,p10i,p11r,p11i,p12r,p12i,p13r,p13i,p14r,p14i,p15r,p15i);
end
end
endmodule
