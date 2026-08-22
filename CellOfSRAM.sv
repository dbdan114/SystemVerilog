module CellOfSRAM
(
  output tri ReadData,
  input tri ReadEdge,
  input tri WriteData,
  input tri WriteEdge,
  input wire Logic0,
  input wire Logic1
);
  tri pre_nData;
  tri pre_Data;
  tri nData;
  tri Data;
  tri postData;

  _not Getpre_nData
  (
    pre_nData,
    Logic0,
    Logic1,
    WriteData
  );

  _buf Getpre_Data
  (
    pre_Data,
    Logic0,
    Logic1,
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
    Logic0,
    Logic1,
    WriteEdge
  );

  assign postData = (nData == 1'b0) && (Data == 1'b1) ? Logic1 :
                    (nData == 1'b1) && (Data == 1'b0) ? Logic0 : 1'bx;
  nmos PutpostData
  (
    ReadData,
    postData,
    ReadEdge
  );
endmodule
