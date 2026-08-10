module Comp_tb();

//initailising inputs and outputs

reg [3:0]a_in;
reg [3:0]b_in;
wire L_op,E_op,G_op;

//instantation section

Comparator Dut (.a_in(a_in),.b_in(b_in),.L_op(L_op),.E_op(E_op),.G_op(G_op));

initial begin

//Dump file format Value change dump

	$dumpfile("Comp_tb.vcd");
	$dumpvars(0,Comp_tb);
end

initial begin
//Displaying section 

$monitor("Time=%t ,a_in=%b ,b_in=%b ,Less= %b, Great=%b Equal=%b ",$time,a_in,b_in,L_op,G_op,E_op);

//Stimulus section

	a_in = 4'b0000; b_in = 4'b0001; #10;
	a_in = 4'b0001; b_in = 4'b0101; #10;
	a_in = 4'b1000; b_in = 4'b1001; #10;
	a_in = 4'b0001; b_in = 4'b0001; #10;

end

endmodule  

