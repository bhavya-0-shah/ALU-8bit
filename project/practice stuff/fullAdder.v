module fullAdder 
(
input A,
input B,
input Cin,
output S,
output Cout
); 


wire a1out;
wire a2out;
wire a3out;
 

xor(S,A,B,Cin);
and(a1out,A,Cin);
and(a2out,A,B);
and(a3out,B,Cin);

or(Cout,a1out,a2out,a3out);

				  
endmodule