// shifter module 
module shifter #(parameter N = 16)(dataout,datain,shift);

output [N-1:0] dataout;
input [N-1:0] datain;
input [3:0] shift;

	assign dataout = datain >>> shift;

endmodule