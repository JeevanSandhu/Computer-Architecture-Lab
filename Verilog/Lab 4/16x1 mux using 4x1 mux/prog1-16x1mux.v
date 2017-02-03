module mux16x1(in,sel,y);

input [0:15] in;
input [0:3] sel;
output y;
wire [0:3] a;

mux4x1 m1(in[0:3],sel[2:3],a[0]);
mux4x1 m2(in[4:7],sel[2:3],a[1]);
mux4x1 m3(in[8:11],sel[2:3],a[2]);
mux4x1 m4(in[12:15],sel[2:3],a[3]);
mux4x1 m5(a[0:3],sel[0:1],y);

endmodule
