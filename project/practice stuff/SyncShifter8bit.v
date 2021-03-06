module SyncShifter8bit 
(
	input [7:0] A,
	input clk,
	input  S,
	output reg [7:0]As

);

always @(posedge clk)
	repeat(S)
		begin
		As[0]<=A[7];
		As[1]<=A[0];
		As[2]<=A[1];
		As[3]<=A[2];
		As[4]<=A[3];
		As[5]<=A[4];
		As[6]<=A[5];
		As[7]<=A[6];
		end

endmodule