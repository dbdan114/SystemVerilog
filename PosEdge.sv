module PosEdge
(
  output tri Edge,
  input wire Logic0,
  input wire Logic1,
  input tri Clock
);
  tri LatchedClock;
  CellOfSRAM Latching
  (
    LatchedClock,
    Vdd,
    Clock,
    Vdd
  );
endmodule
