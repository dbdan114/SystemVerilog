`include "DigitSupply.vh"
module CellOfSRAM
(
  output tri ReadData,
  input tri ReadEdge,
  input tri WriteData,
  input tri WriteEdge
);
  tri preData;
  tri pre_nData;
  tri pre_Data;
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
    pre_nData,
    
endmodule
