module NegatingCellOfSRAM
(
  inout tri nData,
  inout tri Data,
  input wire Logic0,
  input wire Logic1,
  input tri WriteEdge
);
  tri TempnData;
  tri TempData;
  pmos For0OfnData
  (
    TempData,
    Logic1,
    nData
  );
  pmos For0OfData
  (
    TempnData,
    Logic1,
    Data
  );
  nmos For1OfnData
  (
    TempData,
    Logic0,
    nData
  );
  nmos For1OfData
  (
    TempnData,
    Logic0,
    Data
  );

  pmos GetnData
  (
    nData,
    TempnData,
    WriteEdge
  );
    
  pmos GetData
  (
    Data,
    TempData,
    WriteEdge
  );
endmodule
