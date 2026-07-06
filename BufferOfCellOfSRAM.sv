module BufferOfCellOfSRAM
(
  inout tri North,
  inout tri South,
  input wire Logic0,
  input wire Logic1
);
  _buf NorthToSouth
  (
    DataSouth,
    Logic0,
    Logic1,
    DataNorth
  );
  _buf SouthToNorth
  (
    DataNorth,
    Logic0,
    Logic1,
    DataSouth
  );
endmodule
