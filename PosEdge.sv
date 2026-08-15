`include "DigitSupply.vh"

module PosEdge
(
  input  tri Clock,
  output tri ClockEdge
);
  always_ff @(posedge Clock)
  begin
    if(Vdd)
    begin
      ClockEdge=Vdd;
    end
  end
endmodule
