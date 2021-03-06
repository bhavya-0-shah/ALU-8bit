module syncAdder
(
input reset,
input clk,
input [3:0] A,
input [3:0] B,
output reg [4:0] sum

);

always @ (posedge clk or posedge reset)
if(reset==1'b1)
  sum <= 1'b0;
else
  sum <= A + B;


endmodule
