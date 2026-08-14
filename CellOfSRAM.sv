`include "DigitSupply.vh"
module CellOfSRAM
(
  output tri ReadData,
  input tri ReadEdge,
  input tri WriteData,
  input tri WriteEdge
);
  tri preData;
  tri nData;
  tri Data;
  tri postData;

  nmos GetpreData
  (
    preData,
    ReadData,
    ReadEdge
  );

  _not Getpre_nData
  (
    nData,
    rVss,
    rVdd,
    preData
  );

  _buf Getpre_Data
  (
    Data,
    rVss,
    rVdd,
    preData
  );

  assign 
    
endmodule
