module logical
(
   input in1,
   input in2,
   input in3,
   input in4,
   input [1:0]s,
   output o


);

assign o = (s[0]==0)?((s[1]==0)?in1:in3):((s[1]==0)?in2:in4);

endmodule