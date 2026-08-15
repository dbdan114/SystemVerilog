`include "DigitSupply.vh"

module PosEdge
(
  output tri Edge,
  input wire Logic0,
  input wire Logic1,
  input tri Clock
);
  tri LatchedClock;
  tri TempEdge;
  tri MakingEdge;
  CellOfSRAM MakeLatch
  (
    LatchedClock,
    Logic1,
    Clock,
    Logic1,
    Logic0,
    Logic1
  );

  assign MakingEdge = (Clock==1'b1) && (LatchedClock==1'b0) ? Logic1 : Logic0;
  _xor #(.INPUT_WIDTH(3)) MakeDiffer
  (
    Edge,
    Logic0,
    Logic1,
    {MakingEdge,Clock,LatchedClock}
  );
endmodule
