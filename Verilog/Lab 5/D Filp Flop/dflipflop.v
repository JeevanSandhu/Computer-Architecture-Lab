module dff(q,d,clk);
output q;
input d,clk;
reg q; //required in sequential circuits

always @(posedge clk)
	q<=d;
endmodule