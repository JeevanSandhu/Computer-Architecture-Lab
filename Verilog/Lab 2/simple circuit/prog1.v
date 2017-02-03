module Simple_Circuit(A,B,C,F1,F2);

input A,B,C;
output F1,F2;
wire T1,T2,T3,E1,E2,E3,L;

and G1(T2,A,B,C);
or G2(T1,A,B,C);

and G3(E1,A,B);
and G4(E2,A,C);
and G5(E3,B,C);

or G6(F2,E1,E2,E3);
not G7(L,F2);
and G8(T3,T1,L);

or G9(F1,T1,T3);

endmodule