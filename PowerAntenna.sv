`include "DigitSupply.vh"

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
