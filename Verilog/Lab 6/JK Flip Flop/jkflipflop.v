module jkff(j,k,clk,rst,q);
input j,k,clk,rst;
output q;
reg q;
always @(posedge clk)
begin
	if(j==1 & k==1 & rst==0)
	begin
		q<=~q;	//toggle
	end
	else if(j==1 & k==0 & rst==0)
	begin
		q<=1;	//set
	end
	else if(j==0 & k==1)
	begin
		q<=0;	//clear
	end
	else if(j==0 &k==0)
	begin
		q<=q;	//no chnage
	end
end

always @(posedge rst)
begin
	q<=0;	//The reset normally has negligible
end
endmodule
