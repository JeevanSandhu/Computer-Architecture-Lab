module muxtest;
reg A,B,S;
wire Y;
mux mux1(A,B,S,Y);
initial
	begin
		S=1;A=0;B=1;
	#50	A=0;B=0;
	#50	S=0;
	#50	A=0;B=1;
	#50	A=1;B=0;
	#50	S=1;
	#50	A=1;B=1;
	#50	A=0;B=0;
	end
initial
	$monitor("select=%b A=%b B=%b out=%b time=%0d",S,A,B,Y,$time);
endmodule
