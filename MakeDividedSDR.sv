`include "DigitSupply.vh"

module MakeDividedSDR
(
  output tri DividedClock,
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
    TempLowerClock,
    DividedClock,
    TempHigherClock,
    VMinus
  );
endmodule
