module mux(A,B,select,out);
input A,B,select;
output out;
	assign out=select?A:B;
endmodule