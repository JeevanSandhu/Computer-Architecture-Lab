module halfadder1(D1,D3,x,y);
input x,y;
output D1,D3;
xor(D1,x,y);
and(D3,x,y);
endmodule

module halfadder2(D2,S,D3,z);
input D3,z;
output D2,S;
xor(S,D3,z);
and(D2,D3,z);
endmodule

module fulladder(C,S,x,y,z);
input x,y,z;
output S,C;
wire D1,D2,D3;
halfadder1 l1(D3,D1,x,y);
halfadder2 l2(D2,S,D3,z);
or(C,D1,D2);
endmodule