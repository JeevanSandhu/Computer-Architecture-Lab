module adder_test;
reg x,y,z;
wire d0,d1,d2,d3,d4,d5,d6,d7;

decoder dec(d0,d1,d2,d3,d4,d5,d6,d7,x,y,z);
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
	$monitor("%b %b %b %b %b %b %b %b", d0,d1,d2,d3,d4,d5,d6,d7,$time);
endmodule
