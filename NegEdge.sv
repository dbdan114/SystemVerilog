`include "DigitSupply.vh"
module NegEdge
(
  output tri ClockEdge,
  input  tri Clock,
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

  DifferentialQBit Shake_Vdd2
  (
    Vdd,
    Temp2
  );
  DifferentialQBit Shake_rVss2
  (
    rVss,
    Temp2
  );

  DifferentialQBit GetTemp2
  (
    Temp2,
    ClockEdge
  );
endmodule
