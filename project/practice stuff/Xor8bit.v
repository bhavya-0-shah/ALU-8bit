module Xor8bit
(
	input [7:0]A,
	input [7:0]B,
	output [7:0]O

);

assign O[7:0]=A[7:0]^B[7:0];



endmodule