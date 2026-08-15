module FA_Decode_tb();

reg A,B,Cin;
wire Sum,Carry;

FA_Decode dut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Carry(Carry));

initial begin
 $dumpfile("FA_Decode_tb.vcd");
 $dumpvars(0,FA_Decode_tb);
end

initial begin


$monitor("time=%t,A=%b,B=%b,C=%b,Sum=%b,Carry=%b",$time,A,B,Cin,Sum,Carry);

#10 A=1'b0; B=1'b0; Cin=1'b0;
#10 A=1'b0; B=1'b0; Cin=1'b1;
#10 A=1'b0; B=1'b1; Cin=1'b0;
#10 A=1'b0; B=1'b1; Cin=1'b1;
#10 A=1'b1; B=1'b0; Cin=1'b0;
#10 A=1'b1; B=1'b0; Cin=1'b1;
#10 A=1'b1; B=1'b1; Cin=1'b0;
#10 A=1'b1; B=1'b1; Cin=1'b1;

end
endmodule
