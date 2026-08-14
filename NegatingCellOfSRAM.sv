module NegatingCellOfSRAM
(
  inout tri nData,
  inout tri Data,
  input wire Logic0,
  input wire Logic1
);
  pmos For0OfnData
  (
    Data,
    Logic1,
    nData
  );
  pmos For0OfData
  (
    nData,
    Logic1,
    Data
  );
  nmos For1OfnData
  (
    Data,
    Logic0,
    nData
  );
  nmos For1OfData
  (
    nData,
    Logic0,
    Data
  );
  
endmodule



/**/
