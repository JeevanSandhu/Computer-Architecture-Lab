module Simple_Circuit(A,B,S,C);
input A,B;
output S,C;

xor G1(S,A,B);
and G2(C,A,B);
endmodule
