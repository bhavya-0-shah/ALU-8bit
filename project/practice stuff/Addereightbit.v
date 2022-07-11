module Addereightbit 
(
input [7:0]A,
input [7:0]B,
input Cin,
output [7:0]S,
output Cout
);

wire c0;
wire c1;
wire c2;
wire c3;
wire c4;
wire c5;
wire c6;



fullAdder fa0
(
.A(A[0]),
.B(B[0]),
.Cin(Cin),
.S(S[0]),
.Cout(c0)
); 

fullAdder fa1
(
.A(A[1]),
.B(B[1]),
.Cin(c0),
.S(S[1]),
.Cout(c1)
);

fullAdder fa2
(
.A(A[2]),
.B(B[2]),
.Cin(c1),
.S(S[2]),
.Cout(c2)
);

fullAdder fa3
(
.A(A[3]),
.B(B[3]),
.Cin(c2),
.S(S[3]),
.Cout(c3)
);

fullAdder fa4
(
.A(A[4]),
.B(B[4]),
.Cin(c3),
.S(S[4]),
.Cout(c4)
);

fullAdder fa5
(
.A(A[5]),
.B(B[5]),
.Cin(c4),
.S(S[5]),
.Cout(c5)
);

fullAdder fa6
(
.A(A[6]),
.B(B[6]),
.Cin(c5),
.S(S[6]),
.Cout(c6)
);

fullAdder fa7
(
.A(A[7]),
.B(B[7]),
.Cin(c6),
.S(S[7]),
.Cout(Cout)
);



endmodule

