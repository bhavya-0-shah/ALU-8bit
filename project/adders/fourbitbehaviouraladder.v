module fourbitbehaviouraladder 
(
input [3:0]A,
input [3:0]B,
output reg [4:0]Sum
);

always @ (A,B)
Sum=A+B;


endmodule

