module tff(T,clk,rst,q);
input T,clk,rst;
output q;
reg q;

always @(posedge clk)
	begin
		if(!rst)
			begin
				q<=1'b0;
			end
		else if(T)
			begin
				q<=!q;
			end
	end
endmodule
