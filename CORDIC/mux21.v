// 2*1 mux module for control input
module mux21 #(parameter N = 16)(out,a,b,sel);

output  reg [N-1:0]out;
input [N-1:0]a,b;
input sel;

always @ (sel or a or b)
        case (sel)
                1'b0:  out <= a;
                1'b1:  out <= b;
                default: out <= b; 
        endcase 
endmodule