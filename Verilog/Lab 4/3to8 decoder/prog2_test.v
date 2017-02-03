module adder_test;
reg x,y,z;
wire s,c;

fadder fadd(s,c,x,y,z);
initial
	begin
		x=1'b0;y=1'b0;z=1'b0;
	#100	x=1'b0;y=1'b0;z=1'b1;
	#100	x=1'b0;y=1'b1;z=1'b0;
	#100	x=1'b0;y=1'b1;z=1'b1;
	#100	x=1'b1;y=1'b0;z=1'b0;
	#100	x=1'b1;y=1'b0;z=1'b1;
	#100	x=1'b1;y=1'b1;z=1'b0;
	#100	x=1'b1;y=1'b1;z=1'b1;
	end
initial #800 $finish;

initial
	$monitor("x=%b y=%b z= %b sum=%b carry=%b time=%0d", x,y,z,s,c,$time);
endmodule