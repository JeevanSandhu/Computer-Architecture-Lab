module Simple_Circuit(A,B,C,S,C1);
input A,B,C;
output S,C1;
wire X1;

xor G1(X1,A,B);
and G2(A1,A,B);
xor G3(S,X1,C);
and G4(A2,X1,C);
or G5(C1,A2,A1);

endmodule
