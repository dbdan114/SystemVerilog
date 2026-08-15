`include "DigitSupply.vh"

module PosEdge
(
  output tri Edge,
  input wire Logic0,
  input wire Logic1,
  input tri Clock
);
  tri LatchedClock;
  CellOfSRAM MakeLatch
  (
    LatchedClock,
    Logic1,
    Clock,
    Logic1,
    Logic0,
    Logic1
  )

  assign Edge = (LatchedClock == 1'b0) && (Clock == 1'b1) ? Logic1 : Logic0;
    
endmodule
