module HA_tb();
reg A,B;
wire Sum,Carry;

Half_adder Dut(.A(A),.B(B),.Sum(Sum),.Carry(Carry));

initial begin
 $dumpfile("HA_tb.vcd");
 $dumpvars(0,HA_tb);
end

initial begin

$monitor("Time=%g, A=%b B=%b Sum=%b ,Carry=%b",$time,A,B,Sum,Carry);

	A=1'b0; B=1'b0; #5
	A=1'b0; B=1'b1; #5
	A=1'b1; B=1'b0; #5
	A=1'b1; B=1'b1; #5

#40 $finish;

end 
endmodule