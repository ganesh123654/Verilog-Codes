module FS_tb();

reg A,B,C; //Defining input as register
wire Dif,Borr; //Defining output as wire

Full_subtractor DUT(.A(A),.B(B),.C(C),.Dif(Dif),.Borr(Borr));// instantiation of Full_subtractor 

initial begin
	$dumpfile("FS_tb.vcd");
	$dumpvars(0,FS_tb);
end

//all posssible inputs for 3 bit is given 
initial begin

$monitor("time=%t,A=%b,B=%b,C=%b,Dif=%b,Borr=%b",$time,A,B,C,Dif,Borr);

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
