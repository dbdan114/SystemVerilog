`include "DigitSupply.vh"

module OscilateFromXtalDDR
(
  input tri Xtal1,
  input tri Xtal2,
  output tri ClockP,
  output tri ClockN,
  inout tri Vplus,
  inout tri Vminus
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
