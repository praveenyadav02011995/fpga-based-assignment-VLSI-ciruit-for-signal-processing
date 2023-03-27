
module fft16point#(parameter N=16)(X0r,X0i,X1r,X1i,X2r,X2i,X3r,X3i,X4r,X4i,X5r,X5i,X6r,X6i,X7r,X7i,X8r,X8i,X9r,X9i,X10r,X10i,X11r,X11i,X12r,X12i,X13r,X13i,X14r,X14i,X15r,X15i,p0r,p0i,p1r,p1i,p2r,p2i,p3r,p3i,p4r,p4i,p5r,p5i,p6r,p6i,p7r,p7i,p8r,p8i,p9r,p9i,p10r,p10i,p11r,p11i,p12r,p12i,p13r,p13i,p14r,p14i,p15r,p15i);
input [N-1:0] X0r,X0i,X1r,X1i,X2r,X2i,X3r,X3i,X4r,X4i,X5r,X5i,X6r,X6i,X7r,X7i,X8r,X8i,X9r,X9i,X10r,X10i,X11r,X11i,X12r,X12i,X13r,X13i,X14r,X14i,X15r,X15i;
output [2*N+1:0]p0r,p0i,p1r,p1i,p2r,p2i,p3r,p3i,p4r,p4i,p5r,p5i,p6r,p6i,p7r,p7i,p8r,p8i,p9r,p9i,p10r,p10i,p11r,p11i,p12r,p12i,p13r,p13i,p14r,p14i,p15r,p15i;
wire [N:0]Y0r,Y0i,Y1r,Y1i,Y2r,Y2i,Y3r,Y3i,Y4r,Y4i,Y5r,Y5i,Y6r,Y6i,Y7r,Y7i,Y8r,Y8i,Y9r,Y9i,Y10r,Y10i,Y11r,Y11i,Y12r,Y12i,Y13r,Y13i,Y14r,Y14i,Y15r,Y15i;
wire [2*N:0]y0r,y0i,y1r,y1i,y2r,y2i,y3r,y3i,y4r,y4i,y5r,y5i,y6r,y6i,y7r,y7i,y8r,y8i,y9r,y9i,y10r,y10i,y11r,y11i,y12r,y12i,y13r,y13i,y14r,y14i,y15r,y15i;
eight_fft #(.N(N))FFT_0_8_4_12_2_10_6_14(.a(X0r),.b(X8r),.c(X4r),.d(X12r),.e(X2r),.f(X10r),.g(X6r),.h(X14r),.ai(X0i),.bi(X8i),.ci(X4i),.di(X12i),.ei(X2i),.fi(X10i),.gi(X6i),.hi(X14i),.A(Y0r),.B(Y1r),.C(Y2r),.D(Y3r),.E(Y4r),.F(Y5r),.G(Y6r),.H(Y7r),.Ai(Y0i),.Bi(Y1i),.Ci(Y2i),.Di(Y3i),.Ei(Y4i),.Fi(Y5i),.Gi(Y6i),.Hi(Y7i));
eight_fft #(.N(N))FFT_1_9_5_13_3_11_7_15(.a(X1r),.b(X9r),.c(X5r),.d(X13r),.e(X3r),.f(X11r),.g(X7r),.h(X15r),.ai(X1i),.bi(X9i),.ci(X5i),.di(X13i),.ei(X3i),.fi(X11i),.gi(X7i),.hi(X15i),.A(Y8r),.B(Y9r),.C(Y10r),.D(Y11r),.E(Y12r),.F(Y13r),.G(Y14r),.H(Y15r),.Ai(Y8i),.Bi(Y9i),.Ci(Y10i),.Di(Y11i),.Ei(Y12i),.Fi(Y13i),.Gi(Y14i),.Hi(Y15i));
assign p0r={Y0r[N],Y0r} + {Y8r[N],Y8r};
real kp=30244,lp=12517,kn=-30244,ln=-12517;
complexmul #(.N(N))(.a(kp),.b(ln),.c(Y9r),.d(Y9i),.Yr(y9r),.Yi(y9i));
assign p1r={Y1r[N],Y1r} + {y9r[N],y9r};
assign p1i={Y1i[N],Y1i} + {y9i[N],y9i};
real mp=23166 ,mn=-23166;
complexmul #(.N(N))(.a(mp),.b(mn),.c(Y10r),.d(Y10i),.Yr(y10r),.Yi(y10i));
assign p2r={Y2r[N],Y2r} + {y10r[N],y10r};
assign p2i={Y2i[N],Y2i} + {y10i[N],y10i};
real np=12517 ,nn=-12517;
complexmul #(.N(N))(.a(np),.b(kn),.c(Y11r),.d(Y11i),.Yr(y11r),.Yi(y11i));
assign p3r={Y3r[N],Y3r} + {y11r[N],y11r};
assign p3i={Y3i[N],Y3i} + {y11i[N],y11i};
real x=0,xn=-1,xp=1;
complexmul #(.N(N))(.a(x),.b(xn),.c(Y12r),.d(Y12i),.Yr(y12r),.Yi(y12i));
assign p4r={Y4r[N],Y4r} + {y12r[N],y12r};
assign p4i={Y4i[N],Y4i} + {y12i[N],y12i};
complexmul #(.N(N))(.a(nn),.b(kn),.c(Y13r),.d(Y13i),.Yr(y13r),.Yi(y13i));
assign p5r={Y5r[N],Y5r} + {y13r[N],y13r};
assign p5i={Y5i[N],Y5i} + {y13i[N],y13i};
complexmul #(.N(N))(.a(mn),.b(mn),.c(Y14r),.d(Y14i),.Yr(y14r),.Yi(y14i));
assign p6r={Y6r[N],Y6r} + {y14r[N],y14r};
assign p6i={Y6i[N],Y6i} + {y14i[N],y14i};
complexmul #(.N(N))(.a(kn),.b(nn),.c(Y15r),.d(Y15i),.Yr(y15r),.Yi(y15i));
assign p7r={Y7r[N],Y7r} + {y15r[N],y15r};
assign p7i={Y7i[N],Y7i} + {y15i[N],y15i};
assign p8r={Y0r[N],Y0r} + ~{Y8r[N],Y8r}+1'b1;
assign p9r={Y1r[N],Y1r} + ~{y9r[N],y9r}+1'b1;
assign p9i={Y1i[N],Y1i} + ~{y9i[N],y9i}+1'b1;
assign p10r={Y2r[N],Y2r} + ~{y10r[N],y10r}+1'b1;
assign p10i={Y2i[N],Y2i} + ~{y10i[N],y10i}+1'b1;
assign p11r={Y3r[N],Y3r} + ~{y11r[N],y11r}+1'b1;
assign p11i={Y3i[N],Y3i} + ~{y11i[N],y11i}+1'b1;
assign p12r={Y4r[N],Y4r} + ~{y12r[N],y12r}+1'b1;
assign p12i={Y4i[N],Y4i} + ~{y12i[N],y12i}+1'b1;
assign p13r={Y5r[N],Y5r} + ~{y13r[N],y13r}+1'b1;
assign p13i={Y5i[N],Y5i} + ~{y13i[N],y13i}+1'b1;
assign p14r={Y6r[N],Y6r} + ~{y14r[N],y14r}+1'b1;
assign p14i={Y6i[N],Y6i} + ~{y14i[N],y14i}+1'b1;
assign p15r={Y7r[N],Y7r} + ~{y15r[N],y15r}+1'b1;






