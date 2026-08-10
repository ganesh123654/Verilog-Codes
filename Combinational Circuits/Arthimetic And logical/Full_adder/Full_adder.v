module Full_adder(A,B,C,Sum,Carry);
	input A,B,C;
	output Sum,Carry;
	wire w1,w2,w3;

xor a1 (w1,A,B);
xor a2 (Sum,C,w1);

and a3 (w2,w1,C);
and a4 (w3,A,B);

or a5 (Carry,w2,w3);

endmodule
