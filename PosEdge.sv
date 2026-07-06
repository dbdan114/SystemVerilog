module PosEdge
(
  output tri Edge,
  input wire Logic0,
  input wire Logic1,
  input tri Clock
);
  tri LatchedClock;
  tri Latched1WithClock;
  CellOfSRAM Latching
  (
    LatchedClock,
    Logic1,
    Clock,
    Logic1
  );
  and_B_to_A Latching1WithClock
  (
    Latched1WithClock,
    Logic0,
    Logic1,
    Logic1,
    Clock
  );
  and_nB_to_A MakeEdge
  (
    Edge,
    Logic0,
    Logic1,
    Latched1WithClock,
    LatchedClock
  );
endmodule
