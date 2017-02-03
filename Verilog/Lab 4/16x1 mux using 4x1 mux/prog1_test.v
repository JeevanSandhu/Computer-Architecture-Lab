module test_16x1mux;
reg [0:15] A;
reg [0:3] sel;
wire y;

mux16x1 m1(A,sel,y);
initial
	begin
		A=16'b1000000000000000; sel=4'b0000;
	#100	A=16'b0100000000000000; sel=4'b0001;
	#100	A=16'b0010000000000000; sel=4'b0010;
	#100	A=16'b0001000000000000; sel=4'b0011;
	end
initial #400 $finish;

initial
	$monitor("A=%b sel=%b out=%b time=%0d",A,sel,y,$time);
endmodule
