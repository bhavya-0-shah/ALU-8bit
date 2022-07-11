module adder16bit
(
	input  [15:0]A,
	input  [15:0]B,
	input        Cin,
	output [15:0]S,
	output       Cout
);

wire [1:0]c;

Addereightbit fa0 
(
.A(A[7:0]),
.B(B[7:0]),
.Cin(Cin),
.S(S[7:0]),
.Cout(c[0])
);


Addereightbit fa1 
(
.A(A[15:8]),
.B(B[15:8]),
.Cin(c[0]),
.S(S[15:8]),
.Cout(c[1])
);

assign Cout= c[1];



endmodule