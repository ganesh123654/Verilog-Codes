module example();

logic x,y;

initial begin 
	$monitor("X = %b , Y=%b",x,y);
end

	assign x = 1;

initial begin
	y = 0;
	x= 0;
end

endmodule
