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
    Logic1,
    Clock,
    Logic1
  );
  and_nB_to_A MakeEdge
  (
    Edge,
    Logic0,
    Logic1,
    Clock,
    LatchedClock
  );
  
endmodule
