module dffr
(
input wire clk,
input wire reset,
input wire d,
output reg q
);


always @(posedge clk)
if (reset==1'b1)
    q <= 1'b0;
else    
    q <= d;


endmodule