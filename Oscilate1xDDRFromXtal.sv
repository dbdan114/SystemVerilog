`include "DigitSupply.vh"

module Oscilate2xDDRFromXtal
(
  input tri Xtal1,
  input tri Xtal2,
  output tri ClockP,
  output tri ClockN,
  inout tri Vplus,
  inout tri Vminus
);

  tri TempXtal1;
  tri TempXtal2;

  buf MakeTempXtal1
  (
    TempXtal1,
    Xtal1
  );

  buf MakeTempXtal2
  (
    TempXtal2,
    Xtal2
  );
  
  OpAmpDO MakeClockPN
  (
    Vplus,
    TempXtal1,
    ClockP,
    ClockN,
    TempXtal2,
    Vminus
  );
endmodule
