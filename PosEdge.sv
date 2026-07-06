module PosEdge
(
  output tri Edge,
  input wire Logic0,
  input wire Logic1,
  input tri Clock
);
  tri LatchedClock;
  tri Latched1WithLatchedClock;
  CellOfSRAM Latching
  (
    LatchedClock,
    Logic1,
    Clock,
    Logic1
  );
  and_nB_to_A And1WithLatchedClock
  (
    Latched1WithLatchedClock,
    Logic0,
    Logic1,
    1,
    LatchedClock
  );
  and_B_to_A MakeEdge
  (
    Edge,
    Logic0,
    Logic1,
    Latched1WithLatchedClock,
    Clock
  );
  
endmodule
