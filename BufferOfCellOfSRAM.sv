module BufferOfCellOfSRAM
(
  inout tri North,
  inout tri South,
  input wire Logic0,
  input wire Logic1
);
  pmos SouthFrom0OfNorth
  (
    South,
    Logic0,
    North
  );
  nmos SouthFrom1OfNorth
  (
    South,
    Logic1,
    North
  );
  pmos NorthFrom0OfSouth
  (
    North,
    Logic0,
    South
  );
  nmos NorthFrom1OfSouth
  (
    North,
    Logic1,
    South
  );
endmodule
