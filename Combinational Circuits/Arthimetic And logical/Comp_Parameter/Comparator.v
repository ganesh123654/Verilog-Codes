

module Comparator #(parameter WIDTH = 8) (input [WIDTH-1:0]a_in,b_in,output reg E_op,L_op,G_op);


always@(a_in,b_in)

begin

	if (a_in > b_in)
		G_op = 1'b1;
	else
		G_op=1'b0;

	if (a_in < b_in)
		L_op = 1'b1;
	else
		L_op = 1'b0;

	if (a_in == b_in)
		E_op = 1'b1;
	else
		E_op = 1'b0;
end

endmodule






