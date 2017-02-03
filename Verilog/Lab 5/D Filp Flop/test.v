module dff_tb;
reg d,clk;
wire q;

dff dff_inst(q,d,clk);

initial
	begin
		d=0;clk=1;
	#100	d=0;clk=~clk;
	#100	d=1;clk=~clk;
	#100	d=0;clk=~clk;
	#100	d=1;clk=~clk;
	#100	d=0;clk=~clk;
	#100	d=1;clk=~clk;
	end
endmodule