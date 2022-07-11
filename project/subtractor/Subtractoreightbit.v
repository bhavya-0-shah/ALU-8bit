module Subtractoreightbit 
(
input [7:0]A,
input [7:0]B,
output [7:0]S,
output Cout
);

wire [7:0]I;
wire [7:0]Q;
wire [7:0]t;
wire cin;

Invertereightbit ia(
.A(B),
.Ac(I)
);

assign t = 8'b1;
assign cin = 8'b0;
assign Q=I+t;

Addereightbit a1
(
.A(A),
.B(Q),
.Cin(cin),
.S(S),
.Cout(Cout)
);


endmodule

