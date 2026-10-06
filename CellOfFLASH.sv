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

  tri Second1;
  tri Second0;
  
  pmos Fetch_rVdd_First1
  (
    First1,
    rVdd,
    Vss
  );
  pmos Fetch_rVss_First0
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

  nmos Fetch_First1_Second1
  (
    Second1,
    First1,
    Vdd
  );
  nmos Fetch_First0_Second0
  (
    Second0,
    First0,
    Vdd
  );
  
endmodule
