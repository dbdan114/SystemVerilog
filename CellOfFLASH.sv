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
    rVdd,
    Vss
  );
  pmos Fetch_rVss
  (
    First0,
    rVss,
    Vss
  );

  nmos Fetch_WriteData_First1
  (
    First1,
    WriteData,
    Vdd
  );
  nmos Fetch_WriteData_First0
  (
    First0,
    WriteData,
    Vdd
  );
endmodule
