module ALU8bit1 
(
	input  [7:0]A,
	input  [7:0]B,
	input       shift,
	input  clk,
	input a,
	input s,
	input m,
	input sh,
	input o,
	input n,
	input x,
	input nan,
	
	input  [2:0]sel,
	output      Cout,
	output reg [7:0]O
);


//SELECTION OF OPERATION







if(a)
	
	Carryskip8bit fa0
	(
	.A(A[7:0]),
	.B(B[7:0]),
	.Cin(0),
	.S(O[7:0]),
	.Cout(Cout)
	);
	
	
else if(s)
	Subtractoreightbit sub0
	(
	.A(A[7:0]),
	.B(B[7:0]),
	.S(O[7:0]),
	.Cout(Cout)
	);

	
else if(m)
	Multiplier8bit mul0
   (
	.A(A[7:0]),
	.B(B[7:0]),
	.O(O[7:0])
   );

	
else if(sh)

	SyncShifter8bit shift0
	(
	.A(A[7:0]),
	.clk(clk),
	.S(shift),
	.As(O[7:0])

	);


else if(o)

	Or8bit OR0
	(
	.A(A[7:0]),
	.B(B[7:0]),
	.O(O[7:0])

	);

	
else if(n)
	
	logicalnot8bit NOT0
	(
	.A(A[7:0]),
	.Ac(O[7:0])

	);

	
else if(x)

	Xor8bit XOR0
	(
	.A(A[7:0]),
	.B(B[7:0]),
	.O(O[7:0])

	);

	
else if(nan)
	Nand8bit NAND0
    (
	.A(A[7:0]),
	.B(B[7:0]),
	.O(O[7:0])

	);


endmodule