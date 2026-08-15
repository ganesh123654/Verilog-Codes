module decode_tb();
reg [2:0]in;
reg enable;
wire [7:0]y;

decoder dut (.in(in),.enable(enable),.y(y));

initial begin
    $dumpfile("decode_tb.vcd");
    $dumpvars(0,decode_tb);


    $monitor("Time=%t Enable=%b INPUT=%b OUTPUT=%b ",$time,enable,in,y);

enable=1'b1;
#10;
    in = 3'b000;#10;
    in = 3'b001;#10; 
    in = 3'b010;#10;
    in = 3'b011;#10;
    in = 3'b100;#10;
    in = 3'b101;#10;
    in = 3'b110;#10;
    in = 3'b111;#10;
    $finish;
end
endmodule