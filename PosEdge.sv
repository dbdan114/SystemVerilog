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
  and_nB_to_A MakeEdge
  (
    Edge,
    Logic0,
    Logic1,
    LatchedClock,
    Clock
  );
  
endmodule
