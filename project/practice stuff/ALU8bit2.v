module ALU8bit2
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
case(sel)
begin
3'b000: 	begin
			Carryskip8bit fa0
			(
			.A(A[7:0]),
			.B(B[7:0]),
			.Cin(0),
			.S(O[7:0]),
			.Cout(Cout)
			);
			end
			
3'b001:     begin
			Subtractoreightbit sub0
			(
			.A(A[7:0]),
			.B(B[7:0]),
			.S(O[7:0]),
			.Cout(Cout)
			);
			end
			
3'b010:		begin
				Multiplier8bit mul0
			(
				.A(A[7:0]),
				.B(B[7:0]),
				.O(O[7:0])
			);

			
			end


3'b011:		begin 
				SyncShifter8bit shift0
				(
				.A(A[7:0]),
				.clk(clk),
				.S(shift),
				.As(O[7:0])
			
				);

			end

3'b100:    	begin
			Or8bit OR0
	(
	.A(A[7:0]),
	.B(B[7:0]),
	.O(O[7:0])

	);

			end	

3'b101:	begin
			logicalnot8bit NOT0
	(
	.A(A[7:0]),
	.Ac(O[7:0])

	);
end	


3'b110:begin
		Xor8bit XOR0
	(
	.A(A[7:0]),
	.B(B[7:0]),
	.O(O[7:0])

	);

end


3'b111:begin

	Nand8bit NAND0
    (
	.A(A[7:0]),
	.B(B[7:0]),
	.O(O[7:0])

	);

end


end
default:

 

endcase

endmodule