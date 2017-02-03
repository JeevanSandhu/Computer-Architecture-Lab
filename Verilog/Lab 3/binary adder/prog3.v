module binary_adder(A,B,C_in,S,C_out);
input [3:0] A,B;
input C_in;
output C_out;
output [3:0] S;

assign {C_out,S}=A+B+C_in;
endmodule
