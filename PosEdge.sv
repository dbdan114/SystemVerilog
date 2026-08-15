`include "DigitSupply.vh"

module PosEdge
(
  //output tri MakingEdge;
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

  assign Edge = @(posedge Clock);
  /*_xor #(.INPUT_WIDTH(4)) MakeDiffer
  (
    Edge,
    Logic0,
    Logic1,
    {MakingEdge,Clock,LatchedClock,Clock}
  );*/
endmodule
