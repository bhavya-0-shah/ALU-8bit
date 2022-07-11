module AndOrCircuit 
       (input in1,
        input in2,
        input in3,
        output out
        );
				  
wire andout;

and(andout,in1,in2);

or(out,in3,andout);	

endmodule			  