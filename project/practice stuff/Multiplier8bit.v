module Multiplier8bit
(
	input [7:0]A,
	input [7:0]B,
	output [7:0]O
);


wire [15:0]Mul;


wire [7:0]res0;
wire [15:0]reso0;

wire [7:0]res1;
wire [15:0]reso1;

wire [7:0]res2;
wire [15:0]reso2;

wire [7:0]res3;
wire [15:0]reso3;

wire [7:0]res4;
wire [15:0]reso4;

wire [7:0]res5;
wire [15:0]reso5;

wire [7:0]res6;
wire [15:0]reso6;

wire [7:0]res7;
wire [15:0]reso7;


oneto8bitmultiplier om0
(
.A(A),
.B(B[0]),
.M(res0)

);
assign reso0= {8'b0,res0[7:0]};


oneto8bitmultiplier om1
(
.A(A),
.B(B[1]),
.M(res1)

);

assign reso1= {7'b0,res1[7:0],1'b0};


oneto8bitmultiplier om2
(
.A(A),
.B(B[2]),
.M(res2)

);

assign reso2= {6'b0,res2[7:0],2'b0};

oneto8bitmultiplier om3
(
.A(A),
.B(B[3]),
.M(res3)

);

assign reso3= {5'b0,res3[7:0],3'b0};


oneto8bitmultiplier om4
(
.A(A),
.B(B[4]),
.M(res4)

);

assign reso4= {4'b0,res4[7:0],4'b0};


oneto8bitmultiplier om5
(
.A(A),
.B(B[5]),
.M(res5)

);

assign reso5= {3'b0,res5[7:0],5'b0};



oneto8bitmultiplier om6
(
.A(A),
.B(B[6]),
.M(res6)

);

assign reso6= {2'b0,res6[7:0],6'b0};

oneto8bitmultiplier om7
(
.A(A),
.B(B[7]),
.M(res7)

);

assign reso7= {1'b0,res7[7:0],7'b0};

wire [15:0]fres0;
wire [15:0]fres1;
wire [15:0]fres2;
wire [15:0]fres3;
wire [15:0]fres4;
wire [15:0]fres5;


wire [6:0]c;

adder16bit fa0
(
.A(reso0),
.B(reso1),
.Cin(0),
.S(fres0),
.Cout(c[0])
);

adder16bit fa1
(
.A(fres0),
.B(reso2),
.Cin(c[0]),
.S(fres1),
.Cout(c[1])
);

adder16bit fa2
(
.A(fres1),
.B(reso3),
.Cin(c[1]),
.S(fres2),
.Cout(c[2])
);

adder16bit fa3
(
.A(fres2),
.B(reso4),
.Cin(c[2]),
.S(fres3),
.Cout(c[3])
);

adder16bit fa4
(
.A(fres3),
.B(reso5),
.Cin(c[3]),
.S(fres4),
.Cout(c[4])
);

adder16bit fa5
(
.A(fres4),
.B(reso6),
.Cin(c[4]),
.S(fres5),
.Cout(c[5])
);

adder16bit fa6
(
.A(fres5),
.B(reso2),
.Cin(c[5]),
.S(Mul),
.Cout(c[6])
);

assign O[7:0]={Mul[7:0]};




endmodule