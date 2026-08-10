module HS_tb();

reg A,B;
wire Diff,Borr;

Half_subtractor DUT(.A(A),.B(B),.Diff(Diff),.Borr(Borr));

initial begin 
 $dumpfile("HS_tb.vcd");
 $dumpvars(0,HS_tb);
end

initial begin
	$monitor("time=%t A=%b , B=%b , Difference=%b Borrow=%b",$time,A,B,Diff,Borr);

	A=1'b0; B=1'b0; #5
	A=1'b0; B=1'b1; #5
	A=1'b1; B=1'b0; #5
	A=1'b1; B=1'b1; #5
#30 $finish;

end
endmodule