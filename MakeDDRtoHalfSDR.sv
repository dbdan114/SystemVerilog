`include "DigitSupply.vh"

module MakeDDRtoHalfSDR
(
  output tri HalfClock,
  input tri ClockP,
  input tri ClockN,
  input wire VPlus,
  input wire VMinus
);

  tri TempClockP;
  tri TempClockN;

  DifferentialQBit MakeTempClockP
  (
    TempClockP,
    ClockP
  );

  DifferentialQBit MakeTempClockN
  (
    TempClockN,
    ClockN
  );

  OpAmpSEO MakeHalfClock
  (
    VPlus,
    TempClockP,
    HalfClock,
    TempClockN,
    VMinus
  );
endmodule
