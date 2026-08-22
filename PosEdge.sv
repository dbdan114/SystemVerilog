`include "DigitSupply.vh"
module PosEdge
(
  output tri ClockEdge,
  input  tri Clock
);
  tri Temp1;
  tri Temp2;

  DifferentialQBit GetClock
  (
    Clock,
    Temp1
  );

  DifferentialQBit Shake_Vdd1
  (
    Vdd,
    Temp1
  );
  DifferentialQBit Shake_Vss1
  (
    Vss,
    Temp1
  );

  DifferentialQBit GetTemp1
  (
    Temp1,
    Temp2
  );

  DifferentialQBit Shake_rVdd2
  (
    rVdd,
    Temp2
  );
  DifferentialQBit Shake_Vss2
  (
    Vss,
    Temp2
  );

  DifferentialQBit GetTemp2
  (
    Temp2,
    ClockEdge
  );
endmodule
