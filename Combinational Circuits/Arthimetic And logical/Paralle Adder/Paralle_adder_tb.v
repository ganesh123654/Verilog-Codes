module parallel_adder_tb();
reg [3:0]A,B;
reg Cin;
wire [3:0]Sum;
wire Cout;

parallel_adder dut (.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));


initial begin

$dumpfile("parallel_adder.vcd");
$dumpvars(0,parallel_adder_tb);

$monitor("%t , %b , %b , %b , %b , %b",$time,A,B,Cin,Sum,Cout);

A=4'b0000; B=4'b0000; Cin=1'b0;
#10;

A=4'b0010; B=4'b0101; Cin=1'b0;
#10;

A=4'b1000; B=4'b0100; Cin=1'b1;
#10;

A=4'b0110; B=4'b0111; Cin=1'b1;
#10;

$finish;
end 
endmodule