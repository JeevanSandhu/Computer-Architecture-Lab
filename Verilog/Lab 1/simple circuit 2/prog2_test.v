module t_Simple_Circuit;

wire S,C;
reg A,B;

Simple_Circuit S1(A,B,S,C);
initial
	begin
		A=1'b0;B=1'b0;
	#100	A=1'b0;B=1'b1;
	#100	A=1'b1;B=1'b0;
	#100	A=1'b1;B=1'b1;
	end
initial #400 $finish;
endmodule