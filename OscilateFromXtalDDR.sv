`include "DigitSupply.vh"

module OscilateFromXtalDDR
(
  inout Xtal1,
  inout Xtal2,
  output ClockP,
  output ClockN,
  inout Vplus,
  inout Vminus
);
  tri North = Xtal1;
  tri South = Xtal2;
  DifferentialQBit Rectify
  (
    North,
    South
  );
    
  OpAmpDO MakeClockPN
  (
    Vplus,
    North,
    ClockP,
    ClockN,
    South,
    Vminus
  );
endmodule
