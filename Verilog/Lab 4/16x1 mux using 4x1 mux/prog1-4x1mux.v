module mux4x1(in,sel,y);
input [0:3] in;
input [0:1] sel;
wire w1,w2,w3,w4,n0,n1;
output y;

not (n0,sel[0]);
not (n1,sel[1]);

and (w1,in[0],n0,n1);
and (w2,in[1],n0,sel[1]);
and (w3,in[2],sel[0],n1);
and (w4,in[3],sel[1],sel[0]);

or (y,w1,w2,w3,w4);

endmodule
