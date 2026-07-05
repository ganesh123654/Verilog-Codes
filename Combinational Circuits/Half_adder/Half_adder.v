module Half_adder(A,B,Sum,Carry);
input A,B;
output Sum,Carry;


xor a1(Sum,A,B);
and a2(Carry,A,B);

endmodule
