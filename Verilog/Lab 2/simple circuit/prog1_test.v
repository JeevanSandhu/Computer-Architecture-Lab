module t_Simple_Circuit;

wire F1,F2;
reg A,B,C;

Simple_Circuit S1(A,B,C,F1,F2);
initial
	begin
		A=1'b0;B=1'b0;C=1'b0;
	#100	A=1'b0;B=1'b0;C=1'b1;
	#100	A=1'b0;B=1'b1;C=1'b0;
	#100	A=1'b0;B=1'b1;C=1'b1;
	#100	A=1'b1;B=1'b0;C=1'b0;
	#100	A=1'b1;B=1'b0;C=1'b1;
	#100	A=1'b1;B=1'b1;C=1'b0;
	#100	A=1'b1;B=1'b1;C=1'b1;
	end
initial #800 $finish;
endmodule