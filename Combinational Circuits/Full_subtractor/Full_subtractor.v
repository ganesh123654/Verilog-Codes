module Full_subtractor(A,B,C,Dif,Borr);

input A,B,C;
output Dif,Borr;

assign Dif=A^B^C;
assign Borr=~A&(B^C)|B&C;

endmodule