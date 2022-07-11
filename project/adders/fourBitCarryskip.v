module fourBitCarryskip
(
	input [3:0]A,
	input [3:0]B,
	input Cin,
	output [3:0]S,
	output Cout

);

wire [3:0]P;
wire  bp;
wire [3:0]c;

assign P[0]= A[0]^B[0];
assign P[1]= A[1]^B[1];
assign P[2]= A[2]^B[2];
assign P[3]= A[3]^B[3];

assign bp = P[1]*P[0]*P[2]*P[3];

fullAdder fa0
(
.A(A[0]),
.B(B[0]),
.Cin(Cin),
.S(S[0]),
.Cout(c[0])
); 

fullAdder fa1
(
.A(A[1]),
.B(B[1]),
.Cin(c[0]),
.S(S[1]),
.Cout(c[1])
);

fullAdder fa2
(
.A(A[2]),
.B(B[2]),
.Cin(c[1]),
.S(S[2]),
.Cout(c[2])
);

fullAdder fa3
(
.A(A[3]),
.B(B[3]),
.Cin(c[2]),
.S(S[3]),
.Cout(c[3])
);

if(bp)
	assign Cout = bp;
else
	assign Cout= c[3];
	
	
endmodule


