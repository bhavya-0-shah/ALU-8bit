module mux_2_input (
	output OP, 
	input  A, B, sel);	 

        assign OP= (sel)? A : B;     

		
endmodule