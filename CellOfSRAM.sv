`include "DigitSupply.vh"

module CellOfSRAM
(
  output tri outputData,
  input tri ReadEdge,
  input tri inputData,
  input tri WriteEdge
);

  tri TempWest;
  tri DataWest;
  tri DataNorth;
  tri DataSouth;
  tri DataEast;
  tri TempEast;

  nmos ToTempWest
  (
    TempWest,
    inputData,
    WriteEdge
  );
    
  _buf ToDataWest
  (
    DataWest,
    Vss,
    Vdd,
    TempWest
  );

  pmos WestToNorth
  (
    DataNorth,
    DataWest,
    Vss
  );

  pmos WestToSouth
  (
    DataSouth,
    DataWest,
    Vss
  );
  BufferOfCellOfSRAM Buffering
  (
    DataNorth,
    DataSouth,
    rVss,
    rVdd
  );
  pmos NorthToEast
  (
    DataEast,
    DataNorth,
    Vss
  );
  pmos SouthToEast
  (
    DataEast,
    DataSouth,
    Vss
  );
  _buf ToEast
  (
    TempEast,
    1'b0,
    1'b1,
    DataEast
  );
  nmos FromTempEast
  (
    outputData,
    TempEast,
    ReadEdge
  );
    
endmodule
