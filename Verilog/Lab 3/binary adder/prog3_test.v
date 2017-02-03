module BA_test;
reg [3:0] A,B;
reg C_in;
wire C_out;
wire [3:0] S;

binary_adder BA(A,B,C_in,S,C_out);
initial
	begin
		A=4'b0000;B=4'b0010;C_in=1'b1;
	#100	A=4'b0011;B=4'b1100;C_in=1'b0;
	#100	A=4'b0111;B=4'b0111;C_in=1'b1;
	end
initial #300 $finish;
endmodule
