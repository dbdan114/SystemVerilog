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

  _not GetnData
  (
    nData,
    Vss,
    Vdd,
    preData
  );

  _buf GetData
  (
    Data,
    Vss,
    Vdd,
    preData
  );

  NegatingCellOfSRAM Negate
  (
    nData,
    Data,
    rVss,
    rVdd
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
