module DecimaltoBinaryEncoder
(
input zero,
input one,
input two,
input three,
input four,
input five,
input six,
input seven,
input eight,
input nine,
output reg [3:0] o);

always @ (*)
 if (zero==1'b1)
     o=4'b0000;
else if(one==1'b1)
     o=4'b0001;
else if(two==1'b1)
     o=4'b0010;
else if(three==1'b1)
     o=4'b0011;
else if(four==1'b1)
     o=4'b0100;
else if(five==1'b1)
     o=4'b0101;
else if(six==1'b1)
     o=4'b0110;
else if(seven==1'b1)
     o=4'b0111;
else if(eight==1'b1)
     o=4'b1000;
else 
     o=4'b1001;
endmodule













