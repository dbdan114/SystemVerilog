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

  assign MakingEdge = rVss;

  pmos GetTempEdge0
  (
    TempEdge,
    Vdd,
    LatchedClock
  );

  nmos GetTempEdge1
  (
    MakingEdge,
    TempEdge,
    LatchedClock
  );

  _buf ReturnEdge
  (
    Edge,
    Logic0,
    Logic1,
    MakingEdge
  );
endmodule
