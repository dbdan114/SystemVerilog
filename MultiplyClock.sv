`include "DigitSupply.vh"

module MultiplyClock
(
  output tri MultipliedClock,
  input tri HigherClock,
  input tri LowerClock,
  input wire VPlus,
  input wire VMinus
);
  tri TempHigherClock;
  tri TempLowerClock;

  OpAmpSEO MakeTempHigherClock
  (
    VPlus,
    HigherClock,
    TempHigherClock,
    1'b0,
    VMinus
  );

  OpAmpSEO MakeTempLowerClock
  (
    VPlus,
    LowerClock,
    TempLowerClock,
    1'b0,
    VMinus
  );

  OpAmpSEO MakeMultipliedClock
  (
    VPlus,
    TempHigherClock,
    MultipliedClock,
    TempLowerClock,
    VMinus
  );
endmodule
