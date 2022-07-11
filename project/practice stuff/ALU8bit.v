module ALU8bit 
(
	input  [7:0]A,
	input  [7:0]B,
	input       shift,
	input  clk,
	
	input  [2:0]sel,
	output      Cout,
	output reg [7:0]O
);


//SELECTION OF OPERATION

wire [2:0] sel1;
wire [2:0] sel2;
wire [2:0] sel3;
wire [2:0] sel4;
wire [2:0] sel5;
wire [2:0] sel6;
wire [2:0] sel7;
wire [2:0] sel8;

wire a;
wire s;
wire m;
wire sh;
wire o;
wire n;
wire x;
wire nan;

assign sel1[2:0]=(sel[2:0]+3'b000);
assign a= ~(sel1[0]+sel1[1]+sel1[2]);

assign sel2[2:0]=(sel[2:0]+	logicalnot8bit NOT0
	(
	.A(A[7:0]),
	.Ac(O[7:0])

	););
assign s=(sel2[0]*sel2[1]*sel2[2]);

assign sel3[2:0]=(sel[2:0]+3'b101);
assign m=(sel3[0]*sel3[1]*sel3[2]);

assign sel4[2:0]=(sel[2:0]+3'b100);
assign sh=(sel4[0]*sel4[1]*sel4[2]);

assign sel5[2:0]=(sel[2:0]+3'b011);
assign o=(sel5[0]*sel5[1]*sel5[2]);

assign sel6[2:0]=(sel[2:0]+3'b010);
assign n=(sel6[0]*sel6[1]*sel6[2]);

assign sel7[2:0]=(sel[2:0]+3'b001);
assign x=(sel7[0]*sel7[1]*sel7[2]);

assign sel8[2:0]=(sel[2:0]+3'b000);
assign nan=(sel8[0]*sel8[1]*sel8[2]);


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