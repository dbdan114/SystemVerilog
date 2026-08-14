`include "DigitSupply.vh"
module CellOfSRAM
(
  output tri ReadData,
  input tri ReadEdge,
  input tri WriteData,
  input tri WriteEdge
);
  tri pre_nData;
  tri pre_Data;
  tri nData;
  tri Data;
  tri postData;

  _not Getpre_nData
  (
    pre_nData,
    Vss,
    Vdd,
    WriteData
  );

  _buf Getpre_Data
  (
    pre_Data,
    Vss,
    Vdd,
    WriteData
  );

  nmos GetnData
  (
    nData,
    pre_nData,
    WriteEdge
  );

  nmos GetData
  (
    Data,
    pre_Data,
    WriteEdge
  );
  
  NegatingCellOfSRAM Negate
  (
    nData,
    Data,
    rVss,
    rVdd,
    WriteEdge
  );

  assign postData = (nData == 1'b0) && (Data == 1'b1) ? Vdd :
                    (nData == 1'b1) && (Data == 1'b0) ? Vss : 1'bx;
  nmos PutpostData
  (
    ReadData,
    postData,
    ReadEdge
  );
endmodule
