module oneto8bitmultiplier
(
	input  [7:0]A,
	input  B,
	output [7:0]M

);

assign M[0]= A[0]*B;
assign M[1]= A[1]*B;
assign M[2]= A[2]*B;
assign M[3]= A[3]*B;
assign M[4]= A[4]*B;
assign M[5]= A[5]*B;
assign M[6]= A[6]*B;
assign M[7]= A[7]*B;





endmodule