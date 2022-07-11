module logicalnot8bit
(
	input [7:0]A,
	output [7:0]Ac

);

assign Ac[7:0]= ~A[7:0];

endmodule 