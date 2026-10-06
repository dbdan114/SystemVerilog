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

  tri nReadEdge;
  
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
    WriteEdge
  );
  nmos Fetch_WriteData_First0
  (
    First0,
    WriteData,
    WriteEdge
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

  pmos Fetch_Vdd_Second1
  (
    Second1,
    Vdd,
    Vss
  );
  pmos Fetch_Vss_Second0
  (
    Second0,
    Vss,
    Vss
  );

  _not NegateReadEdge
  (
    nReadEdge,
    Vss,
    Vdd,
    ReadEdge
  );

  pmos Fetch_Second0_ReadData
  (
    ReadData,
    Second0,
    nReadEdge
  );
  pmos Fetch_Second1_ReadData
  (
    ReadData,
    Second1,
    nReadEdge
  );
endmodule
