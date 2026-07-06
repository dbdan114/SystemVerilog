module BufferOfCellOfSRAM
(
  inout tri North,
  inout tri South,
  input wire Logic0,
  input wire Logic1
);
  nmos SouthFrom0
  
  _buf NorthToSouth
  (
    South,
    Logic0,
    Logic1,
    North
  );
  _buf SouthToNorth
  (
    North,
    Logic0,
    Logic1,
    South
  );
endmodule
