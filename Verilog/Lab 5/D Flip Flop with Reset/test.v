module dff_tb;
reg d,clk,rst;
wire q;

dff1 dff_inst(q,d,clk,rst);

initial
	begin
		d=0; clk=1; rst=0;
	#100	d=0; clk=~clk;
	#100	d=1; clk=~clk;
	#100	d=0; clk=~clk;
	#100	d=1; clk=~clk; rst=1;
	#100	d=0; clk=~clk;
	#100	d=1; clk=~clk;
	end
endmodule
