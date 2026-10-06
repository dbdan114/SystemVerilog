`include "DigitSupply.vh"
module CellOfFLASH
(
  output tri ReadData,
  input tri ReadEdge,
  input tri WriteData,
  input tri WriteEdge
);
  tri First1;
  tri First0;

  pmos Fetch_rVdd
  (
    First1,
  );
  
endmodule
