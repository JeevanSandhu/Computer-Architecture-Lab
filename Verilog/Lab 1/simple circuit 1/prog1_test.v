module t_Simple_Circuit;

wire D,E;
reg A,B,C;

Simple_Circuit S1(A,B,C,D,E);
initial
	begin
		A=1'b0;B=1'b0;C=1'b0;
	#100	A=1'b1;B=1'b0;C=1'b1;
	#100	A=1'b1;B=1'b1;C=1'b0;
	end
initial #400 $finish;
endmodule
