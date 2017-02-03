module tff_tb;
reg clk,rst,t;
wire q;

tff tff_inst(t,clk,rst,q);

initial
	begin
		t=0; clk=1; rst=0;
	#100	t=1; clk=~clk;
	#100	t=0; clk=~clk;
	#100	t=1; clk=~clk; rst=~rst;
	#100	t=1; clk=~clk;
	#100	t=1; clk=~clk; 
	#100	t=0; clk=~clk; rst=~rst;
	#100	t=1; clk=~clk;
	#100	t=0; clk=~clk;
	#100	t=1; clk=~clk; rst=~rst;
	#100	t=1; clk=~clk;
	end
endmodule
