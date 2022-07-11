module eightBitCLA
(
	input [7:0] A,
	input [7:0] B,
	input Cin,
	output [7:0]S,
	output Cout
);

wire [7:0]P;    //propogate
wire [7:0]G;
wire [6:0]C;

//Si = ai xor bi xor ci
//Ci+1= Pi*Ci+Gi
//Pi= Ai xor Bi
//Gi = Ai*Bi



assign  S[0]= A[0] ^ B[0] ^ Cin;

assign  P[0]= A[0] ^ B[0];
assign  G[0]= A[0] * B[0];

assign  C[0]= P[0]*Cin + G[0];



assign  S[1]= A[1] ^ B[1] ^ C[0];

assign  P[1]= A[1] ^ B[1];
assign  G[1]= A[1] * B[1];

assign  C[1]= P[1]*C[0] + G[1];



assign  S[2]= A[2] ^ B[2] ^ C[1];
				
assign  P[2]= A[2] ^ B[2];
assign  G[2]= A[2] * B[2];
				
assign  C[2]= P[2]*C[1] + G[2];



assign  S[3]= A[3] ^ B[3] ^ C[2];

assign  P[3]= A[3] ^ B[3];
assign  G[3]= A[3] * B[3];

assign  C[3]= P[3]*C[2] + G[3];


assign  S[4]= A[4] ^ B[4] ^ C[3];

assign  P[4]= A[4] ^ B[4];
assign  G[4]= A[4] * B[4];

assign  C[4]= P[4]*C[3] + G[4];



assign  S[5]= A[5] ^ B[5] ^ C[4];

assign  P[5]= A[5] ^ B[5];
assign  G[5]= A[5] * B[5];

assign  C[5]= P[5]*C[4] + G[5];



assign  S[6]= A[6] ^ B[6] ^ C[5];

assign  P[6]= A[6] ^ B[6];
assign  G[6]= A[6] * B[6];

assign  C[6]= P[6]*C[5] + G[6];



assign  S[7]= A[7]^B[7]^C[6];

assign  P[7]= A[7] ^ B[7];
assign  G[7]= A[7] * B[7];

assign  Cout= P[7]*C[6] + G[7];

endmodule







