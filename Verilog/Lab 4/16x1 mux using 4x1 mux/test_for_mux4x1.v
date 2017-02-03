module test_4x1mux;
reg [0:3] A;
reg [0:1] sel;
wire y;

mux4x1 m1(A,sel,y);
initial
	begin
		A=4'b1000; sel=2'b00;
	#100	A=4'b0100; sel=2'b01;
	#100	A=4'b0010; sel=2'b10;
	#100	A=4'b0001; sel=2'b11;
	end
initial #400 $finish;

initial
	$monitor("A=%b sel=%b out=%b time=%0d",A,sel,y,$time);
endmodule
