`include "..\Data Routing\Decode_FA\decoder.v"
module FA_Decode(A,B,Cin,Sum,Carry);

    input A,B,Cin;
    output Sum,Carry;

wire [7:0]out;
    decoder dut(.in({A,B,Cin}),.enable(1'b1),.y(out));

assign Sum = out[1] |out[2] |out[4] |out[7];
assign Carry= out[3] |out[5] |out[6] |out[7]; 
// or g1(Sum,y[1],y[2],y[4],y[7]);
// or g2(Carry,y[3],y[5],y[6],y[7]);

endmodule

