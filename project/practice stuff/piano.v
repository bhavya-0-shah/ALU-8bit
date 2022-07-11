module piano
(
input i_clk,
input i_reset,
input k1,
input k2,
input k3,
input k4,

output reg speaker
);

wire freq4k,freq8k,freq16k,freq32k;


timer #(.maxtimervalue(25000))t1
(
.i_clk(i_clk),
.i_reset(i_reset),
.feqout(freq4k)

);

timer #(.maxtimervalue(12500))t2
(
.i_clk(i_clk),
.i_reset(i_reset),
.feqout(freq8k)

);

timer #(.maxtimervalue(6250))t3
(
.i_clk(i_clk),
.i_reset(i_reset),
.feqout(freq16k)

);

timer #(.maxtimervalue(3125))t4
(
.i_clk(i_clk),
.i_reset(i_reset),
.feqout(freq32k)

);


always @(*)
begin
    if(k1)
      speaker=freq4k;
    else if(k2)
      speaker=freq8k;
    else if(k3)
      speaker=freq16k;
    else if (k4)
      speaker=freq32k;
    else
      speaker=1'b0;
end



endmodule
