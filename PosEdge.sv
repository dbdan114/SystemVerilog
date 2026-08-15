`include "DigitSupply.vh"

module PosEdge
(
  input  tri Clock,
  output tri ClockEdge
);
  always_ff @(posedge Clock) begin
    assign ClockEdge=Vdd;
    
  end
endmodule
