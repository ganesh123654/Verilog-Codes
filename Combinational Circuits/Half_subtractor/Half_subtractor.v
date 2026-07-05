module Half_subtractor(A,B,Diff,Borr);

input A,B;
output Diff,Borr;

assign Diff = A^B;
assign Borr = ~A&B;

endmodule


