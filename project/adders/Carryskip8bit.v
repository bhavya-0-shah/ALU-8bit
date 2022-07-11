module Carryskip8bit
(
	input [7:0]A,
	input [7:0]B,
	input Cin,
	output [7:0]S,
	output Cout

);

wire c;

fourBitCarryskip fa0
(
.A(A[3:0]),
.B(B[3:0]),
.Cin(Cin),
.S(S[3:0]),
.Cout(c)

);

fourBitCarryskip fa1
(
.A(A[7:4]),
.B(B[7:4]),
.Cin(c),
.S(S[7:4]),
.Cout(Cout)

);




endmodule