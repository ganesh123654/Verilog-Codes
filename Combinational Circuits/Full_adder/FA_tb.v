module FA_tb();

reg A,B,C;
wire Sum,Carry;

Full_adder dut (.A(A), .B(B), .C(C), .Sum(Sum), .Carry(Carry));

initial begin
 $dumpfile("FA_tb.vcd");
 $dumpvars(0,FA_tb);
end

initial begin


$monitor("time=%t,A=%b,B=%b,C=%b,Sum=%b,Carry=%b",$time,A,B,C,Sum,Carry);

#2 A=1'b0; B=1'b0; C=1'b0;
#2 A=1'b0; B=1'b0; C=1'b1;
#2 A=1'b0; B=1'b1; C=1'b0;
#2 A=1'b0; B=1'b1; C=1'b1;
#2 A=1'b1; B=1'b0; C=1'b0;
#2 A=1'b1; B=1'b0; C=1'b1;
#2 A=1'b1; B=1'b1; C=1'b0;
#2 A=1'b1; B=1'b1; C=1'b1;

end
endmodule
