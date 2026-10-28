`include "DigitSupply.vh"

module PowerAntenna
(
  inout Antenna
);
  tri Power;

  pmos Gate_Vdd
  (
    Power,
    Vdd,
    Vss
  );

  DifferentialQBit Gate_rVss
  (
    Power,
    rVss
  );

  DifferentialQBit Gate_rVdd
  (
    Power,
    rVdd
  );

  DifferentialQBit Gate_Vss
  (
    Vss,
    Power
  );

  DifferentialQBit DrainAntenna
  (
    Antenna,
    Power
  );
endmodule

/*
module PowerAntenna
(
  inout Antenna
);
  DifferentialQBit MakeSupplySignal0
  (
    Vdd, 
    Vdd
  );
  DifferentialQBit MakeSupplySignal1
  (
    Vdd, 
    Vss)
  ;
  
  DifferentialQBit MakePullSignal1
  (
    Vdd, 
    rVdd
  );
  DifferentialQBit MakePullSignal0
  (
    Vdd, 
    rVss
  );

  DifferentialQBit GetInOutSignal
  (
    Antenna, 
    Vdd
  );
endmodule
*/
