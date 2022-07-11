module timer #(parameter maxtimervalue=26d'50000000)
(
input i_clk,
input i_reset,
output reg feqout

);

reg [25:0] timervalue;


always @(posedge i_clk or posedge i_reset)
begin
   if(i_reset)
     timervalue <= 0;
   else if(timervalue<maxtimervalue)
     timervalue <= timervalue + 1'd1;
   else
     timervalue <= 26'd0;

end

always @(posedge i_clk or posedge i_reset)
begin
   if(i_reset)
     feqout <= 1'b0;
   else
      if(timervalue==maxtimervalue)
         feqout <= ~feqout;
end
endmodule
