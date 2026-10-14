`include "DigitSupply.vh"
module CellOfDRAM
(
  output tri outputData,
  input tri ReadEdge,
  input tri inputData,
  input tri WriteEdge,
  input tri RefreshEdge
);

  tri PreDataToWrite;
  tri DataToWrite;
  tri DataToRefresh;
  trireg LatchOfDRAM;
  tri DataToRead;
  
  _buf MakeInputToSupplyStrength
  (
    PreDataToWrite,
    Vss,
    Vdd,
    inputData
  );

  nmos InsertWriting
  (
    DataToWrite, 
    PreDataToWrite, 
    WriteEdge
  );

  nmos InsertRefreshing
  (
    DataToWrite, 
    DataToRefresh, 
    RefreshEdge
  );

  nmos SendToTriReg
  (
    LatchOfDRAM,
    DataToWrite,
    1'b1
  );

  _buf ToRefresh
  (
    DataToRefresh, 
    rVss,
    rVdd,
    LatchOfDRAM
  );
  
  DifferentialQBit CorrectData
  (
    DataToRead,
    DataToRefresh
  );

  nmos InsertReading
  (
    outputData, 
    DataToRead, 
    ReadEdge
  );
  
endmodule

